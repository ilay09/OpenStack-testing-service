export API_URL="https://chef-compliance.test/api/"

export REFRESH_TOKEN="9/IjyB64qEFU4xr1LZr7XR5JiVXYr_KqlT8nYhT2sKb_jDs9iWSCF24EAGhGAkjKDhmMouwWjnQIQPGfnkJ1FyTQ=="
export API_TOKEN=$(curl -k -X POST $API_URL/access_token -d "{\"token\": \"$REFRESH_TOKEN\"}" | sed -e "s/.*access_token\":\"\([^\"]*\)\".*/\1/")

export AUTH="Authorization: Bearer $API_TOKEN"
curl -k -X GET "$API_URL/user/compliance" -H "$AUTH"


curl -k -X POST "$API_URL/owners/ilusya-usmanova/scans" \
-H "Content-Type: application/json" -H "$AUTH" -d '
{"compliance":
 [{"owner": "base",
   "profile": "ssh"}],
 "environments": 
[{"id": "7c2028e2-63cd-489d-74eb-69e36e3f310e",
  "nodes": ["7c2028e2-63cd-489d-74eb-69e36e3f310e"]}]}'
