json.replies [''] do
  json.type 'list'
  json.content do
    json.elements @drugs do |drug|
      json.title drug['denomination']
      json.subtitle ''
      json.buttons [''] do
        json.title 'Plus de info'
        json.type 'postback'
        json.value 'xxxx'
      end
    end
  end
end

# {
# 	"replies": [
# 		{
# 			"type": "list",
# 			"content": {
# 				"elements": [
# 					{
# 						"title": "ELEM_1_TITLE",
# 						"imageUrl": "IMAGE_URL",
# 						"subtitle": "ELEM_1_SUBTITLE",
# 						"buttons": [
# 							{
# 								"title": "BUTTON_1_TITLE",
# 								"type": "BUTTON_TYPE",
# 								"value": "BUTTON_1_VALUE"
# 							}
# 						]
# 					}
# 				],
# 				"buttons": [
# 					{
# 						"title": "BUTTON_1_TITLE",
# 						"type": "BUTTON_TYPE",
# 						"value": "BUTTON_1_VALUE"
# 					}
# 				]
# 			}
# 		}
# 	]
# }

# {
# 	"replies": [
# 		{
# 			"type": "list",
# 			"content": {
# 				"elements": [
# 					{
# 						"title": "ASPIRINE RICHARD 500 mg, comprimé",
# 						"subtitle": "TA REUM"
# 					},
# 					{
# 						"title": "ASPIRINE PROTECT 100 mg, comprimé gastro-résistant",
# 						"subtitle": "TA REUM"
# 					},
# 					{
# 						"title": "ASPIRINE PROTECT 300 mg, comprimé gastro-résistant",
# 						"subtitle": "TA REUM"
# 					},
# 					{
# 						"title": "ASPIRINE pH 8 500 mg, comprimé gastro-résistant",
# 						"subtitle": "TA REUM"
# 					},
# 					{
# 						"title": "ASPIRINE DU RHÔNE 500 mg, comprimé",
# 						"subtitle": "TA REUM"
# 					}
# 				],
# 				"buttons": [
# 					{
# 						"title": "Plus de info",
# 						"type": "postback",
# 						"value": "xxxx"
# 					}
# 				]
# 			}
# 		}
# 	]
# }
