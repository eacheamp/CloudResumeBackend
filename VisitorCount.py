import json
import boto3

dynamodb        = boto3.resource('dynamodb', region_name="us-east-1")
tableName       = "eacheampongVisitorCounter"
table           = dynamodb.Table(tableName)

def handler (e, context):
    print(e)
    # -> get item - get number of visitors
    response    = table.get_item(
        Key={"siteStat_id":"Count"} 
        )
    table_item = response["Item"]   
    # update table item
    table.update_item(
            Key={"siteStat_id":"Count"},
            UpdateExpression="set visitorCount = visitorCount + :n",
            ExpressionAttributeValues={
                ":n":1,
            },
            ReturnValues="UPDATED_NEW",
        )
    return {
        "headers": 
            {  
            "Content-Type": "application/json",
            "Access-Control-Allow-Headers": "Content-Type",
            "Access-Control-Allow-Origin": "*",
            "Access-Control-Allow-Methods": "OPTIONS"
            },
            "statusCode": 200,
            "body": str(table_item["visitorCount"])} or {"statusCode": 404, "body": "Item not found"}