
import sys
import six
from google.cloud import language
from google.cloud.language import enums
from google.cloud.language import types



def get_sentiment(text):
    
    document = types.Document(
        content=text,
        type=enums.Document.Type.PLAIN_TEXT)
    
    # Detects the sentiment of the text
    sentiment = client.analyze_sentiment(document=document).document_sentiment
    
    print('Text: {}'.format(text))
    print('Sentiment: {}, {}'.format(sentiment.score, sentiment.magnitude))
    
    # Entity Sentiment
    encoding = enums.EncodingType.UTF32
    if sys.maxunicode == 65535:
        encoding = enums.EncodingType.UTF16
    
    result = client.analyze_entity_sentiment(document, encoding)
    
    for entity in result.entities:
        print('Mentions: ')
        print(u'Name: "{}"'.format(entity.name))
        for mention in entity.mentions:
            print(u'  Begin Offset : {}'.format(mention.text.begin_offset))
            print(u'  Content : {}'.format(mention.text.content))
            print(u'  Magnitude : {}'.format(mention.sentiment.magnitude))
            print(u'  Sentiment : {}'.format(mention.sentiment.score))
            print(u'  Type : {}'.format(mention.type))
        print(u'Salience: {}'.format(entity.salience))
        print(u'Sentiment: {}\n'.format(entity.sentiment))



def get_entities(text):
    
    document = types.Document(
        content=text,
        type=enums.Document.Type.PLAIN_TEXT)
    
    entities = client.analyze_entities(document).entities
    
    for entity in entities:
        entity_type = enums.Entity.Type(entity.type)
        print('=' * 20)
        print(u'{:<16}: {}'.format('name', entity.name))
        print(u'{:<16}: {}'.format('type', entity_type.name))
        print(u'{:<16}: {}'.format('salience', entity.salience))
        print(u'{:<16}: {}'.format('wikipedia_url',
              entity.metadata.get('wikipedia_url', '-')))
        print(u'{:<16}: {}'.format('mid', entity.metadata.get('mid', '-')))



def get_categories(text):
    document = types.Document(
        content=text.encode('utf-8'),
        type=enums.Document.Type.PLAIN_TEXT)
    
    categories = client.classify_text(document).categories
    
    for category in categories:
        print(u'=' * 20)
        print(u'{:<16}: {}'.format('name', category.name))
        print(u'{:<16}: {}'.format('confidence', category.confidence))



if __name__ == "__main__":
    
    # Instantiates a client
    client = language.LanguageServiceClient()
    
    text = open(sys.argv[1],'r').read()
    
    print('\n'+'*'*80)
    print('* Sentiment')
    print('*'*80)
    get_sentiment(text)
    
    print('\n'+'*'*80)
    print('* Entities')
    print('*'*80)
    get_entities(text)
    
    print('\n'+'*'*80)
    print('* Categories')
    print('*'*80)
    get_categories(text)



#ZEND
