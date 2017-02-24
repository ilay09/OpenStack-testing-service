export API_URL="https://chef-compliance.test/api/"

export REFRESH_TOKEN="9/IjyB64qEFU4xr1LZr7XR5JiVXYr_KqlT8nYhT2sKb_jDs9iWSCF24EAGhGAkjKDhmMouwWjnQIQPGfnkJ1FyTQ=="
export API_TOKEN=$(curl -k -X POST $API_URL/access_token -d "{\"token\": \"$REFRESH_TOKEN\"}" | sed -e "s/.*access_token\":\"\([^\"]*\)\".*/\1/")

export AUTH="Authorization: Bearer $API_TOKEN"
curl -k -X GET "$API_URL/user/compliance" -H "$AUTH"
