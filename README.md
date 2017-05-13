# TESTING

1. STEP 1 建立账号，建立 meetup 活动
2. STEP 2 拿 token
```
curl -i -X POST -d "user[email]=admin@test.com&user[password]=12345678" http://localhost:3000/api/v1/sessions.json
```
3. STEP 3 拿token 请求 meetup 数据
```
curl -i -X GET \
  --header "Authorization: Token token=mSDPwft9NnGYzEFLRoaP4g9aq1s+YrclxWoQ45lkubfYbnaes4kvKATgjLFNEE3jeK5hsju4hP+3LDlIbahn2w==, \
  email=bboyceo@hotmail.com" \
  http://localhost:3000//api/v1/meetups
```
