# CheckScan — auth / token flow

- Репозиторий: `/home/definitly/CheckScanReverseEngineering`
- Просмотрено файлов: **101814**
- Найдено строк-кандидатов: **3032**
- Источники: `apk_analysis/jadx`, `apk_analysis/apktool`

## Подтверждённый контекст из проекта
- Sign-in start: `api/v2.1/users/signin/v2`
- Sign-in confirm: `api/v2.1/users/signin/confirm/v2`
- API host: `https://api.checkscan.org`

## Найденные совпадения

### Confirm Api And Response — 32

- `apk_analysis/jadx/sources/defpackage/cv.java:10`
  `@z06("api/v2.1/users/signin/confirm/v2")`
- `apk_analysis/jadx/sources/defpackage/bx7.java:6`
  `@bd2(c = "com.warefly.checkscan.auth.domain.useCases.SignInConfirmInteractor$invoke$1", f = "SignInConfirmInteractor.kt", l = {28, 48, 56}, m = "invokeSuspend")`
- `apk_analysis/jadx/sources/defpackage/bx7.java:17`
  `@bd2(c = "com.warefly.checkscan.auth.domain.useCases.SignInConfirmInteractor$invoke$1$sideEffects$1", f = "SignInConfirmInteractor.kt", l = {42}, m = "invokeSuspend")`
- `apk_analysis/jadx/sources/defpackage/bx7.java:63`
  `@bd2(c = "com.warefly.checkscan.auth.domain.useCases.SignInConfirmInteractor$invoke$1$sideEffects$2", f = "SignInConfirmInteractor.kt", l = {43}, m = "invokeSuspend")`
- `apk_analysis/jadx/sources/defpackage/bx7.java:106`
  `@bd2(c = "com.warefly.checkscan.auth.domain.useCases.SignInConfirmInteractor$invoke$1$sideEffects$3", f = "SignInConfirmInteractor.kt", l = {44}, m = "invokeSuspend")`
- `apk_analysis/jadx/sources/defpackage/ax.java:4`
  `@bd2(c = "com.warefly.checkscan.auth.data.network.repositoryImpl.AuthRepositoryImpl", f = "AuthRepositoryImpl.kt", l = {77}, m = "signInConfirm")`
- `apk_analysis/jadx/sources/defpackage/dx7.java:44`
  `StringBuilder sb = new StringBuilder("SignInConfirmRequestBody(phone=");`
- `apk_analysis/jadx/sources/com/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter.java:55`
  `private final cx7 signInConfirmInteractor;`
- `apk_analysis/jadx/sources/com/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter.java:141`
  `cx7 r1 = com.warefly.checkscan.auth.presentation.userCallVerification.presenter.VerificationUserCallPresenter.access$getSignInConfirmInteractor$p(r9)`
- `apk_analysis/jadx/sources/com/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter.java:318`
  `this.signInConfirmInteractor = cx7Var;`
- `apk_analysis/jadx/sources/com/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter.java:50`
  `private final cx7 signInConfirmInteractor;`
- `apk_analysis/jadx/sources/com/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter.java:479`
  `this.signInConfirmInteractor = cx7Var;`
- `apk_analysis/jadx/sources/com/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter.java:572`
  `launchInPresenter(new df3(cx7.a(this.signInConfirmInteractor, null, am2.EMAIL, str, 1), new k(null)));`
- `apk_analysis/apktool/smali/bx7$c.smali:11`
  `c = "com.warefly.checkscan.auth.domain.useCases.SignInConfirmInteractor$invoke$1$sideEffects$3"`
- `apk_analysis/apktool/smali/bx7$c.smali:12`
  `f = "SignInConfirmInteractor.kt"`
- `apk_analysis/apktool/smali/dx7.smali:173`
  `const-string v3, "SignInConfirmRequestBody(phone="`
- `apk_analysis/apktool/smali/bx7$b.smali:11`
  `c = "com.warefly.checkscan.auth.domain.useCases.SignInConfirmInteractor$invoke$1$sideEffects$2"`
- `apk_analysis/apktool/smali/bx7$b.smali:12`
  `f = "SignInConfirmInteractor.kt"`
- `apk_analysis/apktool/smali/bx7$a.smali:11`
  `c = "com.warefly.checkscan.auth.domain.useCases.SignInConfirmInteractor$invoke$1$sideEffects$1"`
- `apk_analysis/apktool/smali/bx7$a.smali:12`
  `f = "SignInConfirmInteractor.kt"`
- `apk_analysis/apktool/smali/cv.smali:43`
  `value = "api/v2.1/users/signin/confirm/v2"`
- `apk_analysis/apktool/smali/bx7.smali:11`
  `c = "com.warefly.checkscan.auth.domain.useCases.SignInConfirmInteractor$invoke$1"`
- `apk_analysis/apktool/smali/bx7.smali:12`
  `f = "SignInConfirmInteractor.kt"`
- `apk_analysis/apktool/smali/ax.smali:13`
  `m = "signInConfirm"`
- `apk_analysis/apktool/smali/com/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$a$a.smali:123`
  `invoke-static {p2}, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->access$getSignInConfirmInteractor$p(Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;)Lcx7;`
- `apk_analysis/apktool/smali/com/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter.smali:29`
  `.field private final signInConfirmInteractor:Lcx7;`
- `apk_analysis/apktool/smali/com/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter.smali:62`
  `iput-object p6, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->signInConfirmInteractor:Lcx7;`
- `apk_analysis/apktool/smali/com/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter.smali:93`
  `.method public static final synthetic access$getSignInConfirmInteractor$p(Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;)Lcx7;`
- `apk_analysis/apktool/smali/com/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter.smali:96`
  `iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->signInConfirmInteractor:Lcx7;`
- `apk_analysis/apktool/smali/com/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter.smali:46`
  `.field private final signInConfirmInteractor:Lcx7;`
- `apk_analysis/apktool/smali/com/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter.smali:91`
  `iput-object p5, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->signInConfirmInteractor:Lcx7;`
- `apk_analysis/apktool/smali/com/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter.smali:453`
  `iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->signInConfirmInteractor:Lcx7;`

### Response Json And Models — 500

- `apk_analysis/jadx/sources/defpackage/w34.java:8`
  `import com.google.gson.Gson;`
- `apk_analysis/jadx/sources/defpackage/w34.java:53`
  `Gson gson = new Gson();`
- `apk_analysis/jadx/sources/defpackage/w34.java:76`
  `printWriter.append((CharSequence) gson.j(ts7Var));`
- `apk_analysis/jadx/sources/defpackage/t0.java:7`
  `import kotlinx.serialization.SerializationException;`
- `apk_analysis/jadx/sources/defpackage/t0.java:8`
  `import kotlinx.serialization.json.JsonDecodingException;`
- `apk_analysis/jadx/sources/defpackage/rc2.java:3`
  `import kotlinx.serialization.MissingFieldException;`
- `apk_analysis/jadx/sources/defpackage/ht3.java:3`
  `import com.google.gson.Gson;`
- `apk_analysis/jadx/sources/defpackage/ht3.java:4`
  `import com.google.gson.JsonParseException;`
- `apk_analysis/jadx/sources/defpackage/ht3.java:11`
  `public static final class a extends gh4 implements ll3<Gson> {`
- `apk_analysis/jadx/sources/defpackage/ht3.java:15`
  `public final Gson invoke() {`
- `apk_analysis/jadx/sources/defpackage/ht3.java:16`
  `return new Gson();`
- `apk_analysis/jadx/sources/defpackage/ht3.java:20`
  `public static final <T> T a(Gson gson, String str, Type type) {`
- `apk_analysis/jadx/sources/defpackage/ht3.java:21`
  `gson.getClass();`
- `apk_analysis/jadx/sources/defpackage/ht3.java:24`
  `return (T) gson.f(str, new x39<>(type));`
- `apk_analysis/jadx/sources/defpackage/ht3.java:32`
  `Gson gsonC = c();`
- `apk_analysis/jadx/sources/defpackage/ht3.java:33`
  `gsonC.getClass();`
- `apk_analysis/jadx/sources/defpackage/ht3.java:35`
  `return gsonC.f(str, new x39(cls));`
- `apk_analysis/jadx/sources/defpackage/ht3.java:41`
  `public static final Gson c() {`
- `apk_analysis/jadx/sources/defpackage/ht3.java:42`
  `return (Gson) a.getValue();`
- `apk_analysis/jadx/sources/defpackage/ee4.java:6`
  `@bd2(c = "kotlinx.serialization.json.internal.JsonTreeReader", f = "JsonTreeReader.kt", l = {22}, m = "readObject", v = 2)`
- `apk_analysis/jadx/sources/defpackage/on.java:3`
  `import com.google.gson.Gson;`
- `apk_analysis/jadx/sources/defpackage/on.java:27`
  `bVar.a(new xs3(new Gson()));`
- `apk_analysis/jadx/sources/defpackage/uq7.java:534`
  `throw kb9.i(method, null, "'" + kb9.e(typeA).getName() + "' is not a valid response body type. Did you mean ResponseBody?", new Object[0]);`
- `apk_analysis/jadx/sources/defpackage/uq7.java:537`
  `throw kb9.i(method, null, "Response must include generic type (e.g., Response<String>)", new Object[0]);`
- `apk_analysis/jadx/sources/defpackage/eg9.java:16`
  `import org.json.JSONObject;`
- `apk_analysis/jadx/sources/defpackage/eg9.java:55`
  `JSONObject jSONObject = new JSONObject(str);`
- `apk_analysis/jadx/sources/defpackage/eg9.java:56`
  `return new z54(jSONObject.getString("PACKAGE_NAME_KEY"), jSONObject.getString("REFERRER_ID_KEY"), Long.valueOf(jSONObject.getLong("RECEIVED_TIMESTAMP_KEY")), Long.valueOf(jSONObject.getLong("INSTALL_APP_TIMESTAMP_KEY")), Long.valueOf(jSONObject.optLong("VERSION_CODE_KEY")));`
- `apk_analysis/jadx/sources/defpackage/n98.java:4`
  `import kotlinx.serialization.MissingFieldException;`
- `apk_analysis/jadx/sources/defpackage/n98.java:5`
  `import kotlinx.serialization.SerializationException;`
- `apk_analysis/jadx/sources/defpackage/n98.java:6`
  `import kotlinx.serialization.json.JsonDecodingException;`
- `apk_analysis/jadx/sources/defpackage/m96.java:8`
  `import kotlinx.serialization.SerializationException;`
- `apk_analysis/jadx/sources/defpackage/xb9.java:4`
  `import org.json.JSONObject;`
- `apk_analysis/jadx/sources/defpackage/xb9.java:22`
  `JSONObject jSONObject = new JSONObject(string);`
- `apk_analysis/jadx/sources/defpackage/xb9.java:23`
  `String string2 = jSONObject.getString("phoneNumberSha256");`
- `apk_analysis/jadx/sources/defpackage/xb9.java:24`
  `String string3 = jSONObject.getString("authToken");`
- `apk_analysis/jadx/sources/defpackage/w8a.java:5`
  `import org.json.JSONObject;`
- `apk_analysis/jadx/sources/defpackage/w8a.java:10`
  `JSONObject jSONObject = new JSONObject();`
- `apk_analysis/jadx/sources/defpackage/w8a.java:11`
  `jSONObject.put("name", ya5Var.a);`
- `apk_analysis/jadx/sources/defpackage/w8a.java:12`
  `JSONObject jSONObject2 = new JSONObject();`
- `apk_analysis/jadx/sources/defpackage/w8a.java:14`
  `jSONObject2.put(entry.getKey(), entry.getValue());`
- `apk_analysis/jadx/sources/defpackage/w8a.java:16`
  `jSONObject.put("data", jSONObject2);`
- `apk_analysis/jadx/sources/defpackage/w8a.java:17`
  `jSONObject.put("time", ya5Var.c);`
- `apk_analysis/jadx/sources/defpackage/w8a.java:18`
  `String string = jSONObject.toString(0);`
- `apk_analysis/jadx/sources/defpackage/iq2.java:12`
  `import org.json.JSONObject;`
- `apk_analysis/jadx/sources/defpackage/iq2.java:53`
  `JSONObject jSONObject = new JSONObject(str);`
- `apk_analysis/jadx/sources/defpackage/iq2.java:54`
  `if (jSONObject.has(CommonUrlParts.REQUEST_ID)) {`
- `apk_analysis/jadx/sources/defpackage/iq2.java:55`
  `jSONObject.optInt(CommonUrlParts.REQUEST_ID);`
- `apk_analysis/jadx/sources/defpackage/zd3.java:10`
  `import com.google.gson.JsonParseException;`
- `apk_analysis/jadx/sources/defpackage/zd3.java:11`
  `import com.google.gson.stream.JsonReader;`
- `apk_analysis/jadx/sources/defpackage/zd3.java:12`
  `import com.google.gson.stream.MalformedJsonException;`
- `apk_analysis/jadx/sources/defpackage/n13.java:117`
  `n13Var.b.responseBodyStart(n13Var.a);`
- `apk_analysis/jadx/sources/defpackage/n13.java:148`
  `n13Var.b.responseBodyStart(n13Var.a);`
- `apk_analysis/jadx/sources/defpackage/n13.java:207`
  `bVar.responseBodyEnd(jy6Var, j);`
- `apk_analysis/jadx/sources/defpackage/l03.java:5`
  `import kotlinx.serialization.SerializationException;`
- `apk_analysis/jadx/sources/defpackage/l03.java:72`
  `return "kotlinx.serialization.internal.EnumSerializer<" + getDescriptor().h() + '>';`
- `apk_analysis/jadx/sources/defpackage/rg1.java:3`
  `import com.google.gson.Gson;`
- `apk_analysis/jadx/sources/defpackage/rg1.java:26`
  `Gson gsonC = ht3.c();`
- `apk_analysis/jadx/sources/defpackage/rg1.java:28`
  `gsonC.getClass();`
- `apk_analysis/jadx/sources/defpackage/rg1.java:29`
  `hv6 hv6Var = (hv6) gsonC.f(str, new x39(qg1Var.b));`
- `apk_analysis/jadx/sources/defpackage/ea7.java:3`
  `import com.google.gson.Gson;`
- `apk_analysis/jadx/sources/defpackage/ea7.java:8`
  `public final class ea7 extends gh4 implements bm3<ze7, i36, Gson> {`
- `apk_analysis/jadx/sources/defpackage/ea7.java:12`
  `public final Gson invoke(ze7 ze7Var, i36 i36Var) {`
- `apk_analysis/jadx/sources/defpackage/ea7.java:27`
  `return new Gson(ws3Var);`
- `apk_analysis/jadx/sources/defpackage/ve1.java:17`
  `public final /* synthetic */ class ve1 implements xl3, DrmSessionManagerProvider, ListenerSet.Event, eh8.a, ProductDetailsResponseListener {`
- `apk_analysis/jadx/sources/defpackage/ge4.java:3`
  `import com.google.gson.stream.JsonWriter;`
- `apk_analysis/jadx/sources/defpackage/ge4.java:40`
  `@Override // com.google.gson.stream.JsonWriter`
- `apk_analysis/jadx/sources/defpackage/ge4.java:48`
  `@Override // com.google.gson.stream.JsonWriter`
- `apk_analysis/jadx/sources/defpackage/ge4.java:56`
  `@Override // com.google.gson.stream.JsonWriter, java.io.Closeable, java.lang.AutoCloseable`
- `apk_analysis/jadx/sources/defpackage/ge4.java:66`
  `@Override // com.google.gson.stream.JsonWriter`
- `apk_analysis/jadx/sources/defpackage/ge4.java:81`
  `@Override // com.google.gson.stream.JsonWriter`
- `apk_analysis/jadx/sources/defpackage/ge4.java:96`
  `@Override // com.google.gson.stream.JsonWriter, java.io.Flushable`
- `apk_analysis/jadx/sources/defpackage/ge4.java:100`
  `@Override // com.google.gson.stream.JsonWriter`
- `apk_analysis/jadx/sources/defpackage/ge4.java:118`
  `@Override // com.google.gson.stream.JsonWriter`
- `apk_analysis/jadx/sources/defpackage/ge4.java:133`
  `@Override // com.google.gson.stream.JsonWriter`
- `apk_analysis/jadx/sources/defpackage/ge4.java:165`
  `@Override // com.google.gson.stream.JsonWriter`
- `apk_analysis/jadx/sources/defpackage/ge4.java:182`
  `@Override // com.google.gson.stream.JsonWriter`
- `apk_analysis/jadx/sources/defpackage/ge4.java:192`
  `@Override // com.google.gson.stream.JsonWriter`
- `apk_analysis/jadx/sources/defpackage/ge4.java:202`
  `@Override // com.google.gson.stream.JsonWriter`
- `apk_analysis/jadx/sources/defpackage/ge4.java:208`
  `@Override // com.google.gson.stream.JsonWriter`
- `apk_analysis/jadx/sources/defpackage/ge4.java:218`
  `@Override // com.google.gson.stream.JsonWriter`
- `apk_analysis/jadx/sources/defpackage/ge4.java:224`
  `@Override // com.google.gson.stream.JsonWriter`
- `apk_analysis/jadx/sources/defpackage/wc5.java:8`
  `import com.google.gson.Gson;`
- `apk_analysis/jadx/sources/defpackage/wc5.java:1673`
  `bVar.a(new xs3(new Gson(ws3Var)));`
- `apk_analysis/jadx/sources/defpackage/wc5.java:1765`
  `bVar.a(new xs3(new Gson()));`
- `apk_analysis/jadx/sources/defpackage/xz1.java:7`
  `import org.json.JSONObject;`
- `apk_analysis/jadx/sources/defpackage/xz1.java:32`
  `return go1.a((go1) obj4, (ArrayList) obj3, (JSONObject) obj, (tn1) obj2);`
- `apk_analysis/jadx/sources/defpackage/zv9.java:5`
  `import org.json.JSONObject;`
- `apk_analysis/jadx/sources/defpackage/zv9.java:10`
  `JSONObject jSONObject = new JSONObject();`
- `apk_analysis/jadx/sources/defpackage/zv9.java:12`
  `jSONObject.put("name", httpCookie.getName());`
- `apk_analysis/jadx/sources/defpackage/zv9.java:13`
  `jSONObject.putOpt("value", httpCookie.getValue());`
- `apk_analysis/jadx/sources/defpackage/zv9.java:14`
  `jSONObject.putOpt("comment", httpCookie.getComment());`
- `apk_analysis/jadx/sources/defpackage/zv9.java:15`
  `jSONObject.putOpt("commentUrl", httpCookie.getCommentURL());`
- `apk_analysis/jadx/sources/defpackage/zv9.java:16`
  `jSONObject.putOpt(DynamicLink.Builder.KEY_DOMAIN, httpCookie.getDomain());`
- `apk_analysis/jadx/sources/defpackage/zv9.java:17`
  `jSONObject.putOpt("maxage", Long.valueOf(httpCookie.getMaxAge()));`
- `apk_analysis/jadx/sources/defpackage/zv9.java:18`
  `jSONObject.putOpt("path", httpCookie.getPath());`
- `apk_analysis/jadx/sources/defpackage/zv9.java:19`
  `jSONObject.putOpt("portlist", httpCookie.getPortlist());`
- `apk_analysis/jadx/sources/defpackage/zv9.java:20`
  `jSONObject.putOpt("version", Integer.valueOf(httpCookie.getVersion()));`
- `apk_analysis/jadx/sources/defpackage/zv9.java:21`
  `jSONObject.putOpt("secure", Boolean.valueOf(httpCookie.getSecure()));`
- `apk_analysis/jadx/sources/defpackage/zv9.java:22`
  `jSONObject.putOpt("discard", Boolean.valueOf(httpCookie.getDiscard()));`
- `apk_analysis/jadx/sources/defpackage/zv9.java:23`
  `jSONObject.putOpt("httpOnly", Boolean.valueOf(httpCookie.isHttpOnly()));`
- `apk_analysis/jadx/sources/defpackage/zv9.java:24`
  `return jSONObject.toString();`
- `apk_analysis/jadx/sources/defpackage/zv9.java:35`
  `JSONObject jSONObject = new JSONObject(str);`
- `apk_analysis/jadx/sources/defpackage/zv9.java:36`
  `httpCookie = new HttpCookie(jSONObject.getString("name"), jSONObject.optString("value"));`
- `apk_analysis/jadx/sources/defpackage/zv9.java:38`
  `httpCookie.setComment(jSONObject.optString("comment"));`
- `apk_analysis/jadx/sources/defpackage/zv9.java:39`
  `httpCookie.setCommentURL(jSONObject.optString("commentUrl"));`
- `apk_analysis/jadx/sources/defpackage/zv9.java:40`
  `httpCookie.setDomain(jSONObject.optString(DynamicLink.Builder.KEY_DOMAIN));`
- `apk_analysis/jadx/sources/defpackage/zv9.java:41`
  `httpCookie.setMaxAge(jSONObject.optInt("maxage"));`
- `apk_analysis/jadx/sources/defpackage/zv9.java:42`
  `httpCookie.setPath(jSONObject.optString("path"));`
- `apk_analysis/jadx/sources/defpackage/zv9.java:43`
  `httpCookie.setPortlist(jSONObject.optString("portlist"));`
- `apk_analysis/jadx/sources/defpackage/zv9.java:44`
  `httpCookie.setVersion(jSONObject.optInt("version"));`
- `apk_analysis/jadx/sources/defpackage/zv9.java:45`
  `httpCookie.setSecure(jSONObject.optBoolean("secure"));`
- `apk_analysis/jadx/sources/defpackage/zv9.java:46`
  `httpCookie.setDiscard(jSONObject.optBoolean("discard"));`
- `apk_analysis/jadx/sources/defpackage/zv9.java:47`
  `httpCookie.setHttpOnly(jSONObject.optBoolean("httpOnly"));`
- `apk_analysis/jadx/sources/defpackage/fw4.java:3`
  `import com.google.gson.TypeAdapter;`
- `apk_analysis/jadx/sources/defpackage/fw4.java:4`
  `import com.google.gson.internal.bind.TypeAdapters;`
- `apk_analysis/jadx/sources/defpackage/c54.java:6`
  `import com.google.gson.Gson;`
- `apk_analysis/jadx/sources/defpackage/c54.java:47`
  `return mz7.e(a57.c(i2, (iv6) new Gson().a((pc4) t, new x39(iv6.class))));`
- `apk_analysis/jadx/sources/defpackage/p0a.java:11`
  `import org.json.JSONObject;`
- `apk_analysis/jadx/sources/defpackage/p0a.java:25`
  `public static h14 b(JSONObject jSONObject) {`
- `apk_analysis/jadx/sources/defpackage/p0a.java:26`
  `String strOptString = jSONObject.optString("url");`
- `apk_analysis/jadx/sources/defpackage/p0a.java:31`
  `int iOptInt = jSONObject.optInt(TJAdUnitConstants.String.WIDTH, -1);`
- `apk_analysis/jadx/sources/defpackage/p0a.java:36`
  `int iOptInt2 = jSONObject.optInt(TJAdUnitConstants.String.HEIGHT, -1);`
- `apk_analysis/jadx/sources/defpackage/p0a.java:44`
  `public void a(JSONObject jSONObject, kha khaVar) {`
- `apk_analysis/jadx/sources/defpackage/p0a.java:46`
  `if (liaVar.p < 0.0f && jSONObject.has("point")) {`
- `apk_analysis/jadx/sources/defpackage/p0a.java:47`
  `jSONObject.optDouble("point");`
- `apk_analysis/jadx/sources/defpackage/p0a.java:49`
  `if (liaVar.q >= 0.0f || !jSONObject.has("pointP")) {`
- `apk_analysis/jadx/sources/defpackage/p0a.java:52`
  `jSONObject.optDouble("pointP");`
- `apk_analysis/jadx/sources/defpackage/ha7.java:3`
  `import com.google.gson.Gson;`
- `apk_analysis/jadx/sources/defpackage/ha7.java:15`
  `return new ma7((Gson) ze7Var2.e(x07.a(Gson.class), null, x97.b), (b37) ze7Var2.e(x07.a(b37.class), null, x97.d), (OkHttpClient) ze7Var2.e(x07.a(OkHttpClient.class), null, x97.c));`
- `apk_analysis/jadx/sources/defpackage/xfa.java:11`
  `import org.json.JSONObject;`
- `apk_analysis/jadx/sources/defpackage/xfa.java:31`
  `JSONObject jSONObject = new JSONObject();`
- `apk_analysis/jadx/sources/defpackage/xfa.java:33`
  `jSONObject.put("phone_sha256", h5aVar.a);`
- `apk_analysis/jadx/sources/defpackage/xfa.java:34`
  `jSONObject.put("platform", "android");`
- `apk_analysis/jadx/sources/defpackage/xfa.java:35`
  `jSONObject.put("partner", h5aVar.b);`
- `apk_analysis/jadx/sources/defpackage/xfa.java:36`
  `JSONObject jSONObject2 = new JSONObject();`
- `apk_analysis/jadx/sources/defpackage/xfa.java:37`
  `jSONObject2.put("customEventName", "install");`
- `apk_analysis/jadx/sources/defpackage/xfa.java:38`
  `jSONObject2.put("eventTimestamp", String.valueOf(h5aVar.c));`
- `apk_analysis/jadx/sources/defpackage/xfa.java:40`
  `jSONObject.put(NotificationCompat.CATEGORY_EVENT, jSONObject2);`
- `apk_analysis/jadx/sources/defpackage/xfa.java:41`
  `String string = jSONObject.toString();`
- `apk_analysis/jadx/sources/defpackage/bx8.java:3`
  `import com.google.gson.stream.JsonReader;`
- `apk_analysis/jadx/sources/defpackage/e49.java:37`
  `sb.append(", responseBody=");`
- `apk_analysis/jadx/sources/defpackage/ps9.java:6`
  `import org.json.JSONObject;`
- `apk_analysis/jadx/sources/defpackage/ps9.java:44`
  `return kw5.a((TextView) view, (as2) obj4, (as2) obj3, (as2) obj2, this.c, (JSONObject) obj);`
- `apk_analysis/jadx/sources/defpackage/yg1.java:3`
  `import com.google.gson.Gson;`
- `apk_analysis/jadx/sources/defpackage/yg1.java:99`
  `return zg1Var.j(new kg1(j, hv6Var.b(), "FNS_NOT_RESPONDING", new Gson().j(hv6Var), null));`
- `apk_analysis/jadx/sources/defpackage/yg1.java:105`
  `return zg1Var.j(new kg1(j, strB, nz6.a.a(i).name(), new Gson().j(hv6Var), new Gson().j(a57Var.b)));`
- `apk_analysis/jadx/sources/defpackage/m6a.java:14`
  `import org.json.JSONObject;`
- `apk_analysis/jadx/sources/defpackage/m6a.java:18`
  `public static JSONObject a(a aVar) throws JSONException {`
- `apk_analysis/jadx/sources/defpackage/m6a.java:32`
  `JSONObject jSONObject = new JSONObject();`
- `apk_analysis/jadx/sources/defpackage/m6a.java:34`
  `jSONObject.put("sdk_version", "5.52.5");`
- `apk_analysis/jadx/sources/defpackage/m6a.java:35`
  `jSONObject.put("sdk_version_int", 5052005);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:36`
  `jSONObject.put("app_bundle_id", zs9Var.f);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:37`
  `jSONObject.put("app_version", zs9Var.g);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:38`
  `jSONObject.put("app_build", zs9Var.h);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:39`
  `jSONObject.put("sdk_instance_id", zs9Var.i);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:40`
  `jSONObject.put("os", "Android");`
- `apk_analysis/jadx/sources/defpackage/m6a.java:45`
  `jSONObject.put(CommonUrlParts.OS_VERSION, str);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:46`
  `jSONObject.put("os_version_int", zs9Var.b);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:51`
  `jSONObject.put("device", str2);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:56`
  `jSONObject.put(CommonUrlParts.MODEL, str3);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:58`
  `jSONObject.put(CommonUrlParts.MANUFACTURER, str4 != null ? str4 : "");`
- `apk_analysis/jadx/sources/defpackage/m6a.java:59`
  `jSONObject.put("logs", jSONArray);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:60`
  `return jSONObject;`
- `apk_analysis/jadx/sources/defpackage/m6a.java:63`
  `public static JSONObject b(z8a z8aVar, zm9 zm9Var, List list) throws JSONException {`
- `apk_analysis/jadx/sources/defpackage/m6a.java:68`
  `JSONObject jSONObject = new JSONObject();`
- `apk_analysis/jadx/sources/defpackage/m6a.java:71`
  `jSONObject.put("banner_id", zm9Var.a);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:74`
  `jSONObject.put("impression_id", str);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:78`
  `jSONObject.put("pad_id", str2);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:82`
  `jSONObject.put("pattern_id", str3);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:86`
  `jSONObject.put("dsp_id", num);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:94`
  `jSONObject.put("labels", jSONArray2);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:100`
  `jSONObject.put("stage", i);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:101`
  `jSONObject.put(FirebaseAnalytics.Param.LEVEL, cVar.c);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:102`
  `jSONObject.put("code", cVar.d);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:104`
  `jSONObject.put(TJAdUnitConstants.String.MESSAGE, str5);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:106`
  `jSONObject.put("client_timestamp", cVar.a);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:108`
  `jSONObject.put("add_data", str4);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:110`
  `jSONArray.put(jSONObject);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:112`
  `JSONObject jSONObject2 = new JSONObject();`
- `apk_analysis/jadx/sources/defpackage/m6a.java:113`
  `jSONObject2.put(FirebaseAnalytics.Param.AD_FORMAT, z8aVar.c);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:114`
  `jSONObject2.put("cache_policy", z8aVar.g);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:115`
  `jSONObject2.put("tag", (Object) null);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:118`
  `jSONObject2.put("slot_id", num2.intValue());`
- `apk_analysis/jadx/sources/defpackage/m6a.java:120`
  `jSONObject2.put("ad_id", z8aVar.a);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:123`
  `jSONObject2.put("handle_data_id", obj);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:125`
  `jSONObject2.put("source_type", z8aVar.e);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:126`
  `jSONObject2.put("events", jSONArray);`
- `apk_analysis/jadx/sources/defpackage/m6a.java:127`
  `return jSONObject2;`
- `apk_analysis/jadx/sources/defpackage/hd5.java:3`
  `import kotlinx.serialization.MissingFieldException;`
- `apk_analysis/jadx/sources/defpackage/og.java:11`
  `import org.json.JSONObject;`
- `apk_analysis/jadx/sources/defpackage/og.java:32`
  `public JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) {`
- `apk_analysis/jadx/sources/defpackage/og.java:33`
  `return Fo.a(jSONObject, jSONObject2);`
- `apk_analysis/jadx/sources/defpackage/kl0.java:3`
  `import com.google.gson.JsonIOException;`
- `apk_analysis/jadx/sources/defpackage/xs3.java:3`
  `import com.google.gson.Gson;`
- `apk_analysis/jadx/sources/defpackage/xs3.java:9`
  `public final Gson a;`
- `apk_analysis/jadx/sources/defpackage/xs3.java:11`
  `public xs3(Gson gson) {`
- `apk_analysis/jadx/sources/defpackage/xs3.java:12`
  `this.a = gson;`
- `apk_analysis/jadx/sources/defpackage/xs3.java:18`
  `Gson gson = this.a;`
- `apk_analysis/jadx/sources/defpackage/xs3.java:19`
  `return new ys3(gson, gson.g(x39Var));`
- `apk_analysis/jadx/sources/defpackage/xs3.java:25`
  `Gson gson = this.a;`
- `apk_analysis/jadx/sources/defpackage/xs3.java:26`
  `return new zs3(gson, gson.g(x39Var));`
- `apk_analysis/jadx/sources/defpackage/nd4.java:3`
  `import com.google.gson.stream.JsonReader;`
- `apk_analysis/jadx/sources/defpackage/nd4.java:4`
  `import com.google.gson.stream.JsonToken;`
- `apk_analysis/jadx/sources/defpackage/x97.java:14`
  `public static final ba8 b = new ba8("sse_gson");`
- `apk_analysis/jadx/sources/defpackage/gq1.java:127`
  `ah.f("Response must be parameterized as Response<Foo> or Response<? extends Foo>");`
- `apk_analysis/jadx/sources/defpackage/f9a.java:10`
  `import org.json.JSONObject;`
- `apk_analysis/jadx/sources/defpackage/f9a.java:14`
  `public final fv9 a(JSONObject jSONObject) throws JSONException {`
- `apk_analysis/jadx/sources/defpackage/f9a.java:16`
  `JSONObject jSONObject2 = jSONObject.getJSONObject("text");`
- `apk_analysis/jadx/sources/defpackage/f9a.java:17`
  `JSONObject jSONObject3 = jSONObject.getJSONObject("assets");`
- `apk_analysis/jadx/sources/defpackage/f9a.java:19`
  `fv9.b bVar = new fv9.b(jSONObject2.optString(TJAdUnitConstants.String.TITLE, null), jSONObject2.optString(TtmlNode.TAG_BODY, null), jSONObject2.optString(DynamicLink.Builder.KEY_DOMAIN, null));`
- `apk_analysis/jadx/sources/defpackage/f9a.java:20`
  `JSONArray jSONArrayOptJSONArray = jSONObject3.optJSONArray("first_frame");`
- `apk_analysis/jadx/sources/defpackage/f9a.java:25`
  `JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);`
- `apk_analysis/jadx/sources/defpackage/f9a.java:26`
  `if (jSONObjectOptJSONObject == null) {`
- `apk_analysis/jadx/sources/defpackage/f9a.java:29`
  `String strOptString = jSONObjectOptJSONObject.optString("url", null);`
- `apk_analysis/jadx/sources/defpackage/f9a.java:34`
  `c0187a = new fv9.a.C0187a(strOptString, jSONObjectOptJSONObject.getInt(TJAdUnitConstants.String.WIDTH), jSONObjectOptJSONObject.getInt(TJAdUnitConstants.String.HEIGHT));`
- `apk_analysis/jadx/sources/defpackage/ts5.java:5`
  `import com.google.gson.Gson;`
- `apk_analysis/jadx/sources/defpackage/ts5.java:227`
  `vs5 vs5Var = (vs5) new Gson().a(kd4Var, new x39(vs5.class));`
- `apk_analysis/jadx/sources/defpackage/qn9.java:10`
  `import org.json.JSONObject;`
- `apk_analysis/jadx/sources/defpackage/qn9.java:27`
  `public final m2a a(JSONObject jSONObject, float f, ks9 ks9Var) {`
- `apk_analysis/jadx/sources/defpackage/qn9.java:35`
  `String strOptString = jSONObject.optString(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);`
- `apk_analysis/jadx/sources/defpackage/qn9.java:36`
  `String strOptString2 = jSONObject.optString("url");`
- `apk_analysis/jadx/sources/defpackage/qn9.java:37`
  `boolean zOptBoolean = jSONObject.optBoolean("isImpression", false);`
- `apk_analysis/jadx/sources/defpackage/qn9.java:50`
  `if (jSONObject.has("view")) {`
- `apk_analysis/jadx/sources/defpackage/qn9.java:51`
  `hq9Var = new hq9(strOptString2, jSONObject.optString("view"));`
- `apk_analysis/jadx/sources/defpackage/qn9.java:59`
  `int iOptInt = jSONObject.optInt("viewablePercent", -1);`
- `apk_analysis/jadx/sources/defpackage/qn9.java:61`
  `String strI = y14.i(jSONObject, TypedValues.AttributesType.S_TARGET);`
- `apk_analysis/jadx/sources/defpackage/qn9.java:71`
  `if (jSONObject.has("ovv")) {`
- `apk_analysis/jadx/sources/defpackage/qn9.java:77`
  `ht9Var.h = jSONObject.optBoolean("ovv", false);`
- `apk_analysis/jadx/sources/defpackage/qn9.java:78`
  `if (jSONObject.has("pvalue")) {`
- `apk_analysis/jadx/sources/defpackage/qn9.java:79`
  `float fOptDouble3 = (float) jSONObject.optDouble("pvalue", ht9Var.j);`
- `apk_analysis/jadx/sources/defpackage/qn9.java:81`
  `if (jSONObject.has("value")) {`
- `apk_analysis/jadx/sources/defpackage/qn9.java:82`
  `fOptDouble = (float) jSONObject.optDouble("value", ht9Var.i);`
- `apk_analysis/jadx/sources/defpackage/qn9.java:95`
  `} else if (jSONObject.has("value")) {`
- `apk_analysis/jadx/sources/defpackage/qn9.java:96`
  `fOptDouble = (float) jSONObject.optDouble("value", ht9Var.i);`
- `apk_analysis/jadx/sources/defpackage/qn9.java:108`
  `float fOptDouble4 = (float) jSONObject.optDouble(TypedValues.TransitionType.S_DURATION, -1.0d);`
- `apk_analysis/jadx/sources/defpackage/qn9.java:110`
  `snaVar = new sna(str, fOptDouble4, iOptInt, jSONObject.optBoolean("mrc", true), i, z);`
- `apk_analysis/jadx/sources/defpackage/qn9.java:116`
  `if (jSONObject.has(TypedValues.TransitionType.S_DURATION)) {`
- `apk_analysis/jadx/sources/defpackage/qn9.java:133`
  `if (jSONObject.has("pvalue")) {`
- `apk_analysis/jadx/sources/defpackage/qn9.java:134`
  `float fOptDouble5 = (float) jSONObject.optDouble("pvalue", k8aVar.g);`
- `apk_analysis/jadx/sources/defpackage/qn9.java:137`
  `if (jSONObject.has("value")) {`
- `apk_analysis/jadx/sources/defpackage/qn9.java:138`
  `fOptDouble2 = (float) jSONObject.optDouble("value", k8aVar.f);`
- `apk_analysis/jadx/sources/defpackage/qn9.java:153`
  `if (jSONObject.has("value")) {`
- `apk_analysis/jadx/sources/defpackage/qn9.java:154`
  `fOptDouble2 = (float) jSONObject.optDouble("value", k8aVar.f);`
- `apk_analysis/jadx/sources/defpackage/qn9.java:171`
  `m2aVar.e = jSONObject.optBoolean("needDecodeUrl", m2aVar.e);`
- `apk_analysis/jadx/sources/defpackage/qn9.java:172`
  `String strOptString3 = jSONObject.optString("adsLightType");`
- `apk_analysis/jadx/sources/defpackage/qn9.java:180`
  `public final void b(n4a n4aVar, JSONObject jSONObject, float f) {`
- `apk_analysis/jadx/sources/defpackage/qn9.java:181`
  `c(n4aVar, jSONObject, f, ks9.d);`
- `apk_analysis/jadx/sources/defpackage/qn9.java:184`
  `public final void c(n4a n4aVar, JSONObject jSONObject, float f, ks9 ks9Var) {`
- `apk_analysis/jadx/sources/defpackage/qn9.java:187`
  `JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("statistics");`
- `apk_analysis/jadx/sources/defpackage/qn9.java:191`
  `JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);`
- `apk_analysis/jadx/sources/defpackage/qn9.java:193`
  `if (jSONObjectOptJSONObject == null) {`
- `apk_analysis/jadx/sources/defpackage/qn9.java:196`
  `m2a m2aVarA = a(jSONObjectOptJSONObject, f, ks9VarD);`
- `apk_analysis/jadx/sources/defpackage/fu8.java:3`
  `import kotlinx.serialization.MissingFieldException;`
- `apk_analysis/jadx/sources/defpackage/nk.java:40`
  `al1Var.a("value", rp7.f("kotlinx.serialization.Polymorphic<" + da6Var.a.f() + '>', sp7.a.a, new mp7[0]));`
- `apk_analysis/jadx/sources/defpackage/du0.java:11`
  `import org.json.JSONObject;`
- `apk_analysis/jadx/sources/defpackage/du0.java:36`
  `JSONObject jSONObject = new JSONObject();`
- `apk_analysis/jadx/sources/defpackage/du0.java:39`
  `jSONObject.put((String) entry.getKey(), entry.getValue());`
- `apk_analysis/jadx/sources/defpackage/du0.java:42`
  `jSONObject.put("events", jSONArray);`
- `apk_analysis/jadx/sources/defpackage/du0.java:44`
  `JSONObject jSONObject2 = new JSONObject();`
- `apk_analysis/jadx/sources/defpackage/du0.java:45`
  `jSONObject2.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, entry2.getKey());`
- `apk_analysis/jadx/sources/defpackage/du0.java:46`
  `jSONObject2.put("value", entry2.getValue());`
- `apk_analysis/jadx/sources/defpackage/du0.java:47`
  `jSONArray.put(jSONObject2);`
- `apk_analysis/jadx/sources/defpackage/du0.java:52`
  `String string = jSONObject.toString();`
- `apk_analysis/jadx/sources/defpackage/ng1.java:3`
  `import com.google.gson.Gson;`
- `apk_analysis/jadx/sources/defpackage/ng1.java:59`
  `Gson gsonC = ht3.c();`
- `apk_analysis/jadx/sources/defpackage/ng1.java:61`
  `gsonC.getClass();`
- `apk_analysis/jadx/sources/defpackage/ng1.java:62`
  `hv6 hv6Var = (hv6) gsonC.f(str, new x39<>(og1Var.b));`
- `apk_analysis/jadx/sources/defpackage/ng1.java:65`
  `Gson gsonC2 = ht3.c();`
- `apk_analysis/jadx/sources/defpackage/ng1.java:68`
  `iv6Var = (iv6) ht3.a(gsonC2, str2, type);`
- `apk_analysis/jadx/sources/defpackage/jy2.java:28`
  `al1Var.a("JsonObject", new vc4(new su2(1)));`
- `apk_analysis/jadx/sources/defpackage/in9.java:23`
  `import org.json.JSONObject;`
- `apk_analysis/jadx/sources/defpackage/in9.java:37`
  `public static void b(JSONObject jSONObject, ev9 ev9Var) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:38`
  `ev9Var.a = y14.b(jSONObject, "ctaButtonColor", ev9Var.a);`
- `apk_analysis/jadx/sources/defpackage/in9.java:39`
  `ev9Var.b = y14.b(jSONObject, "ctaButtonTouchColor", ev9Var.b);`
- `apk_analysis/jadx/sources/defpackage/in9.java:40`
  `ev9Var.c = y14.b(jSONObject, "ctaButtonTextColor", ev9Var.c);`
- `apk_analysis/jadx/sources/defpackage/in9.java:41`
  `ev9Var.d = y14.b(jSONObject, "backgroundColor", ev9Var.d);`
- `apk_analysis/jadx/sources/defpackage/in9.java:42`
  `int iB = y14.b(jSONObject, "textColor", ev9Var.e);`
- `apk_analysis/jadx/sources/defpackage/in9.java:44`
  `ev9Var.f = y14.b(jSONObject, "titleTextColor", iB);`
- `apk_analysis/jadx/sources/defpackage/in9.java:45`
  `ev9Var.i = y14.b(jSONObject, "domainTextColor", ev9Var.i);`
- `apk_analysis/jadx/sources/defpackage/in9.java:46`
  `ev9Var.h = y14.b(jSONObject, "progressBarColor", ev9Var.h);`
- `apk_analysis/jadx/sources/defpackage/in9.java:47`
  `ev9Var.g = y14.b(jSONObject, "barColor", ev9Var.g);`
- `apk_analysis/jadx/sources/defpackage/in9.java:48`
  `float fOptDouble = (float) jSONObject.optDouble("barOverlayAlpha", ev9Var.j);`
- `apk_analysis/jadx/sources/defpackage/in9.java:52`
  `String strOptString = jSONObject.optString("storeIcon");`
- `apk_analysis/jadx/sources/defpackage/in9.java:108`
  `public final jia a(JSONObject jSONObject, String str, j8a j8aVar, yda ydaVar) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:120`
  `JSONObject jSONObject2;`
- `apk_analysis/jadx/sources/defpackage/in9.java:123`
  `JSONObject jSONObjectOptJSONObject;`
- `apk_analysis/jadx/sources/defpackage/in9.java:128`
  `JSONObject jSONObjectOptJSONObject2;`
- `apk_analysis/jadx/sources/defpackage/in9.java:132`
  `JSONObject jSONObjectOptJSONObject3;`
- `apk_analysis/jadx/sources/defpackage/in9.java:133`
  `JSONObject jSONObjectOptJSONObject4;`
- `apk_analysis/jadx/sources/defpackage/in9.java:134`
  `JSONObject jSONObjectOptJSONObject5;`
- `apk_analysis/jadx/sources/defpackage/in9.java:148`
  `JSONObject jSONObjectOptJSONObject6;`
- `apk_analysis/jadx/sources/defpackage/in9.java:149`
  `JSONObject jSONObjectOptJSONObject7;`
- `apk_analysis/jadx/sources/defpackage/in9.java:151`
  `JSONObject jSONObjectOptJSONObject8;`
- `apk_analysis/jadx/sources/defpackage/in9.java:153`
  `JSONObject jSONObjectOptJSONObject9;`
- `apk_analysis/jadx/sources/defpackage/in9.java:154`
  `JSONObject jSONObjectOptJSONObject10;`
- `apk_analysis/jadx/sources/defpackage/in9.java:157`
  `JSONObject jSONObjectOptJSONObject11;`
- `apk_analysis/jadx/sources/defpackage/in9.java:158`
  `JSONObject jSONObjectOptJSONObject12;`
- `apk_analysis/jadx/sources/defpackage/in9.java:161`
  `JSONObject jSONObjectOptJSONObject13;`
- `apk_analysis/jadx/sources/defpackage/in9.java:164`
  `JSONObject jSONObjectOptJSONObject14;`
- `apk_analysis/jadx/sources/defpackage/in9.java:187`
  `String strOptString9 = jSONObject.optString(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "");`
- `apk_analysis/jadx/sources/defpackage/in9.java:190`
  `boolean zHas = jSONObject.has("bannerID");`
- `apk_analysis/jadx/sources/defpackage/in9.java:193`
  `strOptString = jSONObject.optString("bannerID");`
- `apk_analysis/jadx/sources/defpackage/in9.java:203`
  `if (jSONObject.has(TtmlNode.ATTR_ID)) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:204`
  `strOptString = jSONObject.optString(TtmlNode.ATTR_ID);`
- `apk_analysis/jadx/sources/defpackage/in9.java:218`
  `String strS = y14.s(jSONObject, "impressionId");`
- `apk_analysis/jadx/sources/defpackage/in9.java:219`
  `zm9 zm9Var = new zm9(str2, strS, y14.s(jSONObject, "padId"), y14.s(jSONObject, "patternId"), (!jSONObject.has("dspId") || jSONObject.isNull("dspId") || (iOptInt = jSONObject.optInt("dspId", -1)) == -1) ? null : Integer.valueOf(iOptInt), y14.q(jSONObject));`
- `apk_analysis/jadx/sources/defpackage/in9.java:279`
  `c(jSONObject, vy9Var);`
- `apk_analysis/jadx/sources/defpackage/in9.java:280`
  `JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray(TJAdUnitConstants.String.PORTRAIT);`
- `apk_analysis/jadx/sources/defpackage/in9.java:281`
  `JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray(TJAdUnitConstants.String.LANDSCAPE);`
- `apk_analysis/jadx/sources/defpackage/in9.java:290`
  `JSONObject jSONObjectOptJSONObject15 = jSONArrayOptJSONArray3.optJSONObject(i5);`
- `apk_analysis/jadx/sources/defpackage/in9.java:291`
  `if (jSONObjectOptJSONObject15 != null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:292`
  `String strOptString10 = jSONObjectOptJSONObject15.optString("imageLink");`
- `apk_analysis/jadx/sources/defpackage/in9.java:296`
  `int iOptInt2 = jSONObjectOptJSONObject15.optInt(str44);`
- `apk_analysis/jadx/sources/defpackage/in9.java:297`
  `int iOptInt3 = jSONObjectOptJSONObject15.optInt(str45);`
- `apk_analysis/jadx/sources/defpackage/in9.java:314`
  `JSONObject jSONObjectOptJSONObject16 = jSONArrayOptJSONArray4.optJSONObject(i6);`
- `apk_analysis/jadx/sources/defpackage/in9.java:315`
  `if (jSONObjectOptJSONObject16 != null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:316`
  `String strOptString11 = jSONObjectOptJSONObject16.optString("imageLink");`
- `apk_analysis/jadx/sources/defpackage/in9.java:320`
  `int iOptInt4 = jSONObjectOptJSONObject16.optInt(str44);`
- `apk_analysis/jadx/sources/defpackage/in9.java:321`
  `int iOptInt5 = jSONObjectOptJSONObject16.optInt(str45);`
- `apk_analysis/jadx/sources/defpackage/in9.java:345`
  `c(jSONObject, wv9Var);`
- `apk_analysis/jadx/sources/defpackage/in9.java:346`
  `String strA = qw9.a(jSONObject, j8aVar, ks9.d);`
- `apk_analysis/jadx/sources/defpackage/in9.java:381`
  `strInjectScriptContentIntoHtml = ScriptInjector.injectScriptContentIntoHtml(";(function(omidGlobal) {\n  'use strict';var n;function aa(a){var b=0;return function(){return b<a.length?{done:!1,value:a[b++]}:{done:!0}}}function p(a){var b='undefined'!=typeof Symbol&&Symbol.iterator&&a[Symbol.iterator];return b?b.call(a):{next:aa(a)}}function q(a){if(!(a instanceof Array)){a=p(a);for(var b,c=[];!(b=a.next()).done;)c.push(b.value);a=c}return a}var ba='function'==typeof Object.create?Object.create:function(a){function b(){}b.prototype=a;return new b},ca;\nif('function'==typeof Object.setPrototypeOf)ca=Object.setPrototypeOf;else{var da;a:{var ea={S:!0},fa={};try{fa.__proto__=ea;da=fa.S;break a}catch(a){}da=!1}ca=da?function(a,b){a.__proto__=b;if(a.__proto__!==b)throw new TypeError(a+' is not extensible');return a}:null}var ha=ca;\nfunction r(a,b){a.prototype=ba(b.prototype);a.prototype.constru ... [truncated]`
- `apk_analysis/jadx/sources/defpackage/in9.java:390`
  `wv9Var.Z = jSONObject.optBoolean("forceWebMediaPlayback");`
- `apk_analysis/jadx/sources/defpackage/in9.java:392`
  `wv9Var.Y = (float) jSONObject.optDouble("timeToReward", wv9Var.Y);`
- `apk_analysis/jadx/sources/defpackage/in9.java:401`
  `c(jSONObject, xdaVar2);`
- `apk_analysis/jadx/sources/defpackage/in9.java:402`
  `JSONObject jSONObjectOptJSONObject17 = jSONObject.optJSONObject("styleSettings");`
- `apk_analysis/jadx/sources/defpackage/in9.java:403`
  `if (jSONObjectOptJSONObject17 != null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:404`
  `b(jSONObjectOptJSONObject17, xdaVar2.X);`
- `apk_analysis/jadx/sources/defpackage/in9.java:410`
  `xdaVar2.f0 = jSONObject.optInt("style", xdaVar2.f0);`
- `apk_analysis/jadx/sources/defpackage/in9.java:412`
  `xdaVar2.d0 = jSONObject.optBoolean("closeOnClick", xdaVar2.k());`
- `apk_analysis/jadx/sources/defpackage/in9.java:413`
  `xdaVar2.e0 = jSONObject.optBoolean("videoRequired", xdaVar2.e0);`
- `apk_analysis/jadx/sources/defpackage/in9.java:414`
  `xdaVar2.L = jSONObject.optBoolean("isSmartBanner", xdaVar2.L);`
- `apk_analysis/jadx/sources/defpackage/in9.java:415`
  `jSONObject.optString("pattern");`
- `apk_analysis/jadx/sources/defpackage/in9.java:416`
  `JSONArray jSONArrayOptJSONArray5 = jSONObject.optJSONArray("cards");`
- `apk_analysis/jadx/sources/defpackage/in9.java:425`
  `JSONObject jSONObjectOptJSONObject18 = jSONArrayOptJSONArray5.optJSONObject(i8);`
- `apk_analysis/jadx/sources/defpackage/in9.java:427`
  `if (jSONObjectOptJSONObject18 != null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:450`
  `this.a.b(jSONObjectOptJSONObject18, fo9Var, ks9.d);`
- `apk_analysis/jadx/sources/defpackage/in9.java:451`
  `if (!jSONObjectOptJSONObject18.has(str33)) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:457`
  `fo9Var.B = jSONObjectOptJSONObject18.optString("cardID", fo9Var.B);`
- `apk_analysis/jadx/sources/defpackage/in9.java:479`
  `if (!arrayList3.isEmpty() || (jSONObjectOptJSONObject = jSONObject.optJSONObject(MimeTypes.BASE_TYPE_VIDEO)) == null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:480`
  `jSONObject2 = jSONObject;`
- `apk_analysis/jadx/sources/defpackage/in9.java:489`
  `qw9Var.b(jSONObjectOptJSONObject, khaVar, new ks9(ks9Var.a, ks9Var.b, ks9Var.c));`
- `apk_analysis/jadx/sources/defpackage/in9.java:491`
  `p0aVar.a(jSONObjectOptJSONObject, khaVar);`
- `apk_analysis/jadx/sources/defpackage/in9.java:499`
  `khaVar.T = jSONObjectOptJSONObject.optString(str42, "Close");`
- `apk_analysis/jadx/sources/defpackage/in9.java:500`
  `khaVar.U = jSONObjectOptJSONObject.optString("replayActionText", khaVar.U);`
- `apk_analysis/jadx/sources/defpackage/in9.java:501`
  `khaVar.V = jSONObjectOptJSONObject.optString(str40, khaVar.V);`
- `apk_analysis/jadx/sources/defpackage/in9.java:503`
  `khaVar.X = bool != null ? bool.booleanValue() : jSONObjectOptJSONObject.optBoolean("automute", khaVar.X);`
- `apk_analysis/jadx/sources/defpackage/in9.java:504`
  `khaVar.b0 = jSONObjectOptJSONObject.optBoolean("showPlayerControls", khaVar.b0);`
- `apk_analysis/jadx/sources/defpackage/in9.java:506`
  `khaVar.Y = bool2 != null ? bool2.booleanValue() : jSONObjectOptJSONObject.optBoolean("autoplay", khaVar.Y);`
- `apk_analysis/jadx/sources/defpackage/in9.java:507`
  `khaVar.Z = jSONObjectOptJSONObject.optBoolean("hasCtaButton", khaVar.Z);`
- `apk_analysis/jadx/sources/defpackage/in9.java:508`
  `khaVar.g0 = (float) jSONObjectOptJSONObject.optDouble("allowSkipDelay", khaVar.g0);`
- `apk_analysis/jadx/sources/defpackage/in9.java:509`
  `khaVar.d0 = jSONObjectOptJSONObject.optBoolean("allowSkip", khaVar.d0);`
- `apk_analysis/jadx/sources/defpackage/in9.java:510`
  `p0aVar.a(jSONObjectOptJSONObject, khaVar);`
- `apk_analysis/jadx/sources/defpackage/in9.java:512`
  `khaVar.c0 = bool3 != null ? bool3.booleanValue() : jSONObjectOptJSONObject.optBoolean("allowClose", khaVar.c0);`
- `apk_analysis/jadx/sources/defpackage/in9.java:514`
  `khaVar.e0 = bool4 != null ? bool4.booleanValue() : jSONObjectOptJSONObject.optBoolean("hasPause", khaVar.e0);`
- `apk_analysis/jadx/sources/defpackage/in9.java:516`
  `khaVar.a0 = bool5 != null ? bool5.booleanValue() : jSONObjectOptJSONObject.optBoolean("allowReplay", khaVar.a0);`
- `apk_analysis/jadx/sources/defpackage/in9.java:519`
  `fOptDouble = (float) jSONObjectOptJSONObject.optDouble("allowCloseDelay", khaVar.f0);`
- `apk_analysis/jadx/sources/defpackage/in9.java:522`
  `JSONObject jSONObjectOptJSONObject19 = jSONObjectOptJSONObject.optJSONObject("shoppable");`
- `apk_analysis/jadx/sources/defpackage/in9.java:524`
  `if (jSONObjectOptJSONObject19 != null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:525`
  `String strOptString12 = jSONObjectOptJSONObject19.optString(str56);`
- `apk_analysis/jadx/sources/defpackage/in9.java:531`
  `int iOptInt6 = jSONObjectOptJSONObject19.optInt("interactionTimeout", 2);`
- `apk_analysis/jadx/sources/defpackage/in9.java:532`
  `if (!jSONObjectOptJSONObject19.has("interactionTimeout") || iOptInt6 < 0) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:538`
  `qw9Var.b(jSONObjectOptJSONObject19, n1aVar, ks9Var);`
- `apk_analysis/jadx/sources/defpackage/in9.java:545`
  `JSONObject jSONObjectOptJSONObject20 = jSONObjectOptJSONObject.optJSONObject("shoppableAdsData");`
- `apk_analysis/jadx/sources/defpackage/in9.java:546`
  `if (jSONObjectOptJSONObject20 != null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:549`
  `boolean zHas2 = jSONObjectOptJSONObject20.has(str48);`
- `apk_analysis/jadx/sources/defpackage/in9.java:551`
  `qn9Var.b(n4aVar, jSONObjectOptJSONObject20, -1.0f);`
- `apk_analysis/jadx/sources/defpackage/in9.java:553`
  `JSONArray jSONArrayOptJSONArray6 = jSONObjectOptJSONObject20.optJSONArray(FirebaseAnalytics.Param.ITEMS);`
- `apk_analysis/jadx/sources/defpackage/in9.java:561`
  `JSONObject jSONObjectOptJSONObject21 = jSONArrayOptJSONArray6.optJSONObject(i10);`
- `apk_analysis/jadx/sources/defpackage/in9.java:562`
  `if (jSONObjectOptJSONObject21 == null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:569`
  `if (TextUtils.isEmpty(jSONObjectOptJSONObject21.getString(str36))) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:576`
  `if (TextUtils.isEmpty(jSONObjectOptJSONObject21.getString(str57))) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:582`
  `if (TextUtils.isEmpty(jSONObjectOptJSONObject21.getString("picture"))) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:585`
  `if (TextUtils.isEmpty(jSONObjectOptJSONObject21.getString("text"))) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:588`
  `if (jSONObjectOptJSONObject21.has("oldPrice")) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:589`
  `jSONObjectOptJSONObject21.getString("oldPrice");`
- `apk_analysis/jadx/sources/defpackage/in9.java:591`
  `if (jSONObjectOptJSONObject21.has(FirebaseAnalytics.Param.PRICE)) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:592`
  `jSONObjectOptJSONObject21.getString(FirebaseAnalytics.Param.PRICE);`
- `apk_analysis/jadx/sources/defpackage/in9.java:594`
  `if (jSONObjectOptJSONObject21.has("deeplink")) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:595`
  `jSONObjectOptJSONObject21.getString("deeplink");`
- `apk_analysis/jadx/sources/defpackage/in9.java:597`
  `if (jSONObjectOptJSONObject21.has("deeplink_fallback_url")) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:598`
  `jSONObjectOptJSONObject21.getString("deeplink_fallback_url");`
- `apk_analysis/jadx/sources/defpackage/in9.java:601`
  `qn9Var.b(new n4a(pp9.d), jSONObjectOptJSONObject21, -1.0f);`
- `apk_analysis/jadx/sources/defpackage/in9.java:624`
  `jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("companionAds");`
- `apk_analysis/jadx/sources/defpackage/in9.java:628`
  `jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i2);`
- `apk_analysis/jadx/sources/defpackage/in9.java:629`
  `if (jSONObjectOptJSONObject2 == null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:631`
  `qw9Var.b(jSONObjectOptJSONObject2, g1aVar, ks9.d);`
- `apk_analysis/jadx/sources/defpackage/in9.java:635`
  `jSONObjectOptJSONObject2.optInt("assetWidth");`
- `apk_analysis/jadx/sources/defpackage/in9.java:636`
  `jSONObjectOptJSONObject2.optInt("assetHeight");`
- `apk_analysis/jadx/sources/defpackage/in9.java:637`
  `jSONObjectOptJSONObject2.optInt("expandedWidth");`
- `apk_analysis/jadx/sources/defpackage/in9.java:638`
  `jSONObjectOptJSONObject2.optInt("expandedHeight");`
- `apk_analysis/jadx/sources/defpackage/in9.java:639`
  `g1aVar.R = jSONObjectOptJSONObject2.optString("staticResource");`
- `apk_analysis/jadx/sources/defpackage/in9.java:640`
  `jSONObjectOptJSONObject2.optString("iframeResource");`
- `apk_analysis/jadx/sources/defpackage/in9.java:641`
  `g1aVar.S = jSONObjectOptJSONObject2.optString("htmlResource");`
- `apk_analysis/jadx/sources/defpackage/in9.java:642`
  `jSONObjectOptJSONObject2.optString("apiFramework");`
- `apk_analysis/jadx/sources/defpackage/in9.java:643`
  `jSONObjectOptJSONObject2.optString("adSlotID");`
- `apk_analysis/jadx/sources/defpackage/in9.java:644`
  `strOptString3 = jSONObjectOptJSONObject2.optString("required");`
- `apk_analysis/jadx/sources/defpackage/in9.java:655`
  `strOptString4 = jSONObjectOptJSONObject.optString(str51);`
- `apk_analysis/jadx/sources/defpackage/in9.java:657`
  `khaVar.S = h14.a(jSONObjectOptJSONObject.optInt(str49), jSONObjectOptJSONObject.optInt(str47), strOptString4);`
- `apk_analysis/jadx/sources/defpackage/in9.java:659`
  `TextUtils.isEmpty(jSONObjectOptJSONObject.optString("aboutCompany"));`
- `apk_analysis/jadx/sources/defpackage/in9.java:660`
  `TextUtils.isEmpty(jSONObjectOptJSONObject.optString("marker"));`
- `apk_analysis/jadx/sources/defpackage/in9.java:661`
  `jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject("cta");`
- `apk_analysis/jadx/sources/defpackage/in9.java:662`
  `if (jSONObjectOptJSONObject3 != null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:663`
  `strOptString8 = jSONObjectOptJSONObject3.optString(str36);`
- `apk_analysis/jadx/sources/defpackage/in9.java:669`
  `if (TextUtils.isEmpty(jSONObjectOptJSONObject3.optString("buttonText"))) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:672`
  `if (TextUtils.isEmpty(jSONObjectOptJSONObject3.optString("additionalText"))) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:675`
  `if (y14.b(jSONObjectOptJSONObject3, "buttonColor", Integer.MAX_VALUE) == Integer.MAX_VALUE) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:678`
  `if (y14.b(jSONObjectOptJSONObject3, "buttonTextColor", Integer.MAX_VALUE) == Integer.MAX_VALUE) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:681`
  `if (jSONObjectOptJSONObject3.has("icon")) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:682`
  `p0a.b(jSONObjectOptJSONObject13);`
- `apk_analysis/jadx/sources/defpackage/in9.java:689`
  `jSONObjectOptJSONObject4 = jSONObjectOptJSONObject.optJSONObject("qrCta");`
- `apk_analysis/jadx/sources/defpackage/in9.java:690`
  `if (jSONObjectOptJSONObject4 != null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:691`
  `jSONObjectOptJSONObject7 = jSONObjectOptJSONObject4.optJSONObject("timers");`
- `apk_analysis/jadx/sources/defpackage/in9.java:692`
  `if (jSONObjectOptJSONObject7 != null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:694`
  `jSONObjectOptJSONObject7.getInt("startValue");`
- `apk_analysis/jadx/sources/defpackage/in9.java:699`
  `jSONObjectOptJSONObject7.getInt("startPvalue");`
- `apk_analysis/jadx/sources/defpackage/in9.java:704`
  `jSONObjectOptJSONObject7.getInt("extraDuration");`
- `apk_analysis/jadx/sources/defpackage/in9.java:713`
  `jSONObjectOptJSONObject8 = jSONObjectOptJSONObject4.optJSONObject("qrImage");`
- `apk_analysis/jadx/sources/defpackage/in9.java:714`
  `if (jSONObjectOptJSONObject8 != null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:715`
  `h14VarD = y14.d(jSONObjectOptJSONObject8);`
- `apk_analysis/jadx/sources/defpackage/in9.java:720`
  `jSONObjectOptJSONObject9 = jSONObjectOptJSONObject4.optJSONObject("qrIconImage");`
- `apk_analysis/jadx/sources/defpackage/in9.java:721`
  `if (jSONObjectOptJSONObject9 != null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:722`
  `y14.e(jSONObjectOptJSONObject12);`
- `apk_analysis/jadx/sources/defpackage/in9.java:724`
  `jSONObjectOptJSONObject10 = jSONObjectOptJSONObject4.optJSONObject("additionalImage");`
- `apk_analysis/jadx/sources/defpackage/in9.java:725`
  `if (jSONObjectOptJSONObject10 != null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:726`
  `y14.d(jSONObjectOptJSONObject10);`
- `apk_analysis/jadx/sources/defpackage/in9.java:728`
  `strOptString6 = jSONObjectOptJSONObject4.optString(str33);`
- `apk_analysis/jadx/sources/defpackage/in9.java:733`
  `strOptString7 = jSONObjectOptJSONObject4.optString("additionalText");`
- `apk_analysis/jadx/sources/defpackage/in9.java:738`
  `jSONObjectOptJSONObject11 = jSONObjectOptJSONObject4.optJSONObject("position");`
- `apk_analysis/jadx/sources/defpackage/in9.java:739`
  `if (jSONObjectOptJSONObject11 != null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:740`
  `y14.e(jSONObjectOptJSONObject11);`
- `apk_analysis/jadx/sources/defpackage/in9.java:742`
  `jSONObjectOptJSONObject4.optString("colorScheme").getClass();`
- `apk_analysis/jadx/sources/defpackage/in9.java:749`
  `jSONObjectOptJSONObject5 = jSONObjectOptJSONObject.optJSONObject("postView");`
- `apk_analysis/jadx/sources/defpackage/in9.java:750`
  `if (jSONObjectOptJSONObject5 != null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:751`
  `strOptString5 = jSONObjectOptJSONObject5.optString("text");`
- `apk_analysis/jadx/sources/defpackage/in9.java:755`
  `if (jSONObjectOptJSONObject5.has("backgroundImage")) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:769`
  `jSONObjectOptJSONObject5.optBoolean("pauseOnHide", false);`
- `apk_analysis/jadx/sources/defpackage/in9.java:770`
  `if (y14.b(jSONObjectOptJSONObject5, "overlay", Integer.MAX_VALUE) == Integer.MAX_VALUE) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:773`
  `jSONObjectOptJSONObject5.optDouble(str3, 3.0d);`
- `apk_analysis/jadx/sources/defpackage/in9.java:777`
  `jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray(str43);`
- `apk_analysis/jadx/sources/defpackage/in9.java:788`
  `jSONObject2 = jSONObject;`
- `apk_analysis/jadx/sources/defpackage/in9.java:789`
  `jSONObjectOptJSONObject14 = jSONObject2.optJSONObject("endcard");`
- `apk_analysis/jadx/sources/defpackage/in9.java:790`
  `if (jSONObjectOptJSONObject14 != null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:791`
  `jiaVarA = a(jSONObjectOptJSONObject14, str, j8aVar, ydaVar3);`
- `apk_analysis/jadx/sources/defpackage/in9.java:797`
  `strOptString2 = jSONObject2.optString("adIconLink");`
- `apk_analysis/jadx/sources/defpackage/in9.java:800`
  `xdaVar.c0 = jSONObject2.optString("adIconClickLink");`
- `apk_analysis/jadx/sources/defpackage/in9.java:857`
  `jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("companionAds");`
- `apk_analysis/jadx/sources/defpackage/in9.java:861`
  `jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i2);`
- `apk_analysis/jadx/sources/defpackage/in9.java:862`
  `if (jSONObjectOptJSONObject2 == null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:864`
  `qw9Var.b(jSONObjectOptJSONObject2, g1aVar, ks9.d);`
- `apk_analysis/jadx/sources/defpackage/in9.java:866`
  `jSONObjectOptJSONObject2.optInt("assetWidth");`
- `apk_analysis/jadx/sources/defpackage/in9.java:867`
  `jSONObjectOptJSONObject2.optInt("assetHeight");`
- `apk_analysis/jadx/sources/defpackage/in9.java:868`
  `jSONObjectOptJSONObject2.optInt("expandedWidth");`
- `apk_analysis/jadx/sources/defpackage/in9.java:869`
  `jSONObjectOptJSONObject2.optInt("expandedHeight");`
- `apk_analysis/jadx/sources/defpackage/in9.java:870`
  `g1aVar.R = jSONObjectOptJSONObject2.optString("staticResource");`
- `apk_analysis/jadx/sources/defpackage/in9.java:871`
  `jSONObjectOptJSONObject2.optString("iframeResource");`
- `apk_analysis/jadx/sources/defpackage/in9.java:872`
  `g1aVar.S = jSONObjectOptJSONObject2.optString("htmlResource");`
- `apk_analysis/jadx/sources/defpackage/in9.java:873`
  `jSONObjectOptJSONObject2.optString("apiFramework");`
- `apk_analysis/jadx/sources/defpackage/in9.java:874`
  `jSONObjectOptJSONObject2.optString("adSlotID");`
- `apk_analysis/jadx/sources/defpackage/in9.java:875`
  `strOptString3 = jSONObjectOptJSONObject2.optString("required");`
- `apk_analysis/jadx/sources/defpackage/in9.java:888`
  `strOptString4 = jSONObjectOptJSONObject.optString(str51);`
- `apk_analysis/jadx/sources/defpackage/in9.java:890`
  `khaVar.S = h14.a(jSONObjectOptJSONObject.optInt(str49), jSONObjectOptJSONObject.optInt(str47), strOptString4);`
- `apk_analysis/jadx/sources/defpackage/in9.java:892`
  `TextUtils.isEmpty(jSONObjectOptJSONObject.optString("aboutCompany"));`
- `apk_analysis/jadx/sources/defpackage/in9.java:893`
  `TextUtils.isEmpty(jSONObjectOptJSONObject.optString("marker"));`
- `apk_analysis/jadx/sources/defpackage/in9.java:894`
  `jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject("cta");`
- `apk_analysis/jadx/sources/defpackage/in9.java:895`
  `if (jSONObjectOptJSONObject3 != null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:896`
  `strOptString8 = jSONObjectOptJSONObject3.optString(str36);`
- `apk_analysis/jadx/sources/defpackage/in9.java:902`
  `if (TextUtils.isEmpty(jSONObjectOptJSONObject3.optString("buttonText"))) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:905`
  `if (TextUtils.isEmpty(jSONObjectOptJSONObject3.optString("additionalText"))) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:908`
  `if (y14.b(jSONObjectOptJSONObject3, "buttonColor", Integer.MAX_VALUE) == Integer.MAX_VALUE) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:911`
  `if (y14.b(jSONObjectOptJSONObject3, "buttonTextColor", Integer.MAX_VALUE) == Integer.MAX_VALUE) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:914`
  `if (jSONObjectOptJSONObject3.has("icon") && (jSONObjectOptJSONObject13 = jSONObjectOptJSONObject3.optJSONObject("icon")) != null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:915`
  `p0a.b(jSONObjectOptJSONObject13);`
- `apk_analysis/jadx/sources/defpackage/in9.java:922`
  `jSONObjectOptJSONObject4 = jSONObjectOptJSONObject.optJSONObject("qrCta");`
- `apk_analysis/jadx/sources/defpackage/in9.java:923`
  `if (jSONObjectOptJSONObject4 != null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:924`
  `jSONObjectOptJSONObject7 = jSONObjectOptJSONObject4.optJSONObject("timers");`
- `apk_analysis/jadx/sources/defpackage/in9.java:925`
  `if (jSONObjectOptJSONObject7 != null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:926`
  `jSONObjectOptJSONObject7.getInt("startValue");`
- `apk_analysis/jadx/sources/defpackage/in9.java:927`
  `jSONObjectOptJSONObject7.getInt("startPvalue");`
- `apk_analysis/jadx/sources/defpackage/in9.java:928`
  `jSONObjectOptJSONObject7.getInt("extraDuration");`
- `apk_analysis/jadx/sources/defpackage/in9.java:934`
  `jSONObjectOptJSONObject8 = jSONObjectOptJSONObject4.optJSONObject("qrImage");`
- `apk_analysis/jadx/sources/defpackage/in9.java:935`
  `if (jSONObjectOptJSONObject8 != null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:936`
  `h14VarD = y14.d(jSONObjectOptJSONObject8);`
- `apk_analysis/jadx/sources/defpackage/in9.java:941`
  `jSONObjectOptJSONObject9 = jSONObjectOptJSONObject4.optJSONObject("qrIconImage");`
- `apk_analysis/jadx/sources/defpackage/in9.java:942`
  `if (jSONObjectOptJSONObject9 != null && y14.d(jSONObjectOptJSONObject9) != null && (jSONObjectOptJSONObject12 = jSONObjectOptJSONObject9.optJSONObject("position")) != null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:943`
  `y14.e(jSONObjectOptJSONObject12);`
- `apk_analysis/jadx/sources/defpackage/in9.java:945`
  `jSONObjectOptJSONObject10 = jSONObjectOptJSONObject4.optJSONObject("additionalImage");`
- `apk_analysis/jadx/sources/defpackage/in9.java:946`
  `if (jSONObjectOptJSONObject10 != null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:947`
  `y14.d(jSONObjectOptJSONObject10);`
- `apk_analysis/jadx/sources/defpackage/in9.java:949`
  `strOptString6 = jSONObjectOptJSONObject4.optString(str33);`
- `apk_analysis/jadx/sources/defpackage/in9.java:954`
  `strOptString7 = jSONObjectOptJSONObject4.optString("additionalText");`
- `apk_analysis/jadx/sources/defpackage/in9.java:959`
  `jSONObjectOptJSONObject11 = jSONObjectOptJSONObject4.optJSONObject("position");`
- `apk_analysis/jadx/sources/defpackage/in9.java:960`
  `if (jSONObjectOptJSONObject11 != null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:961`
  `y14.e(jSONObjectOptJSONObject11);`
- `apk_analysis/jadx/sources/defpackage/in9.java:963`
  `jSONObjectOptJSONObject4.optString("colorScheme").getClass();`
- `apk_analysis/jadx/sources/defpackage/in9.java:969`
  `jSONObjectOptJSONObject5 = jSONObjectOptJSONObject.optJSONObject("postView");`
- `apk_analysis/jadx/sources/defpackage/in9.java:970`
  `if (jSONObjectOptJSONObject5 != null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:971`
  `strOptString5 = jSONObjectOptJSONObject5.optString("text");`
- `apk_analysis/jadx/sources/defpackage/in9.java:975`
  `if (jSONObjectOptJSONObject5.has("backgroundImage") || (jSONObjectOptJSONObject6 = jSONObjectOptJSONObject5.optJSONObject("backgroundImage")) == null) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:978`
  `h14VarB = p0a.b(jSONObjectOptJSONObject6);`

### Token Fields — 500

- `apk_analysis/jadx/sources/defpackage/xb9.java:24`
  `String string3 = jSONObject.getString("authToken");`
- `apk_analysis/jadx/sources/defpackage/ql1.java:8`
  `public static final int APP_INSTANCE_ID_TOKEN_FIELD_NUMBER = 3;`
- `apk_analysis/jadx/sources/defpackage/ql1.java:14`
  `private String appInstanceIdToken_ = "";`
- `apk_analysis/jadx/sources/defpackage/ql1.java:92`
  `this.appInstanceIdToken_ = str;`
- `apk_analysis/jadx/sources/defpackage/ql1.java:109`
  `return o.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ", new Object[]{"gmpAppId_", "appInstanceId_", "appInstanceIdToken_"});`
- `apk_analysis/jadx/sources/defpackage/x39.java:42`
  `StringBuilder sb = new StringBuilder("TypeToken type argument must not contain a type variable; captured type variable ");`
- `apk_analysis/jadx/sources/defpackage/x39.java:46`
  `cg.g(sb, "\nSee ", "https://github.com/google/gson/blob/main/Troubleshooting.md#".concat("typetoken-type-variable"));`
- `apk_analysis/jadx/sources/defpackage/ab1.java:32`
  `return ((uv2) obj3).a.c(oz6Var, "Bearer ".concat((String) obj2)).g(ne7.b);`
- `apk_analysis/jadx/sources/defpackage/k95.java:145`
  `a(MimeTypes.BASE_TYPE_APPLICATION, "jwt");`
- `apk_analysis/jadx/sources/defpackage/s0.java:70`
  `return b2 == 127 ? "invalid token" : "valid token";`
- `apk_analysis/jadx/sources/yads/uz5.java:332`
  `return new vo2("Invalid token '" + tz5Var.a() + "' at position " + tz5Var.c());`
- `apk_analysis/jadx/sources/com/android/billingclient/api/zzdh.java:94`
  `zzq = ni0.b(-2, "Client does not support offer_id_token.");`
- `apk_analysis/jadx/sources/com/android/billingclient/api/BillingClientImpl.java:2127`
  `zzbD(billingResult6, zzjs.OFFER_ID_TOKEN_NOT_SUPPORTED, 7);`
- `apk_analysis/jadx/sources/com/android/billingclient/api/BillingClientImpl.java:2380`
  `bundleZzf.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList4);`
- `apk_analysis/jadx/sources/com/android/billingclient/api/BillingClientImpl.java:2417`
  `if (bundleZzf.containsKey("SKU_OFFER_ID_TOKEN_LIST") && !this.zzr) {`
- `apk_analysis/jadx/sources/com/android/billingclient/api/BillingClientImpl.java:2418`
  `zzjs zzjsVar9 = zzjs.OFFER_ID_TOKEN_NOT_SUPPORTED;`
- `apk_analysis/jadx/sources/com/android/billingclient/api/ProductDetails.java:189`
  `String strOptString = jSONObject.optString("offerIdToken");`
- `apk_analysis/jadx/sources/com/android/billingclient/api/ProductDetails.java:367`
  `this.zzc = jSONObject.getString("offerIdToken");`
- `apk_analysis/jadx/sources/com/google/firebase/messaging/FirebaseMessaging.java:468`
  `if (!tokenNeedsRefresh(tokenWithoutTriggeringSync)) {`
- `apk_analysis/jadx/sources/com/google/firebase/messaging/Metadata.java:17`
  `private static final String ACTION_IID_TOKEN_REQUEST = "com.google.iid.TOKEN_REQUEST";`
- `apk_analysis/jadx/sources/com/google/firebase/messaging/Metadata.java:124`
  `Intent intent2 = new Intent(ACTION_IID_TOKEN_REQUEST);`
- `apk_analysis/jadx/sources/com/google/firebase/messaging/GmsRpc.java:50`
  `private static final String PARAM_FIS_AUTH_TOKEN = "Goog-Firebase-Installations-Auth";`
- `apk_analysis/jadx/sources/com/google/firebase/messaging/GmsRpc.java:146`
  `Log.w("FirebaseMessaging", "FIS auth token is empty");`
- `apk_analysis/jadx/sources/com/google/firebase/messaging/GmsRpc.java:148`
  `bundle.putString(PARAM_FIS_AUTH_TOKEN, token);`
- `apk_analysis/jadx/sources/com/google/firebase/messaging/GmsRpc.java:152`
  `Log.e("FirebaseMessaging", "Failed to get FIS auth token", e);`
- `apk_analysis/jadx/sources/com/google/firebase/messaging/GmsRpc.java:155`
  `Log.e("FirebaseMessaging", "Failed to get FIS auth token", e);`
- `apk_analysis/jadx/sources/com/google/firebase/messaging/SyncTask.java:85`
  `public boolean maybeRefreshToken() throws IOException {`
- `apk_analysis/jadx/sources/com/google/firebase/messaging/SyncTask.java:122`
  `boolean zMaybeRefreshToken = maybeRefreshToken();`
- `apk_analysis/jadx/sources/com/google/firebase/messaging/SyncTask.java:124`
  `if (zMaybeRefreshToken) {`
- `apk_analysis/jadx/sources/com/google/firebase/remoteconfig/RemoteConfigConstants.java:28`
  `public static final String INSTANCE_ID_TOKEN = "appInstanceIdToken";`
- `apk_analysis/jadx/sources/com/google/firebase/sessions/SessionFirelogPublisherImpl.java:134`
  `sessionFirelogPublisherImpl.attemptLoggingSessionEvent(sessionEvents2.buildSession(firebaseApp, sessionDetails2, sessionsSettings2, (Map) obj, installationId2.getFid(), installationId2.getAuthToken()));`
- `apk_analysis/jadx/sources/com/google/firebase/sessions/SessionFirelogPublisherImpl.java:163`
  `sessionFirelogPublisherImpl.attemptLoggingSessionEvent(sessionEvents2.buildSession(firebaseApp, sessionDetails2, sessionsSettings2, (Map) obj, installationId2.getFid(), installationId2.getAuthToken()));`
- `apk_analysis/jadx/sources/com/google/firebase/sessions/InstallationId.java:8`
  `private final String authToken;`
- `apk_analysis/jadx/sources/com/google/firebase/sessions/InstallationId.java:13`
  `this.authToken = str2;`
- `apk_analysis/jadx/sources/com/google/firebase/sessions/InstallationId.java:16`
  `public final String getAuthToken() {`
- `apk_analysis/jadx/sources/com/google/firebase/sessions/InstallationId.java:17`
  `return this.authToken;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/GetAuthTokenListener.java:7`
  `class GetAuthTokenListener implements StateListener {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/GetAuthTokenListener.java:11`
  `public GetAuthTokenListener(Utils utils, TaskCompletionSource<InstallationTokenResult> taskCompletionSource) {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/GetAuthTokenListener.java:24`
  `if (!persistedInstallationEntry.isRegistered() || this.utils.isAuthTokenExpired(persistedInstallationEntry)) {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/GetAuthTokenListener.java:27`
  `this.resultTaskCompletionSource.setResult(InstallationTokenResult.builder().setToken(persistedInstallationEntry.getAuthToken()).setTokenExpirationTimestamp(persistedInstallationEntry.getExpiresInSecs()).setTokenCreationTimestamp(persistedInstallationEntry.getTokenCreationEpochInSecs()).build());`
- `apk_analysis/jadx/sources/com/google/firebase/installations/Utils.java:14`
  `public static final long AUTH_TOKEN_EXPIRATION_BUFFER_IN_SECS = 3600;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/Utils.java:51`
  `public boolean isAuthTokenExpired(PersistedInstallationEntry persistedInstallationEntry) {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/Utils.java:52`
  `if (TextUtils.isEmpty(persistedInstallationEntry.getAuthToken())) {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/Utils.java:55`
  `return persistedInstallationEntry.getExpiresInSecs() + persistedInstallationEntry.getTokenCreationEpochInSecs() < currentTimeInSecs() + AUTH_TOKEN_EXPIRATION_BUFFER_IN_SECS;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/FirebaseInstallations.java:38`
  `private static final String AUTH_ERROR_MSG = "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request.";`
- `apk_analysis/jadx/sources/com/google/firebase/installations/FirebaseInstallations.java:109`
  `private Task<InstallationTokenResult> addGetAuthTokenListener() {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/FirebaseInstallations.java:111`
  `addStateListeners(new GetAuthTokenListener(this.utils, taskCompletionSource));`
- `apk_analysis/jadx/sources/com/google/firebase/installations/FirebaseInstallations.java:141`
  `this.serviceClient.deleteFirebaseInstallation(getApiKey(), multiProcessSafePrefs.getFirebaseInstallationId(), getProjectIdentifier(), multiProcessSafePrefs.getRefreshToken());`
- `apk_analysis/jadx/sources/com/google/firebase/installations/FirebaseInstallations.java:156`
  `if (!z && !this.utils.isAuthTokenExpired(multiProcessSafePrefs)) {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/FirebaseInstallations.java:159`
  `persistedInstallationEntryRegisterFidWithServer = fetchAuthTokenFromServer(multiProcessSafePrefs);`
- `apk_analysis/jadx/sources/com/google/firebase/installations/FirebaseInstallations.java:183`
  `prefsWithGeneratedIdMultiProcessSafe = prefsWithGeneratedIdMultiProcessSafe.withClearedAuthToken();`
- `apk_analysis/jadx/sources/com/google/firebase/installations/FirebaseInstallations.java:194`
  `private PersistedInstallationEntry fetchAuthTokenFromServer(PersistedInstallationEntry persistedInstallationEntry) throws FirebaseInstallationsException {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/FirebaseInstallations.java:195`
  `TokenResult tokenResultGenerateAuthToken = this.serviceClient.generateAuthToken(getApiKey(), persistedInstallationEntry.getFirebaseInstallationId(), getProjectIdentifier(), persistedInstallationEntry.getRefreshToken());`
- `apk_analysis/jadx/sources/com/google/firebase/installations/FirebaseInstallations.java:196`
  `int i = AnonymousClass3.$SwitchMap$com$google$firebase$installations$remote$TokenResult$ResponseCode[tokenResultGenerateAuthToken.getResponseCode().ordinal()];`
- `apk_analysis/jadx/sources/com/google/firebase/installations/FirebaseInstallations.java:198`
  `return persistedInstallationEntry.withAuthToken(tokenResultGenerateAuthToken.getToken(), tokenResultGenerateAuthToken.getTokenExpirationTimestamp(), this.utils.currentTimeInSecs());`
- `apk_analysis/jadx/sources/com/google/firebase/installations/FirebaseInstallations.java:323`
  `return persistedInstallationEntry.withRegisteredFid(installationResponseCreateFirebaseInstallation.getFid(), installationResponseCreateFirebaseInstallation.getRefreshToken(), this.utils.currentTimeInSecs(), installationResponseCreateFirebaseInstallation.getAuthToken().getToken(), installationResponseCreateFirebaseInstallation.getAuthToken().getTokenExpirationTimestamp());`
- `apk_analysis/jadx/sources/com/google/firebase/installations/FirebaseInstallations.java:421`
  `Task<InstallationTokenResult> taskAddGetAuthTokenListener = addGetAuthTokenListener();`
- `apk_analysis/jadx/sources/com/google/firebase/installations/FirebaseInstallations.java:428`
  `return taskAddGetAuthTokenListener;`
- `apk_analysis/jadx/sources/com/google/firebase/internal/InternalTokenProvider.java:8`
  `Task<GetTokenResult> getAccessToken(boolean z);`
- `apk_analysis/jadx/sources/com/google/firebase/auth/internal/IdTokenListener.java:6`
  `public interface IdTokenListener {`
- `apk_analysis/jadx/sources/com/google/firebase/auth/internal/IdTokenListener.java:7`
  `void onIdTokenChanged(InternalTokenResult internalTokenResult);`
- `apk_analysis/jadx/sources/com/google/firebase/auth/internal/InternalAuthProvider.java:9`
  `void addIdTokenListener(IdTokenListener idTokenListener);`
- `apk_analysis/jadx/sources/com/google/firebase/auth/internal/InternalAuthProvider.java:12`
  `Task<GetTokenResult> getAccessToken(boolean z);`
- `apk_analysis/jadx/sources/com/google/firebase/auth/internal/InternalAuthProvider.java:17`
  `void removeIdTokenListener(IdTokenListener idTokenListener);`
- `apk_analysis/jadx/sources/com/google/firebase/remoteconfig/internal/ConfigFetchHttpClient.java:44`
  `private static final String INSTALLATIONS_AUTH_TOKEN_HEADER = "X-Goog-Firebase-Installations-Auth";`
- `apk_analysis/jadx/sources/com/google/firebase/remoteconfig/internal/ConfigFetchHttpClient.java:87`
  `map3.put(RemoteConfigConstants.RequestFieldKey.INSTANCE_ID_TOKEN, str2);`
- `apk_analysis/jadx/sources/com/google/firebase/remoteconfig/internal/ConfigFetchHttpClient.java:207`
  `httpURLConnection.setRequestProperty(INSTALLATIONS_AUTH_TOKEN_HEADER, str);`
- `apk_analysis/jadx/sources/com/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient.java:51`
  `private static final String INSTALLATIONS_AUTH_TOKEN_HEADER = "X-Goog-Firebase-Installations-Auth";`
- `apk_analysis/jadx/sources/com/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient.java:347`
  `return Tasks.forException(new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation auth token for config update listener connection.", task.getException()));`
- `apk_analysis/jadx/sources/com/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient.java:414`
  `httpURLConnection.setRequestProperty(INSTALLATIONS_AUTH_TOKEN_HEADER, str);`
- `apk_analysis/jadx/sources/com/google/firebase/remoteconfig/internal/ConfigFetchHandler.java:274`
  `return !task2.isSuccessful() ? Tasks.forException(new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation auth token for fetch.", task2.getException())) : fetchFromBackendAndCacheResponse((String) task.getResult(), ((InstallationTokenResult) task2.getResult()).getToken(), date, map);`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/IidStore.java:74`
  `private String parseIidTokenFromJson(String str) {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/IidStore.java:138`
  `string = parseIidTokenFromJson(string);`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/PersistedInstallation.java:15`
  `private static final String AUTH_TOKEN_KEY = "AuthToken";`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/PersistedInstallation.java:20`
  `private static final String REFRESH_TOKEN_KEY = "RefreshToken";`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/PersistedInstallation.java:105`
  `jSONObject.put(AUTH_TOKEN_KEY, persistedInstallationEntry.getAuthToken());`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/PersistedInstallation.java:106`
  `jSONObject.put(REFRESH_TOKEN_KEY, persistedInstallationEntry.getRefreshToken());`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/PersistedInstallation.java:126`
  `String strOptString2 = jSONFromFile.optString(AUTH_TOKEN_KEY, null);`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/PersistedInstallation.java:127`
  `String strOptString3 = jSONFromFile.optString(REFRESH_TOKEN_KEY, null);`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/PersistedInstallation.java:130`
  `return PersistedInstallationEntry.builder().setFirebaseInstallationId(strOptString).setRegistrationStatus(RegistrationStatus.values()[iOptInt]).setAuthToken(strOptString2).setRefreshToken(strOptString3).setTokenCreationEpochInSecs(jOptLong).setExpiresInSecs(jOptLong2).setFisError(jSONFromFile.optString(FIS_ERROR_KEY, null)).build();`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/AutoValue_PersistedInstallationEntry.java:10`
  `private final String authToken;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/AutoValue_PersistedInstallationEntry.java:14`
  `private final String refreshToken;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/AutoValue_PersistedInstallationEntry.java:21`
  `this.authToken = str2;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/AutoValue_PersistedInstallationEntry.java:22`
  `this.refreshToken = str3;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/AutoValue_PersistedInstallationEntry.java:39`
  `if (this.registrationStatus.equals(persistedInstallationEntry.getRegistrationStatus()) && ((str = this.authToken) != null ? str.equals(persistedInstallationEntry.getAuthToken()) : persistedInstallationEntry.getAuthToken() == null) && ((str2 = this.refreshToken) != null ? str2.equals(persistedInstallationEntry.getRefreshToken()) : persistedInstallationEntry.getRefreshToken() == null) && this.expiresInSecs == persistedInstallationEntry.getExpiresInSecs() && this.tokenCreationEpochInSecs == persistedInstallationEntry.getTokenCreationEpochInSecs() && ((str3 = this.fisError) != null ? str3.equals(persistedInstallationEntry.getFisError()) : persistedInstallationEntry.getFisError() == null)) {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/AutoValue_PersistedInstallationEntry.java:48`
  `public String getAuthToken() {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/AutoValue_PersistedInstallationEntry.java:49`
  `return this.authToken;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/AutoValue_PersistedInstallationEntry.java:68`
  `public String getRefreshToken() {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/AutoValue_PersistedInstallationEntry.java:69`
  `return this.refreshToken;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/AutoValue_PersistedInstallationEntry.java:85`
  `String str2 = this.authToken;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/AutoValue_PersistedInstallationEntry.java:87`
  `String str3 = this.refreshToken;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/AutoValue_PersistedInstallationEntry.java:107`
  `sb.append(", authToken=");`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/AutoValue_PersistedInstallationEntry.java:108`
  `sb.append(this.authToken);`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/AutoValue_PersistedInstallationEntry.java:109`
  `sb.append(", refreshToken=");`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/AutoValue_PersistedInstallationEntry.java:110`
  `sb.append(this.refreshToken);`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/AutoValue_PersistedInstallationEntry.java:120`
  `private String authToken;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/AutoValue_PersistedInstallationEntry.java:124`
  `private String refreshToken;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/AutoValue_PersistedInstallationEntry.java:132`
  `this.authToken = persistedInstallationEntry.getAuthToken();`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/AutoValue_PersistedInstallationEntry.java:133`
  `this.refreshToken = persistedInstallationEntry.getRefreshToken();`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/AutoValue_PersistedInstallationEntry.java:143`
  `return new AutoValue_PersistedInstallationEntry(this.firebaseInstallationId, this.registrationStatus, this.authToken, this.refreshToken, this.expiresInSecs, this.tokenCreationEpochInSecs, this.fisError);`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/AutoValue_PersistedInstallationEntry.java:160`
  `public PersistedInstallationEntry.Builder setAuthToken(String str) {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/AutoValue_PersistedInstallationEntry.java:161`
  `this.authToken = str;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/AutoValue_PersistedInstallationEntry.java:185`
  `public PersistedInstallationEntry.Builder setRefreshToken(String str) {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/AutoValue_PersistedInstallationEntry.java:186`
  `this.refreshToken = str;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/PersistedInstallationEntry.java:10`
  `public abstract Builder setAuthToken(String str);`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/PersistedInstallationEntry.java:18`
  `public abstract Builder setRefreshToken(String str);`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/PersistedInstallationEntry.java:29`
  `public abstract String getAuthToken();`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/PersistedInstallationEntry.java:37`
  `public abstract String getRefreshToken();`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/PersistedInstallationEntry.java:65`
  `public PersistedInstallationEntry withAuthToken(String str, long j, long j2) {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/PersistedInstallationEntry.java:66`
  `return toBuilder().setAuthToken(str).setExpiresInSecs(j).setTokenCreationEpochInSecs(j2).build();`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/PersistedInstallationEntry.java:69`
  `public PersistedInstallationEntry withClearedAuthToken() {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/PersistedInstallationEntry.java:70`
  `return toBuilder().setAuthToken(null).build();`
- `apk_analysis/jadx/sources/com/google/firebase/installations/local/PersistedInstallationEntry.java:82`
  `return toBuilder().setFirebaseInstallationId(str).setRegistrationStatus(PersistedInstallation.RegistrationStatus.REGISTERED).setAuthToken(str3).setRefreshToken(str2).setExpiresInSecs(j2).setTokenCreationEpochInSecs(j).build();`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/AutoValue_InstallationResponse.java:5`
  `private final TokenResult authToken;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/AutoValue_InstallationResponse.java:7`
  `private final String refreshToken;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/AutoValue_InstallationResponse.java:14`
  `this.refreshToken = str3;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/AutoValue_InstallationResponse.java:15`
  `this.authToken = tokenResult;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/AutoValue_InstallationResponse.java:29`
  `String str3 = this.refreshToken;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/AutoValue_InstallationResponse.java:30`
  `if (str3 != null ? str3.equals(installationResponse.getRefreshToken()) : installationResponse.getRefreshToken() == null) {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/AutoValue_InstallationResponse.java:31`
  `TokenResult tokenResult = this.authToken;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/AutoValue_InstallationResponse.java:32`
  `if (tokenResult != null ? tokenResult.equals(installationResponse.getAuthToken()) : installationResponse.getAuthToken() == null) {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/AutoValue_InstallationResponse.java:46`
  `public TokenResult getAuthToken() {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/AutoValue_InstallationResponse.java:47`
  `return this.authToken;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/AutoValue_InstallationResponse.java:56`
  `public String getRefreshToken() {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/AutoValue_InstallationResponse.java:57`
  `return this.refreshToken;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/AutoValue_InstallationResponse.java:75`
  `String str3 = this.refreshToken;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/AutoValue_InstallationResponse.java:77`
  `TokenResult tokenResult = this.authToken;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/AutoValue_InstallationResponse.java:89`
  `return "InstallationResponse{uri=" + this.uri + ", fid=" + this.fid + ", refreshToken=" + this.refreshToken + ", authToken=" + this.authToken + ", responseCode=" + this.responseCode + "}";`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/AutoValue_InstallationResponse.java:93`
  `private TokenResult authToken;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/AutoValue_InstallationResponse.java:95`
  `private String refreshToken;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/AutoValue_InstallationResponse.java:102`
  `this.refreshToken = installationResponse.getRefreshToken();`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/AutoValue_InstallationResponse.java:103`
  `this.authToken = installationResponse.getAuthToken();`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/AutoValue_InstallationResponse.java:109`
  `return new AutoValue_InstallationResponse(this.uri, this.fid, this.refreshToken, this.authToken, this.responseCode);`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/AutoValue_InstallationResponse.java:113`
  `public InstallationResponse.Builder setAuthToken(TokenResult tokenResult) {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/AutoValue_InstallationResponse.java:114`
  `this.authToken = tokenResult;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/AutoValue_InstallationResponse.java:125`
  `public InstallationResponse.Builder setRefreshToken(String str) {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/AutoValue_InstallationResponse.java:126`
  `this.refreshToken = str;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/InstallationResponse.java:9`
  `public abstract Builder setAuthToken(TokenResult tokenResult);`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/InstallationResponse.java:13`
  `public abstract Builder setRefreshToken(String str);`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/InstallationResponse.java:29`
  `public abstract TokenResult getAuthToken();`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/InstallationResponse.java:33`
  `public abstract String getRefreshToken();`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/FirebaseInstallationServiceClient.java:55`
  `private static final String GENERATE_AUTH_TOKEN_REQUEST_RESOURCE_NAME_FORMAT = "projects/%s/installations/%s/authTokens:generate";`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/FirebaseInstallationServiceClient.java:66`
  `private static final int TRAFFIC_STATS_GENERATE_AUTH_TOKEN_TAG = 32771;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/FirebaseInstallationServiceClient.java:100`
  `private static JSONObject buildGenerateAuthTokenRequestBody() {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/FirebaseInstallationServiceClient.java:207`
  `} else if (strNextName.equals("refreshToken")) {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/FirebaseInstallationServiceClient.java:208`
  `builder2.setRefreshToken(jsonReader.nextString());`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/FirebaseInstallationServiceClient.java:209`
  `} else if (strNextName.equals("authToken")) {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/FirebaseInstallationServiceClient.java:221`
  `builder2.setAuthToken(builder.build());`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/FirebaseInstallationServiceClient.java:271`
  `private TokenResult readGenerateAuthTokenResponse(HttpURLConnection httpURLConnection) throws IOException {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/FirebaseInstallationServiceClient.java:296`
  `private void writeGenerateAuthTokenRequestBodyToOutputStream(HttpURLConnection httpURLConnection) throws IOException {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/FirebaseInstallationServiceClient.java:297`
  `writeRequestBodyToOutputStream(httpURLConnection, getJsonBytes(buildGenerateAuthTokenRequestBody()));`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/FirebaseInstallationServiceClient.java:398`
  `public TokenResult generateAuthToken(String str, String str2, String str3, String str4) {`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/FirebaseInstallationServiceClient.java:399`
  `TokenResult generateAuthTokenResponse;`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/FirebaseInstallationServiceClient.java:403`
  `URL fullyQualifiedRequestUri = getFullyQualifiedRequestUri(n2.d("projects/", str3, "/installations/", str2, "/authTokens:generate"));`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/FirebaseInstallationServiceClient.java:405`
  `TrafficStats.setThreadStatsTag(TRAFFIC_STATS_GENERATE_AUTH_TOKEN_TAG);`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/FirebaseInstallationServiceClient.java:412`
  `writeGenerateAuthTokenRequestBodyToOutputStream(httpURLConnectionOpenHttpURLConnection);`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/FirebaseInstallationServiceClient.java:416`
  `generateAuthTokenResponse = readGenerateAuthTokenResponse(httpURLConnectionOpenHttpURLConnection);`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/FirebaseInstallationServiceClient.java:420`
  `generateAuthTokenResponse = TokenResult.builder().setResponseCode(TokenResult.ResponseCode.AUTH_ERROR).build();`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/FirebaseInstallationServiceClient.java:427`
  `generateAuthTokenResponse = TokenResult.builder().setResponseCode(TokenResult.ResponseCode.BAD_CONFIG).build();`
- `apk_analysis/jadx/sources/com/google/firebase/installations/remote/FirebaseInstallationServiceClient.java:435`
  `return generateAuthTokenResponse;`
- `apk_analysis/jadx/sources/com/google/firebase/crashlytics/internal/common/FirebaseInstallationId.java:8`
  `private final String authToken;`
- `apk_analysis/jadx/sources/com/google/firebase/crashlytics/internal/common/FirebaseInstallationId.java:13`
  `this.authToken = str2;`
- `apk_analysis/jadx/sources/com/google/firebase/crashlytics/internal/common/FirebaseInstallationId.java:21`
  `str2 = firebaseInstallationId.authToken;`
- `apk_analysis/jadx/sources/com/google/firebase/crashlytics/internal/common/FirebaseInstallationId.java:31`
  `return this.authToken;`
- `apk_analysis/jadx/sources/com/google/firebase/crashlytics/internal/common/FirebaseInstallationId.java:46`
  `return aa4.e(this.fid, firebaseInstallationId.fid) && aa4.e(this.authToken, firebaseInstallationId.authToken);`
- `apk_analysis/jadx/sources/com/google/firebase/crashlytics/internal/common/FirebaseInstallationId.java:49`
  `public final String getAuthToken() {`
- `apk_analysis/jadx/sources/com/google/firebase/crashlytics/internal/common/FirebaseInstallationId.java:50`
  `return this.authToken;`
- `apk_analysis/jadx/sources/com/google/firebase/crashlytics/internal/common/FirebaseInstallationId.java:60`
  `String str2 = this.authToken;`
- `apk_analysis/jadx/sources/com/google/firebase/crashlytics/internal/common/FirebaseInstallationId.java:67`
  `sb.append(", authToken=");`
- `apk_analysis/jadx/sources/com/google/firebase/crashlytics/internal/common/FirebaseInstallationId.java:68`
  `return xp.e(sb, this.authToken, ')');`
- `apk_analysis/jadx/sources/com/google/firebase/crashlytics/internal/common/SessionReportingCoordinator.java:159`
  `return CrashlyticsReportWithSessionId.create(crashlyticsReportWithSessionId.getReport().withFirebaseInstallationId(firebaseInstallationIdFetchTrueFid.getFid()).withFirebaseAuthenticationToken(firebaseInstallationIdFetchTrueFid.getAuthToken()), crashlyticsReportWithSessionId.getSessionId(), crashlyticsReportWithSessionId.getReportFile());`
- `apk_analysis/jadx/sources/com/google/firebase/crashlytics/internal/common/InstallIdProvider.java:8`
  `return new AutoValue_InstallIdProvider_InstallIds(str, firebaseInstallationId.getFid(), firebaseInstallationId.getAuthToken());`
- `apk_analysis/jadx/sources/com/google/android/gms/cloudmessaging/Rpc.java:97`
  `intent.setAction("com.google.iid.TOKEN_REQUEST");`
- `apk_analysis/jadx/sources/com/google/android/gms/cloudmessaging/zzw.java:40`
  `Intent intent = new Intent("com.google.iid.TOKEN_REQUEST");`
- `apk_analysis/jadx/sources/com/google/android/gms/cloudmessaging/zzw.java:56`
  `Intent intent3 = new Intent("com.google.iid.TOKEN_REQUEST");`
- `apk_analysis/jadx/sources/com/google/android/gms/common/AccountPicker.java:115`
  `intent.putExtra("authTokenType", str2);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/zze.java:40`
  `Feature feature8 = new Feature("device_account_jwt_creation", 1L);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/zzl.java:251`
  `AccountManager.get(context).invalidateAuthToken("com.google", str);`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:46`
  `bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", false);`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:49`
  `bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", false);`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:52`
  `bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", false);`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/fido/zzh.java:25`
  `public static final zzbj zzr = zzbk.zzb("pinUvAuthToken");`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_common/zzmv.java:150`
  `INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(302),`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/play_billing/zzjs.java:37`
  `OFFER_ID_TOKEN_NOT_SUPPORTED(20),`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/play_billing/zzjs.java:225`
  `return OFFER_ID_TOKEN_NOT_SUPPORTED;`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/play_billing/zzc.java:236`
  `bundle.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList2);`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_common/zziv.java:144`
  `INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(302),`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzrc.java:150`
  `INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN(302),`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/proxy/AuthApiStatusCodes.java:12`
  `public static final int AUTH_TOKEN_ERROR = 3004;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/proxy/AuthApiStatusCodes.java:26`
  `return "AUTH_TOKEN_ERROR";`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbd.java:16`
  `BeginSignInRequest.GoogleIdTokenRequestOptions googleIdTokenRequestOptions = null;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbd.java:27`
  `googleIdTokenRequestOptions = (BeginSignInRequest.GoogleIdTokenRequestOptions) SafeParcelReader.createParcelable(parcel, header, BeginSignInRequest.GoogleIdTokenRequestOptions.CREATOR);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbd.java:53`
  `return new BeginSignInRequest(passwordRequestOptions, googleIdTokenRequestOptions, strCreateString, z, i, passkeysRequestOptions, passkeyJsonRequestOptions, z2);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbl.java:58`
  `return new BeginSignInRequest.GoogleIdTokenRequestOptions(z, strCreateString, strCreateString2, z2, strCreateString3, arrayListCreateStringList, z3, arrayListCreateTypedList, strCreateString4);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbl.java:63`
  `return new BeginSignInRequest.GoogleIdTokenRequestOptions[i];`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest.java:19`
  `public static final String TOKEN_TYPE_AUTH_CODE = "auth_code";`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest.java:37`
  `Preconditions.checkArgument(SaveAccountLinkingTokenRequest.TOKEN_TYPE_AUTH_CODE.equals(this.b), "Invalid tokenType");`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest.java:58`
  `public Builder setTokenType(String str) {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest.java:93`
  `builder.setTokenType(saveAccountLinkingTokenRequest.getTokenType());`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest.java:125`
  `public String getTokenType() {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest.java:137`
  `SafeParcelWriter.writeString(parcel, 2, getTokenType(), false);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/AuthorizationResult.java:44`
  `public String getAccessToken() {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/AuthorizationResult.java:80`
  `SafeParcelWriter.writeString(parcel, 2, getAccessToken(), false);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/BeginSignInRequest.java:19`
  `public final GoogleIdTokenRequestOptions c;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/BeginSignInRequest.java:30`
  `public GoogleIdTokenRequestOptions b;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/BeginSignInRequest.java:42`
  `GoogleIdTokenRequestOptions.Builder builder2 = GoogleIdTokenRequestOptions.builder();`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/BeginSignInRequest.java:62`
  `public Builder setGoogleIdTokenRequestOptions(GoogleIdTokenRequestOptions googleIdTokenRequestOptions) {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/BeginSignInRequest.java:63`
  `this.b = (GoogleIdTokenRequestOptions) Preconditions.checkNotNull(googleIdTokenRequestOptions);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/BeginSignInRequest.java:100`
  `public static final class GoogleIdTokenRequestOptions extends AbstractSafeParcelable {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/BeginSignInRequest.java:101`
  `public static final Parcelable.Creator<GoogleIdTokenRequestOptions> CREATOR = new zbl();`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/BeginSignInRequest.java:127`
  `public GoogleIdTokenRequestOptions build() {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/BeginSignInRequest.java:128`
  `return new GoogleIdTokenRequestOptions(this.a, this.b, this.c, this.d, this.e, this.f, this.g, null, null);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/BeginSignInRequest.java:158`
  `public GoogleIdTokenRequestOptions(boolean z, String str, String str2, boolean z2, String str3, List list, boolean z3, ArrayList arrayList, String str4) {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/BeginSignInRequest.java:166`
  `Preconditions.checkNotNull(str, "serverClientId must be provided if Google ID tokens are requested");`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/BeginSignInRequest.java:189`
  `if (!(obj instanceof GoogleIdTokenRequestOptions)) {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/BeginSignInRequest.java:192`
  `GoogleIdTokenRequestOptions googleIdTokenRequestOptions = (GoogleIdTokenRequestOptions) obj;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/BeginSignInRequest.java:193`
  `return this.b == googleIdTokenRequestOptions.b && Objects.equal(this.c, googleIdTokenRequestOptions.c) && Objects.equal(this.d, googleIdTokenRequestOptions.d) && this.e == googleIdTokenRequestOptions.e && Objects.equal(this.f, googleIdTokenRequestOptions.f) && Objects.equal(this.g, googleIdTokenRequestOptions.g) && this.h == googleIdTokenRequestOptions.h && Objects.equal(this.i, googleIdTokenRequestOptions.i) && Objects.equal(this.j, googleIdTokenRequestOptions.j);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/BeginSignInRequest.java:200`
  `public List<String> getIdTokenDepositionScopes() {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/BeginSignInRequest.java:237`
  `SafeParcelWriter.writeStringList(parcel, 6, getIdTokenDepositionScopes(), false);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/BeginSignInRequest.java:443`
  `public BeginSignInRequest(PasswordRequestOptions passwordRequestOptions, GoogleIdTokenRequestOptions googleIdTokenRequestOptions, String str, boolean z, int i, PasskeysRequestOptions passkeysRequestOptions, PasskeyJsonRequestOptions passkeyJsonRequestOptions, boolean z2) {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/BeginSignInRequest.java:445`
  `this.c = (GoogleIdTokenRequestOptions) Preconditions.checkNotNull(googleIdTokenRequestOptions);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/BeginSignInRequest.java:471`
  `builder.setGoogleIdTokenRequestOptions(beginSignInRequest.getGoogleIdTokenRequestOptions());`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/BeginSignInRequest.java:493`
  `public GoogleIdTokenRequestOptions getGoogleIdTokenRequestOptions() {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/BeginSignInRequest.java:525`
  `SafeParcelWriter.writeParcelable(parcel, 2, getGoogleIdTokenRequestOptions(), i, false);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SignInCredential.java:58`
  `public String getGoogleIdToken() {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SignInCredential.java:96`
  `SafeParcelWriter.writeString(parcel, 7, getGoogleIdToken(), false);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/AuthorizationRequest.java:110`
  `boolean zIsForceCodeForRefreshToken = authorizationRequest.isForceCodeForRefreshToken();`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/AuthorizationRequest.java:128`
  `builder.requestOfflineAccess(serverClientId, zIsForceCodeForRefreshToken);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/AuthorizationRequest.java:212`
  `public boolean isForceCodeForRefreshToken() {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/AuthorizationRequest.java:230`
  `SafeParcelWriter.writeBoolean(parcel, 8, isForceCodeForRefreshToken());`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/GoogleSignInAccount.java:152`
  `public String getIdToken() {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/GoogleSignInAccount.java:189`
  `SafeParcelWriter.writeString(parcel, 3, getIdToken(), false);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/GoogleSignInAccount.java:212`
  `if (getIdToken() != null) {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/GoogleSignInAccount.java:213`
  `jSONObject.put("tokenId", getIdToken());`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/GoogleSignInOptions.java:105`
  `return new GoogleSignInOptions(3, new ArrayList(hashSet), !TextUtils.isEmpty(strOptString) ? new Account(strOptString, "com.google") : null, jSONObject.getBoolean("idTokenRequested"), jSONObject.getBoolean("serverAuthRequested"), jSONObject.getBoolean("forceCodeForRefreshToken"), jSONObject.has("serverClientId") ? jSONObject.optString("serverClientId") : null, jSONObject.has("hostedDomain") ? jSONObject.optString("hostedDomain") : null, new HashMap(), null);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/GoogleSignInOptions.java:129`
  `if (this.g != googleSignInOptions.isForceCodeForRefreshToken() && this.e == googleSignInOptions.isIdTokenRequested() && this.f == googleSignInOptions.isServerAuthCodeRequested() && TextUtils.equals(this.k, googleSignInOptions.getLogSessionId())) {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/GoogleSignInOptions.java:134`
  `if (this.g != googleSignInOptions.isForceCodeForRefreshToken()) {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/GoogleSignInOptions.java:141`
  `if (this.g != googleSignInOptions.isForceCodeForRefreshToken()) {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/GoogleSignInOptions.java:145`
  `if (this.g != googleSignInOptions.isForceCodeForRefreshToken()) {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/GoogleSignInOptions.java:200`
  `public boolean isForceCodeForRefreshToken() {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/GoogleSignInOptions.java:204`
  `public boolean isIdTokenRequested() {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/GoogleSignInOptions.java:218`
  `SafeParcelWriter.writeBoolean(parcel, 4, isIdTokenRequested());`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/GoogleSignInOptions.java:220`
  `SafeParcelWriter.writeBoolean(parcel, 6, isForceCodeForRefreshToken());`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/GoogleSignInOptions.java:245`
  `jSONObject.put("idTokenRequested", this.e);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/GoogleSignInOptions.java:246`
  `jSONObject.put("forceCodeForRefreshToken", this.g);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/GoogleSignInOptions.java:328`
  `public Builder requestIdToken(String str) {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/internal/Storage.java:109`
  `public String getSavedRefreshToken() {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/internal/Storage.java:110`
  `return b("refreshToken");`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/internal/zbm.java:81`
  `} else if (!googleSignInOptions.isServerAuthCodeRequested() && ((!googleSignInOptions.isIdTokenRequested() || (googleSignInOptionsZbe.isIdTokenRequested() && Objects.equal(googleSignInOptions.getServerClientId(), googleSignInOptionsZbe.getServerClientId()))) && new HashSet(googleSignInOptionsZbe.getScopes()).containsAll(new HashSet(googleSignInOptions.getScopes())) && (googleSignInAccountZbd = zbn.zba(context).zbd()) != null && !googleSignInAccountZbd.isExpired())) {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/internal/zbm.java:106`
  `String savedRefreshToken = Storage.getInstance(context).getSavedRefreshToken();`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/internal/zbm.java:108`
  `return z ? zbb.zba(savedRefreshToken) : googleApiClient.execute(new lna(googleApiClient));`
- `apk_analysis/jadx/sources/com/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter.java:145`
  `e18 e18VarI = xv2Var.d(str3, str2, "Bearer ".concat(str)).i(ne7.c);`
- `apk_analysis/jadx/sources/com/warefly/checkscan/presentation/electrocheque/view/WebViewFragment.java:109`
  `n().webviewContent.evaluateJavascript("localStorage.getItem(\"auth.token\")", new ValueCallback() { // from class: og9`
- `apk_analysis/jadx/sources/com/my/target/oa.java:69`
  `imageView.setImageBitmap(wfa.a(TypedValues.CycleType.TYPE_EASING, "iVBORw0KGgoAAAANSUhEUgAAARcAAAEJCAYAAAC+D2M/AAAACXBIWXMAABYlAAAWJQFJUiTwAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAIGBSURBVHgB7b0L3G5HWd69njeggMoOHloUkuwIaiBHpYCSBMI5nCS2gEiChN+nCceKfkgIUNkKBEKhgnJQvs9CSggQqEBIIgdrjnJUIAQELLD3DmBpqyQ72tZW8q7e/3nnWvt67needx/fZB/m/v2eZ601a9asmVkz19ynmRmGTp06derUqVOnTp06derUqVOnTp06derUqVOnTp06HcQ0juPvxu/G+vvdoVOnTp32lCqwZNo0dOrUqdOeUOVWMt04dOq0hzQbOh3UBJK0wmdBQ6dOe0BLQ6dOnTqtA3Vw6dSp07rQ7YZO+z2FZHNoHE6I300hzXxuuA0o8sD7ycfnIg83DZ06ddq/KTr1aUkp+9YKNjv7fJN24flD4/c+e3QzeRo6deq0/1Lt2Jsb2PDZnQWYPQGX+v7PNh6/cdwFgOvUqdM+RtGBTxkX004BzLibpug1gEV0wtDpoKau0N2/acsa9+jcV+wEwLy+EXbBWg/UNK+o71hEXe/SqdP+TNHR3zauTTvkYOL+68bt7v+bduKdn93BO183dOrUaf+nnQCYTcNeorE9XcDpbUOnTp0OHNoBwOw1d/6xraPpwNKp04FMawDMrQEubxs6dep04NICgNlrOpBIa1MHlk6dDlIad1JBO66YstGhoKDdXH9X1LAT9jT9Tp06HWQUgLCxgsiO6K3EHTp16tRpRwRHMq6tlM20eewOcZ06d ... [truncated]`
- `apk_analysis/apktool/smali/xb9.smali:68`
  `const-string v1, "authToken"`
- `apk_analysis/apktool/smali_classes5/s0.smali:189`
  `const-string p0, "invalid token"`
- `apk_analysis/apktool/smali_classes5/s0.smali:194`
  `const-string p0, "valid token"`
- `apk_analysis/apktool/smali_classes5/ab1.smali:57`
  `const-string v0, "Bearer "`
- `apk_analysis/apktool/smali_classes4/x39.smali:290`
  `const-string v1, "TypeToken type argument must not contain a type variable; captured type variable "`
- `apk_analysis/apktool/smali_classes4/x39.smali:310`
  `const-string p0, "typetoken-type-variable"`
- `apk_analysis/apktool/smali_classes4/k95.smali:525`
  `const-string v0, "jwt"`
- `apk_analysis/apktool/smali_classes4/ql1.smali:30`
  `.field public static final APP_INSTANCE_ID_TOKEN_FIELD_NUMBER:I = 0x3`
- `apk_analysis/apktool/smali_classes4/ql1.smali:48`
  `.field private appInstanceIdToken_:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/ql1.smali:83`
  `iput-object v0, p0, Lql1;->appInstanceIdToken_:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/ql1.smali:117`
  `iput-object p1, p0, Lql1;->appInstanceIdToken_:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/ql1.smali:216`
  `const-string p2, "appInstanceIdToken_"`
- `apk_analysis/apktool/smali_classes6/yads/uz5.smali:175`
  `const-string v3, "Invalid token \'"`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:1`
  `.class final enum Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:19`
  `"Landroidx/constraintlayout/core/parser/CLToken$Type;",`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:26`
  `.field private static final synthetic $VALUES:[Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:28`
  `.field public static final enum FALSE:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:30`
  `.field public static final enum NULL:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:32`
  `.field public static final enum TRUE:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:34`
  `.field public static final enum UNKNOWN:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:38`
  `.method private static synthetic $values()[Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:41`
  `sget-object v0, Landroidx/constraintlayout/core/parser/CLToken$Type;->UNKNOWN:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:43`
  `sget-object v1, Landroidx/constraintlayout/core/parser/CLToken$Type;->TRUE:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:45`
  `sget-object v2, Landroidx/constraintlayout/core/parser/CLToken$Type;->FALSE:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:47`
  `sget-object v3, Landroidx/constraintlayout/core/parser/CLToken$Type;->NULL:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:49`
  `filled-new-array {v0, v1, v2, v3}, [Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:59`
  `new-instance v0, Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:65`
  `invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/parser/CLToken$Type;-><init>(Ljava/lang/String;I)V`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:67`
  `sput-object v0, Landroidx/constraintlayout/core/parser/CLToken$Type;->UNKNOWN:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:69`
  `new-instance v0, Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:75`
  `invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/parser/CLToken$Type;-><init>(Ljava/lang/String;I)V`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:77`
  `sput-object v0, Landroidx/constraintlayout/core/parser/CLToken$Type;->TRUE:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:79`
  `new-instance v0, Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:85`
  `invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/parser/CLToken$Type;-><init>(Ljava/lang/String;I)V`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:87`
  `sput-object v0, Landroidx/constraintlayout/core/parser/CLToken$Type;->FALSE:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:89`
  `new-instance v0, Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:95`
  `invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/parser/CLToken$Type;-><init>(Ljava/lang/String;I)V`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:97`
  `sput-object v0, Landroidx/constraintlayout/core/parser/CLToken$Type;->NULL:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:99`
  `invoke-static {}, Landroidx/constraintlayout/core/parser/CLToken$Type;->$values()[Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:103`
  `sput-object v0, Landroidx/constraintlayout/core/parser/CLToken$Type;->$VALUES:[Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:121`
  `.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:124`
  `const-class v0, Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:130`
  `check-cast p0, Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:135`
  `.method public static values()[Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:138`
  `sget-object v0, Landroidx/constraintlayout/core/parser/CLToken$Type;->$VALUES:[Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:140`
  `invoke-virtual {v0}, [Landroidx/constraintlayout/core/parser/CLToken$Type;->clone()Ljava/lang/Object;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken$Type.smali:144`
  `check-cast v0, [Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken.smali:9`
  `Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken.smali:23`
  `.field mType:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken.smali:36`
  `sget-object p1, Landroidx/constraintlayout/core/parser/CLToken$Type;->UNKNOWN:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken.smali:38`
  `iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLToken;->mType:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken.smali:107`
  `iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->mType:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken.smali:109`
  `sget-object v1, Landroidx/constraintlayout/core/parser/CLToken$Type;->TRUE:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken.smali:118`
  `sget-object v1, Landroidx/constraintlayout/core/parser/CLToken$Type;->FALSE:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken.smali:154`
  `.method public getType()Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken.smali:157`
  `iget-object p0, p0, Landroidx/constraintlayout/core/parser/CLToken;->mType:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken.smali:165`
  `iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->mType:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken.smali:167`
  `sget-object v1, Landroidx/constraintlayout/core/parser/CLToken$Type;->NULL:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken.smali:265`
  `iget-object v0, p0, Landroidx/constraintlayout/core/parser/CLToken;->mType:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken.smali:370`
  `sget-object p1, Landroidx/constraintlayout/core/parser/CLToken$Type;->TRUE:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken.smali:372`
  `iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLToken;->mType:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken.smali:386`
  `sget-object p1, Landroidx/constraintlayout/core/parser/CLToken$Type;->FALSE:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken.smali:388`
  `iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLToken;->mType:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken.smali:399`
  `sget-object p1, Landroidx/constraintlayout/core/parser/CLToken$Type;->NULL:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes2/androidx/constraintlayout/core/parser/CLToken.smali:401`
  `iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLToken;->mType:Landroidx/constraintlayout/core/parser/CLToken$Type;`
- `apk_analysis/apktool/smali_classes5/com/warefly/checkscan/presentation/electrocheque/view/WebViewFragment.smali:365`
  `const-string p0, "localStorage.getItem(\"auth.token\")"`
- `apk_analysis/apktool/smali_classes5/com/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter.smali:325`
  `const-string v4, "Bearer "`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/common/AccountPicker.smali:99`
  `const-string p0, "authTokenType"`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/cloudmessaging/Rpc.smali:228`
  `const-string v4, "com.google.iid.TOKEN_REQUEST"`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/cloudmessaging/zzw.smali:127`
  `const-string v4, "com.google.iid.TOKEN_REQUEST"`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/GoogleAuthUtil.smali:137`
  `invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->k(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/GoogleAuthUtil.smali:142`
  `invoke-virtual {p0}, Lcom/google/android/gms/auth/TokenData;->zza()Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/GoogleAuthUtil.smali:182`
  `invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->k(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/GoogleAuthUtil.smali:186`
  `invoke-virtual {p0}, Lcom/google/android/gms/auth/TokenData;->zza()Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/GoogleAuthUtil.smali:252`
  `invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->k(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/GoogleAuthUtil.smali:257`
  `invoke-virtual {p0}, Lcom/google/android/gms/auth/TokenData;->zza()Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/GoogleAuthUtil.smali:336`
  `.method public static k(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/GoogleAuthUtil.smali:358`
  `invoke-static/range {v4 .. v10}, Lcom/google/android/gms/auth/zzl;->zza(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JLjava/util/concurrent/Executor;)Lcom/google/android/gms/auth/TokenData;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:1`
  `.class public Lcom/google/android/gms/auth/TokenData;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:14`
  `"Lcom/google/android/gms/auth/TokenData;",`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:45`
  `sput-object v0, Lcom/google/android/gms/auth/TokenData;->CREATOR:Landroid/os/Parcelable$Creator;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:55`
  `iput p1, p0, Lcom/google/android/gms/auth/TokenData;->b:I`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:61`
  `iput-object p1, p0, Lcom/google/android/gms/auth/TokenData;->c:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:63`
  `iput-object p3, p0, Lcom/google/android/gms/auth/TokenData;->d:Ljava/lang/Long;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:65`
  `iput-boolean p4, p0, Lcom/google/android/gms/auth/TokenData;->e:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:67`
  `iput-boolean p5, p0, Lcom/google/android/gms/auth/TokenData;->f:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:69`
  `iput-object p6, p0, Lcom/google/android/gms/auth/TokenData;->g:Ljava/util/List;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:71`
  `iput-object p7, p0, Lcom/google/android/gms/auth/TokenData;->h:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:81`
  `instance-of v0, p1, Lcom/google/android/gms/auth/TokenData;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:90`
  `check-cast p1, Lcom/google/android/gms/auth/TokenData;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:92`
  `iget-object v0, p0, Lcom/google/android/gms/auth/TokenData;->c:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:94`
  `iget-object v2, p1, Lcom/google/android/gms/auth/TokenData;->c:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:102`
  `iget-object v0, p0, Lcom/google/android/gms/auth/TokenData;->d:Ljava/lang/Long;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:104`
  `iget-object v2, p1, Lcom/google/android/gms/auth/TokenData;->d:Ljava/lang/Long;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:112`
  `iget-boolean v0, p0, Lcom/google/android/gms/auth/TokenData;->e:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:114`
  `iget-boolean v2, p1, Lcom/google/android/gms/auth/TokenData;->e:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:118`
  `iget-boolean v0, p0, Lcom/google/android/gms/auth/TokenData;->f:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:120`
  `iget-boolean v2, p1, Lcom/google/android/gms/auth/TokenData;->f:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:124`
  `iget-object v0, p0, Lcom/google/android/gms/auth/TokenData;->g:Ljava/util/List;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:126`
  `iget-object v2, p1, Lcom/google/android/gms/auth/TokenData;->g:Ljava/util/List;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:134`
  `iget-object p0, p0, Lcom/google/android/gms/auth/TokenData;->h:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:136`
  `iget-object p1, p1, Lcom/google/android/gms/auth/TokenData;->h:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:155`
  `iget-boolean v0, p0, Lcom/google/android/gms/auth/TokenData;->e:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:161`
  `iget-boolean v0, p0, Lcom/google/android/gms/auth/TokenData;->f:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:167`
  `iget-object v5, p0, Lcom/google/android/gms/auth/TokenData;->g:Ljava/util/List;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:169`
  `iget-object v6, p0, Lcom/google/android/gms/auth/TokenData;->h:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:171`
  `iget-object v1, p0, Lcom/google/android/gms/auth/TokenData;->c:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:173`
  `iget-object v2, p0, Lcom/google/android/gms/auth/TokenData;->d:Ljava/lang/Long;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:195`
  `iget v1, p0, Lcom/google/android/gms/auth/TokenData;->b:I`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:201`
  `iget-object v1, p0, Lcom/google/android/gms/auth/TokenData;->c:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:209`
  `iget-object v1, p0, Lcom/google/android/gms/auth/TokenData;->d:Ljava/lang/Long;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:215`
  `iget-boolean v1, p0, Lcom/google/android/gms/auth/TokenData;->e:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:221`
  `iget-boolean v1, p0, Lcom/google/android/gms/auth/TokenData;->f:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:227`
  `iget-object v1, p0, Lcom/google/android/gms/auth/TokenData;->g:Ljava/util/List;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:233`
  `iget-object p0, p0, Lcom/google/android/gms/auth/TokenData;->h:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/TokenData.smali:245`
  `iget-object p0, p0, Lcom/google/android/gms/auth/TokenData;->c:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/zzl.smali:83`
  `.method public static a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/zzl.smali:86`
  `sget-object v0, Lcom/google/android/gms/auth/TokenData;->CREATOR:Landroid/os/Parcelable$Creator;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/zzl.smali:88`
  `const-class v0, Lcom/google/android/gms/auth/TokenData;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/zzl.smali:125`
  `check-cast v0, Lcom/google/android/gms/auth/TokenData;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/zzl.smali:673`
  `invoke-static/range {v0 .. v6}, Lcom/google/android/gms/auth/zzl;->zza(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JLjava/util/concurrent/Executor;)Lcom/google/android/gms/auth/TokenData;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/zzl.smali:677`
  `invoke-virtual {p0}, Lcom/google/android/gms/auth/TokenData;->zza()Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/zzl.smali:1100`
  `invoke-virtual {p0, v0, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/zzl.smali:1359`
  `.method public static zza(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JLjava/util/concurrent/Executor;)Lcom/google/android/gms/auth/TokenData;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/zzl.smali:1427`
  `invoke-static {p0, p4}, Lcom/google/android/gms/auth/zzl;->a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/zzl.smali:1451`
  `check-cast p0, Lcom/google/android/gms/auth/TokenData;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/zzm.smali:118`
  `new-instance v2, Lcom/google/android/gms/auth/TokenData;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/zzm.smali:120`
  `invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/auth/TokenData;-><init>(ILjava/lang/String;Ljava/lang/Long;ZZLjava/util/ArrayList;Ljava/lang/String;)V`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/zzm.smali:139`
  `new-array p0, p1, [Lcom/google/android/gms/auth/TokenData;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/zzg.smali:61`
  `invoke-static {p0, p1}, Lcom/google/android/gms/auth/zzl;->a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/zze.smali:120`
  `const-string v10, "device_account_jwt_creation"`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/internal/mlkit_common/zzmv.smali:2145`
  `const-string v3, "INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN"`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/internal/mlkit_vision_common/zziv.smali:2223`
  `const-string v0, "INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN"`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/internal/mlkit_vision_barcode/zzrc.smali:2145`
  `const-string v3, "INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN"`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/internal/fido/zzh.smali:208`
  `const-string v0, "pinUvAuthToken"`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/signin/GoogleSignInAccount.smali:616`
  `.method public getIdToken()Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/signin/GoogleSignInAccount.smali:755`
  `invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/signin/GoogleSignInAccount.smali:863`
  `invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/signin/GoogleSignInAccount.smali:871`
  `invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/signin/GoogleSignInOptions.smali:340`
  `const-string v2, "idTokenRequested"`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/signin/GoogleSignInOptions.smali:352`
  `const-string v2, "forceCodeForRefreshToken"`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/signin/GoogleSignInOptions.smali:530`
  `invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->isForceCodeForRefreshToken()Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/signin/GoogleSignInOptions.smali:538`
  `invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->isIdTokenRequested()Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/signin/GoogleSignInOptions.smali:730`
  `.method public isForceCodeForRefreshToken()Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/signin/GoogleSignInOptions.smali:738`
  `.method public isIdTokenRequested()Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/signin/GoogleSignInOptions.smali:787`
  `invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->isIdTokenRequested()Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/signin/GoogleSignInOptions.smali:803`
  `invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->isForceCodeForRefreshToken()Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/signin/GoogleSignInOptions.smali:907`
  `const-string v3, "idTokenRequested"`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/signin/GoogleSignInOptions.smali:913`
  `const-string v3, "forceCodeForRefreshToken"`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder.smali:282`
  `.method public requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/proxy/AuthApiStatusCodes.smali:17`
  `.field public static final AUTH_TOKEN_ERROR:I = 0xbbc`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/proxy/AuthApiStatusCodes.smali:53`
  `const-string p0, "AUTH_TOKEN_ERROR"`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder.smali:79`
  `const-string v3, "Invalid tokenType"`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder.smali:158`
  `.method public setTokenType(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$Builder;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$Builder.smali:23`
  `.field public b:Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$Builder.smali:58`
  `invoke-static {}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->builder()Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$Builder.smali:62`
  `invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;->setSupported(Z)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$Builder.smali:64`
  `invoke-virtual {v0}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;->build()Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$Builder.smali:68`
  `iput-object v0, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->b:Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$Builder.smali:106`
  `iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->b:Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$Builder.smali:120`
  `invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;-><init>(Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasswordRequestOptions;Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;Ljava/lang/String;ZILcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeysRequestOptions;Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeyJsonRequestOptions;Z)V`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$Builder.smali:133`
  `.method public setGoogleIdTokenRequestOptions(Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$Builder.smali:140`
  `check-cast p1, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$Builder.smali:142`
  `iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->b:Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:1`
  `.class public final Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:13`
  `name = "GoogleIdTokenRequestOptions"`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:18`
  `Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:31`
  `"Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;",`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:66`
  `sput-object v0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->CREATOR:Landroid/os/Parcelable$Creator;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:93`
  `iput-boolean p1, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->b:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:97`
  `const-string p1, "serverClientId must be provided if Google ID tokens are requested"`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:102`
  `iput-object p2, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->c:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:104`
  `iput-object p3, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->d:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:106`
  `iput-boolean p4, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->e:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:131`
  `iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->g:Ljava/util/ArrayList;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:133`
  `iput-object p5, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->f:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:135`
  `iput-boolean p7, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->h:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:137`
  `iput-object p8, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->i:Ljava/util/List;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:139`
  `iput-object p9, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->j:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:144`
  `.method public static builder()Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:147`
  `new-instance v0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:149`
  `invoke-direct {v0}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;-><init>()V`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:159`
  `instance-of v0, p1, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:166`
  `check-cast p1, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:168`
  `iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->b:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:170`
  `iget-boolean v1, p1, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->b:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:174`
  `iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->c:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:176`
  `iget-object v1, p1, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->c:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:184`
  `iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->d:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:186`
  `iget-object v1, p1, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->d:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:194`
  `iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->e:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:196`
  `iget-boolean v1, p1, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->e:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:200`
  `iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->f:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:202`
  `iget-object v1, p1, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->f:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:210`
  `iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->g:Ljava/util/ArrayList;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:212`
  `iget-object v1, p1, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->g:Ljava/util/ArrayList;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:220`
  `iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->h:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:222`
  `iget-boolean v1, p1, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->h:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:226`
  `iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->i:Ljava/util/List;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:228`
  `iget-object v1, p1, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->i:Ljava/util/List;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:236`
  `iget-object p0, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->j:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:238`
  `iget-object p1, p1, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->j:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:260`
  `iget-boolean p0, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->e:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:265`
  `.method public getIdTokenDepositionScopes()Ljava/util/List;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:276`
  `iget-object p0, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->g:Ljava/util/ArrayList;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:284`
  `iget-object p0, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->f:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:292`
  `iget-object p0, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->d:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:300`
  `iget-object p0, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->c:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:308`
  `iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->b:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:314`
  `iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->e:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:320`
  `iget-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->h:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:326`
  `iget-object v8, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->i:Ljava/util/List;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:328`
  `iget-object v9, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->j:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:330`
  `iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->c:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:332`
  `iget-object v3, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->d:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:334`
  `iget-object v5, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->f:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:336`
  `iget-object v6, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->g:Ljava/util/ArrayList;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:352`
  `iget-boolean p0, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->b:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:362`
  `iget-boolean p0, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->h:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:376`
  `invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->isSupported()Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:382`
  `invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->getServerClientId()Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:394`
  `invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->getNonce()Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:402`
  `invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->filterByAuthorizedAccounts()Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:410`
  `invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->getLinkedServiceId()Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:418`
  `invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->getIdTokenDepositionScopes()Ljava/util/List;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:426`
  `invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->requestVerifiedPhoneNumber()Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:434`
  `iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->i:Ljava/util/List;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.smali:440`
  `iget-object p0, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->j:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder.smali:1`
  `.class public final Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder.smali:8`
  `value = Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder.smali:41`
  `iput-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;->a:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder.smali:45`
  `iput-object v1, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;->b:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder.smali:47`
  `iput-object v1, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;->c:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder.smali:51`
  `iput-boolean v2, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;->d:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder.smali:53`
  `iput-object v1, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;->e:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder.smali:55`
  `iput-object v1, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;->f:Ljava/util/List;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder.smali:57`
  `iput-boolean v0, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;->g:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder.smali:64`
  `.method public associateLinkedAccounts(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder.smali:73`
  `"Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;"`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder.smali:85`
  `iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;->e:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder.smali:87`
  `iput-object p2, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;->f:Ljava/util/List;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder.smali:92`
  `.method public build()Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder.smali:95`
  `new-instance v0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder.smali:97`
  `iget-boolean v1, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;->a:Z`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder.smali:99`
  `iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;->b:Ljava/lang/String;`
- `apk_analysis/apktool/smali_classes4/com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder.smali:101`
  `iget-object v3, p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;->c:Ljava/lang/String;`

### Token Storage — 500

- `apk_analysis/jadx/sources/defpackage/ps5.java:3`
  `import android.content.SharedPreferences;`
- `apk_analysis/jadx/sources/defpackage/ps5.java:27`
  `SharedPreferences sharedPreferences = ((fm9) obj2).a.a;`
- `apk_analysis/jadx/sources/defpackage/ps5.java:28`
  `sharedPreferences.getClass();`
- `apk_analysis/jadx/sources/defpackage/ps5.java:29`
  `SharedPreferences.Editor editorEdit = sharedPreferences.edit();`
- `apk_analysis/jadx/sources/defpackage/s47.java:14`
  `String getString(int i);`
- `apk_analysis/jadx/sources/defpackage/i72.java:68`
  `Toast.makeText(context, context.getString(R.string.custom_tabs_no_activity_exception, str), 1).show();`
- `apk_analysis/jadx/sources/defpackage/f1c.java:74`
  `bundle.putString("pkg", zzvVar.a.getPackageName());`
- `apk_analysis/jadx/sources/defpackage/zt8.java:120`
  `string = cursorA.getString(0);`
- `apk_analysis/jadx/sources/defpackage/hd.java:48`
  `String string = context2.getString(R.string.posthog_key);`
- `apk_analysis/jadx/sources/defpackage/hd.java:55`
  `String string2 = context3.getString(R.string.posthog_host);`
- `apk_analysis/jadx/sources/defpackage/ly2.java:8`
  `import androidx.datastore.core.CorruptionException;`
- `apk_analysis/jadx/sources/defpackage/ly2.java:29`
  `return FirebaseSessionsComponent.MainModule.Companion.sessionConfigsDataStore$lambda$0((CorruptionException) obj);`
- `apk_analysis/jadx/sources/defpackage/l07.java:22`
  `this.f.a().tvDescriptionInfo.setText(this.g.getString(R.string.redirect_dialog_expiration_text, Long.valueOf(jLongValue)));`
- `apk_analysis/jadx/sources/defpackage/pb2.java:320`
  `return new SimpleDateFormat(CheckScanApplication.a.a().getString(i2), Locale.getDefault());`
- `apk_analysis/jadx/sources/defpackage/pb2.java:325`
  `String string = CheckScanApplication.a.a().getString(i2);`
- `apk_analysis/jadx/sources/defpackage/pb2.java:385`
  `StringBuilder sb = new StringBuilder(CheckScanApplication.a.a().getResources().getString(R.string.title_today));`
- `apk_analysis/jadx/sources/defpackage/pb2.java:397`
  `StringBuilder sb2 = new StringBuilder(CheckScanApplication.a.a().getResources().getString(R.string.title_yesterday));`
- `apk_analysis/jadx/sources/defpackage/vp5.java:30`
  `String string = context.getString(R.string.default_notification_channel_id);`
- `apk_analysis/jadx/sources/defpackage/vp5.java:32`
  `String string2 = context.getString(R.string.default_notification_channel_name);`
- `apk_analysis/jadx/sources/defpackage/vp5.java:34`
  `String string3 = context.getString(R.string.default_notification_channel_description);`
- `apk_analysis/jadx/sources/defpackage/vp5.java:67`
  `String string4 = context.getString(R.string.tracking_link_base);`
- `apk_analysis/jadx/sources/defpackage/vp5.java:75`
  `NotificationCompat.Builder autoCancel = new NotificationCompat.Builder(context, context.getString(R.string.default_notification_channel_id)).setSmallIcon(R.drawable.ic_notification).setContentTitle(str).setContentText(str2).setContentIntent(pendingIntent).setAutoCancel(true);`
- `apk_analysis/jadx/sources/defpackage/eo6.java:28`
  `if (aa4.e(Uri.parse(str).getHost(), promoResultDialog.getContext().getString(R.string.deeplink_page_sign_up))) {`
- `apk_analysis/jadx/sources/defpackage/sf7.java:21`
  `bundle.putString(SearchIntents.EXTRA_QUERY, this.a);`
- `apk_analysis/jadx/sources/defpackage/zfa.java:46`
  `if ("debug_phone".equals(Settings.Secure.getString(contentResolver, "bluetooth_name"))) {`
- `apk_analysis/jadx/sources/defpackage/zfa.java:53`
  `if ("debug_phone".equals(Settings.System.getString(contentResolver, "bluetooth_name"))) {`
- `apk_analysis/jadx/sources/defpackage/zfa.java:60`
  `return "debug_phone".equals(Settings.Global.getString(contentResolver, "device_name"));`
- `apk_analysis/jadx/sources/defpackage/he0.java:3`
  `import android.content.SharedPreferences;`
- `apk_analysis/jadx/sources/defpackage/he0.java:7`
  `public final SharedPreferences a;`
- `apk_analysis/jadx/sources/defpackage/he0.java:158`
  `he0.this.a.edit().putString(this.g, str2).apply();`
- `apk_analysis/jadx/sources/defpackage/he0.java:176`
  `SharedPreferences sharedPreferences = he0.this.a;`
- `apk_analysis/jadx/sources/defpackage/he0.java:179`
  `String string = sharedPreferences.getString(str, str2);`
- `apk_analysis/jadx/sources/defpackage/he0.java:184`
  `public he0(SharedPreferences sharedPreferences) {`
- `apk_analysis/jadx/sources/defpackage/he0.java:185`
  `this.a = sharedPreferences;`
- `apk_analysis/jadx/sources/defpackage/kh6.java:36`
  `itemProductOfferConditionBinding.tvCondition.setText(itemProductOfferConditionBinding.getRoot().getContext().getString(R.string.products_bullet_point_condition, ((ai6) obj).a));`
- `apk_analysis/jadx/sources/defpackage/u11.java:95`
  `Toast.makeText(previewView.getContext(), previewView.getContext().getString(R.string.scanner_analyze_error), 0).show();`
- `apk_analysis/jadx/sources/defpackage/eg9.java:56`
  `return new z54(jSONObject.getString("PACKAGE_NAME_KEY"), jSONObject.getString("REFERRER_ID_KEY"), Long.valueOf(jSONObject.getLong("RECEIVED_TIMESTAMP_KEY")), Long.valueOf(jSONObject.getLong("INSTALL_APP_TIMESTAMP_KEY")), Long.valueOf(jSONObject.optLong("VERSION_CODE_KEY")));`
- `apk_analysis/jadx/sources/defpackage/oi7.java:32`
  `bundle.putString("phone", str);`
- `apk_analysis/jadx/sources/defpackage/xb9.java:18`
  `String string = this.f.a.a.getString("fsa_event_key", null);`
- `apk_analysis/jadx/sources/defpackage/xb9.java:23`
  `String string2 = jSONObject.getString("phoneNumberSha256");`
- `apk_analysis/jadx/sources/defpackage/xb9.java:24`
  `String string3 = jSONObject.getString("authToken");`
- `apk_analysis/jadx/sources/defpackage/sf3.java:44`
  `bundle.putString("qrCode", this.a);`
- `apk_analysis/jadx/sources/defpackage/sf3.java:58`
  `bundle.putString("from_type", this.e);`
- `apk_analysis/jadx/sources/defpackage/qm1.java:19`
  `String string = bundle.getString("host");`
- `apk_analysis/jadx/sources/defpackage/ozb.java:30`
  `String strCheckNotEmpty = Preconditions.checkNotEmpty(bundle.getString("name"));`
- `apk_analysis/jadx/sources/defpackage/ozb.java:39`
  `bundle.getString(CommonUrlParts.APP_ID);`
- `apk_analysis/jadx/sources/defpackage/ozb.java:40`
  `zzicVar.zzt().l(new zzah(bundle.getString(CommonUrlParts.APP_ID), "", zzplVar, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), bundle.getBoolean(AppMeasurementSdk.ConditionalUserProperty.ACTIVE), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME), null, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT), null, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE), zzppVarZzk.D(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS), "", bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), 0L, true)));`
- `apk_analysis/jadx/sources/defpackage/h0a.java:4`
  `import android.content.SharedPreferences;`
- `apk_analysis/jadx/sources/defpackage/h0a.java:53`
  `SharedPreferences.Editor editorEdit = n6aVar.a.edit();`
- `apk_analysis/jadx/sources/defpackage/nu2.java:15`
  `String string = context.getString(R.string.dynamic_link_host);`
- `apk_analysis/jadx/sources/defpackage/nu2.java:18`
  `String string2 = context.getString(R.string.firebase_dynamic_links_domain_uri_prefix);`
- `apk_analysis/jadx/sources/defpackage/nu2.java:22`
  `String string3 = context.getString(R.string.firebase_dynamic_links_ios_bundle_id);`
- `apk_analysis/jadx/sources/defpackage/nu2.java:25`
  `String string4 = context.getString(R.string.firebase_dynamic_links_app_store_id);`
- `apk_analysis/jadx/sources/defpackage/t61.java:33`
  `bundle.putString("after_event", this.a);`
- `apk_analysis/jadx/sources/defpackage/sxb.java:38`
  `bundle.putString("source", "(not set)");`
- `apk_analysis/jadx/sources/defpackage/sxb.java:39`
  `bundle.putString("medium", "(not set)");`
- `apk_analysis/jadx/sources/defpackage/sxb.java:40`
  `bundle.putString("_cis", "intent");`
- `apk_analysis/jadx/sources/defpackage/sxb.java:53`
  `bundle2.putString(str, uri.getQueryParameter(str));`
- `apk_analysis/jadx/sources/defpackage/qf7.java:34`
  `bundle.putString("toolbarTitle", str);`
- `apk_analysis/jadx/sources/defpackage/z86.java:9`
  `import java.security.KeyStore;`
- `apk_analysis/jadx/sources/defpackage/z86.java:476`
  `trustManagerFactory.init((KeyStore) null);`
- `apk_analysis/jadx/sources/defpackage/ti9.java:19`
  `return Resources.getSystem().getString(Resources.getSystem().getIdentifier("tooltip_popup_title", TypedValues.Custom.S_STRING, "android"));`
- `apk_analysis/jadx/sources/defpackage/yh1.java:28`
  `String string = chequesFragment.getString(R.string.cheques_fragment_dialog_delete_cheque_text, str3, Float.valueOf(iIntValue2 / 100.0f));`
- `apk_analysis/jadx/sources/defpackage/zv9.java:36`
  `httpCookie = new HttpCookie(jSONObject.getString("name"), jSONObject.optString("value"));`
- `apk_analysis/jadx/sources/defpackage/bg2.java:47`
  `StringBuilder sb = new StringBuilder(context.getString(R.string.share_cheque_as_message_title, fValueOf, qn1.a0(arrayList, ", ", null, null, 0, null, 62)));`
- `apk_analysis/jadx/sources/defpackage/bg2.java:63`
  `sb.append(shareChequeDialog.getContext().getString(R.string.share_cheque_as_message_item, Integer.valueOf(i2), vg6Var.d(), Float.valueOf(vg6Var.e() / 100.0f), Float.valueOf(vg6Var.g()), Float.valueOf(vg6Var.h() / 100.0f)));`
- `apk_analysis/jadx/sources/defpackage/pg9.java:57`
  `String string5 = webViewFragment.getString(R.string.electrocheque_now_you_will);`
- `apk_analysis/jadx/sources/defpackage/j81.java:32`
  `itemCategoryInChequeBinding.tvCategorySum.setText(itemCategoryInChequeBinding.getRoot().getContext().getString(R.string.placeholder_ruble_price, Float.valueOf(c81Var.b() / 100.0f)));`
- `apk_analysis/jadx/sources/defpackage/fx1.java:4`
  `import java.security.KeyStore;`
- `apk_analysis/jadx/sources/defpackage/fx1.java:5`
  `import java.security.KeyStoreException;`
- `apk_analysis/jadx/sources/defpackage/fx1.java:113`
  `public final X509TrustManager n() throws NoSuchAlgorithmException, KeyStoreException {`
- `apk_analysis/jadx/sources/defpackage/fx1.java:115`
  `trustManagerFactory.init((KeyStore) null);`
- `apk_analysis/jadx/sources/defpackage/je0.java:3`
  `import android.content.SharedPreferences;`
- `apk_analysis/jadx/sources/defpackage/je0.java:21`
  `SharedPreferences sharedPreferences = this.f.a;`
- `apk_analysis/jadx/sources/defpackage/je0.java:23`
  `dLongBitsToDouble = Double.longBitsToDouble(sharedPreferences.getLong(str, Double.doubleToRawLongBits(0.0d)));`
- `apk_analysis/jadx/sources/defpackage/je0.java:25`
  `dLongBitsToDouble = sharedPreferences.getFloat(str, 0.0f);`
- `apk_analysis/jadx/sources/defpackage/en2.java:10`
  `import java.security.KeyStore;`
- `apk_analysis/jadx/sources/defpackage/en2.java:11`
  `import java.security.KeyStoreException;`
- `apk_analysis/jadx/sources/defpackage/en2.java:30`
  `public final TrustManagerFactory a() throws NoSuchAlgorithmException, IOException, CertificateException, KeyStoreException {`
- `apk_analysis/jadx/sources/defpackage/en2.java:42`
  `KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());`
- `apk_analysis/jadx/sources/defpackage/en2.java:43`
  `keyStore.load(null, null);`
- `apk_analysis/jadx/sources/defpackage/en2.java:55`
  `keyStore.setCertificateEntry("ca_" + i, certificateGenerateCertificate);`
- `apk_analysis/jadx/sources/defpackage/en2.java:67`
  `trustManagerFactory.init(keyStore);`
- `apk_analysis/jadx/sources/defpackage/qr7.java:4`
  `import android.content.SharedPreferences;`
- `apk_analysis/jadx/sources/defpackage/qr7.java:113`
  `SharedPreferences sharedPreferences = context.getSharedPreferences("checkscanwarefly", 0);`
- `apk_analysis/jadx/sources/defpackage/qr7.java:114`
  `sharedPreferences.getClass();`
- `apk_analysis/jadx/sources/defpackage/qr7.java:115`
  `super(sharedPreferences);`
- `apk_analysis/jadx/sources/defpackage/vl6.java:30`
  `itemRvProfileOptionBinding.tvItemSettingsTitle.setText(itemRvProfileOptionBinding.getRoot().getContext().getString(rl6Var2.a));`
- `apk_analysis/jadx/sources/defpackage/ok6.java:19`
  `itemRvProfileBadgeBinding.tvText.setText(itemRvProfileBadgeBinding.getRoot().getContext().getString(R.string.profile_promocode_currency_format, wk6Var.a.a));`
- `apk_analysis/jadx/sources/defpackage/hf9.java:51`
  `String string = itemQueueChequeBinding.getRoot().getResources().getString(R.string.cheque_request_sum);`
- `apk_analysis/jadx/sources/defpackage/hec.java:56`
  `kv2.c(sb, "ProtoDataStoreConfig{uri=", string, ", schema=", string2);`
- `apk_analysis/jadx/sources/defpackage/xv0.java:32`
  `textView.setText(textView.getContext().getString(R.string.fragment_favorite_promocodes_btn_more, Integer.valueOf(i)));`
- `apk_analysis/jadx/sources/defpackage/d30.java:22`
  `itemRvBalanceGroupOperationBinding.tvExpand.setText(itemRvBalanceGroupOperationBinding.getRoot().getContext().getString(R.string.operations_expand_title));`
- `apk_analysis/jadx/sources/defpackage/u97.java:141`
  `String string = cursor.getString(1);`
- `apk_analysis/jadx/sources/defpackage/u97.java:150`
  `String string2 = cursor.getString(4);`
- `apk_analysis/jadx/sources/defpackage/u97.java:153`
  `String string3 = cursor.getString(4);`
- `apk_analysis/jadx/sources/defpackage/u97.java:185`
  `aVar.h = cursor.getString(9);`
- `apk_analysis/jadx/sources/defpackage/u97.java:239`
  `hashSet.add(new u97.b(cursorQuery.getString(1), cursorQuery.getString(2)));`
- `apk_analysis/jadx/sources/defpackage/u97.java:470`
  `String string = cursor.getString(0);`
- `apk_analysis/jadx/sources/defpackage/u97.java:602`
  `o(cursorRawQuery.getInt(0), uu4.a.MESSAGE_TOO_OLD, cursorRawQuery.getString(1));`
- `apk_analysis/jadx/sources/defpackage/rd1.java:48`
  `itemChequeBinding.tvSum.setText(itemChequeBinding.getRoot().getContext().getString(R.string.placeholder_ruble_price, Float.valueOf(hd1Var.i() / 100.0f)));`
- `apk_analysis/jadx/sources/defpackage/hqb.java:6`
  `import android.content.SharedPreferences;`
- `apk_analysis/jadx/sources/defpackage/hqb.java:97`
  `SharedPreferences sharedPreferences;`
- `apk_analysis/jadx/sources/defpackage/hqb.java:126`
  `string2 = bundle.getString("runtime_google_app_id", "");`
- `apk_analysis/jadx/sources/defpackage/hqb.java:238`
  `int iZzb2 = zzba.zzg(hnbVar.d().getString("dma_consent_settings", null)).zzb();`
- `apk_analysis/jadx/sources/defpackage/hqb.java:278`
  `string = hnbVar.d().getString("gmp_app_id", null);`
- `apk_analysis/jadx/sources/defpackage/hqb.java:293`
  `SharedPreferences.Editor editorEdit = hnbVar.d().edit();`
- `apk_analysis/jadx/sources/defpackage/hqb.java:298`
  `SharedPreferences.Editor editorEdit2 = hnbVar.d().edit();`
- `apk_analysis/jadx/sources/defpackage/hqb.java:311`
  `SharedPreferences.Editor editorEdit3 = hnbVar.d().edit();`
- `apk_analysis/jadx/sources/defpackage/hqb.java:312`
  `editorEdit3.putString("gmp_app_id", strD2);`
- `apk_analysis/jadx/sources/defpackage/hqb.java:332`
  `sharedPreferences = hnbVar.c;`
- `apk_analysis/jadx/sources/defpackage/hqb.java:333`
  `if (sharedPreferences == null) {`
- `apk_analysis/jadx/sources/defpackage/hqb.java:336`
  `zContains = sharedPreferences.contains("deferred_analytics_collection");`
- `apk_analysis/jadx/sources/defpackage/hqb.java:416`
  `int iZzb3 = zzba.zzg(hnbVar.d().getString("dma_consent_settings", null)).zzb();`
- `apk_analysis/jadx/sources/defpackage/hqb.java:463`
  `string = hnbVar.d().getString("gmp_app_id", null);`
- `apk_analysis/jadx/sources/defpackage/hqb.java:478`
  `SharedPreferences.Editor editorEdit4 = hnbVar.d().edit();`
- `apk_analysis/jadx/sources/defpackage/hqb.java:483`
  `SharedPreferences.Editor editorEdit5 = hnbVar.d().edit();`
- `apk_analysis/jadx/sources/defpackage/hqb.java:496`
  `SharedPreferences.Editor editorEdit6 = hnbVar.d().edit();`
- `apk_analysis/jadx/sources/defpackage/hqb.java:497`
  `editorEdit6.putString("gmp_app_id", strD3);`
- `apk_analysis/jadx/sources/defpackage/hqb.java:508`
  `sharedPreferences = hnbVar.c;`
- `apk_analysis/jadx/sources/defpackage/hqb.java:509`
  `if (sharedPreferences == null) {`
- `apk_analysis/jadx/sources/defpackage/hqb.java:512`
  `zContains = sharedPreferences.contains("deferred_analytics_collection");`
- `apk_analysis/jadx/sources/defpackage/ed5.java:63`
  `String[] stringArray = itemMonthStatisticsBinding.getRoot().getResources().getStringArray(R.array.cheques_month_name);`
- `apk_analysis/jadx/sources/defpackage/bz4.java:34`
  `tab.setText(context != null ? context.getString(((Number) ((b36) arrayList.get(i)).b).intValue()) : null);`
- `apk_analysis/jadx/sources/defpackage/lg9.java:49`
  `if (str2 == null && (stringExtra = webViewActivity.getIntent().getStringExtra("QR_DATA")) != null) {`
- `apk_analysis/jadx/sources/defpackage/lg9.java:50`
  `String string = webViewActivity.getString(R.string.interface_brandlink_mobile_native_scanner_complete);`
- `apk_analysis/jadx/sources/defpackage/lg9.java:65`
  `String stringExtra = webViewActivity.getIntent().getStringExtra("SHOP_APP_PACKAGE");`
- `apk_analysis/jadx/sources/defpackage/lg9.java:75`
  `String stringExtra2 = webViewActivity.getIntent().getStringExtra("SHOP_APP_NAME");`
- `apk_analysis/jadx/sources/defpackage/lg9.java:79`
  `String string = context2.getString(R.string.partner_shopping_open_app_suggestion, stringExtra2);`
- `apk_analysis/jadx/sources/defpackage/kzb.java:40`
  `String string = bundle.getString("name");`
- `apk_analysis/jadx/sources/defpackage/kzb.java:41`
  `String string2 = bundle.getString("origin");`
- `apk_analysis/jadx/sources/defpackage/kzb.java:52`
  `bundle.getString(CommonUrlParts.APP_ID);`
- `apk_analysis/jadx/sources/defpackage/kzb.java:53`
  `zzbh zzbhVarD = zzppVarZzk.D(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS), string2, 0L, 0L, true);`
- `apk_analysis/jadx/sources/defpackage/kzb.java:55`
  `bundle.getString(CommonUrlParts.APP_ID);`
- `apk_analysis/jadx/sources/defpackage/kzb.java:56`
  `zzbh zzbhVarD2 = zzppVarZzk2.D(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS), string2, 0L, 0L, true);`
- `apk_analysis/jadx/sources/defpackage/kzb.java:58`
  `bundle.getString(CommonUrlParts.APP_ID);`
- `apk_analysis/jadx/sources/defpackage/kzb.java:59`
  `zzicVar.zzt().l(new zzah(bundle.getString(CommonUrlParts.APP_ID), string2, zzplVar, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), false, bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME), zzbhVarD2, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT), zzbhVarD, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE), zzppVarZzk3.D(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS), string2, 0L, 0L, true)));`
- `apk_analysis/jadx/sources/defpackage/zt5.java:19`
  `String string = bundle.getString("partnerId");`
- `apk_analysis/jadx/sources/defpackage/nk.java:7`
  `import androidx.datastore.core.CorruptionException;`
- `apk_analysis/jadx/sources/defpackage/nk.java:34`
  `return JavaDataStorage.dataStore_delegate$lambda$0((JavaDataStorage) obj2, (CorruptionException) obj);`
- `apk_analysis/jadx/sources/defpackage/ob4.java:78`
  `persistableBundle.putString("backendName", s29Var.b());`
- `apk_analysis/jadx/sources/defpackage/ob4.java:81`
  `persistableBundle.putString(TJAdUnitConstants.String.EXTRAS, Base64.encodeToString(s29Var.c(), 0));`
- `apk_analysis/jadx/sources/defpackage/vq0.java:27`
  `String string = bundle.getString("toolbarTitle");`
- `apk_analysis/jadx/sources/defpackage/qr6.java:30`
  `String string = bundle.getString(SearchIntents.EXTRA_QUERY);`
- `apk_analysis/jadx/sources/defpackage/gd.java:62`
  `AppMetricaConfig.Builder builderNewConfigBuilder = AppMetricaConfig.newConfigBuilder(context.getString(R.string.yandex_app_metrica_api_key));`
- `apk_analysis/jadx/sources/defpackage/in9.java:569`
  `if (TextUtils.isEmpty(jSONObjectOptJSONObject21.getString(str36))) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:576`
  `if (TextUtils.isEmpty(jSONObjectOptJSONObject21.getString(str57))) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:582`
  `if (TextUtils.isEmpty(jSONObjectOptJSONObject21.getString("picture"))) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:585`
  `if (TextUtils.isEmpty(jSONObjectOptJSONObject21.getString("text"))) {`
- `apk_analysis/jadx/sources/defpackage/in9.java:589`
  `jSONObjectOptJSONObject21.getString("oldPrice");`
- `apk_analysis/jadx/sources/defpackage/in9.java:592`
  `jSONObjectOptJSONObject21.getString(FirebaseAnalytics.Param.PRICE);`
- `apk_analysis/jadx/sources/defpackage/in9.java:595`
  `jSONObjectOptJSONObject21.getString("deeplink");`
- `apk_analysis/jadx/sources/defpackage/in9.java:598`
  `jSONObjectOptJSONObject21.getString("deeplink_fallback_url");`
- `apk_analysis/jadx/sources/defpackage/gq9.java:44`
  `string = cursorRawQuery.getString(0);`
- `apk_analysis/jadx/sources/defpackage/gq9.java:49`
  `string2 = cursorRawQuery.getString(1);`
- `apk_analysis/jadx/sources/defpackage/gh5.java:56`
  `this.a = bundle.getString("com.arellomobile.mvp.MvpDelegate.KEY_TAG");`
- `apk_analysis/jadx/sources/defpackage/gh5.java:211`
  `bundle2.putString("com.arellomobile.mvp.MvpDelegate.KEY_TAG", this.a);`
- `apk_analysis/jadx/sources/defpackage/fu4.java:58`
  `itemProductShopsBinding.btnCollapse.setText(itemProductShopsBinding.getRoot().getContext().getString(R.string.products_show_all_shops_button));`
- `apk_analysis/jadx/sources/defpackage/fu4.java:72`
  `itemProductShopsBinding.btnCollapse.setText(itemProductShopsBinding.getRoot().getContext().getString(R.string.products_hide_all_shops_button));`
- `apk_analysis/jadx/sources/defpackage/kc9.java:25`
  `String string = bundle.getString("phone");`
- `apk_analysis/jadx/sources/defpackage/v8.java:43`
  `shareChequeDialog.getContext().startActivity(Intent.createChooser((Intent) obj, shareChequeDialog.getContext().getString(R.string.share_title)));`
- `apk_analysis/jadx/sources/defpackage/o0c.java:3`
  `import android.content.SharedPreferences;`
- `apk_analysis/jadx/sources/defpackage/o0c.java:31`
  `zzba zzbaVarZzg = zzba.zzg(hnbVarZzd.d().getString("dma_consent_settings", null));`
- `apk_analysis/jadx/sources/defpackage/o0c.java:37`
  `SharedPreferences.Editor editorEdit = hnbVarZzd.d().edit();`
- `apk_analysis/jadx/sources/defpackage/o0c.java:38`
  `editorEdit.putString("dma_consent_settings", zzbaVar.zze());`
- `apk_analysis/jadx/sources/defpackage/kd.java:2180`
  `bundle.putString((String) key, value.toString());`
- `apk_analysis/jadx/sources/defpackage/zd6.java:4`
  `import android.content.SharedPreferences;`
- `apk_analysis/jadx/sources/defpackage/zd6.java:21`
  `public volatile SharedPreferences e = null;`
- `apk_analysis/jadx/sources/defpackage/zd6.java:37`
  `SharedPreferences sharedPreferencesF = f();`
- `apk_analysis/jadx/sources/defpackage/zd6.java:38`
  `if (sharedPreferencesF == null) {`
- `apk_analysis/jadx/sources/defpackage/zd6.java:43`
  `SharedPreferences.Editor editorEdit = sharedPreferencesF.edit();`
- `apk_analysis/jadx/sources/defpackage/zd6.java:47`
  `editorEdit.putString(str, (String) obj);`
- `apk_analysis/jadx/sources/defpackage/zd6.java:58`
  `if (set == null || editorEdit.putStringSet(str, set) == null) {`
- `apk_analysis/jadx/sources/defpackage/zd6.java:66`
  `if (set == null || editorEdit.putStringSet(str, set) == null) {`
- `apk_analysis/jadx/sources/defpackage/zd6.java:91`
  `SharedPreferences sharedPreferencesF = f();`
- `apk_analysis/jadx/sources/defpackage/zd6.java:92`
  `if (sharedPreferencesF == null) {`
- `apk_analysis/jadx/sources/defpackage/zd6.java:106`
  `SharedPreferences.Editor editorEdit = sharedPreferencesF.edit();`
- `apk_analysis/jadx/sources/defpackage/zd6.java:114`
  `Set<String> setKeySet2 = sharedPreferencesF.getAll().keySet();`
- `apk_analysis/jadx/sources/defpackage/zd6.java:129`
  `editorEdit.putStringSet("stringifiedKeys", linkedHashSet);`
- `apk_analysis/jadx/sources/defpackage/zd6.java:144`
  `SharedPreferences sharedPreferencesF = f();`
- `apk_analysis/jadx/sources/defpackage/zd6.java:145`
  `if (sharedPreferencesF != null) {`
- `apk_analysis/jadx/sources/defpackage/zd6.java:146`
  `obj2 = sharedPreferencesF.getAll().get(str);`
- `apk_analysis/jadx/sources/defpackage/zd6.java:190`
  `public final SharedPreferences f() {`
- `apk_analysis/jadx/sources/defpackage/zd6.java:191`
  `SharedPreferences sharedPreferences = this.e;`
- `apk_analysis/jadx/sources/defpackage/zd6.java:192`
  `if (sharedPreferences != null) {`
- `apk_analysis/jadx/sources/defpackage/zd6.java:193`
  `return sharedPreferences;`
- `apk_analysis/jadx/sources/defpackage/zd6.java:197`
  `SharedPreferences sharedPreferences2 = this.e;`
- `apk_analysis/jadx/sources/defpackage/zd6.java:198`
  `if (sharedPreferences2 != null) {`
- `apk_analysis/jadx/sources/defpackage/zd6.java:199`
  `return sharedPreferences2;`
- `apk_analysis/jadx/sources/defpackage/zd6.java:202`
  `SharedPreferences sharedPreferences3 = this.b.getSharedPreferences("posthog-android-" + this.c.t, 0);`
- `apk_analysis/jadx/sources/defpackage/zd6.java:203`
  `if (sharedPreferences3 == null) {`
- `apk_analysis/jadx/sources/defpackage/zd6.java:206`
  `this.e = sharedPreferences3;`
- `apk_analysis/jadx/sources/defpackage/zd6.java:223`
  `return sharedPreferences3;`
- `apk_analysis/jadx/sources/defpackage/zd6.java:236`
  `SharedPreferences sharedPreferencesF = f();`
- `apk_analysis/jadx/sources/defpackage/zd6.java:238`
  `return (sharedPreferencesF == null || (stringSet = sharedPreferencesF.getStringSet("stringifiedKeys", ox2Var)) == null) ? ox2Var : stringSet;`
- `apk_analysis/jadx/sources/defpackage/zd6.java:246`
  `SharedPreferences sharedPreferencesF = f();`
- `apk_analysis/jadx/sources/defpackage/zd6.java:247`
  `if (sharedPreferencesF != null) {`
- `apk_analysis/jadx/sources/defpackage/zd6.java:248`
  `Map<String, ?> all = sharedPreferencesF.getAll();`
- `apk_analysis/jadx/sources/defpackage/zd6.java:285`
  `public final void h(String str, Object obj, SharedPreferences.Editor editor) {`
- `apk_analysis/jadx/sources/defpackage/zd6.java:294`
  `editor.putString(str, sb.toString());`
- `apk_analysis/jadx/sources/defpackage/zd6.java:295`
  `editor.putStringSet("stringifiedKeys", mr7.m(g(), str));`
- `apk_analysis/jadx/sources/defpackage/zd6.java:305`
  `SharedPreferences sharedPreferencesF = f();`
- `apk_analysis/jadx/sources/defpackage/zd6.java:306`
  `if (sharedPreferencesF == null) {`
- `apk_analysis/jadx/sources/defpackage/zd6.java:311`
  `SharedPreferences.Editor editorEdit = sharedPreferencesF.edit();`
- `apk_analysis/jadx/sources/defpackage/zd6.java:316`
  `editorEdit.putStringSet("stringifiedKeys", setX0);`
- `apk_analysis/jadx/sources/defpackage/j4c.java:56`
  `bundle2.putString(zzplVar.zzb, str3);`
- `apk_analysis/jadx/sources/defpackage/it0.java:3`
  `import java.security.KeyStore;`
- `apk_analysis/jadx/sources/defpackage/it0.java:4`
  `import java.security.KeyStoreException;`
- `apk_analysis/jadx/sources/defpackage/it0.java:52`
  `public final X509TrustManager n() throws NoSuchAlgorithmException, KeyStoreException, NoSuchProviderException {`
- `apk_analysis/jadx/sources/defpackage/it0.java:54`
  `trustManagerFactory.init((KeyStore) null);`
- `apk_analysis/jadx/sources/defpackage/wy5.java:22`
  `itemGroupOperationBinding.tvExpand.setText(itemGroupOperationBinding.getRoot().getContext().getString(R.string.operations_expand_title));`
- `apk_analysis/jadx/sources/defpackage/oub.java:25`
  `if (context.getSharedPreferences("app_set_id_storage", 0).edit().remove("app_set_id_last_used_time").commit()) {`
- `apk_analysis/jadx/sources/defpackage/s09.java:33`
  `itemRvSbpTransferButtonBinding.btnTransfer.setText(itemRvSbpTransferButtonBinding.getRoot().getContext().getString(R.string.sbp_withdraw_button));`
- `apk_analysis/jadx/sources/defpackage/cw6.java:16`
  `return new cw6(bundle.getString("qrCode"));`
- `apk_analysis/jadx/sources/defpackage/l1.java:27`
  `String string = jSONObject.getString("name");`
- `apk_analysis/jadx/sources/defpackage/v37.java:30`
  `String string2 = bundle.getString("qrCode");`
- `apk_analysis/jadx/sources/defpackage/v37.java:47`
  `string = bundle.getString("from_type");`
- `apk_analysis/jadx/sources/defpackage/ysb.java:36`
  `String string = zzbfVar.b.getString("_cis");`
- `apk_analysis/jadx/sources/defpackage/oy9.java:5`
  `import java.security.KeyStore;`
- `apk_analysis/jadx/sources/defpackage/oy9.java:6`
  `import java.security.KeyStoreException;`
- `apk_analysis/jadx/sources/defpackage/oy9.java:15`
  `public static void a(KeyStore keyStore, CertificateFactory certificateFactory, String str, byte[] bArr) {`
- `apk_analysis/jadx/sources/defpackage/oy9.java:25`
  `keyStore.setCertificateEntry(str, certificateGenerateCertificate);`
- `apk_analysis/jadx/sources/defpackage/oy9.java:26`
  `} catch (KeyStoreException e2) {`
- `apk_analysis/jadx/sources/defpackage/kd9.java:233`
  `if (MimeTypes.VIDEO_VP8.equals(mediaExtractor.getTrackFormat(i9).getString("mime"))) {`
- `apk_analysis/jadx/sources/defpackage/j86.java:54`
  `options.setToolbarTitle(scannerFragment.getString(R.string.title_crop_image));`
- `apk_analysis/jadx/sources/defpackage/p09.java:29`
  `itemRvSbpTransferBanksBinding.tvTitle.setText(itemRvSbpTransferBanksBinding.getRoot().getContext().getString(R.string.sbp_banks_hint));`
- `apk_analysis/jadx/sources/defpackage/id1.java:58`
  `itemChequeBinding.tvSum.setText(itemChequeBinding.getRoot().getContext().getString(R.string.placeholder_ruble_price, Float.valueOf(oa4Var2.d / 100.0f)));`
- `apk_analysis/jadx/sources/defpackage/f9c.java:68`
  `bundle2.putString("_ffr", strZza);`
- `apk_analysis/jadx/sources/defpackage/ty5.java:112`
  `textView2.setText(itemGroupOperationBinding.getRoot().getContext().getString(R.string.operations_unexpand_title));`
- `apk_analysis/jadx/sources/defpackage/ty5.java:116`
  `textView2.setText(itemGroupOperationBinding.getRoot().getContext().getString(R.string.operations_expand_title));`
- `apk_analysis/jadx/sources/defpackage/jf.java:43`
  `context.getSharedPreferences("com.skydoves.balloon", 0).getClass();`
- `apk_analysis/jadx/sources/defpackage/su6.java:111`
  `String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));`
- `apk_analysis/jadx/sources/defpackage/vi6.java:47`
  `itemRvProductFromChequeBinding.tvPrice.setText(itemRvProductFromChequeBinding.getRoot().getContext().getString(R.string.placeholder_ruble_price, Float.valueOf(ui6Var2.c / 100.0f)));`
- `apk_analysis/jadx/sources/defpackage/h4a.java:30`
  `String string = cursorRawQuery.getString(columnIndexOrThrow);`
- `apk_analysis/jadx/sources/defpackage/th6.java:32`
  `itemChequeProductBinding.tvSumWord.setText(itemChequeProductBinding.getRoot().getContext().getString(R.string.placeholder_ruble_price, Float.valueOf(vg6Var.h() / 100.0f)));`
- `apk_analysis/jadx/sources/defpackage/th6.java:33`
  `itemChequeProductBinding.tvPriceUnits.setText(itemChequeProductBinding.getRoot().getContext().getString(R.string.placeholder_cheque_price_units, Float.valueOf(vg6Var.g()), Float.valueOf(vg6Var.e() / 100.0f)));`
- `apk_analysis/jadx/sources/defpackage/zhc.java:56`
  `String stringExtra = intent2.getStringExtra("registration_id");`
- `apk_analysis/jadx/sources/defpackage/zhc.java:58`
  `stringExtra = intent2.getStringExtra("unregistered");`
- `apk_analysis/jadx/sources/defpackage/zhc.java:73`
  `extras.putString("registration_id", strGroup2);`
- `apk_analysis/jadx/sources/defpackage/zhc.java:79`
  `String stringExtra2 = intent2.getStringExtra("error");`
- `apk_analysis/jadx/sources/defpackage/hfa.java:4`
  `import android.content.SharedPreferences;`
- `apk_analysis/jadx/sources/defpackage/hfa.java:8`
  `public final SharedPreferences a;`
- `apk_analysis/jadx/sources/defpackage/hfa.java:11`
  `this.a = context.getSharedPreferences("install_referrer_fsa_sp", 0);`
- `apk_analysis/jadx/sources/defpackage/qx6.java:14`
  `builder.setTitle(context.getString(R.string.help_header));`
- `apk_analysis/jadx/sources/defpackage/qx6.java:15`
  `String string = context.getString(R.string.via_feedback_vk);`
- `apk_analysis/jadx/sources/defpackage/qx6.java:17`
  `String string2 = context.getString(R.string.via_feedback_tg);`
- `apk_analysis/jadx/sources/defpackage/qx6.java:19`
  `String string3 = context.getString(R.string.via_feedback_mail);`
- `apk_analysis/jadx/sources/defpackage/qx6.java:29`
  `Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(context2.getString(R.string.help_vk_link)));`
- `apk_analysis/jadx/sources/defpackage/qx6.java:34`
  `i72.b(context2, context2.getString(R.string.help_vk_link));`
- `apk_analysis/jadx/sources/defpackage/qx6.java:44`
  `Intent intent3 = new Intent("android.intent.action.VIEW", Uri.parse(context2.getString(R.string.yandex_cobrand_form_feedback_url, strValueOf, str2)));`
- `apk_analysis/jadx/sources/defpackage/qx6.java:49`
  `i72.b(context2, context2.getString(R.string.yandex_cobrand_form_feedback_url, String.valueOf(-1L), str2));`
- `apk_analysis/jadx/sources/defpackage/qx6.java:55`
  `context2.getPackageManager().getPackageInfo(context2.getString(R.string.telegram_package), 0);`
- `apk_analysis/jadx/sources/defpackage/qx6.java:57`
  `context2.getPackageManager().getPackageInfo(context2.getString(R.string.telegram_x_package), 0);`
- `apk_analysis/jadx/sources/defpackage/qx6.java:59`
  `intent = new Intent("android.intent.action.VIEW", Uri.parse(context2.getString(R.string.help_telegram_cobrand_bot_link, String.valueOf(-1L))));`
- `apk_analysis/jadx/sources/defpackage/qx6.java:61`
  `String string4 = context2.getString(R.string.help_telegram_cobrand_bot_link, String.valueOf(-1L));`
- `apk_analysis/jadx/sources/defpackage/qx6.java:68`
  `i72.b(context2, context2.getString(R.string.help_telegram_cobrand_bot_link, String.valueOf(-1L)));`
- `apk_analysis/jadx/sources/defpackage/vub.java:68`
  `zzpjVarA = kvaVarZzj.A((String) Preconditions.checkNotNull(cursorQuery.getString(1)), j, cursorQuery.getBlob(2), cursorQuery.getString(3), cursorQuery.getString(4), cursorQuery.getInt(5), cursorQuery.getInt(6), cursorQuery.getLong(7), cursorQuery.getLong(8), cursorQuery.getLong(9));`
- `apk_analysis/jadx/sources/defpackage/qh9.java:167`
  `String string = itemWideBonusPointsBinding.getRoot().getContext().getString(R.string.tasks_timer_format);`
- `apk_analysis/jadx/sources/defpackage/n2.java:47`
  `aVarA.b(cursor.getString(1));`
- `apk_analysis/jadx/sources/defpackage/n2.java:49`
  `String string = cursor.getString(3);`
- `apk_analysis/jadx/sources/defpackage/e30.java:34`
  `appCompatTextView2.setText(itemRvBalanceGroupOperationBinding.getRoot().getContext().getString(R.string.operations_unexpand_title));`
- `apk_analysis/jadx/sources/defpackage/e30.java:38`
  `appCompatTextView2.setText(itemRvBalanceGroupOperationBinding.getRoot().getContext().getString(R.string.operations_expand_title));`
- `apk_analysis/jadx/sources/defpackage/qh5.java:22`
  `import java.security.KeyStore;`
- `apk_analysis/jadx/sources/defpackage/qh5.java:23`
  `import java.security.KeyStoreException;`
- `apk_analysis/jadx/sources/defpackage/qh5.java:60`
  `KeyStore keyStore;`
- `apk_analysis/jadx/sources/defpackage/qh5.java:177`
  `KeyStore keyStore2 = KeyStore.getInstance(KeyStore.getDefaultType());`
- `apk_analysis/jadx/sources/defpackage/qh5.java:178`
  `keyStore2.load(null, null);`
- `apk_analysis/jadx/sources/defpackage/qh5.java:179`
  `keyStore = keyStore2;`
- `apk_analysis/jadx/sources/defpackage/qh5.java:182`
  `keyStore = null;`
- `apk_analysis/jadx/sources/defpackage/qh5.java:184`
  `if (keyStore == null) {`
- `apk_analysis/jadx/sources/defpackage/qh5.java:185`
  `y14.w(null, "CertManager: Error make certData – keyStore is null");`
- `apk_analysis/jadx/sources/defpackage/qh5.java:187`
  `oy9.a(keyStore, certificateFactory, "russian_trusted_root_ca", y14.e);`
- `apk_analysis/jadx/sources/defpackage/qh5.java:188`
  `oy9.a(keyStore, certificateFactory, "russian_trusted_root_ca_gost_2025", y14.f);`
- `apk_analysis/jadx/sources/defpackage/qh5.java:189`
  `oy9.a(keyStore, certificateFactory, "russian_trusted_sub_ca", y14.g);`
- `apk_analysis/jadx/sources/defpackage/qh5.java:190`
  `oy9.a(keyStore, certificateFactory, "russian_trusted_sub_ca_2024", y14.h);`
- `apk_analysis/jadx/sources/defpackage/qh5.java:191`
  `oy9.a(keyStore, certificateFactory, "russian_trusted_sub_ca_gost_2025", y14.i);`
- `apk_analysis/jadx/sources/defpackage/qh5.java:194`
  `KeyStore keyStore3 = KeyStore.getInstance("AndroidCAStore");`
- `apk_analysis/jadx/sources/defpackage/qh5.java:195`
  `if (keyStore3 != null) {`
- `apk_analysis/jadx/sources/defpackage/qh5.java:196`
  `keyStore3.load(null, null);`
- `apk_analysis/jadx/sources/defpackage/qh5.java:197`
  `Enumeration<String> enumerationAliases = keyStore3.aliases();`
- `apk_analysis/jadx/sources/defpackage/qh5.java:200`
  `X509Certificate x509Certificate = (X509Certificate) keyStore3.getCertificate(enumerationAliases.nextElement());`
- `apk_analysis/jadx/sources/defpackage/qh5.java:218`
  `keyStore.setCertificateEntry(x509Certificate2.getIssuerDN().getName(), x509Certificate2);`
- `apk_analysis/jadx/sources/defpackage/qh5.java:219`
  `} catch (KeyStoreException e2) {`
- `apk_analysis/jadx/sources/defpackage/qh5.java:226`
  `trustManagerFactory2.init(keyStore);`
- `apk_analysis/jadx/sources/defpackage/ei7.java:38`
  `bundle.putString("waitingQueueReceiptQr", this.b);`
- `apk_analysis/jadx/sources/defpackage/z64.java:77`
  `string = itemInsuranceShowcaseCardBinding.getRoot().getContext().getString(R.string.showcase_insurance_timeout);`
- `apk_analysis/jadx/sources/defpackage/z64.java:81`
  `String string2 = itemInsuranceShowcaseCardBinding.getRoot().getContext().getString(R.string.showcase_insurance_time_format);`
- `apk_analysis/jadx/sources/defpackage/dk8.java:86`
  `textView2.setText(textView2.getContext().getString(R.string.placeholder_ruble_price, Float.valueOf(aVar.c / 100.0f)));`
- `apk_analysis/jadx/sources/defpackage/gh7.java:23`
  `bundle.putString("partnerId", str);`
- `apk_analysis/jadx/sources/defpackage/uq0.java:55`
  `bundle.putString("after_event", this.b);`
- `apk_analysis/jadx/sources/defpackage/d22.java:26`
  `return JavaDataStorage.dataStore_delegate$lambda$1((JavaDataStorage) obj2, (Context) obj);`
- `apk_analysis/jadx/sources/defpackage/vl9.java:16`
  `this.a = context.getSharedPreferences("metrics_sdk_sp", 0);`
- `apk_analysis/jadx/sources/defpackage/pc9.java:25`
  `String string = bundle.getString("phone");`
- `apk_analysis/jadx/sources/defpackage/oh8.java:4`
  `import android.content.SharedPreferences;`
- `apk_analysis/jadx/sources/defpackage/oh8.java:40`
  `String string2 = cursorRawQuery.getString(columnIndexOrThrow);`
- `apk_analysis/jadx/sources/defpackage/oh8.java:55`
  `String string3 = jSONObject.getString("name");`
- `apk_analysis/jadx/sources/defpackage/oh8.java:75`
  `SharedPreferences sharedPreferences = (SharedPreferences) xn9Var.a.a;`
- `apk_analysis/jadx/sources/defpackage/oh8.java:76`
  `sharedPreferences.getClass();`
- `apk_analysis/jadx/sources/defpackage/oh8.java:78`
  `String string4 = sharedPreferences.getString("USER_ID_KEY", null);`
- `apk_analysis/jadx/sources/defpackage/oh8.java:84`
  `SharedPreferences sharedPreferences2 = (SharedPreferences) xn9Var.a.a;`
- `apk_analysis/jadx/sources/defpackage/oh8.java:85`
  `sharedPreferences2.getClass();`
- `apk_analysis/jadx/sources/defpackage/oh8.java:86`
  `string = sharedPreferences2.getString("USER_ID_KEY", null);`
- `apk_analysis/jadx/sources/defpackage/oh8.java:93`
  `SharedPreferences sharedPreferences3 = (SharedPreferences) xn9Var.a.a;`
- `apk_analysis/jadx/sources/defpackage/oh8.java:94`
  `sharedPreferences3.getClass();`
- `apk_analysis/jadx/sources/defpackage/oh8.java:95`
  `SharedPreferences.Editor editorEdit = sharedPreferences3.edit();`
- `apk_analysis/jadx/sources/defpackage/oh8.java:96`
  `editorEdit.putString("USER_ID_KEY", string);`
- `apk_analysis/jadx/sources/defpackage/y0c.java:47`
  `bundleL.putString("_cis", "referrer");`
- `apk_analysis/jadx/sources/defpackage/y0c.java:58`
  `bundleL2.putString("_cis", "intent");`
- `apk_analysis/jadx/sources/defpackage/y0c.java:60`
  `bundleL2.putString("_cer", "gclid=" + bundleL.getString("gclid"));`
- `apk_analysis/jadx/sources/defpackage/vy5.java:22`
  `itemGroupOperationBinding.tvExpand.setText(itemGroupOperationBinding.getRoot().getContext().getString(R.string.operations_unexpand_title));`
- `apk_analysis/jadx/sources/defpackage/wv2.java:17`
  `return u96.i(new rv6(new pv6(s47Var.getString(R.string.elecro_cheque_question_first_title), "Актуальный список магазинов, где можно получить электронные чеки, можно посмотреть <a href='https://mco.nalog.ru/partners/markets'>по ссылке</a>")), new rv6(new pv6(s47Var.getString(R.string.elecro_cheque_question_second_title), s47Var.getString(R.string.elecro_cheque_question_second_description))), new rv6(new pv6(s47Var.getString(R.string.elecro_cheque_question_third_title), s47Var.getString(R.string.elecro_cheque_question_third_description))), new rv6(new pv6(s47Var.getString(R.string.elecro_cheque_question_fourth_title), s47Var.getString(R.string.elecro_cheque_question_fourth_description))), new rv6(new pv6(s47Var.getString(R.string.elecro_cheque_question_fifth_title), s47Var.getString(R.string.elecro_cheque_question_fifth_description))));`
- `apk_analysis/jadx/sources/defpackage/wv2.java:23`
  `return u96.i(new t64(new s64(s47Var.getString(R.string.electro_cheque_instructions_first_title), R.drawable.ic_yellow_scan, s47Var.getString(R.string.electro_cheque_instructions_first_description))), new t64(new s64(s47Var.getString(R.string.electro_cheque_instructions_second_title), R.drawable.ic_red_cart, s47Var.getString(R.string.electro_cheque_instructions_second_description))), new t64(new s64(s47Var.getString(R.string.electro_cheque_instructions_third_title), R.drawable.ic_receipt, s47Var.getString(R.string.electro_cheque_instructions_third_description)), true));`
- `apk_analysis/jadx/sources/defpackage/t47.java:38`
  `String string = ((Resources) this.b.getValue()).getString(R.string.scanner_cheque_title, Arrays.copyOf(objArr, objArr.length));`
- `apk_analysis/jadx/sources/defpackage/t47.java:51`
  `public final String getString(int i) {`
- `apk_analysis/jadx/sources/defpackage/t47.java:52`
  `String string = ((Resources) this.b.getValue()).getString(i);`
- `apk_analysis/jadx/sources/defpackage/xt7.java:18`
  `String string = this.a.getSharedPreferences("com.google.mlkit.internal", 0).getString("ml_sdk_instance_id", null);`
- `apk_analysis/jadx/sources/defpackage/xt7.java:23`
  `this.a.getSharedPreferences("com.google.mlkit.internal", 0).edit().putString("ml_sdk_instance_id", string2).apply();`
- `apk_analysis/jadx/sources/defpackage/xt7.java:28`
  `return this.a.getSharedPreferences("com.google.mlkit.internal", 0).getLong("downloading_begin_time_".concat(z17.a()), 0L);`
- `apk_analysis/jadx/sources/defpackage/n6a.java:4`
  `import android.content.SharedPreferences;`
- `apk_analysis/jadx/sources/defpackage/n6a.java:9`
  `public final SharedPreferences a;`
- `apk_analysis/jadx/sources/defpackage/n6a.java:11`
  `public n6a(SharedPreferences sharedPreferences) {`
- `apk_analysis/jadx/sources/defpackage/n6a.java:12`
  `this.a = sharedPreferences;`
- `apk_analysis/jadx/sources/defpackage/n6a.java:25`
  `b = new n6a(context.getSharedPreferences("mytarget_prefs", 0));`
- `apk_analysis/jadx/sources/defpackage/n6a.java:37`
  `SharedPreferences.Editor editorEdit = this.a.edit();`
- `apk_analysis/jadx/sources/defpackage/n6a.java:38`
  `editorEdit.putString(str, str2);`
- `apk_analysis/jadx/sources/defpackage/n6a.java:47`
  `String string = this.a.getString(str, null);`
- `apk_analysis/jadx/sources/defpackage/a1c.java:71`
  `String string = extras.getString("com.android.vending.referral_url");`
- `apk_analysis/jadx/sources/defpackage/h09.java:38`
  `itemRvSbpTransferAmountInputBinding.tvTitle.setText(itemRvSbpTransferAmountInputBinding.getRoot().getContext().getString(R.string.sbp_sum_hint));`
- `apk_analysis/jadx/sources/defpackage/tub.java:26`
  `String string = bundleZzg.getString("Error");`
- `apk_analysis/jadx/sources/defpackage/tf7.java:34`
  `bundle.putString(TypedValues.AttributesType.S_TARGET, this.c);`
- `apk_analysis/jadx/sources/defpackage/tf7.java:35`
  `bundle.putString("tab", this.b);`
- `apk_analysis/jadx/sources/defpackage/tf7.java:36`
  `bundle.putString("campaignCode", this.d);`
- `apk_analysis/jadx/sources/defpackage/tf7.java:38`
  `bundle.putString("offer_id", str);`
- `apk_analysis/jadx/sources/defpackage/tf7.java:39`
  `bundle.putString("category_id", str2);`
- `apk_analysis/jadx/sources/defpackage/vy1.java:8`
  `import androidx.datastore.core.CorruptionException;`
- `apk_analysis/jadx/sources/defpackage/vy1.java:40`
  `return FirebaseSessionsComponent.MainModule.Companion.sessionDataStore$lambda$3((SessionDataSerializer) obj2, (CorruptionException) obj);`
- `apk_analysis/jadx/sources/defpackage/hnb.java:3`
  `import android.content.SharedPreferences;`
- `apk_analysis/jadx/sources/defpackage/hnb.java:22`
  `public SharedPreferences c;`
- `apk_analysis/jadx/sources/defpackage/hnb.java:23`
  `public SharedPreferences d;`
- `apk_analysis/jadx/sources/defpackage/hnb.java:76`
  `SharedPreferences sharedPreferences = zzicVar.zzaZ().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);`
- `apk_analysis/jadx/sources/defpackage/hnb.java:77`
  `this.c = sharedPreferences;`
- `apk_analysis/jadx/sources/defpackage/hnb.java:78`
  `boolean z2 = sharedPreferences.getBoolean("has_been_opened", false);`
- `apk_analysis/jadx/sources/defpackage/hnb.java:81`
  `SharedPreferences.Editor editorEdit = this.c.edit();`
- `apk_analysis/jadx/sources/defpackage/hnb.java:89`
  `public final SharedPreferences d() {`
- `apk_analysis/jadx/sources/defpackage/hnb.java:96`
  `public final SharedPreferences e() {`
- `apk_analysis/jadx/sources/defpackage/hnb.java:99`
  `SharedPreferences sharedPreferences = this.d;`
- `apk_analysis/jadx/sources/defpackage/hnb.java:100`
  `if (sharedPreferences != null) {`
- `apk_analysis/jadx/sources/defpackage/hnb.java:101`
  `return sharedPreferences;`
- `apk_analysis/jadx/sources/defpackage/hnb.java:108`
  `SharedPreferences sharedPreferences2 = zzicVar.zzaZ().getSharedPreferences(strConcat, 0);`
- `apk_analysis/jadx/sources/defpackage/hnb.java:109`
  `this.d = sharedPreferences2;`
- `apk_analysis/jadx/sources/defpackage/hnb.java:110`
  `return sharedPreferences2;`
- `apk_analysis/jadx/sources/defpackage/hnb.java:133`
  `return zzjl.zzf(d().getString("consent_settings", "G1"), d().getInt("consent_source", 100));`
- `apk_analysis/jadx/sources/defpackage/hnb.java:139`
  `SharedPreferences.Editor editorEdit = d().edit();`
- `apk_analysis/jadx/sources/defpackage/rt0.java:31`
  `if (aa4.e(scheme, brandlinkFragment.getString(R.string.deeplink_scheme))) {`
- `apk_analysis/jadx/sources/defpackage/b40.java:895`
  `aVar = u96.h(new t10(jA, s47Var.getString(R.string.balance_management_block_title), s47Var.getString(R.string.balance_management_block_description)));`
- `apk_analysis/jadx/sources/defpackage/b40.java:1036`
  `arrayList.add(0, new j70(str, this.b.getString(R.string.balance_all_operations)));`
- `apk_analysis/jadx/sources/defpackage/b40.java:1548`
  `arrayList2.add(new p20(R.drawable.ic_arrow_down, this.b.getString(R.string.balance_expand_on), false));`
- `apk_analysis/jadx/sources/defpackage/ni7.java:29`
  `bundle.putString("phone", this.a);`
- `apk_analysis/jadx/sources/defpackage/ps7.java:48`
  `PrintWriter printWriterAppend = printWriter.append((CharSequence) shareChequeDialog.getContext().getString(R.string.share_cheque_date)).append((CharSequence) ";").append((CharSequence) shareChequeDialog.getContext().getString(R.string.share_cheque_shop)).append((CharSequence) ";").append((CharSequence) shareChequeDialog.getContext().getString(R.string.share_cheque_address)).append((CharSequence) "\n").append((CharSequence) pb2.g(hd1Var.f())).append((CharSequence) ";");`
- `apk_analysis/jadx/sources/defpackage/ps7.java:59`
  `printWriter.append((CharSequence) shareChequeDialog.getContext().getString(R.string.share_cheque_item_title)).append((CharSequence) ";").append((CharSequence) shareChequeDialog.getContext().getString(R.string.share_cheque_item_category)).append((CharSequence) ";").append((CharSequence) shareChequeDialog.getContext().getString(R.string.share_cheque_item_quantity)).append((CharSequence) ";").append((CharSequence) shareChequeDialog.getContext().getString(R.string.share_cheque_item_price)).append((CharSequence) ";").append((CharSequence) shareChequeDialog.getContext().getString(R.string.share_cheque_item_sum)).append((CharSequence) "\n");`
- `apk_analysis/jadx/sources/defpackage/ps7.java:70`
  `strB2 = shareChequeDialog.getContext().getString(R.string.unknown_category_placeholder);`
- `apk_analysis/jadx/sources/defpackage/yf2.java:28`
  `u97Var.o(cursorRawQuery.getInt(0), uu4.a.MAX_RETRIES_REACHED, cursorRawQuery.getString(1));`
- `apk_analysis/jadx/sources/defpackage/ki8.java:39`
  `String string = bundle.getString("after_event");`
- `apk_analysis/jadx/sources/defpackage/gz0.java:27`
  `return FirebaseSessionsComponent.MainModule.Companion.sessionConfigsDataStore$lambda$2((Context) obj);`
- `apk_analysis/jadx/sources/defpackage/pg7.java:27`
  `bundle.putString(TJAdUnitConstants.String.TOOLBAR, str);`
- `apk_analysis/jadx/sources/defpackage/vh7.java:20`
  `bundle.putString("qrCode", this.a);`
- `apk_analysis/jadx/sources/defpackage/w79.java:99`
  `materialAlertDialogBuilder.setTitle((CharSequence) ((s47) cl4Var2.getValue()).getString(R.string.update_error_title)).setMessage((CharSequence) ((s47) cl4Var2.getValue()).getString(R.string.update_error_description)).setPositiveButton((CharSequence) ((s47) cl4Var2.getValue()).getString(R.string.update_error_positive_button), new DialogInterface.OnClickListener() { // from class: u79`
- `apk_analysis/jadx/sources/defpackage/w79.java:106`
  `intent.setData(Uri.parse(((s47) w79Var.c.getValue()).getString(R.string.update_error_website)));`
- `apk_analysis/jadx/sources/defpackage/w79.java:112`
  `}).setNegativeButton((CharSequence) ((s47) cl4Var2.getValue()).getString(R.string.update_error_neutral_button), (DialogInterface.OnClickListener) new v79()).show();`
- `apk_analysis/jadx/sources/defpackage/tt0.java:37`
  `String string = bundle.getString(TypedValues.AttributesType.S_TARGET);`
- `apk_analysis/jadx/sources/defpackage/tt0.java:42`
  `String string2 = bundle.getString("tab");`
- `apk_analysis/jadx/sources/defpackage/tt0.java:47`
  `String string3 = bundle.getString("campaignCode");`
- `apk_analysis/jadx/sources/defpackage/tt0.java:51`
  `String string5 = bundle.getString("offer_id");`
- `apk_analysis/jadx/sources/defpackage/tt0.java:60`
  `if (!bundle.containsKey("category_id") || (string4 = bundle.getString("category_id")) != null) {`
- `apk_analysis/jadx/sources/defpackage/jy5.java:3`
  `import java.security.KeyStore;`
- `apk_analysis/jadx/sources/defpackage/jy5.java:4`
  `import java.security.KeyStoreException;`
- `apk_analysis/jadx/sources/defpackage/jy5.java:51`
  `public final X509TrustManager n() throws NoSuchAlgorithmException, KeyStoreException {`
- `apk_analysis/jadx/sources/defpackage/jy5.java:53`
  `trustManagerFactory.init((KeyStore) null);`
- `apk_analysis/jadx/sources/defpackage/mk4.java:42`
  `itemRvSbpTransferPhoneBinding.tvTitle.setText(itemRvSbpTransferPhoneBinding.getRoot().getContext().getString(R.string.sbp_phone_number_hint));`
- `apk_analysis/jadx/sources/defpackage/eo0.java:172`
  `String string = itemBonusPointsBinding.getRoot().getContext().getString(R.string.tasks_timer_format);`
- `apk_analysis/jadx/sources/defpackage/tp.java:39`
  `String stringExtra = this.n.getStringExtra("push_id");`
- `apk_analysis/jadx/sources/defpackage/nka.java:72`
  `bundle.putString("package_name", zzhjVar.b);`
- `apk_analysis/jadx/sources/defpackage/br0.java:47`
  `bundle.putString(TJAdUnitConstants.String.TOOLBAR, this.a);`
- `apk_analysis/jadx/sources/defpackage/vd7.java:37`
  `string = bundle.getString("from_type");`
- `apk_analysis/jadx/sources/defpackage/xh5.java:64`
  `new b(1, this, xh5.class, "getStringValue", "getStringValue(Ljava/lang/Object;)Ljava/lang/String;", 0);`
- `apk_analysis/jadx/sources/defpackage/zw3.java:119`
  `textView5.setText(textView5.getResources().getString(R.string.coupon_hot_item_order_button));`
- `apk_analysis/jadx/sources/defpackage/tk2.java:35`
  `return new pp9(z8aVar, new zm9(jSONObject.getString("banner_id"), y14.s(jSONObject, "impression_id"), y14.s(jSONObject, "pad_id"), y14.s(jSONObject, "pattern_id"), (!jSONObject.has("dsp_id") || jSONObject.isNull("dsp_id") || (iOptInt = jSONObject.optInt("dsp_id", -1)) == -1) ? null : Integer.valueOf(iOptInt), y14.q(jSONObject)));`
- `apk_analysis/jadx/sources/defpackage/tk2.java:101`
  `return new i7a(z8aVarF, jSONObject.has("banner_context") ? a(z8aVarF, jSONObject.getJSONObject("banner_context")) : null, jSONObject.getInt("stage"), jSONObject.getString("stat_description"));`
- `apk_analysis/jadx/sources/defpackage/tk2.java:111`
  `String string = jSONObject.getString("ad_id");`
- `apk_analysis/jadx/sources/defpackage/tk2.java:112`
  `String string2 = jSONObject.has("handle_data_id") ? jSONObject.getString("handle_data_id") : null;`
- `apk_analysis/jadx/sources/defpackage/lz9.java:40`
  `String string = Settings.Secure.getString(contentResolver, "android_id");`
- `apk_analysis/jadx/sources/defpackage/eg7.java:20`
  `bundle.putString("host", this.a);`
- `apk_analysis/jadx/sources/defpackage/d95.java:64`
  `string = cursorQuery.moveToFirst() ? cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data")) : null;`
- `apk_analysis/jadx/sources/defpackage/w58.java:38`
  `String string = bundle.getString("waitingQueueReceiptQr");`
- `apk_analysis/jadx/sources/defpackage/qj1.java:30`
  `AlertDialog alertDialogCreate = new AlertDialog.Builder(ciceroneActivity).setTitle(ciceroneActivity.getString(R.string.cold_start_first_open_title)).setMessage(ciceroneActivity.getString(R.string.cold_start_first_open_message)).setPositiveButton(ciceroneActivity.getString(R.string.cold_start_first_open_try_again), new DialogInterface.OnClickListener() { // from class: oj1`
- `apk_analysis/jadx/sources/defpackage/qj1.java:37`
  `}).setNeutralButton(ciceroneActivity.getString(R.string.cold_start_first_open_support), new DialogInterface.OnClickListener() { // from class: pj1`
- `apk_analysis/jadx/sources/defpackage/qj1.java:41`
  `i72.b(ciceroneActivity2, ciceroneActivity2.getString(R.string.support_url));`
- `apk_analysis/jadx/sources/defpackage/xb3.java:23`
  `return FirebaseSessionsComponent.MainModule.Companion.sessionDataStore$lambda$5(context);`
- `apk_analysis/jadx/sources/defpackage/gmb.java:23`
  `String string = bundleZzd.getString("Error");`
- `apk_analysis/jadx/sources/defpackage/th7.java:32`
  `bundle.putString(SearchIntents.EXTRA_QUERY, str);`
- `apk_analysis/jadx/sources/defpackage/c30.java:22`
  `itemRvBalanceGroupOperationBinding.tvExpand.setText(itemRvBalanceGroupOperationBinding.getRoot().getContext().getString(R.string.operations_unexpand_title));`
- `apk_analysis/jadx/sources/defpackage/s78.java:32`
  `itemShopsStatisticsBinding2.tvCostStatistics.setText(this.f.getContext().getString(R.string.placeholder_ruble_price, Float.valueOf(e67Var2.b() / 100.0f)));`
- `apk_analysis/jadx/sources/defpackage/ey5.java:29`
  `String string = bundle.getString(TJAdUnitConstants.String.TOOLBAR);`
- `apk_analysis/jadx/sources/defpackage/r66.java:46`
  `strC = itemPersonalDataFormTextFieldBinding.getRoot().getContext().getString(R.string.personal_form_field_default_error);`
- `apk_analysis/jadx/sources/defpackage/c63.java:23`
  `String string = bundle.getString(TJAdUnitConstants.String.TOOLBAR);`
- `apk_analysis/jadx/sources/defpackage/kva.java:197`
  `String string = cursorQuery.getString(0);`
- `apk_analysis/jadx/sources/defpackage/kva.java:198`
  `String str2 = cursorQuery.isNull(1) ? "" : (String) Preconditions.checkNotNull(cursorQuery.getString(1));`
- `apk_analysis/jadx/sources/defpackage/kva.java:342`
  `string = cursorRawQuery.getString(0);`
- `apk_analysis/jadx/sources/defpackage/kva.java:344`
  `string2 = cursorRawQuery.getString(1);`
- `apk_analysis/jadx/sources/defpackage/kva.java:373`
  `zzhrVar.zzl(cursorRawQuery.getString(1));`
- `apk_analysis/jadx/sources/defpackage/kva.java:403`
  `zzhrVar.zzl(cursorRawQuery.getString(1));`
- `apk_analysis/jadx/sources/defpackage/kva.java:450`
  `string2 = cursorRawQuery.getString(0);`
- `apk_analysis/jadx/sources/defpackage/kva.java:479`
  `zzhrVar.zzl(cursorRawQuery.getString(1));`
- `apk_analysis/jadx/sources/defpackage/kva.java:509`
  `zzhrVar.zzl(cursorRawQuery.getString(1));`
- `apk_analysis/jadx/sources/defpackage/kva.java:563`
  `String string = cursorQuery.getString(0);`
- `apk_analysis/jadx/sources/defpackage/kva.java:600`
  `String string = cursorQuery.getString(0);`
- `apk_analysis/jadx/sources/defpackage/kva.java:751`
  `sbc sbcVar = new sbc(str3, cursorQuery.getString(2), str4, j2, objK);`
- `apk_analysis/jadx/sources/defpackage/kva.java:816`
  `String string = cursorQuery.getString(0);`
- `apk_analysis/jadx/sources/defpackage/kva.java:817`
  `String string2 = cursorQuery.getString(1);`
- `apk_analysis/jadx/sources/defpackage/kva.java:913`
  `String string2 = cursorQuery.getString(0);`
- `apk_analysis/jadx/sources/defpackage/kva.java:916`
  `String string3 = cursorQuery.getString(3);`
- `apk_analysis/jadx/sources/defpackage/kva.java:1070`
  `String string = cursorQuery.getString(0);`
- `apk_analysis/jadx/sources/defpackage/kva.java:1077`
  `String string2 = cursorQuery.getString(3);`
- `apk_analysis/jadx/sources/defpackage/kva.java:1187`
  `String string = cursorQuery.getString(0);`
- `apk_analysis/jadx/sources/defpackage/kva.java:1188`
  `String string2 = cursorQuery.getString(1);`
- `apk_analysis/jadx/sources/defpackage/kva.java:1189`
  `String string3 = cursorQuery.getString(2);`
- `apk_analysis/jadx/sources/defpackage/kva.java:1192`
  `String string4 = cursorQuery.getString(5);`
- `apk_analysis/jadx/sources/defpackage/kva.java:1234`
  `fmbVar.o(cursorQuery.getString(0));`
- `apk_analysis/jadx/sources/defpackage/kva.java:1237`
  `fmbVar.q(cursorQuery.getString(1));`
- `apk_analysis/jadx/sources/defpackage/kva.java:1239`
  `fmbVar.r(cursorQuery.getString(2));`
- `apk_analysis/jadx/sources/defpackage/kva.java:1244`
  `fmbVar.x(cursorQuery.getString(6));`
- `apk_analysis/jadx/sources/defpackage/kva.java:1245`
  `fmbVar.A(cursorQuery.getString(7));`
- `apk_analysis/jadx/sources/defpackage/kva.java:1271`
  `fmbVar.t(cursorQuery.getString(18));`
- `apk_analysis/jadx/sources/defpackage/kva.java:1280`
  `fmbVar.j(cursorQuery.getString(21));`
- `apk_analysis/jadx/sources/defpackage/kva.java:1287`
  `fmbVar.k(Arrays.asList(cursorQuery.getString(26).split(StringUtils.COMMA, -1)));`
- `apk_analysis/jadx/sources/defpackage/kva.java:1290`
  `String string = cursorQuery.getString(28);`
- `apk_analysis/jadx/sources/defpackage/kva.java:1303`
  `String string2 = cursorQuery.getString(36);`
- `apk_analysis/jadx/sources/defpackage/kva.java:1343`
  `String str2 = cursorQuery.isNull(40) ? "" : (String) Preconditions.checkNotNull(cursorQuery.getString(40));`
- `apk_analysis/jadx/sources/defpackage/kva.java:1726`
  `zzpj zzpjVarA = A(str, cursorQuery.getLong(0), cursorQuery.getBlob(2), cursorQuery.getString(3), cursorQuery.getString(4), cursorQuery.getInt(5), cursorQuery.getInt(6), cursorQuery.getLong(7), cursorQuery.getLong(8), cursorQuery.getLong(9));`
- `apk_analysis/jadx/sources/defpackage/kva.java:1758`
  `String string = cursorQuery.getString(1);`
- `apk_analysis/jadx/sources/defpackage/kva.java:1759`
  `String string2 = cursorQuery.getString(2);`
- `apk_analysis/jadx/sources/defpackage/kva.java:1873`
  `String string = cursorRawQuery.getString(0);`
- `apk_analysis/jadx/sources/defpackage/kva.java:2020`
  `return cursor.getString(i2);`
- `apk_analysis/jadx/sources/defpackage/kva.java:2262`
  `bundle3.putString(zzhwVar.zzb(), zzhwVar.zzd());`
- `apk_analysis/jadx/sources/defpackage/kva.java:2269`
  `String string = bundle3.getString("_o");`
- `apk_analysis/jadx/sources/defpackage/kva.java:2349`
  `zzjlVarZzf = zzjl.zzf(this.getString(0), this.getInt(1));`
- `apk_analysis/jadx/sources/defpackage/kva.java:2471`
  `String string = cursorRawQuery.getString(0);`
- `apk_analysis/jadx/sources/defpackage/yh7.java:41`
  `bundle.putString("from_type", str);`
- `apk_analysis/jadx/sources/defpackage/vo5.java:158`
  `str = CheckScanApplication.a.a().getString(R.string.wordy_date_format_with_time, strC, jt4VarA2.b.format(DateTimeFormatter.ofPattern(pb2.c(R.string.time_format))));`
- `apk_analysis/jadx/sources/yads/w10.java:3`
  `import android.content.SharedPreferences;`
- `apk_analysis/jadx/sources/yads/w10.java:41`
  `((SharedPreferences) av3Var2.d.getValue()).registerOnSharedPreferenceChangeListener(av3Var2);`
- `apk_analysis/jadx/sources/yads/hn3.java:165`
  `ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_application_info)));`
- `apk_analysis/jadx/sources/yads/hn3.java:166`
  `ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_app_id), we0Var.a));`
- `apk_analysis/jadx/sources/yads/hn3.java:167`
  `ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_app_version), we0Var.b));`
- `apk_analysis/jadx/sources/yads/hn3.java:168`
  `ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_system), we0Var.c));`
- `apk_analysis/jadx/sources/yads/hn3.java:169`
  `ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_api_level), we0Var.d));`
- `apk_analysis/jadx/sources/yads/hn3.java:172`
  `ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_sdk_integration)));`
- `apk_analysis/jadx/sources/yads/hn3.java:173`
  `ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_ads_sdk_version), og0Var.a));`
- `apk_analysis/jadx/sources/yads/hn3.java:176`
  `rg0Var = new rg0(rf0Var.a.getString(R$string.debug_panel_integrated), R$attr.debug_panel_color_green, Integer.valueOf(R$drawable.debug_panel_icon_success), 0, 8);`
- `apk_analysis/jadx/sources/yads/hn3.java:178`
  `rg0Var = new rg0(rf0Var.a.getString(R$string.debug_panel_integrated), R$attr.debug_panel_color_red, Integer.valueOf(R$drawable.debug_panel_icon_error), 0, 8);`
- `apk_analysis/jadx/sources/yads/hn3.java:184`
  `rg0Var = new rg0(rf0Var.a.getString(R$string.debug_panel_integration_errors), R$attr.debug_panel_color_red, Integer.valueOf(R$drawable.debug_panel_icon_error), 0, 8);`
- `apk_analysis/jadx/sources/yads/hn3.java:198`
  `ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_sdk_integration_status), rg0Var, af0Var));`
- `apk_analysis/jadx/sources/yads/hn3.java:202`
  `ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_advertisement_network_settings)));`
- `apk_analysis/jadx/sources/yads/hn3.java:209`
  `ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_app_review_status), str2));`
- `apk_analysis/jadx/sources/yads/hn3.java:218`
  `ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_advertisement_network_settings)));`
- `apk_analysis/jadx/sources/yads/hn3.java:225`
  `ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_app_review_status), str2));`
- `apk_analysis/jadx/sources/yads/hn3.java:256`
  `ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_completed_integration)));`
- `apk_analysis/jadx/sources/yads/hn3.java:263`
  `ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_invalid_integration)));`
- `apk_analysis/jadx/sources/yads/hn3.java:270`
  `ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_missing_integration)));`
- `apk_analysis/jadx/sources/yads/hn3.java:280`
  `ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_user_privacy)));`
- `apk_analysis/jadx/sources/yads/hn3.java:281`
  `ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_age_restricted_user), rf0Var.a(df0Var.b)));`
- `apk_analysis/jadx/sources/yads/hn3.java:282`
  `ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_has_location_consent), rf0Var.a(Boolean.valueOf(df0Var.a))));`
- `apk_analysis/jadx/sources/yads/hn3.java:283`
  `ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_has_user_consent), rf0Var.a(df0Var.c)));`
- `apk_analysis/jadx/sources/yads/hn3.java:284`
  `String string = rf0Var.a.getString(R$string.debug_panel_tcf_consent);`
- `apk_analysis/jadx/sources/yads/hn3.java:288`
  `rg0Var2 = new rg0(context.getString(R$string.debug_panel_provided), 0, null, 0, 14);`
- `apk_analysis/jadx/sources/yads/hn3.java:290`
  `rg0Var2 = new rg0(context.getString(R$string.debug_panel_no_value_set), 0, null, 0, 14);`
- `apk_analysis/jadx/sources/yads/hn3.java:295`
  `ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_features)));`
- `apk_analysis/jadx/sources/yads/hn3.java:422`
  `ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_application_info)));`
- `apk_analysis/jadx/sources/yads/hn3.java:423`
  `ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_app_id), we0Var2.a));`
- `apk_analysis/jadx/sources/yads/hn3.java:424`
  `ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_app_version), we0Var2.b));`
- `apk_analysis/jadx/sources/yads/hn3.java:425`
  `ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_system), we0Var2.c));`
- `apk_analysis/jadx/sources/yads/hn3.java:426`
  `ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_api_level), we0Var2.d));`
- `apk_analysis/jadx/sources/yads/hn3.java:429`
  `ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_sdk_integration)));`
- `apk_analysis/jadx/sources/yads/hn3.java:430`
  `ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_ads_sdk_version), og0Var2.a));`
- `apk_analysis/jadx/sources/yads/hn3.java:433`
  `rg0Var = new rg0(rf0Var.a.getString(R$string.debug_panel_integrated), R$attr.debug_panel_color_green, Integer.valueOf(R$drawable.debug_panel_icon_success), 0, 8);`
- `apk_analysis/jadx/sources/yads/hn3.java:435`
  `rg0Var = new rg0(rf0Var.a.getString(R$string.debug_panel_integrated), R$attr.debug_panel_color_red, Integer.valueOf(R$drawable.debug_panel_icon_error), 0, 8);`
- `apk_analysis/jadx/sources/yads/hn3.java:441`
  `rg0Var = new rg0(rf0Var.a.getString(R$string.debug_panel_integration_errors), R$attr.debug_panel_color_red, Integer.valueOf(R$drawable.debug_panel_icon_error), 0, 8);`
- `apk_analysis/jadx/sources/yads/hn3.java:455`
  `ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_sdk_integration_status), rg0Var, af0Var));`
- `apk_analysis/jadx/sources/yads/hn3.java:459`
  `ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_advertisement_network_settings)));`
- `apk_analysis/jadx/sources/yads/hn3.java:466`
  `ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_app_review_status), str2));`
- `apk_analysis/jadx/sources/yads/hn3.java:497`
  `ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_completed_integration)));`
- `apk_analysis/jadx/sources/yads/hn3.java:504`
  `ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_invalid_integration)));`
- `apk_analysis/jadx/sources/yads/hn3.java:511`
  `ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_missing_integration)));`
- `apk_analysis/jadx/sources/yads/hn3.java:521`
  `ar4VarE.add(new ph0(rf0Var.a.getString(R$string.debug_panel_user_privacy)));`
- `apk_analysis/jadx/sources/yads/hn3.java:522`
  `ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_age_restricted_user), rf0Var.a(df0Var2.b)));`
- `apk_analysis/jadx/sources/yads/hn3.java:523`
  `ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_has_location_consent), rf0Var.a(Boolean.valueOf(df0Var2.a))));`
- `apk_analysis/jadx/sources/yads/hn3.java:524`
  `ar4VarE.add(new qh0(rf0Var.a.getString(R$string.debug_panel_has_user_consent), rf0Var.a(df0Var2.c)));`
- `apk_analysis/jadx/sources/yads/hn3.java:525`
  `String string2 = rf0Var.a.getString(R$string.debug_panel_tcf_consent);`
- `apk_analysis/jadx/sources/yads/hn3.java:529`
  `rg0Var2 = new rg0(context.getString(R$string.debug_panel_provided), 0, null, 0, 14);`
- `apk_analysis/jadx/sources/yads/hn3.java:531`
  `rg0Var2 = new rg0(context.getString(R$string.debug_panel_no_value_set), 0, null, 0, 14);`

### Authorization In Requests — 500

- `apk_analysis/jadx/sources/defpackage/dbc.java:27`
  `zzicVar.zzaW().zze().zzb("Event interceptor threw exception", e);`
- `apk_analysis/jadx/sources/defpackage/on.java:7`
  `import okhttp3.OkHttpClient;`
- `apk_analysis/jadx/sources/defpackage/on.java:22`
  `public static n67 a(String str, OkHttpClient okHttpClient) {`
- `apk_analysis/jadx/sources/defpackage/on.java:25`
  `bVar.a = okHttpClient;`
- `apk_analysis/jadx/sources/defpackage/on.java:33`
  `public final OkHttpClient.a c(boolean z, boolean z2) {`
- `apk_analysis/jadx/sources/defpackage/on.java:34`
  `OkHttpClient.a aVar = new OkHttpClient.a();`
- `apk_analysis/jadx/sources/defpackage/pz2.java:6`
  `@bd2(c = "coil3.intercept.EngineInterceptor", f = "EngineInterceptor.kt", l = {169}, m = RemoteConfigComponent.FETCH_FILE_NAME, v = 1)`
- `apk_analysis/jadx/sources/defpackage/uq7.java:240`
  `throw kb9.j(method, i8, "@HeaderMap parameter type must be Map or Headers.", new Object[0]);`
- `apk_analysis/jadx/sources/defpackage/uq7.java:249`
  `throw kb9.j(method, i8, "@HeaderMap keys must be of type String: " + typeD2, new Object[0]);`
- `apk_analysis/jadx/sources/defpackage/uq7.java:578`
  `throw kb9.i(method, null, "@Headers annotation is empty.", new Object[0]);`
- `apk_analysis/jadx/sources/defpackage/uq7.java:589`
  `throw kb9.i(method, null, "@Headers value must be in the form \"Name: Value\". Found: \"%s\"", str4);`
- `apk_analysis/jadx/sources/defpackage/mp3.java:7`
  `public static /* synthetic */ GetAdSelectionDataRequest.Builder a() {`
- `apk_analysis/jadx/sources/defpackage/mp3.java:8`
  `return new GetAdSelectionDataRequest.Builder();`
- `apk_analysis/jadx/sources/defpackage/vg4.java:77`
  `((zzec) obj).zzq(new LastLocationRequest.Builder().build(), (TaskCompletionSource) obj2);`
- `apk_analysis/jadx/sources/defpackage/b24.java:94`
  `return "Defaults(fileSystem=" + this.a + ", interceptorCoroutineContext=" + this.b + ", fetcherCoroutineContext=" + this.c + ", decoderCoroutineContext=" + this.d + ", memoryCachePolicy=" + this.e + ", diskCachePolicy=" + this.f + ", networkCachePolicy=" + this.g + ", placeholderFactory=" + this.h + ", errorFactory=" + this.i + ", fallbackFactory=" + this.j + ", sizeResolver=" + this.k + ", scale=" + this.l + ", precision=" + this.m + ", extras=" + this.n + ")";`
- `apk_analysis/jadx/sources/defpackage/b24.java:144`
  `StringBuilder sb = new StringBuilder("Defined(fileSystem=null, interceptorCoroutineContext=");`
- `apk_analysis/jadx/sources/defpackage/b24.java:215`
  `return "ImageRequest(context=" + this.a + ", data=" + this.b + ", target=" + this.c + ", listener=null, memoryCacheKey=null, memoryCacheKeyExtras=" + this.d + ", diskCacheKey=null, fileSystem=" + this.e + ", fetcherFactory=null, decoderFactory=null, interceptorCoroutineContext=" + this.f + ", fetcherCoroutineContext=" + this.g + ", decoderCoroutineContext=" + this.h + ", memoryCachePolicy=" + this.i + ", diskCachePolicy=" + this.j + ", networkCachePolicy=" + this.k + ", placeholderMemoryCacheKey=null, placeholderFactory=" + this.l + ", errorFactory=" + this.m + ", fallbackFactory=" + this.n + ", sizeResolver=" + this.o + ", scale=" + this.p + ", precision=" + this.q + ", extras=" + this.r + ", defined=" + this.s + ", defaults=" + this.t + ")";`
- `apk_analysis/jadx/sources/defpackage/ly6.java:28`
  `import okhttp3.OkHttpClient;`
- `apk_analysis/jadx/sources/defpackage/ly6.java:76`
  `public static void e(OkHttpClient okHttpClient, i87 i87Var, IOException iOException) {`
- `apk_analysis/jadx/sources/defpackage/ly6.java:77`
  `okHttpClient.getClass();`
- `apk_analysis/jadx/sources/defpackage/ly6.java:84`
  `j87 j87Var = okHttpClient.C;`
- `apk_analysis/jadx/sources/defpackage/ly6.java:666`
  `public final o13 k(OkHttpClient okHttpClient, ez6 ez6Var) throws SocketException {`
- `apk_analysis/jadx/sources/defpackage/ly6.java:667`
  `okHttpClient.getClass();`
- `apk_analysis/jadx/sources/defpackage/ly6.java:677`
  `return new qy3(okHttpClient, this, ez6Var, hy3Var);`
- `apk_analysis/jadx/sources/defpackage/ly6.java:682`
  `return new dy3(okHttpClient, this, iy6Var, hy6Var);`
- `apk_analysis/jadx/sources/defpackage/jx3.java:404`
  `av3[] av3VarArr = {av3Var, av3Var2, av3Var3, av3Var4, av3Var5, av3Var6, av3Var7, new av3(gx0Var4, "200"), new av3(gx0Var4, "204"), new av3(gx0Var4, "206"), new av3(gx0Var4, "304"), new av3(gx0Var4, "400"), new av3(gx0Var4, "404"), new av3(gx0Var4, "500"), new av3("accept-charset", ""), new av3("accept-encoding", "gzip, deflate"), new av3("accept-language", ""), new av3("accept-ranges", ""), new av3("accept", ""), new av3("access-control-allow-origin", ""), new av3("age", ""), new av3("allow", ""), new av3("authorization", ""), new av3("cache-control", ""), new av3("content-disposition", ""), new av3("content-encoding", ""), new av3("content-language", ""), new av3("content-length", ""), new av3("content-location", ""), new av3("content-range", ""), new av3("content-type", ""), new av3("cookie", ""), new av3("date", ""), new av3("etag", ""), new av3("expect", ""), new av3("expires", ""),  ... [truncated]`
- `apk_analysis/jadx/sources/defpackage/zw1.java:97`
  `connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().addCapability(12).build(), bVar);`
- `apk_analysis/jadx/sources/defpackage/z86.java:26`
  `import okhttp3.OkHttpClient;`
- `apk_analysis/jadx/sources/defpackage/z86.java:399`
  `b = Logger.getLogger(OkHttpClient.class.getName());`
- `apk_analysis/jadx/sources/defpackage/z86.java:451`
  `str = str.concat(" To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);");`
- `apk_analysis/jadx/sources/defpackage/wc5.java:24`
  `import okhttp3.OkHttpClient;`
- `apk_analysis/jadx/sources/defpackage/wc5.java:1610`
  `bVar.a = new OkHttpClient(onVar.c(true, true));`
- `apk_analysis/jadx/sources/defpackage/wc5.java:1763`
  `bVar.a = new OkHttpClient(onVar.c(false, true));`
- `apk_analysis/jadx/sources/defpackage/wc5.java:1849`
  `return on.a((String) ze7Var2.c("server_host"), (OkHttpClient) ze7Var2.e(x07.a(OkHttpClient.class), null, p72.c));`
- `apk_analysis/jadx/sources/defpackage/wc5.java:1863`
  `public final class u2 extends gh4 implements bm3<ze7, i36, OkHttpClient> {`
- `apk_analysis/jadx/sources/defpackage/wc5.java:1867`
  `public final OkHttpClient invoke(ze7 ze7Var, i36 i36Var) {`
- `apk_analysis/jadx/sources/defpackage/wc5.java:1870`
  `return new OkHttpClient(on.b.c(false, false));`
- `apk_analysis/jadx/sources/defpackage/wc5.java:2119`
  `OkHttpClient.a aVar = new OkHttpClient.a();`
- `apk_analysis/jadx/sources/defpackage/wc5.java:2129`
  `Object objB = on.a(str, new OkHttpClient(aVar)).b(eu4.class);`
- `apk_analysis/jadx/sources/defpackage/wc5.java:2306`
  `Object objB = on.a((String) ze7Var2.c("ofd_base_url"), (OkHttpClient) ze7Var2.e(x07.a(OkHttpClient.class), null, p72.c)).b(ns5.class);`
- `apk_analysis/jadx/sources/defpackage/wc5.java:2381`
  `i01.c(new gi0(ba8Var, x07.a(OkHttpClient.class), p72.c, u2.f, cg4Var), tc5Var2);`
- `apk_analysis/jadx/sources/defpackage/iz4.java:87`
  `declaredMethod = cls.getDeclaredMethod("getClientInterceptor", cls2, cls2, cls2, cls2);`
- `apk_analysis/jadx/sources/defpackage/iz4.java:276`
  `xl1Var = (xl1) Class.forName("io.grpc.census.InternalCensusTracingAccessor").getDeclaredMethod("getClientInterceptor", null).invoke(null, null);`
- `apk_analysis/jadx/sources/defpackage/pna.java:3`
  `import com.google.android.gms.auth.api.identity.AuthorizationResult;`
- `apk_analysis/jadx/sources/defpackage/pna.java:19`
  `public final void zbb(Status status, AuthorizationResult authorizationResult) {`
- `apk_analysis/jadx/sources/defpackage/pna.java:23`
  `taskCompletionSource.setResult(authorizationResult);`
- `apk_analysis/jadx/sources/defpackage/cv3.java:45`
  `return n2.d("Header(key=", this.a, ", value=", this.b, ")");`
- `apk_analysis/jadx/sources/defpackage/ha7.java:4`
  `import okhttp3.OkHttpClient;`
- `apk_analysis/jadx/sources/defpackage/ha7.java:15`
  `return new ma7((Gson) ze7Var2.e(x07.a(Gson.class), null, x97.b), (b37) ze7Var2.e(x07.a(b37.class), null, x97.d), (OkHttpClient) ze7Var2.e(x07.a(OkHttpClient.class), null, x97.c));`
- `apk_analysis/jadx/sources/defpackage/xfa.java:58`
  `httpsURLConnection.setRequestProperty("Authorization", "Token ".concat(str));`
- `apk_analysis/jadx/sources/defpackage/rz2.java:7`
  `@bd2(c = "coil3.intercept.EngineInterceptor$intercept$2", f = "EngineInterceptor.kt", l = {77}, m = "invokeSuspend", v = 1)`
- `apk_analysis/jadx/sources/defpackage/o67.java:17`
  `import okhttp3.OkHttpClient;`
- `apk_analysis/jadx/sources/defpackage/o67.java:23`
  `public final OkHttpClient a;`
- `apk_analysis/jadx/sources/defpackage/o67.java:25`
  `public o67(OkHttpClient okHttpClient) {`
- `apk_analysis/jadx/sources/defpackage/o67.java:26`
  `okHttpClient.getClass();`
- `apk_analysis/jadx/sources/defpackage/o67.java:27`
  `this.a = okHttpClient;`
- `apk_analysis/jadx/sources/defpackage/o67.java:86`
  `OkHttpClient okHttpClient = jy6Var.b;`
- `apk_analysis/jadx/sources/defpackage/o67.java:88`
  `SSLSocketFactory sSLSocketFactory = okHttpClient.q;`
- `apk_analysis/jadx/sources/defpackage/o67.java:93`
  `HostnameVerifier hostnameVerifier = okHttpClient.u;`
- `apk_analysis/jadx/sources/defpackage/o67.java:94`
  `r23 = okHttpClient.v;`
- `apk_analysis/jadx/sources/defpackage/o67.java:104`
  `jy6Var.i = new p13(py6Var, new l9(fz3Var.d, fz3Var.e, okHttpClient.m, okHttpClient.p, r21, r22, r23, okHttpClient.o, okHttpClient.t, okHttpClient.s, okHttpClient.n), jy6Var, jy6Var.e);`
- `apk_analysis/jadx/sources/defpackage/o67.java:183`
  `OkHttpClient okHttpClient;`
- `apk_analysis/jadx/sources/defpackage/o67.java:196`
  `okHttpClient = this.a;`
- `apk_analysis/jadx/sources/defpackage/o67.java:197`
  `if (okHttpClient.i) {`
- `apk_analysis/jadx/sources/defpackage/o67.java:214`
  `if (fz3VarA != null && (aa4.e(fz3VarA.a, b37Var.a.a) || okHttpClient.j)) {`
- `apk_analysis/jadx/sources/defpackage/o67.java:231`
  `aVarA.c.g("Authorization");`
- `apk_analysis/jadx/sources/defpackage/o67.java:264`
  `okHttpClient = this.a;`
- `apk_analysis/jadx/sources/defpackage/o67.java:265`
  `if (okHttpClient.i) {`
- `apk_analysis/jadx/sources/defpackage/o67.java:296`
  `aVarA.c.g("Authorization");`
- `apk_analysis/jadx/sources/defpackage/at6.java:5`
  `import java.net.Authenticator;`
- `apk_analysis/jadx/sources/defpackage/at6.java:36`
  `at6.c.log(Level.WARNING, "failed to create URL for Authenticator: {0} {1}", new Object[]{ProxyConfig.MATCH_HTTPS, str});`
- `apk_analysis/jadx/sources/defpackage/at6.java:39`
  `return Authenticator.requestPasswordAuthentication(str, inetAddress, i, ProxyConfig.MATCH_HTTPS, "", null, url, Authenticator.RequestorType.PROXY);`
- `apk_analysis/jadx/sources/defpackage/ez6.java:67`
  `wg.c(arrayList.get(i - 1), "network interceptor ", " must retain the same host and port");`
- `apk_analysis/jadx/sources/defpackage/ez6.java:71`
  `wg.c(arrayList.get(i - 1), "network interceptor ", " must call proceed() exactly once");`
- `apk_analysis/jadx/sources/defpackage/ez6.java:80`
  `throw new NullPointerException("interceptor " + f94Var + " returned null");`
- `apk_analysis/jadx/sources/defpackage/ez6.java:83`
  `wg.c(f94Var, "network interceptor ", " must call proceed() exactly once");`
- `apk_analysis/jadx/sources/defpackage/ez6.java:89`
  `wg.c(f94Var, "interceptor ", " returned a response with no body");`
- `apk_analysis/jadx/sources/defpackage/mab.java:21`
  `((zzcp) Preconditions.checkNotNull(this.g.h)).setEventInterceptor(this.f);`
- `apk_analysis/jadx/sources/defpackage/ms.java:148`
  `fg.c("Unsupported type: ImageRequest.Builder. Did you forget to call ImageRequest.Builder.build()?");`
- `apk_analysis/jadx/sources/defpackage/nz2.java:6`
  `@bd2(c = "coil3.intercept.EngineInterceptor", f = "EngineInterceptor.kt", l = {126, TsExtractor.TS_STREAM_TYPE_HDMV_DTS, 148}, m = "execute", v = 1)`
- `apk_analysis/jadx/sources/defpackage/x97.java:17`
  `public static final ba8 e = new ba8("sse_header_interceptor");`
- `apk_analysis/jadx/sources/defpackage/fr2.java:5`
  `import okhttp3.OkHttpClient;`
- `apk_analysis/jadx/sources/defpackage/fr2.java:21`
  `return new ky0(new OkHttpClient());`
- `apk_analysis/jadx/sources/defpackage/gd9.java:35`
  `((c1) obj3).b((String) obj2, (MyTrackerConfig.OkHttpClientProvider) obj);`
- `apk_analysis/jadx/sources/defpackage/od6.java:200`
  `od6Var.c.v.a("TouchEventInterceptor " + motionEvent + " failed: " + th + '.');`
- `apk_analysis/jadx/sources/defpackage/jy6.java:15`
  `import okhttp3.OkHttpClient;`
- `apk_analysis/jadx/sources/defpackage/jy6.java:19`
  `public final OkHttpClient b;`
- `apk_analysis/jadx/sources/defpackage/jy6.java:49`
  `OkHttpClient okHttpClient;`
- `apk_analysis/jadx/sources/defpackage/jy6.java:75`
  `okHttpClient = jy6Var.b;`
- `apk_analysis/jadx/sources/defpackage/jy6.java:104`
  `okHttpClient = jy6Var.b;`
- `apk_analysis/jadx/sources/defpackage/jy6.java:122`
  `okHttpClient.b.c(this);`
- `apk_analysis/jadx/sources/defpackage/jy6.java:144`
  `public jy6(OkHttpClient okHttpClient, b37 b37Var) {`
- `apk_analysis/jadx/sources/defpackage/jy6.java:145`
  `okHttpClient.getClass();`
- `apk_analysis/jadx/sources/defpackage/jy6.java:147`
  `this.b = okHttpClient;`
- `apk_analysis/jadx/sources/defpackage/jy6.java:149`
  `this.d = (py6) okHttpClient.c.b;`
- `apk_analysis/jadx/sources/defpackage/jy6.java:150`
  `this.e = okHttpClient.f.a(this);`
- `apk_analysis/jadx/sources/defpackage/jy6.java:152`
  `ky6Var.g(okHttpClient.x);`
- `apk_analysis/jadx/sources/defpackage/jy6.java:291`
  `OkHttpClient okHttpClient = this.b;`
- `apk_analysis/jadx/sources/defpackage/jy6.java:294`
  `z47 z47VarB = new ez6(this, arrayList, 0, null, b37Var, okHttpClient.y, okHttpClient.z, okHttpClient.A).b(this.c);`
- `apk_analysis/jadx/sources/defpackage/ky0.java:3`
  `import com.google.firebase.perf.network.FirebasePerfOkHttpClient;`
- `apk_analysis/jadx/sources/defpackage/ky0.java:5`
  `import okhttp3.OkHttpClient;`
- `apk_analysis/jadx/sources/defpackage/ky0.java:9`
  `public final OkHttpClient a;`
- `apk_analysis/jadx/sources/defpackage/ky0.java:11`
  `public /* synthetic */ ky0(OkHttpClient okHttpClient) {`
- `apk_analysis/jadx/sources/defpackage/ky0.java:12`
  `this.a = okHttpClient;`
- `apk_analysis/jadx/sources/defpackage/ky0.java:17`
  `public static Object b(OkHttpClient okHttpClient, tm5 tm5Var, bm3 bm3Var, f02 f02Var) throws Throwable {`
- `apk_analysis/jadx/sources/defpackage/ky0.java:40`
  `jy0Var.m = okHttpClient;`
- `apk_analysis/jadx/sources/defpackage/ky0.java:88`
  `okHttpClient = jy0Var.m;`
- `apk_analysis/jadx/sources/defpackage/ky0.java:91`
  `jy6 jy6VarB = okHttpClient.b((b37) objC);`
- `apk_analysis/jadx/sources/defpackage/ky0.java:98`
  `FirebasePerfOkHttpClient.enqueue(jy6VarB, new zy0(c31Var));`
- `apk_analysis/jadx/sources/defpackage/jw1.java:4`
  `import okhttp3.OkHttpClient;`
- `apk_analysis/jadx/sources/defpackage/jw1.java:28`
  `OkHttpClient okHttpClient = jy6Var.b;`
- `apk_analysis/jadx/sources/defpackage/jw1.java:29`
  `okHttpClient.getClass();`
- `apk_analysis/jadx/sources/defpackage/jw1.java:31`
  `n13 n13Var = new n13(jy6Var, jy6Var.e, p13Var, p13Var.a(ez6Var.f, okHttpClient.g, !aa4.e(ez6Var.e.b, "GET"), ez6Var.g, ez6Var.h).k(okHttpClient, ez6Var));`
- `apk_analysis/jadx/sources/defpackage/khb.java:12`
  `int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);`
- `apk_analysis/jadx/sources/defpackage/khb.java:19`
  `int header = SafeParcelReader.readHeader(parcel);`
- `apk_analysis/jadx/sources/defpackage/oz2.java:6`
  `@bd2(c = "coil3.intercept.EngineInterceptor$execute$executeResult$1", f = "EngineInterceptor.kt", l = {WebmConstants.MkvEbmlElement.TRACK_TYPE}, m = "invokeSuspend", v = 1)`
- `apk_analysis/jadx/sources/defpackage/px0.java:23`
  `return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;`
- `apk_analysis/jadx/sources/defpackage/rp3.java:7`
  `public static /* synthetic */ GetTopicsRequest.Builder a() {`
- `apk_analysis/jadx/sources/defpackage/rp3.java:8`
  `return new GetTopicsRequest.Builder();`
- `apk_analysis/jadx/sources/defpackage/nia.java:31`
  `this.d.launch(new IntentSenderRequest.Builder(errorResolutionPendingIntent.getIntentSender()).build());`
- `apk_analysis/jadx/sources/defpackage/p77.java:146`
  `AdRequest adRequestBuild = new AdRequest.Builder("R-M-16692974-2").build();`
- `apk_analysis/jadx/sources/defpackage/gb9.java:20`
  `import okhttp3.OkHttpClient;`
- `apk_analysis/jadx/sources/defpackage/gb9.java:46`
  `g = ta8.U(ta8.T(OkHttpClient.class.getName(), "okhttp3."), "Client");`
- `apk_analysis/jadx/sources/defpackage/gb9.java:233`
  `return str.equalsIgnoreCase("Authorization") || str.equalsIgnoreCase("Cookie") || str.equalsIgnoreCase("Proxy-Authorization") || str.equalsIgnoreCase("Set-Cookie");`
- `apk_analysis/jadx/sources/defpackage/ov2.java:12`
  `tq5<hl3.a> b(@lk0 mf4 mf4Var, @bv3("Authorization") String str);`
- `apk_analysis/jadx/sources/defpackage/ov2.java:22`
  `mz7<mr4> e(@lk0 yb7 yb7Var, @bv3("Authorization") String str);`
- `apk_analysis/jadx/sources/defpackage/yl1.java:35`
  `o8.l(xl1Var, "interceptor");`
- `apk_analysis/jadx/sources/defpackage/jy0.java:3`
  `import okhttp3.OkHttpClient;`
- `apk_analysis/jadx/sources/defpackage/jy0.java:9`
  `public OkHttpClient m;`
- `apk_analysis/jadx/sources/defpackage/i80.java:396`
  `popupWindow.setTouchInterceptor(new j80(this));`
- `apk_analysis/jadx/sources/defpackage/mz2.java:6`
  `@bd2(c = "coil3.intercept.EngineInterceptor", f = "EngineInterceptor.kt", l = {ComposerKt.providerValuesKey}, m = "decode", v = 1)`
- `apk_analysis/jadx/sources/defpackage/gv5.java:3`
  `import com.google.firebase.perf.network.FirebasePerfOkHttpClient;`
- `apk_analysis/jadx/sources/defpackage/gv5.java:248`
  `return j(FirebasePerfOkHttpClient.execute(aVarI));`
- `apk_analysis/jadx/sources/defpackage/gv5.java:370`
  `FirebasePerfOkHttpClient.enqueue(aVar, new a(sy0Var));`
- `apk_analysis/jadx/sources/defpackage/ma7.java:7`
  `import okhttp3.OkHttpClient;`
- `apk_analysis/jadx/sources/defpackage/ma7.java:14`
  `public final OkHttpClient c;`
- `apk_analysis/jadx/sources/defpackage/ma7.java:55`
  `public ma7(Gson gson, b37 b37Var, OkHttpClient okHttpClient) {`
- `apk_analysis/jadx/sources/defpackage/ma7.java:58`
  `this.c = okHttpClient;`
- `apk_analysis/jadx/sources/defpackage/ma7.java:88`
  `OkHttpClient.a aVarE = this.c.e();`
- `apk_analysis/jadx/sources/defpackage/ma7.java:93`
  `jy6 jy6Var2 = new jy6(new OkHttpClient(aVarE), b37VarA);`
- `apk_analysis/jadx/sources/defpackage/cq3.java:21`
  `ah.f("You must call setData() before parseHeader()");`
- `apk_analysis/jadx/sources/defpackage/ti.java:7`
  `import okhttp3.OkHttpClient;`
- `apk_analysis/jadx/sources/defpackage/ti.java:16`
  `Package r2 = OkHttpClient.class.getPackage();`
- `apk_analysis/jadx/sources/defpackage/ti.java:21`
  `linkedHashMap.put(OkHttpClient.class.getName(), "okhttp.OkHttpClient");`
- `apk_analysis/jadx/sources/defpackage/fz6.java:72`
  `wg.c(e94Var, "Interceptor '", "' cannot modify the request's context.");`
- `apk_analysis/jadx/sources/defpackage/fz6.java:76`
  `wg.c(e94Var, "Interceptor '", "' cannot set the request's data to null.");`
- `apk_analysis/jadx/sources/defpackage/fz6.java:80`
  `wg.c(e94Var, "Interceptor '", "' cannot modify the request's target.");`
- `apk_analysis/jadx/sources/defpackage/fz6.java:86`
  `wg.c(e94Var, "Interceptor '", "' cannot modify the request's size resolver. Use `Interceptor.Chain.withSize` instead.");`
- `apk_analysis/jadx/sources/defpackage/qz2.java:6`
  `@bd2(c = "coil3.intercept.EngineInterceptor", f = "EngineInterceptor.kt", l = {MdtaMetadataEntry.TYPE_INDICATOR_8_BIT_UNSIGNED_INT}, m = "intercept", v = 1)`
- `apk_analysis/jadx/sources/defpackage/s27.java:7`
  `public static /* synthetic */ ReportEventRequest.Builder a(long j, String str, String str2, int i) {`
- `apk_analysis/jadx/sources/defpackage/s27.java:8`
  `return new ReportEventRequest.Builder(j, str, str2, i);`
- `apk_analysis/jadx/sources/defpackage/qy3.java:10`
  `import okhttp3.OkHttpClient;`
- `apk_analysis/jadx/sources/defpackage/qy3.java:25`
  `public qy3(OkHttpClient okHttpClient, ly6 ly6Var, ez6 ez6Var, hy3 hy3Var) {`
- `apk_analysis/jadx/sources/defpackage/qy3.java:26`
  `okHttpClient.getClass();`
- `apk_analysis/jadx/sources/defpackage/qy3.java:31`
  `List<ts6> list = okHttpClient.t;`
- `apk_analysis/jadx/sources/defpackage/lv5.java:319`
  `Thread.currentThread().setName("OkHttpClientTransport");`
- `apk_analysis/jadx/sources/defpackage/lv5.java:1125`
  `aVar2.a("Proxy-Authorization", "Basic " + gx0.q((str + StringUtils.PROCESS_POSTFIX_DELIMITER + str2).getBytes("ISO-8859-1")).a());`
- `apk_analysis/jadx/sources/defpackage/fa7.java:4`
  `import okhttp3.OkHttpClient;`
- `apk_analysis/jadx/sources/defpackage/fa7.java:7`
  `public final class fa7 extends gh4 implements bm3<ze7, i36, OkHttpClient> {`
- `apk_analysis/jadx/sources/defpackage/fa7.java:11`
  `public final OkHttpClient invoke(ze7 ze7Var, i36 i36Var) {`
- `apk_analysis/jadx/sources/defpackage/fa7.java:17`
  `OkHttpClient.a aVar = new OkHttpClient.a();`
- `apk_analysis/jadx/sources/defpackage/fa7.java:27`
  `return new OkHttpClient(aVar);`
- `apk_analysis/jadx/sources/defpackage/ab1.java:32`
  `return ((uv2) obj3).a.c(oz6Var, "Bearer ".concat((String) obj2)).g(ne7.b);`
- `apk_analysis/jadx/sources/defpackage/ix3.java:270`
  `zu3[] zu3VarArr = {zu3Var, zu3Var2, zu3Var3, zu3Var4, zu3Var5, zu3Var6, zu3Var7, new zu3(gx0Var5, "200"), new zu3(gx0Var5, "204"), new zu3(gx0Var5, "206"), new zu3(gx0Var5, "304"), new zu3(gx0Var5, "400"), new zu3(gx0Var5, "404"), new zu3(gx0Var5, "500"), new zu3("accept-charset", ""), new zu3("accept-encoding", "gzip, deflate"), new zu3("accept-language", ""), new zu3("accept-ranges", ""), new zu3("accept", ""), new zu3("access-control-allow-origin", ""), new zu3("age", ""), new zu3("allow", ""), new zu3("authorization", ""), new zu3("cache-control", ""), new zu3("content-disposition", ""), new zu3("content-encoding", ""), new zu3("content-language", ""), new zu3("content-length", ""), new zu3("content-location", ""), new zu3("content-range", ""), new zu3("content-type", ""), new zu3("cookie", ""), new zu3("date", ""), new zu3("etag", ""), new zu3("expect", ""), new zu3("expires", ""),  ... [truncated]`
- `apk_analysis/jadx/sources/defpackage/n67.java:15`
  `import okhttp3.OkHttpClient;`
- `apk_analysis/jadx/sources/defpackage/n67.java:131`
  `okhttp3.a.InterfaceC0310a okHttpClient = this.a;`
- `apk_analysis/jadx/sources/defpackage/n67.java:132`
  `if (okHttpClient == null) {`
- `apk_analysis/jadx/sources/defpackage/n67.java:133`
  `okHttpClient = new OkHttpClient();`
- `apk_analysis/jadx/sources/defpackage/n67.java:135`
  `okhttp3.a.InterfaceC0310a interfaceC0310a = okHttpClient;`
- `apk_analysis/jadx/sources/defpackage/dz6.java:4`
  `@bd2(c = "coil3.intercept.RealInterceptorChain", f = "RealInterceptorChain.kt", l = {31}, m = "proceed", v = 1)`
- `apk_analysis/jadx/sources/defpackage/ez0.java:9`
  `import okhttp3.OkHttpClient;`
- `apk_analysis/jadx/sources/defpackage/ez0.java:64`
  `OkHttpClient.a aVarE = ((db6) obj).c.e();`
- `apk_analysis/jadx/sources/defpackage/ez0.java:66`
  `return new OkHttpClient(aVarE);`
- `apk_analysis/jadx/sources/defpackage/p72.java:18`
  `public static final ba8 i = new ba8("extra_interceptors");`
- `apk_analysis/jadx/sources/defpackage/sz2.java:6`
  `@bd2(c = "coil3.intercept.EngineInterceptorKt", f = "EngineInterceptor.kt", l = {259}, m = "transform", v = 1)`
- `apk_analysis/jadx/sources/defpackage/na0.java:73`
  `return dg.c(ad2.d("Header(title=", this.a, ", subtitle=", this.b, ", imageUrl="), this.c, ", backgroundColor=", this.d, ")");`
- `apk_analysis/jadx/sources/defpackage/ia7.java:4`
  `import okhttp3.OkHttpClient;`
- `apk_analysis/jadx/sources/defpackage/ia7.java:22`
  `u4.d(new gi0(ba8Var2, x07.a(OkHttpClient.class), x97.c, fa7.f, cg4Var), tc5Var2);`
- `apk_analysis/jadx/sources/defpackage/dy3.java:10`
  `import okhttp3.OkHttpClient;`
- `apk_analysis/jadx/sources/defpackage/dy3.java:14`
  `public final OkHttpClient a;`
- `apk_analysis/jadx/sources/defpackage/dy3.java:332`
  `public dy3(OkHttpClient okHttpClient, ly6 ly6Var, iy6 iy6Var, hy6 hy6Var) {`
- `apk_analysis/jadx/sources/defpackage/dy3.java:335`
  `this.a = okHttpClient;`
- `apk_analysis/jadx/sources/defpackage/db6.java:4`
  `import com.google.firebase.perf.network.FirebasePerfOkHttpClient;`
- `apk_analysis/jadx/sources/defpackage/db6.java:25`
  `import okhttp3.OkHttpClient;`
- `apk_analysis/jadx/sources/defpackage/db6.java:31`
  `public final OkHttpClient c;`
- `apk_analysis/jadx/sources/defpackage/db6.java:76`
  `OkHttpClient.a aVar = new OkHttpClient.a();`
- `apk_analysis/jadx/sources/defpackage/db6.java:79`
  `this.c = new OkHttpClient(aVar);`
- `apk_analysis/jadx/sources/defpackage/db6.java:199`
  `OkHttpClient okHttpClient = (OkHttpClient) this.d.getValue();`
- `apk_analysis/jadx/sources/defpackage/db6.java:200`
  `okHttpClient.getClass();`
- `apk_analysis/jadx/sources/defpackage/db6.java:201`
  `z47 z47VarExecute = FirebasePerfOkHttpClient.execute(new jy6(okHttpClient, b37Var));`
- `apk_analysis/jadx/sources/defpackage/db6.java:225`
  `OkHttpClient okHttpClient = this.c;`
- `apk_analysis/jadx/sources/defpackage/db6.java:226`
  `okHttpClient.getClass();`
- `apk_analysis/jadx/sources/defpackage/db6.java:227`
  `z47 z47VarExecute = FirebasePerfOkHttpClient.execute(new jy6(okHttpClient, b37Var));`
- `apk_analysis/jadx/sources/defpackage/db6.java:291`
  `OkHttpClient okHttpClient = this.c;`
- `apk_analysis/jadx/sources/defpackage/db6.java:292`
  `okHttpClient.getClass();`
- `apk_analysis/jadx/sources/defpackage/db6.java:293`
  `z47 z47VarExecute = FirebasePerfOkHttpClient.execute(new jy6(okHttpClient, b37VarA));`
- `apk_analysis/jadx/sources/okhttp3/OkHttpClient.java:37`
  `public class OkHttpClient implements Cloneable, okhttp3.a.InterfaceC0310a {`
- `apk_analysis/jadx/sources/okhttp3/OkHttpClient.java:114`
  `this.r = OkHttpClient.E;`
- `apk_analysis/jadx/sources/okhttp3/OkHttpClient.java:115`
  `this.s = OkHttpClient.D;`
- `apk_analysis/jadx/sources/okhttp3/OkHttpClient.java:125`
  `public OkHttpClient(a aVar) {`
- `apk_analysis/jadx/sources/okhttp3/OkHttpClient.java:213`
  `vh.e(list4, "Null interceptor: ");`
- `apk_analysis/jadx/sources/okhttp3/OkHttpClient.java:218`
  `vh.e(list3, "Null network interceptor: ");`
- `apk_analysis/jadx/sources/okhttp3/OkHttpClient.java:304`
  `public OkHttpClient() {`
- `apk_analysis/jadx/sources/yads/ph0.java:23`
  `return defpackage.me0.c("Header(text=", this.a, ")");`
- `apk_analysis/jadx/sources/yads/lr0.java:13`
  `HEADER("header"),`
- `apk_analysis/jadx/sources/yads/xb2.java:115`
  `gc5Var.setTouchInterceptor(new mx4(gc5Var, view2, qb2Var.h instanceof dc2, gc5Var.isOutsideTouchable(), qb2Var.k, ttVar));`
- `apk_analysis/jadx/sources/yads/jm.java:41`
  `new AudioFocusRequest.Builder(this.e);`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/impl/Om.java:65`
  `this.d.setHeader("Accept-Encoding", "encrypted");`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networkapi/Request.java:29`
  `public final Builder addHeader(String str, String str2) {`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/push/impl/A1.java:4`
  `import com.google.firebase.perf.network.FirebasePerfOkHttpClient;`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/push/impl/A1.java:12`
  `import okhttp3.OkHttpClient;`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/push/impl/A1.java:16`
  `public final OkHttpClient a;`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/push/impl/A1.java:20`
  `OkHttpClient.a aVar = new OkHttpClient.a();`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/push/impl/A1.java:22`
  `this.a = new OkHttpClient(aVar);`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/push/impl/A1.java:34`
  `OkHttpClient okHttpClient = this.a;`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/push/impl/A1.java:36`
  `okHttpClient.getClass();`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/push/impl/A1.java:37`
  `z47VarExecute = FirebasePerfOkHttpClient.execute(new jy6(okHttpClient, b37VarA));`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/push/impl/G2.java:14`
  `import okhttp3.OkHttpClient;`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/push/impl/G2.java:83`
  `List<ts6> list = OkHttpClient.D;`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networktasks/impl/a.java:13`
  `Request.Builder builderWithMethod = new Request.Builder(str2).withMethod(Request.Method.GET);`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networktasks/impl/a.java:15`
  `builderWithMethod.addHeader("If-None-Match", str);`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networktasks/impl/h.java:64`
  `Request.Builder builderAddHeader = new Request.Builder(url).addHeader("Accept", "application/json").addHeader("User-Agent", networkTask.getUserAgent());`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networktasks/impl/h.java:69`
  `builderAddHeader.addHeader((String) entry.getKey(), qn1.a0((Iterable) entry.getValue(), StringUtils.COMMA, null, null, 0, null, 62));`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networktasks/impl/h.java:73`
  `builderAddHeader.withMethod(Request.Method.POST);`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networktasks/impl/h.java:74`
  `builderAddHeader.withBody(postData);`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networktasks/impl/h.java:77`
  `builderAddHeader.addHeader("Send-Timestamp", String.valueOf(sendTimestamp.longValue() / 1000));`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networktasks/impl/h.java:81`
  `builderAddHeader.addHeader("Send-Timezone", String.valueOf(sendTimezoneSec.intValue()));`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networktasks/impl/h.java:88`
  `Response responseExecute = networkClientBuilder.withSettings(builder.withConnectTimeout(i).withReadTimeout(i).withSslSocketFactory(networkTask.getSslSocketFactory()).build()).build().newCall(builderAddHeader.build()).execute();`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networktasks/internal/RequestDataHolder.java:43`
  `public void setHeader(String str, String... strArr) {`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/idsync/impl/q.java:46`
  `Request.Builder builder = new Request.Builder(g.b);`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/idsync/impl/q.java:48`
  `builder.addHeader((String) entry.getKey(), qn1.a0((Iterable) entry.getValue(), ", ", null, null, 0, null, 62));`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/idsync/impl/x.java:22`
  `Response responseExecute = new NetworkClientBuilder().withSettings(new NetworkClientSettings.Builder().withSslSocketFactory(this.a.getNetworkContext().getSslSocketFactoryProvider().getSslSocketFactory()).withUseCaches(false).withInstanceFollowRedirects(true).withMaxResponseSize(Data.MAX_DATA_BYTES).build()).build().newCall(new Request.Builder(str).withMethod(Request.Method.POST).withBody(str2.getBytes(ha1.b)).addHeader("Content-Type", "application/json").build()).execute();`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networkokhttp/impl/c.java:4`
  `import com.google.firebase.perf.network.FirebasePerfOkHttpClient;`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networkokhttp/impl/c.java:26`
  `import okhttp3.OkHttpClient;`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networkokhttp/impl/c.java:30`
  `public final OkHttpClient a;`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networkokhttp/impl/c.java:34`
  `public c(OkHttpClient okHttpClient, Request request, NetworkClientSettings networkClientSettings) {`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networkokhttp/impl/c.java:35`
  `this.a = okHttpClient;`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networkokhttp/impl/c.java:78`
  `OkHttpClient okHttpClient = this.a;`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networkokhttp/impl/c.java:80`
  `OkHttpClient.a aVarE = okHttpClient.e();`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networkokhttp/impl/c.java:82`
  `okHttpClient = new OkHttpClient(aVarE);`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networkokhttp/impl/c.java:85`
  `z47 z47VarExecute = FirebasePerfOkHttpClient.execute(okHttpClient.b(a(this.b)));`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networkokhttp/impl/f.java:8`
  `import okhttp3.OkHttpClient;`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networkokhttp/impl/f.java:12`
  `public final OkHttpClient a;`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networkokhttp/impl/f.java:14`
  `public /* synthetic */ f(NetworkClientSettings networkClientSettings, OkHttpClient okHttpClient, int i, jh2 jh2Var) {`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networkokhttp/impl/f.java:15`
  `this(networkClientSettings, (i & 2) != 0 ? e.a(networkClientSettings) : okHttpClient);`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networkokhttp/impl/f.java:32`
  `public f(NetworkClientSettings networkClientSettings, OkHttpClient okHttpClient) {`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networkokhttp/impl/f.java:34`
  `this.a = okHttpClient;`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networkokhttp/impl/e.java:15`
  `import io.appmetrica.analytics.networkokhttp.internal.InterceptorSupplier;`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networkokhttp/impl/e.java:25`
  `import okhttp3.OkHttpClient;`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networkokhttp/impl/e.java:29`
  `public static OkHttpClient a(NetworkClientSettings networkClientSettings) {`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networkokhttp/impl/e.java:31`
  `OkHttpClient.a aVar = new OkHttpClient.a();`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networkokhttp/impl/e.java:84`
  `InterceptorSupplier interceptorSupplier = ta8.M(systemProperty) ? null : (InterceptorSupplier) ReflectionUtils.loadAndInstantiateClassWithDefaultConstructor(systemProperty, InterceptorSupplier.class);`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networkokhttp/impl/e.java:85`
  `if (interceptorSupplier != null && (f94Var = interceptorSupplier.get()) != null) {`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networkokhttp/impl/e.java:119`
  `return new OkHttpClient(aVar);`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/networkokhttp/internal/InterceptorSupplier.java:6`
  `public interface InterceptorSupplier {`
- `apk_analysis/jadx/sources/androidx/room/RoomDatabase.java:21`
  `import androidx.room.support.QueryInterceptorOpenHelperFactory;`
- `apk_analysis/jadx/sources/androidx/room/RoomDatabase.java:1030`
  `SupportSQLiteOpenHelper.Factory queryInterceptorOpenHelperFactory;`
- `apk_analysis/jadx/sources/androidx/room/RoomDatabase.java:1047`
  `queryInterceptorOpenHelperFactory = new FrameworkSQLiteOpenHelperFactory();`
- `apk_analysis/jadx/sources/androidx/room/RoomDatabase.java:1051`
  `queryInterceptorOpenHelperFactory = factory2;`
- `apk_analysis/jadx/sources/androidx/room/RoomDatabase.java:1057`
  `queryInterceptorOpenHelperFactory = null;`
- `apk_analysis/jadx/sources/androidx/room/RoomDatabase.java:1063`
  `if (queryInterceptorOpenHelperFactory != null) {`
- `apk_analysis/jadx/sources/androidx/room/RoomDatabase.java:1075`
  `queryInterceptorOpenHelperFactory = new AutoClosingRoomOpenHelperFactory(queryInterceptorOpenHelperFactory, new AutoCloser(j, timeUnit, null, 4, null));`
- `apk_analysis/jadx/sources/androidx/room/RoomDatabase.java:1091`
  `queryInterceptorOpenHelperFactory = new PrePackagedCopyOpenHelperFactory(str, file, callable, queryInterceptorOpenHelperFactory);`
- `apk_analysis/jadx/sources/androidx/room/RoomDatabase.java:1110`
  `queryInterceptorOpenHelperFactory = new QueryInterceptorOpenHelperFactory(queryInterceptorOpenHelperFactory, kz1VarA, queryCallback);`
- `apk_analysis/jadx/sources/androidx/room/RoomDatabase.java:1112`
  `factory = queryInterceptorOpenHelperFactory;`
- `apk_analysis/jadx/sources/androidx/webkit/WebResourceResponseCompat.java:21`
  `private String serializeMultiCookieHeader(List<String> list) {`
- `apk_analysis/jadx/sources/androidx/webkit/WebResourceResponseCompat.java:116`
  `map.put(WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_HEADER_NAME, serializeMultiCookieHeader(this.mCookies));`
- `apk_analysis/jadx/sources/androidx/webkit/CustomHeader.java:12`
  `public CustomHeader(String str, String str2, Set<String> set) {`
- `apk_analysis/jadx/sources/androidx/webkit/NoVarySearchHeader.java:13`
  `private NoVarySearchHeader(boolean z, boolean z2, List<String> list, List<String> list2) {`
- `apk_analysis/jadx/sources/androidx/webkit/NoVarySearchHeader.java:20`
  `public static NoVarySearchHeader alwaysVaryHeader() {`
- `apk_analysis/jadx/sources/androidx/webkit/NoVarySearchHeader.java:21`
  `return new NoVarySearchHeader(true, false, new ArrayList(), new ArrayList());`
- `apk_analysis/jadx/sources/androidx/webkit/NoVarySearchHeader.java:25`
  `return new NoVarySearchHeader(z, true, new ArrayList(), list);`
- `apk_analysis/jadx/sources/androidx/webkit/NoVarySearchHeader.java:28`
  `public static NoVarySearchHeader neverVaryHeader() {`
- `apk_analysis/jadx/sources/androidx/webkit/NoVarySearchHeader.java:29`
  `return new NoVarySearchHeader(false, true, new ArrayList(), new ArrayList());`
- `apk_analysis/jadx/sources/androidx/webkit/NoVarySearchHeader.java:33`
  `return new NoVarySearchHeader(z, false, list, new ArrayList());`
- `apk_analysis/jadx/sources/androidx/webkit/SpeculativeLoadingParameters.java:19`
  `public Builder addAdditionalHeader(String str, String str2) {`
- `apk_analysis/jadx/sources/androidx/webkit/WebViewCompat.java:253`
  `public static String getVariationsHeader() {`
- `apk_analysis/jadx/sources/androidx/webkit/WebViewCompat.java:255`
  `return getFactory().getStatics().getVariationsHeader();`
- `apk_analysis/jadx/sources/androidx/webkit/Profile.java:45`
  `default void addCustomHeader(CustomHeader customHeader) {`
- `apk_analysis/jadx/sources/androidx/webkit/Profile.java:57`
  `default void clearCustomHeader(String str) {`
- `apk_analysis/jadx/sources/androidx/webkit/Profile.java:60`
  `default void clearCustomHeader(String str, String str2) {`
- `apk_analysis/jadx/sources/androidx/webkit/Profile.java:63`
  `void clearOriginMatchedHeader(String str);`
- `apk_analysis/jadx/sources/androidx/webkit/Profile.java:83`
  `default boolean hasCustomHeader(String str) {`
- `apk_analysis/jadx/sources/androidx/webkit/Profile.java:87`
  `boolean hasOriginMatchedHeader(String str);`
- `apk_analysis/jadx/sources/androidx/webkit/Profile.java:101`
  `void setOriginMatchedHeader(String str, String str2, Set<String> set);`
- `apk_analysis/jadx/sources/androidx/work/PeriodicWorkRequestKt.java:9`
  `public static final <W extends ListenableWorker> PeriodicWorkRequest.Builder PeriodicWorkRequestBuilder(long j, TimeUnit timeUnit, long j2, TimeUnit timeUnit2) {`
- `apk_analysis/jadx/sources/androidx/work/PeriodicWorkRequestKt.java:16`
  `public static final <W extends ListenableWorker> PeriodicWorkRequest.Builder PeriodicWorkRequestBuilder(long j, TimeUnit timeUnit) {`
- `apk_analysis/jadx/sources/androidx/work/PeriodicWorkRequestKt.java:22`
  `public static final <W extends ListenableWorker> PeriodicWorkRequest.Builder PeriodicWorkRequestBuilder(Duration duration) {`
- `apk_analysis/jadx/sources/androidx/work/PeriodicWorkRequestKt.java:28`
  `public static final <W extends ListenableWorker> PeriodicWorkRequest.Builder PeriodicWorkRequestBuilder(Duration duration, Duration duration2) {`
- `apk_analysis/jadx/sources/androidx/work/Data.java:480`
  `private static final void fromByteArray$readHeader(DataInputStream dataInputStream) throws IOException {`
- `apk_analysis/jadx/sources/androidx/work/Data.java:677`
  `private static final void toByteArrayInternalV1$writeHeader(DataOutputStream dataOutputStream) throws IOException {`
- `apk_analysis/jadx/sources/androidx/work/Data.java:715`
  `fromByteArray$readHeader(dataInputStream);`
- `apk_analysis/jadx/sources/androidx/work/Data.java:791`
  `toByteArrayInternalV1$writeHeader(dataOutputStream);`
- `apk_analysis/jadx/sources/androidx/work/PeriodicWorkRequest.java:32`
  `public static final class Builder extends WorkRequest.Builder<Builder, PeriodicWorkRequest> {`
- `apk_analysis/jadx/sources/androidx/work/PeriodicWorkRequest.java:42`
  `@Override // androidx.work.WorkRequest.Builder`
- `apk_analysis/jadx/sources/androidx/work/PeriodicWorkRequest.java:71`
  `@Override // androidx.work.WorkRequest.Builder`
- `apk_analysis/jadx/sources/androidx/work/OneTimeWorkRequest.java:51`
  `public static final class Builder extends WorkRequest.Builder<Builder, OneTimeWorkRequest> {`
- `apk_analysis/jadx/sources/androidx/work/OneTimeWorkRequest.java:58`
  `@Override // androidx.work.WorkRequest.Builder`
- `apk_analysis/jadx/sources/androidx/work/OneTimeWorkRequest.java:73`
  `@Override // androidx.work.WorkRequest.Builder`
- `apk_analysis/jadx/sources/androidx/work/OneTimeWorkRequestKt.java:9`
  `public static final <W extends ListenableWorker> OneTimeWorkRequest.Builder OneTimeWorkRequestBuilder() {`
- `apk_analysis/jadx/sources/androidx/work/OneTimeWorkRequestKt.java:14`
  `public static final OneTimeWorkRequest.Builder setInputMerger(OneTimeWorkRequest.Builder builder, ne4<? extends InputMerger> ne4Var) {`
- `apk_analysis/jadx/sources/androidx/paging/PagedListAdapter.java:131`
  `public final ConcatAdapter withLoadStateHeader(final LoadStateAdapter<?> loadStateAdapter) {`
- `apk_analysis/jadx/sources/androidx/paging/PagingDataAdapter.java:194`
  `public final ConcatAdapter withLoadStateHeader(LoadStateAdapter<?> loadStateAdapter) {`
- `apk_analysis/jadx/sources/androidx/profileinstaller/DeviceProfileWriter.java:51`
  `this.mProfile = ProfileTranscoder.readMeta(inputStreamOpenStreamFromAssets, ProfileTranscoder.readHeader(inputStreamOpenStreamFromAssets, ProfileTranscoder.MAGIC_PROFM), bArr, dexProfileDataArr);`
- `apk_analysis/jadx/sources/androidx/profileinstaller/DeviceProfileWriter.java:131`
  `DexProfileData[] profile = ProfileTranscoder.readProfile(inputStream, ProfileTranscoder.readHeader(inputStream, ProfileTranscoder.MAGIC_PROF), this.mApkName);`
- `apk_analysis/jadx/sources/androidx/profileinstaller/DeviceProfileWriter.java:225`
  `ProfileTranscoder.writeHeader(byteArrayOutputStream, bArr);`
- `apk_analysis/jadx/sources/androidx/profileinstaller/ProfileTranscoder.java:53`
  `writeLineHeader(byteArrayOutputStream, dexProfileData2, generateDexKey(dexProfileData2.apkName, dexProfileData2.dexName, bArr));`
- `apk_analysis/jadx/sources/androidx/profileinstaller/ProfileTranscoder.java:59`
  `writeLineHeader(byteArrayOutputStream, dexProfileData3, generateDexKey(dexProfileData3.apkName, dexProfileData3.dexName, bArr));`
- `apk_analysis/jadx/sources/androidx/profileinstaller/ProfileTranscoder.java:250`
  `public static byte[] readHeader(InputStream inputStream, byte[] bArr) {`
- `apk_analysis/jadx/sources/androidx/profileinstaller/ProfileTranscoder.java:539`
  `public static void writeHeader(OutputStream outputStream, byte[] bArr) throws IOException {`
- `apk_analysis/jadx/sources/androidx/profileinstaller/ProfileTranscoder.java:550`
  `private static void writeLineHeader(OutputStream outputStream, DexProfileData dexProfileData, String str) throws IOException {`
- `apk_analysis/jadx/sources/androidx/navigation/internal/NavControllerImpl.java:2075`
  `this.navController.writeIntent$navigation_runtime_release(NavDeepLinkRequest.Builder.Companion.fromUri(NavUriKt.NavUri(NavDestination.Companion.createRoute(destination.getRoute()))).build(), bundleAddInDefaultArgs);`
- `apk_analysis/jadx/sources/androidx/camera/core/impl/utils/ExifOutputStream.java:44`
  `private JpegHeader() {`
- `apk_analysis/jadx/sources/androidx/camera/viewfinder/core/impl/PixelCopyCompat.java:169`
  `PixelCopy.Request requestBuild = PixelCopy.Request.Builder.ofSurface(surface).setDestinationBitmap(bitmap).build();`
- `apk_analysis/jadx/sources/androidx/camera/camera2/pipe/RequestsKt.java:64`
  `public static final void writeParameter(CaptureRequest.Builder builder, Object obj, Object obj2) {`
- `apk_analysis/jadx/sources/androidx/camera/camera2/pipe/RequestsKt.java:73`
  `android.util.Log.w(Log.TAG, "Failed to set [" + ((CaptureRequest.Key) obj).getName() + ": " + obj2 + "] on CaptureRequest.Builder", e);`
- `apk_analysis/jadx/sources/androidx/camera/camera2/pipe/RequestsKt.java:78`
  `public static final void writeParameters(CaptureRequest.Builder builder, Map<?, ? extends Object> map) {`
- `apk_analysis/jadx/sources/androidx/camera/camera2/pipe/compat/Camera2Backend.java:339`
  `CaptureRequest.Builder builderCreateCaptureRequest;`
- `apk_analysis/jadx/sources/androidx/camera/camera2/pipe/compat/Camera2DeviceSetupWrapper.java:7`
  `CaptureRequest.Builder createCaptureRequest(int i);`
- `apk_analysis/jadx/sources/androidx/camera/camera2/pipe/compat/Camera2DeviceSetup.java:27`
  `public CaptureRequest.Builder createCaptureRequest(int i) throws Exception {`
- `apk_analysis/jadx/sources/androidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor.java:160`
  `private final CaptureRequest.Builder m763buildCaptureRequestBuilder0UCm73U(Request request, int i) {`
- `apk_analysis/jadx/sources/androidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor.java:161`
  `CaptureRequest.Builder builderMo732createCaptureRequest2PPcXtw;`
- `apk_analysis/jadx/sources/androidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor.java:177`
  `android.util.Log.i(Log.TAG, "Failed to create a ReprocessingCaptureRequest.Builder from " + request.getInputRequest().getFrameInfo() + '!');`
- `apk_analysis/jadx/sources/androidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor.java:180`
  `android.util.Log.i(Log.TAG, "Failed to create a CaptureRequest.Builder from " + ((Object) RequestTemplate.m652toStringimpl(i)) + '!');`
- `apk_analysis/jadx/sources/androidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor.java:375`
  `CaptureRequest.Builder builderM763buildCaptureRequestBuilder0UCm73U = this.m763buildCaptureRequestBuilder0UCm73U(request, iM653unboximpl);`
- `apk_analysis/jadx/sources/androidx/camera/camera2/pipe/compat/Api35Compat.java:21`
  `public static final CaptureRequest.Builder createCaptureRequest(CameraDevice.CameraDeviceSetup cameraDeviceSetup, int i) {`
- `apk_analysis/jadx/sources/androidx/camera/camera2/pipe/compat/Api35Compat.java:23`
  `CaptureRequest.Builder builderCreateCaptureRequest = cameraDeviceSetup.createCaptureRequest(i);`
- `apk_analysis/jadx/sources/androidx/camera/camera2/pipe/compat/AndroidCameraDevice.java:169`
  `public CaptureRequest.Builder mo732createCaptureRequest2PPcXtw(int i) throws Throwable {`
- `apk_analysis/jadx/sources/androidx/camera/camera2/pipe/compat/AndroidCameraDevice.java:172`
  `CaptureRequest.Builder builderCreateCaptureRequest;`
- `apk_analysis/jadx/sources/androidx/camera/camera2/pipe/compat/AndroidCameraDevice.java:367`
  `CaptureRequest.Builder builderCreateCaptureRequest = this.cameraDevice.createCaptureRequest(sessionConfigData.getSessionTemplateId());`
- `apk_analysis/jadx/sources/androidx/camera/camera2/pipe/compat/AndroidCameraDevice.java:1320`
  `public CaptureRequest.Builder createReprocessCaptureRequest(TotalCaptureResult totalCaptureResult) throws Throwable {`
- `apk_analysis/jadx/sources/androidx/camera/camera2/pipe/compat/AndroidCameraDevice.java:1322`
  `CaptureRequest.Builder builderCreateReprocessCaptureRequest;`
- `apk_analysis/jadx/sources/androidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice.java:26`
  `public CaptureRequest.Builder mo732createCaptureRequest2PPcXtw(int i) {`
- `apk_analysis/jadx/sources/androidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice.java:27`
  `CaptureRequest.Builder builderMo732createCaptureRequest2PPcXtw;`
- `apk_analysis/jadx/sources/androidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice.java:138`
  `public CaptureRequest.Builder createReprocessCaptureRequest(TotalCaptureResult totalCaptureResult) {`
- `apk_analysis/jadx/sources/androidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice.java:139`
  `CaptureRequest.Builder builderCreateReprocessCaptureRequest;`
- `apk_analysis/jadx/sources/androidx/camera/camera2/pipe/compat/CameraDeviceWrapper.java:13`
  `CaptureRequest.Builder mo732createCaptureRequest2PPcXtw(int i);`
- `apk_analysis/jadx/sources/androidx/camera/camera2/pipe/compat/CameraDeviceWrapper.java:25`
  `CaptureRequest.Builder createReprocessCaptureRequest(TotalCaptureResult totalCaptureResult);`
- `apk_analysis/jadx/sources/androidx/fragment/app/FragmentManager.java:282`
  `intentSenderRequest = new IntentSenderRequest.Builder(intentSenderRequest.getIntentSender()).setFillInIntent(null).setFlags(intentSenderRequest.getFlagsValues(), intentSenderRequest.getFlagsMask()).build();`
- `apk_analysis/jadx/sources/androidx/fragment/app/FragmentManager.java:2053`
  `IntentSenderRequest intentSenderRequestBuild = new IntentSenderRequest.Builder(intentSender).setFillInIntent(intent).setFlags(i3, i2).build();`
- `apk_analysis/jadx/sources/androidx/media3/container/ObuParser.java:26`
  `private FrameHeader(SequenceHeader sequenceHeader, Obu obu) throws NotYetImplementedException {`
- `apk_analysis/jadx/sources/androidx/media3/container/ObuParser.java:64`
  `return new FrameHeader(sequenceHeader, obu);`
- `apk_analysis/jadx/sources/androidx/media3/container/ObuParser.java:116`
  `private SequenceHeader(Obu obu) {`
- `apk_analysis/jadx/sources/androidx/media3/container/ObuParser.java:319`
  `return new SequenceHeader(obu);`
- `apk_analysis/jadx/sources/androidx/media3/container/NalUnitUtil.java:87`
  `public H265NalHeader(int i, int i2, int i3) {`
- `apk_analysis/jadx/sources/androidx/media3/container/NalUnitUtil.java:444`
  `H265NalHeader h265NalHeader = parseH265NalHeader(parsableNalUnitBitArray);`
- `apk_analysis/jadx/sources/androidx/media3/container/NalUnitUtil.java:495`
  `H265NalHeader h265NalHeader = parseH265NalHeader(new ParsableNalUnitBitArray(bArr, i, i2 + i));`
- `apk_analysis/jadx/sources/androidx/media3/container/NalUnitUtil.java:508`
  `public static int numberOfBytesInNalUnitHeader(Format format) {`
- `apk_analysis/jadx/sources/androidx/media3/container/NalUnitUtil.java:516`
  `private static H265NalHeader parseH265NalHeader(ParsableNalUnitBitArray parsableNalUnitBitArray) {`
- `apk_analysis/jadx/sources/androidx/media3/container/NalUnitUtil.java:518`
  `return new H265NalHeader(parsableNalUnitBitArray.readBits(6), parsableNalUnitBitArray.readBits(6), parsableNalUnitBitArray.readBits(3) - 1);`
- `apk_analysis/jadx/sources/androidx/media3/container/NalUnitUtil.java:729`
  `return parseH265SpsNalUnitPayload(bArr, i + 2, i2, parseH265NalHeader(new ParsableNalUnitBitArray(bArr, i, i2)), h265VpsData);`
- `apk_analysis/jadx/sources/androidx/media3/container/NalUnitUtil.java:994`
  `return parseH265VpsNalUnitPayload(parsableNalUnitBitArray, parseH265NalHeader(parsableNalUnitBitArray));`
- `apk_analysis/jadx/sources/androidx/media3/muxer/Av1ConfigUtil.java:29`
  `configFromSeqHeader = parseConfigFromSeqHeader(obu);`
- `apk_analysis/jadx/sources/androidx/media3/muxer/Av1ConfigUtil.java:43`
  `byteBufferAllocate.put(obuHeader(obu.type));`
- `apk_analysis/jadx/sources/androidx/media3/muxer/Av1ConfigUtil.java:76`
  `private static byte obuHeader(int i) {`
- `apk_analysis/jadx/sources/androidx/media3/muxer/Av1ConfigUtil.java:80`
  `private static ByteBuffer parseConfigFromSeqHeader(ObuParser.Obu obu) {`
- `apk_analysis/jadx/sources/androidx/media3/muxer/Boxes.java:539`
  `public static ByteBuffer getAxteBoxHeader(long j) {`
- `apk_analysis/jadx/sources/androidx/media3/muxer/Mp4Writer.java:80`
  `return BoxUtils.concatenateBuffers(Boxes.getAxteBoxHeader(byteBufferMoov.remaining() + byteBufferFtyp.remaining()), byteBufferFtyp, byteBufferMoov);`
- `apk_analysis/jadx/sources/androidx/media3/muxer/Mp4Writer.java:188`
  `private void writeHeader() throws IOException {`
- `apk_analysis/jadx/sources/androidx/media3/muxer/Mp4Writer.java:217`
  `writeHeader();`
- `apk_analysis/jadx/sources/androidx/media3/muxer/AacWriter.java:40`
  `private ByteBuffer createAdtsHeader(int i) {`
- `apk_analysis/jadx/sources/androidx/media3/muxer/AacWriter.java:69`
  `this.outputFileChannel.write(createAdtsHeader(bufferInfo.size + 7));`
- `apk_analysis/jadx/sources/androidx/media3/muxer/FragmentedMp4Writer.java:124`
  `private void createHeader() throws IOException {`
- `apk_analysis/jadx/sources/androidx/media3/muxer/FragmentedMp4Writer.java:246`
  `createHeader();`
- `apk_analysis/jadx/sources/androidx/media3/muxer/Mp4Muxer.java:116`
  `this.muxerOutput.write(Boxes.getAxteBoxHeader(size));`
- `apk_analysis/jadx/sources/androidx/media3/muxer/WebmWriter.java:109`
  `private void writeSegmentHeader() throws IOException {`
- `apk_analysis/jadx/sources/androidx/media3/muxer/WebmWriter.java:148`
  `writeSegmentHeader();`
- `apk_analysis/jadx/sources/androidx/media3/extractor/FlacMetadataReader.java:141`
  `return Arrays.asList(VorbisUtil.readVorbisCommentHeader(parsableByteArray, false, false).comments);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/MpegAudioUtil.java:103`
  `public Header(Header header) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/MpegAudioUtil.java:151`
  `public Header() {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/VorbisUtil.java:27`
  `public CommentHeader(String str, String[] strArr, int i) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/VorbisUtil.java:60`
  `public VorbisIdHeader(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z, byte[] bArr) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/VorbisUtil.java:279`
  `public static CommentHeader readVorbisCommentHeader(ParsableByteArray parsableByteArray, boolean z, boolean z2) throws ParserException {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/VorbisUtil.java:296`
  `return new CommentHeader(string, strArr, length2 + 1);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/VorbisUtil.java:299`
  `public static VorbisIdHeader readVorbisIdentificationHeader(ParsableByteArray parsableByteArray) throws ParserException {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/VorbisUtil.java:317`
  `return new VorbisIdHeader(littleEndianUnsignedIntToInt, unsignedByte, littleEndianUnsignedIntToInt2, littleEndianInt, littleEndianInt2, littleEndianInt3, (int) Math.pow(2.0d, unsignedByte2 & 15), (int) Math.pow(2.0d, (unsignedByte2 & PsExtractor.VIDEO_STREAM_MASK) >> 4), (parsableByteArray.readUnsignedByte() & 1) > 0, Arrays.copyOf(parsableByteArray.getData(), parsableByteArray.limit()));`
- `apk_analysis/jadx/sources/androidx/media3/extractor/VorbisUtil.java:408`
  `public static CommentHeader readVorbisCommentHeader(ParsableByteArray parsableByteArray) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/VorbisUtil.java:409`
  `return readVorbisCommentHeader(parsableByteArray, true, true);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/FlacFrameReader.java:47`
  `public static boolean checkAndReadFrameHeader(ParsableByteArray parsableByteArray, FlacStreamMetadata flacStreamMetadata, int i, SampleNumberHolder sampleNumberHolder) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/FlacFrameReader.java:119`
  `return checkAndReadFrameHeader(parsableByteArray, flacStreamMetadata, i, sampleNumberHolder);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/Ac4Util.java:86`
  `public static void getAc4SampleHeader(int i, ParsableByteArray parsableByteArray) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/DtsUtil.java:79`
  `private DtsHeader(String str, int i, int i2, int i3, long j, int i4) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/DtsUtil.java:161`
  `if (isLittleEndianFrameHeader(bArrCopyOf)) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/DtsUtil.java:181`
  `private static boolean isLittleEndianFrameHeader(byte[] bArr) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/DtsUtil.java:253`
  `public static DtsHeader parseDtsHdHeader(byte[] bArr) throws ParserException {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/DtsUtil.java:340`
  `return new DtsHeader(MimeTypes.AUDIO_DTS_EXPRESS, bits4, i8, bits3, jScaleLargeTimestamp, 0);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/DtsUtil.java:349`
  `public static DtsHeader parseDtsUhdHeader(byte[] bArr, AtomicInteger atomicInteger) throws ParserException {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/DtsUtil.java:407`
  `return new DtsHeader(MimeTypes.AUDIO_DTS_X, 2, i4, unsignedVarInt2 + (atomicInteger2.get() != 0 ? parseUnsignedVarInt(normalizedFrame, UHD_AUDIO_CHUNK_SIZE_LENGTH_TABLE, true) : 0) + unsignedVarInt, j, 0);`
- `apk_analysis/jadx/sources/androidx/media3/datasource/HttpUtil.java:24`
  `public static String buildRangeRequestHeader(long j, long j2) {`
- `apk_analysis/jadx/sources/androidx/media3/datasource/HttpUtil.java:75`
  `public static String getCookieHeader(String str, Map<String, List<String>> map, CookieHandler cookieHandler) {`
- `apk_analysis/jadx/sources/androidx/media3/datasource/DefaultHttpDataSource.java:531`
  `String strBuildRangeRequestHeader = HttpUtil.buildRangeRequestHeader(j, j2);`
- `apk_analysis/jadx/sources/androidx/media3/datasource/HttpEngineDataSource.java:121`
  `String cookieHeader = HttpUtil.getCookieHeader(url, asMap, cookieManager);`
- `apk_analysis/jadx/sources/androidx/media3/datasource/HttpEngineDataSource.java:235`
  `private UrlRequest.Builder buildRequestBuilder(DataSpec dataSpec, UrlRequest$Callback urlRequest$Callback) throws OpenException {`
- `apk_analysis/jadx/sources/androidx/media3/datasource/HttpEngineDataSource.java:236`
  `UrlRequest.Builder directExecutorAllowed = this.httpEngine.newUrlRequestBuilder(dataSpec.uri.toString(), this.executor, urlRequest$Callback).setPriority(this.requestPriority).setDirectExecutorAllowed(true);`
- `apk_analysis/jadx/sources/androidx/media3/datasource/HttpEngineDataSource.java:245`
  `directExecutorAllowed.addHeader((String) entry.getKey(), (String) entry.getValue());`
- `apk_analysis/jadx/sources/androidx/media3/datasource/HttpEngineDataSource.java:250`
  `String strBuildRangeRequestHeader = HttpUtil.buildRangeRequestHeader(dataSpec.position, dataSpec.length);`
- `apk_analysis/jadx/sources/androidx/media3/datasource/HttpEngineDataSource.java:252`
  `directExecutorAllowed.addHeader("Range", strBuildRangeRequestHeader);`
- `apk_analysis/jadx/sources/androidx/media3/datasource/HttpEngineDataSource.java:256`
  `directExecutorAllowed.addHeader("User-Agent", str);`
- `apk_analysis/jadx/sources/androidx/media3/datasource/HttpEngineDataSource.java:280`
  `private static String getFirstHeader(Map<String, List<String>> map, String str) {`
- `apk_analysis/jadx/sources/androidx/media3/datasource/HttpEngineDataSource.java:490`
  `if (dataSpec.position == HttpUtil.getDocumentSize(getFirstHeader(asMap, "Content-Range"))) {`
- `apk_analysis/jadx/sources/androidx/media3/datasource/HttpEngineDataSource.java:508`
  `if (bf6Var != null && (firstHeader = getFirstHeader(asMap, "Content-Type")) != null && !bf6Var.apply(firstHeader)) {`
- `apk_analysis/jadx/sources/androidx/media3/datasource/HttpEngineDataSource.java:522`
  `long contentLength = HttpUtil.getContentLength(getFirstHeader(asMap, "Content-Length"), getFirstHeader(asMap, "Content-Range"));`
- `apk_analysis/jadx/sources/androidx/media3/common/audio/AudioFocusRequestCompat.java:53`
  `this.frameworkAudioFocusRequest = new AudioFocusRequest.Builder(i).setAudioAttributes(audioAttributes.getPlatformAudioAttributes()).setWillPauseWhenDucked(z).setOnAudioFocusChangeListener(onAudioFocusChangeListener, handler).build();`
- `apk_analysis/jadx/sources/androidx/media3/extractor/heif/HeicMotionPhotoExtractor.java:53`
  `private boolean readAtomHeader(ExtractorInput extractorInput) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/heif/HeicMotionPhotoExtractor.java:145`
  `} else if (!readAtomHeader(extractorInput)) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/flv/VideoTagPayloadReader.java:32`
  `public boolean parseHeader(ParsableByteArray parsableByteArray) throws TagPayloadReader.UnsupportedFormatException {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/flv/TagPayloadReader.java:22`
  `return parseHeader(parsableByteArray) && parsePayload(parsableByteArray, j);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/flv/TagPayloadReader.java:25`
  `public abstract boolean parseHeader(ParsableByteArray parsableByteArray);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/flv/AudioTagPayloadReader.java:28`
  `public boolean parseHeader(ParsableByteArray parsableByteArray) throws TagPayloadReader.UnsupportedFormatException {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/flv/FlvExtractor.java:85`
  `private boolean readFlvHeader(ExtractorInput extractorInput) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/flv/FlvExtractor.java:163`
  `private boolean readTagHeader(ExtractorInput extractorInput) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/flv/FlvExtractor.java:177`
  `private void skipToTagHeader(ExtractorInput extractorInput) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/flv/FlvExtractor.java:195`
  `skipToTagHeader(extractorInput);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/flv/FlvExtractor.java:204`
  `} else if (!readTagHeader(extractorInput)) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/flv/FlvExtractor.java:207`
  `} else if (!readFlvHeader(extractorInput)) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/flv/ScriptTagPayloadReader.java:141`
  `public boolean parseHeader(ParsableByteArray parsableByteArray) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/flac/FlacExtractor.java:74`
  `if (FlacFrameReader.checkAndReadFrameHeader(parsableByteArray, this.flacStreamMetadata, this.frameStartMarker, this.sampleNumberHolder)) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/flac/FlacExtractor.java:87`
  `zCheckAndReadFrameHeader = FlacFrameReader.checkAndReadFrameHeader(parsableByteArray, this.flacStreamMetadata, this.frameStartMarker, this.sampleNumberHolder);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/wav/WavHeaderReader.java:25`
  `private ChunkHeader(int i, long j) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/wav/WavHeaderReader.java:33`
  `return new ChunkHeader(parsableByteArray.readInt(), parsableByteArray.readLittleEndianUnsignedInt());`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ogg/StreamReader.java:97`
  `OggPageHeader pageHeader = this.oggPacket.getPageHeader();`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ogg/OggPacket.java:13`
  `private final OggPageHeader pageHeader = new OggPageHeader();`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ogg/OggPacket.java:36`
  `public OggPageHeader getPageHeader() {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ogg/OpusReader.java:61`
  `Metadata vorbisComments = VorbisUtil.parseVorbisComments(j.p(VorbisUtil.readVorbisCommentHeader(parsableByteArray, false, false).comments));`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ogg/DefaultOggSeeker.java:74`
  `this.pageHeader = new OggPageHeader();`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ogg/VorbisReader.java:115`
  `this.vorbisIdHeader = VorbisUtil.readVorbisIdentificationHeader(parsableByteArray);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ogg/VorbisReader.java:120`
  `this.commentHeader = VorbisUtil.readVorbisCommentHeader(parsableByteArray);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ogg/OggExtractor.java:34`
  `OggPageHeader oggPageHeader = new OggPageHeader();`
- `apk_analysis/jadx/sources/androidx/media3/extractor/mp3/XingFrame.java:18`
  `this.header = new MpegAudioUtil.Header(header);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/mp3/Mp3Extractor.java:88`
  `this.synchronizedHeader = new MpegAudioUtil.Header();`
- `apk_analysis/jadx/sources/androidx/media3/extractor/mp3/Mp3Extractor.java:166`
  `private static int getSeekFrameHeader(ParsableByteArray parsableByteArray, int i) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/mp3/Mp3Extractor.java:231`
  `int seekFrameHeader = getSeekFrameHeader(parsableByteArray, i3);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/mp3/Mp3Extractor.java:274`
  `private boolean peekEndOfStreamOrHeader(ExtractorInput extractorInput) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/mp3/Mp3Extractor.java:322`
  `if (peekEndOfStreamOrHeader(extractorInput)) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/mp3/Mp3Extractor.java:395`
  `if (peekEndOfStreamOrHeader(extractorInput)) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/MpeghReader.java:38`
  `private MpeghUtil.MhasPacketHeader header = new MpeghUtil.MhasPacketHeader();`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/MpeghReader.java:101`
  `private boolean parseHeader() throws ParserException {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/MpeghReader.java:104`
  `boolean mhasPacketHeader = MpeghUtil.parseMhasPacketHeader(this.headerScratchBits, this.header);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/MpeghReader.java:155`
  `boolean header = parseHeader();`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/MpeghUtil.java:202`
  `public static boolean parseMhasPacketHeader(ParsableBitArray parsableBitArray, MhasPacketHeader mhasPacketHeader) throws ParserException {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/Ac4Reader.java:58`
  `private void parseHeader() {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/Ac4Reader.java:109`
  `parseHeader();`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/PesReader.java:55`
  `private boolean parseHeader() {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/PesReader.java:119`
  `return this.state == 3 && this.payloadSize == -1 && !(z && (this.reader instanceof H262Reader)) && (!z || parseHeader());`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/PesReader.java:179`
  `setState(parseHeader() ? 2 : 0);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/Ac3Reader.java:56`
  `private void parseHeader() {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/Ac3Reader.java:111`
  `parseHeader();`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/MpegAudioReader.java:39`
  `this.header = new MpegAudioUtil.Header();`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/MpegAudioReader.java:46`
  `private void findHeader(ParsableByteArray parsableByteArray) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/MpegAudioReader.java:115`
  `findHeader(parsableByteArray);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/DtsReader.java:64`
  `private void parseCoreHeader() {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/DtsReader.java:76`
  `private void parseExtensionSubstreamHeader() throws ParserException {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/DtsReader.java:77`
  `DtsUtil.DtsHeader dtsHdHeader = DtsUtil.parseDtsHdHeader(this.headerScratchBytes.getData());`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/DtsReader.java:88`
  `private void parseUhdHeader() throws ParserException {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/DtsReader.java:89`
  `DtsUtil.DtsHeader dtsUhdHeader = DtsUtil.parseDtsUhdHeader(this.headerScratchBytes.getData(), this.uhdAudioChunkId);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/DtsReader.java:160`
  `parseCoreHeader();`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/DtsReader.java:174`
  `parseExtensionSubstreamHeader();`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/DtsReader.java:195`
  `parseUhdHeader();`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/AdtsExtractor.java:69`
  `peekId3Header(extractorInput);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/AdtsExtractor.java:137`
  `private int peekId3Header(ExtractorInput extractorInput) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/AdtsExtractor.java:202`
  `int iPeekId3Header = peekId3Header(extractorInput);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/AdtsReader.java:85`
  `private void checkAdtsHeader(ParsableByteArray parsableByteArray) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/AdtsReader.java:218`
  `private void parseAdtsHeader() {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/AdtsReader.java:250`
  `private void parseId3Header() {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/AdtsReader.java:322`
  `checkAdtsHeader(parsableByteArray);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/AdtsReader.java:326`
  `parseAdtsHeader();`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/AdtsReader.java:336`
  `parseId3Header();`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/PsDurationReader.java:104`
  `return !checkMarkerBits(bArr) ? C.TIME_UNSET : readScrValueFromPackHeader(bArr);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/PsDurationReader.java:107`
  `private static long readScrValueFromPackHeader(byte[] bArr) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/PsExtractor.java:61`
  `private void parseHeader() {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/ts/PsExtractor.java:97`
  `parseHeader();`
- `apk_analysis/jadx/sources/androidx/media3/extractor/mp4/Mp4Extractor.java:509`
  `private void processEndOfStreamReadingAtomHeader() {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/mp4/Mp4Extractor.java:667`
  `private boolean readAtomHeader(ExtractorInput extractorInput) throws ParserException {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/mp4/Mp4Extractor.java:671`
  `processEndOfStreamReadingAtomHeader();`
- `apk_analysis/jadx/sources/androidx/media3/extractor/mp4/Mp4Extractor.java:816`
  `Ac4Util.getAc4SampleHeader(i2, this.scratch);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/mp4/Mp4Extractor.java:832`
  `MpegAudioUtil.Header header = new MpegAudioUtil.Header();`
- `apk_analysis/jadx/sources/androidx/media3/extractor/mp4/Mp4Extractor.java:866`
  `if (this.isSampleDependedOn || NalUnitUtil.numberOfBytesInNalUnitHeader(track2.format) + i6 > mp4Track.sampleTable.sizes[i] - this.sampleBytesRead) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/mp4/Mp4Extractor.java:869`
  `iNumberOfBytesInNalUnitHeader = NalUnitUtil.numberOfBytesInNalUnitHeader(mp4Track.track.format);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/mp4/Mp4Extractor.java:1002`
  `} else if (!readAtomHeader(extractorInput)) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/mp4/FragmentedMp4Extractor.java:1110`
  `private boolean readAtomHeader(ExtractorInput extractorInput) throws ParserException {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/mp4/FragmentedMp4Extractor.java:1294`
  `Ac4Util.getAc4SampleHeader(this.sampleSize, this.scratch);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/mp4/FragmentedMp4Extractor.java:1332`
  `iNumberOfBytesInNalUnitHeader = NalUnitUtil.numberOfBytesInNalUnitHeader(track.format);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/mp4/FragmentedMp4Extractor.java:1441`
  `} else if (!readAtomHeader(extractorInput)) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/amr/AmrExtractor.java:208`
  `private boolean readAmrHeader(ExtractorInput extractorInput) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/amr/AmrExtractor.java:284`
  `if (extractorInput.getPosition() == 0 && !readAmrHeader(extractorInput)) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/amr/AmrExtractor.java:333`
  `return readAmrHeader(extractorInput);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/avi/StreamFormatChunk.java:65`
  `private static AviChunk parseBitmapInfoHeader(ParsableByteArray parsableByteArray) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/avi/StreamFormatChunk.java:83`
  `return parseBitmapInfoHeader(parsableByteArray);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/text/webvtt/WebvttParserUtil.java:19`
  `public static Matcher findNextCueHeader(ParsableByteArray parsableByteArray) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/text/ttml/TtmlParser.java:204`
  `private static Map<String, TtmlStyle> parseHeader(XmlPullParser xmlPullParser, Map<String, TtmlStyle> map, int i, TtsExtent ttsExtent, Map<String, TtmlRegion> map2, Map<String, String> map3) throws XmlPullParserException, IOException {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/text/ttml/TtmlParser.java:787`
  `parseHeader(xmlPullParserNewPullParser, map, i4, ttsExtent2, map2, map3);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/text/ssa/SsaParser.java:65`
  `parseHeader(new ParsableByteArray(list.get(1)), StandardCharsets.UTF_8);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/text/ssa/SsaParser.java:210`
  `private void parseHeader(ParsableByteArray parsableByteArray, Charset charset) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/text/ssa/SsaParser.java:367`
  `parseHeader(this.parsableByteArray, charsetDetectUtfCharset);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/metadata/id3/Id3Decoder.java:53`
  `public Id3Header(int i, boolean z, int i2) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/metadata/id3/Id3Decoder.java:530`
  `private static Id3Header decodeHeader(ParsableByteArray parsableByteArray) {`
- `apk_analysis/jadx/sources/androidx/media3/extractor/metadata/id3/Id3Decoder.java:569`
  `return new Id3Header(unsignedByte, unsignedByte < 4 && (unsignedByte2 & 128) != 0, synchSafeInt);`
- `apk_analysis/jadx/sources/androidx/media3/extractor/metadata/id3/Id3Decoder.java:797`
  `Id3Header id3HeaderDecodeHeader = decodeHeader(parsableByteArray);`
- `apk_analysis/jadx/sources/androidx/media3/exoplayer/audio/OggOpusAudioPacketizer.java:49`
  `writeOggPacketHeader(byteBufferReplaceOutputBuffer, packetAudioSampleCount, this.pageSequenceNumber, i3, false);`
- `apk_analysis/jadx/sources/androidx/media3/exoplayer/audio/OggOpusAudioPacketizer.java:87`
  `writeOggPacketHeader(byteBuffer, 0L, 0, 1, true);`

### Refresh And Session Restore — 500

- `apk_analysis/jadx/resources/AndroidManifest.xml:610`
  `android:name="com.google.firebase.components:com.google.firebase.sessions.FirebaseSessionsRegistrar"`
- `apk_analysis/jadx/resources/AndroidManifest.xml:657`
  `android:name="com.google.firebase.sessions.SessionLifecycleService"`
- `apk_analysis/jadx/sources/defpackage/hva.java:65`
  `zzax.a(zzicVar.zzaW(), sQLiteDatabase, "events_snapshot", "CREATE TABLE IF NOT EXISTS events_snapshot ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, last_bundled_timestamp INTEGER, last_bundled_day INTEGER, last_sampled_complex_event_id INTEGER, last_sampling_rate INTEGER, last_exempt_from_sampling INTEGER, current_session_count INTEGER, PRIMARY KEY (app_id, name)) ;", "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp,last_bundled_timestamp,last_bundled_day,last_sampled_complex_event_id,last_sampling_rate,last_exempt_from_sampling,current_session_count", null);`
- `apk_analysis/jadx/sources/defpackage/dr7.java:4`
  `import com.google.firebase.crashlytics.internal.common.SessionReportingCoordinator;`
- `apk_analysis/jadx/sources/defpackage/dr7.java:11`
  `return SessionReportingCoordinator.lambda$isOom$5((ApplicationExitInfo) obj);`
- `apk_analysis/jadx/sources/defpackage/h85.java:5`
  `import android.support.v4.media.session.MediaSessionCompat;`
- `apk_analysis/jadx/sources/defpackage/h85.java:13`
  `MediaSessionCompat.a(bundle);`
- `apk_analysis/jadx/sources/defpackage/h85.java:19`
  `MediaSessionCompat.a(bundle);`
- `apk_analysis/jadx/sources/defpackage/rt.java:7`
  `import androidx.window.area.WindowAreaPresentationSessionCallback;`
- `apk_analysis/jadx/sources/defpackage/rt.java:42`
  `WindowAreaControllerImpl.presentContentOnWindowArea$lambda$2((WindowAreaPresentationSessionCallback) obj);`
- `apk_analysis/jadx/sources/defpackage/re0.java:3`
  `import com.google.firebase.sessions.SessionData;`
- `apk_analysis/jadx/sources/defpackage/re0.java:25`
  `return SessionData._childSerializers$_anonymous_();`
- `apk_analysis/jadx/sources/defpackage/jv2.java:4`
  `import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;`
- `apk_analysis/jadx/sources/defpackage/jv2.java:34`
  `return TextFieldSelectionManager_androidKt.addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldItem$0((ll3) obj3, (ll3) obj2, (TextContextMenuSession) obj);`
- `apk_analysis/jadx/sources/defpackage/qz0.java:3`
  `import android.hardware.camera2.CameraExtensionSession;`
- `apk_analysis/jadx/sources/defpackage/qz0.java:31`
  `return CameraExtensionSession.class;`
- `apk_analysis/jadx/sources/defpackage/ly2.java:9`
  `import com.google.firebase.sessions.FirebaseSessionsComponent;`
- `apk_analysis/jadx/sources/defpackage/ly2.java:29`
  `return FirebaseSessionsComponent.MainModule.Companion.sessionConfigsDataStore$lambda$0((CorruptionException) obj);`
- `apk_analysis/jadx/sources/defpackage/ct2.java:3`
  `import androidx.media3.exoplayer.drm.DrmSessionEventListener;`
- `apk_analysis/jadx/sources/defpackage/ct2.java:27`
  `((DrmSessionEventListener.EventDispatcher) obj2).lambda$drmSessionReleased$5((DrmSessionEventListener) obj);`
- `apk_analysis/jadx/sources/defpackage/oj2.java:6`
  `import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;`
- `apk_analysis/jadx/sources/defpackage/oj2.java:31`
  `return DefaultTextContextMenuDropdownProvider_androidKt.DefaultTextContextMenuDropdown$lambda$0$0((TextContextMenuData) this.c, (Context) this.d, (TextContextMenuSession) this.e, (ContextMenuScope) obj);`
- `apk_analysis/jadx/sources/defpackage/zs2.java:7`
  `import androidx.media3.exoplayer.drm.DrmSessionEventListener;`
- `apk_analysis/jadx/sources/defpackage/zs2.java:32`
  `((DrmSessionEventListener.EventDispatcher) obj2).lambda$drmKeysRemoved$4((DrmSessionEventListener) obj);`
- `apk_analysis/jadx/sources/defpackage/s0c.java:134`
  `public static final FieldDescriptor o1 = eh.b(121, FieldDescriptor.builder("documentScannerUiOptionalModuleSessionStartLogEvent"));`
- `apk_analysis/jadx/sources/defpackage/s0c.java:135`
  `public static final FieldDescriptor p1 = eh.b(122, FieldDescriptor.builder("documentScannerUiOptionalModuleSessionFinishLogEvent"));`
- `apk_analysis/jadx/sources/defpackage/qq.java:99`
  `oa6Var.g().c(qn1.t0(u96.k("version", "build", "deviceId", "sessionReplay", "errorTracking", "capturePerformance", "surveys")));`
- `apk_analysis/jadx/sources/defpackage/iyb.java:23`
  `zzicVar.zzaW().zzj().zzb("Session timeout duration set", Long.valueOf(j));`
- `apk_analysis/jadx/sources/defpackage/x42.java:7`
  `import com.google.firebase.perf.session.gauges.CpuGaugeCollector;`
- `apk_analysis/jadx/sources/defpackage/x42.java:42`
  `sg.f("Session Replay migrateBufferToQueue failed: ", th, '.', od6Var.c.v);`
- `apk_analysis/jadx/sources/defpackage/or2.java:3`
  `import androidx.camera.camera2.adapter.SessionConfigAdapter;`
- `apk_analysis/jadx/sources/defpackage/or2.java:34`
  `return SessionConfigAdapter.surfaceToStreamUseCaseMap_delegate$lambda$0((SessionConfigAdapter) obj);`
- `apk_analysis/jadx/sources/defpackage/xf2.java:25`
  `((AnalyticsListener) obj).onDrmSessionManagerError((AnalyticsListener.EventTime) this.b, (Exception) this.c);`
- `apk_analysis/jadx/sources/defpackage/ly6.java:25`
  `import javax.net.ssl.SSLSession;`
- `apk_analysis/jadx/sources/defpackage/ly6.java:484`
  `SSLSession session = sSLSocket2.getSession();`
- `apk_analysis/jadx/sources/defpackage/ly6.java:485`
  `session.getClass();`
- `apk_analysis/jadx/sources/defpackage/ly6.java:486`
  `lu3 lu3VarA = lu3.a.a(session);`
- `apk_analysis/jadx/sources/defpackage/ly6.java:489`
  `if (hostnameVerifier.verify(l9Var2.h.d, session)) {`
- `apk_analysis/jadx/sources/defpackage/fxb.java:12`
  `bg.g(11, ag.c(10, ag.c(9, ag.c(8, ag.c(7, ag.c(6, ag.c(5, ag.c(4, ag.c(3, ag.c(2, ag.c(1, FieldDescriptor.builder("screenName"), "sessionId"), "timestampMs"), "options"), "elementName"), "isAutoCaptureMode"), "pageIndex"), "appliedToAllPages"), "errorCode"), "callerAppId"), "cleanUpStrokeSize"));`
- `apk_analysis/jadx/sources/defpackage/ml0.java:49`
  `((AnalyticsListener) obj).onDrmSessionReleased((AnalyticsListener.EventTime) this.c);`
- `apk_analysis/jadx/sources/defpackage/eu3.java:4`
  `import androidx.window.area.RearDisplaySessionImpl;`
- `apk_analysis/jadx/sources/defpackage/eu3.java:6`
  `import com.google.firebase.perf.session.gauges.MemoryGaugeCollector;`
- `apk_analysis/jadx/sources/defpackage/eu3.java:40`
  `WindowAreaControllerImpl.RearDisplaySessionConsumer.onSessionStarted$lambda$1$lambda$0((WindowAreaControllerImpl.RearDisplaySessionConsumer) obj2, (RearDisplaySessionImpl) obj);`
- `apk_analysis/jadx/sources/defpackage/na6.java:3`
  `import com.posthog.internal.replay.PostHogSessionReplayHandler;`
- `apk_analysis/jadx/sources/defpackage/na6.java:28`
  `PostHogSessionReplayHandler postHogSessionReplayHandler = ((oa6) obj2).y;`
- `apk_analysis/jadx/sources/defpackage/na6.java:29`
  `if (postHogSessionReplayHandler != null) {`
- `apk_analysis/jadx/sources/defpackage/na6.java:30`
  `postHogSessionReplayHandler.onSessionIdChanged();`
- `apk_analysis/jadx/sources/defpackage/na6.java:34`
  `sg.f("onSessionIdChanged listener failed: ", th, '.', ta6Var.v);`
- `apk_analysis/jadx/sources/defpackage/gc6.java:92`
  `sb.append(", sessionId=");`
- `apk_analysis/jadx/sources/defpackage/um4.java:7`
  `import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;`
- `apk_analysis/jadx/sources/defpackage/um4.java:41`
  `return TextFieldSelectionState_androidKt.addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldItem$0((ll3) obj5, (ll3) obj4, (TextFieldSelectionState) obj3, (TextToolbarState) obj2, (TextContextMenuSession) obj);`
- `apk_analysis/jadx/sources/defpackage/yb3.java:5`
  `import com.google.firebase.sessions.FirebaseSessionsRegistrar;`
- `apk_analysis/jadx/sources/defpackage/yb3.java:11`
  `return FirebaseSessionsRegistrar.getComponents$lambda$0(componentContainer);`
- `apk_analysis/jadx/sources/defpackage/fi2.java:3`
  `import androidx.media3.exoplayer.analytics.DefaultPlaybackSessionManager;`
- `apk_analysis/jadx/sources/defpackage/fi2.java:9`
  `return DefaultPlaybackSessionManager.generateDefaultSessionId();`
- `apk_analysis/jadx/sources/defpackage/jj5.java:6`
  `import com.google.firebase.sessions.ProcessDataManagerImpl;`
- `apk_analysis/jadx/sources/defpackage/jj5.java:7`
  `import com.google.firebase.sessions.UuidGenerator;`
- `apk_analysis/jadx/sources/defpackage/ve1.java:7`
  `import androidx.media3.exoplayer.drm.DrmSessionManager;`
- `apk_analysis/jadx/sources/defpackage/ve1.java:8`
  `import androidx.media3.exoplayer.drm.DrmSessionManagerProvider;`
- `apk_analysis/jadx/sources/defpackage/ve1.java:17`
  `public final /* synthetic */ class ve1 implements xl3, DrmSessionManagerProvider, ListenerSet.Event, eh8.a, ProductDetailsResponseListener {`
- `apk_analysis/jadx/sources/defpackage/ve1.java:35`
  `@Override // androidx.media3.exoplayer.drm.DrmSessionManagerProvider`
- `apk_analysis/jadx/sources/defpackage/ve1.java:36`
  `public DrmSessionManager get(MediaItem mediaItem) {`
- `apk_analysis/jadx/sources/defpackage/ve1.java:37`
  `return DownloadHelper.lambda$createMediaSourceInternal$4((DrmSessionManager) this.b, mediaItem);`
- `apk_analysis/jadx/sources/defpackage/ov5.java:48`
  `d = new vz5<>(null, "setUseSessionTickets", cls);`
- `apk_analysis/jadx/sources/defpackage/ov5.java:64`
  `method5 = cls2.getMethod("setUseSessionTickets", SSLSocket.class, cls);`
- `apk_analysis/jadx/sources/defpackage/at2.java:4`
  `import androidx.media3.exoplayer.drm.DrmSessionEventListener;`
- `apk_analysis/jadx/sources/defpackage/at2.java:30`
  `((DrmSessionEventListener.EventDispatcher) obj3).lambda$drmKeysLoaded$1((DrmSessionEventListener) obj2, (KeyRequestInfo) obj);`
- `apk_analysis/jadx/sources/defpackage/fx1.java:14`
  `import javax.net.ssl.SSLSession;`
- `apk_analysis/jadx/sources/defpackage/fx1.java:35`
  `public final boolean verify(X509Certificate[] x509CertificateArr, String str, SSLSession sSLSession) {`
- `apk_analysis/jadx/sources/defpackage/fx1.java:72`
  `Conscrypt.setUseSessionTickets(sSLSocket, true);`
- `apk_analysis/jadx/sources/defpackage/xg.java:4`
  `import androidx.media3.exoplayer.drm.DrmSessionEventListener;`
- `apk_analysis/jadx/sources/defpackage/xg.java:28`
  `((DrmSessionEventListener.EventDispatcher) obj).drmKeysRestored();`
- `apk_analysis/jadx/sources/defpackage/ixb.java:12`
  `bg.g(7, ag.c(6, ag.c(5, ag.c(4, ag.c(3, ag.c(2, ag.c(1, FieldDescriptor.builder("options"), "sessionId"), "sessionDurationMs"), "callerAppId"), "numRetakes"), "pages"), "isSessionCanceled"));`
- `apk_analysis/jadx/sources/defpackage/yy2.java:59`
  `linkedHashMap2.put("sessionId", str4);`
- `apk_analysis/jadx/sources/defpackage/l9c.java:12`
  `public static final FieldDescriptor c = eh.b(2, FieldDescriptor.builder("sessionId"));`
- `apk_analysis/jadx/sources/defpackage/wq7.java:3`
  `import androidx.camera.camera2.adapter.SessionConfigAdapter;`
- `apk_analysis/jadx/sources/defpackage/wq7.java:24`
  `return SessionConfigAdapter.surfaceToStreamUseHintMap_delegate$lambda$0((SessionConfigAdapter) obj);`
- `apk_analysis/jadx/sources/defpackage/xfa.java:10`
  `import javax.net.ssl.SSLSession;`
- `apk_analysis/jadx/sources/defpackage/xfa.java:53`
  `public final boolean verify(String str2, SSLSession sSLSession) {`
- `apk_analysis/jadx/sources/defpackage/a6b.java:21`
  `((zzcp) Preconditions.checkNotNull(this.g.h)).setSessionTimeoutDuration(this.f);`
- `apk_analysis/jadx/sources/defpackage/iz0.java:24`
  `return Camera2CameraMetadata._sessionKeys$lambda$0((Camera2CameraMetadata) obj);`
- `apk_analysis/jadx/sources/defpackage/wf.java:29`
  `SSLSockets.setUseSessionTickets(sSLSocket, true);`
- `apk_analysis/jadx/sources/defpackage/wub.java:12`
  `rz0.e(6, qz0.b(5, qz0.b(4, qz0.b(3, qz0.b(2, qz0.b(1, FieldDescriptor.builder("inferenceCommonLogEvent"), "imageInfo"), "detectorOptions"), "loadDurationMs"), "sessionDurationMs"), "sessionTotalInferenceDurationMs"));`
- `apk_analysis/jadx/sources/defpackage/wt1.java:3`
  `import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;`
- `apk_analysis/jadx/sources/defpackage/wt1.java:12`
  `return ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt.lambda__1357803046$lambda$0((TextContextMenuSession) obj, (TextContextMenuDataProvider) obj2, (ll3) obj3, (Composer) obj4, ((Integer) obj5).intValue());`
- `apk_analysis/jadx/sources/defpackage/n8b.java:74`
  `zzicVar.zzaW().zzb().zzb("getSessionId failed with exception", e3);`
- `apk_analysis/jadx/sources/defpackage/n8b.java:78`
  `zzicVar2.zzaW().zzh().zza("Analytics storage consent denied; will not get session id");`
- `apk_analysis/jadx/sources/defpackage/mx1.java:3`
  `import androidx.media3.exoplayer.drm.DrmSessionEventListener;`
- `apk_analysis/jadx/sources/defpackage/mx1.java:29`
  `((DrmSessionEventListener.EventDispatcher) obj2).lambda$drmKeysRestored$3((DrmSessionEventListener) obj);`
- `apk_analysis/jadx/sources/defpackage/akb.java:134`
  `public static final FieldDescriptor o1 = zg.e(121, FieldDescriptor.builder("documentScannerUiOptionalModuleSessionStartLogEvent"));`
- `apk_analysis/jadx/sources/defpackage/akb.java:135`
  `public static final FieldDescriptor p1 = zg.e(122, FieldDescriptor.builder("documentScannerUiOptionalModuleSessionFinishLogEvent"));`
- `apk_analysis/jadx/sources/defpackage/gd9.java:4`
  `import androidx.camera.core.impl.SessionConfig;`
- `apk_analysis/jadx/sources/defpackage/gd9.java:32`
  `VideoCapture.lambda$setupSurfaceUpdateNotifier$5((AtomicBoolean) obj3, (SessionConfig.Builder) obj2, (CameraCaptureCallback) obj);`
- `apk_analysis/jadx/sources/defpackage/od6.java:53`
  `import com.posthog.internal.replay.PostHogSessionReplayHandler;`
- `apk_analysis/jadx/sources/defpackage/od6.java:84`
  `public final class od6 implements ac6, PostHogSessionReplayHandler {`
- `apk_analysis/jadx/sources/defpackage/od6.java:486`
  `this.c.v.a("[Session Replay] First remote config fetch failed. Falling back to the cached session replay flag.");`
- `apk_analysis/jadx/sources/defpackage/od6.java:504`
  `this.c.v.a("[Session Replay] ".concat("Remote config disabled recording. Stopping."));`
- `apk_analysis/jadx/sources/defpackage/od6.java:557`
  `sg.f("Session Replay setup failed: ", th, '.', this.c.v);`
- `apk_analysis/jadx/sources/defpackage/od6.java:575`
  `ta6Var.v.a("Session Replay already has onDecorViewReady.");`
- `apk_analysis/jadx/sources/defpackage/od6.java:609`
  `sg.f("Session Replay OnRootViewsChangedListener failed: ", th, '.', ta6Var.v);`
- `apk_analysis/jadx/sources/defpackage/od6.java:652`
  `@Override // com.posthog.internal.replay.PostHogSessionReplayHandler`
- `apk_analysis/jadx/sources/defpackage/od6.java:712`
  `sg.f("Session Replay view state check failed: ", th, '.', this.c.v);`
- `apk_analysis/jadx/sources/defpackage/od6.java:752`
  `this.c.v.a("[Session Replay] Minimum duration met. Migrating " + qd6Var.d.a() + " buffered events to replay queue.");`
- `apk_analysis/jadx/sources/defpackage/od6.java:776`
  `sg.f("Session Replay scheduling migrateBufferToQueue failed: ", th, '.', this.c.v);`
- `apk_analysis/jadx/sources/defpackage/od6.java:855`
  `@Override // com.posthog.internal.replay.PostHogSessionReplayHandler`
- `apk_analysis/jadx/sources/defpackage/od6.java:885`
  `this.c.v.a("[Session Replay] Event trigger matched: " + str + ". Starting replay for session " + string + '.');`
- `apk_analysis/jadx/sources/defpackage/od6.java:890`
  `@Override // com.posthog.internal.replay.PostHogSessionReplayHandler`
- `apk_analysis/jadx/sources/defpackage/od6.java:891`
  `public final void onSessionIdChanged() {`
- `apk_analysis/jadx/sources/defpackage/od6.java:914`
  `this.c.v.a("[Session Replay] Session changed. Stopping until trigger is matched.");`
- `apk_analysis/jadx/sources/defpackage/od6.java:921`
  `this.c.v.a("[Session Replay] Session changed. Re-initializing recording for new session.");`
- `apk_analysis/jadx/sources/defpackage/od6.java:932`
  `this.c.v.a("[Session Replay] Session cleared. Stopping recording.");`
- `apk_analysis/jadx/sources/defpackage/od6.java:998`
  `sg.f("Session Replay isVisible failed: ", th, '.', ta6Var.v);`
- `apk_analysis/jadx/sources/defpackage/od6.java:1328`
  `@Override // com.posthog.internal.replay.PostHogSessionReplayHandler`
- `apk_analysis/jadx/sources/defpackage/od6.java:1373`
  `this.c.v.a("[Session Replay] Event triggers configured. Integration will not start until any of these events are captured: " + set2);`
- `apk_analysis/jadx/sources/defpackage/od6.java:1388`
  `@Override // com.posthog.internal.replay.PostHogSessionReplayHandler`
- `apk_analysis/jadx/sources/defpackage/rz3.java:22`
  `static final int TRANSACTION_newAuthTabSession = 18;`
- `apk_analysis/jadx/sources/defpackage/rz3.java:23`
  `static final int TRANSACTION_newSession = 3;`
- `apk_analysis/jadx/sources/defpackage/rz3.java:24`
  `static final int TRANSACTION_newSessionWithExtras = 10;`
- `apk_analysis/jadx/sources/defpackage/rz3.java:117`
  `public final boolean newAuthTabSession(oz3 oz3Var, Bundle bundle) {`
- `apk_analysis/jadx/sources/defpackage/rz3.java:125`
  `throw new RemoteException("Method newAuthTabSession is unimplemented.");`
- `apk_analysis/jadx/sources/defpackage/rz3.java:140`
  `public final boolean newSession(qz3 qz3Var) {`
- `apk_analysis/jadx/sources/defpackage/rz3.java:147`
  `throw new RemoteException("Method newSession is unimplemented.");`
- `apk_analysis/jadx/sources/defpackage/rz3.java:162`
  `public final boolean newSessionWithExtras(qz3 qz3Var, Bundle bundle) {`
- `apk_analysis/jadx/sources/defpackage/rz3.java:170`
  `throw new RemoteException("Method newSessionWithExtras is unimplemented.");`
- `apk_analysis/jadx/sources/defpackage/rz3.java:463`
  `boolean zNewSession = newSession(qz3.a.asInterface(parcel.readStrongBinder()));`
- `apk_analysis/jadx/sources/defpackage/rz3.java:465`
  `parcel2.writeInt(zNewSession ? 1 : 0);`
- `apk_analysis/jadx/sources/defpackage/rz3.java:501`
  `boolean zNewSessionWithExtras = newSessionWithExtras(qz3.a.asInterface(parcel.readStrongBinder()), (Bundle) parcel.readTypedObject(Bundle.CREATOR));`
- `apk_analysis/jadx/sources/defpackage/rz3.java:503`
  `parcel2.writeInt(zNewSessionWithExtras ? 1 : 0);`
- `apk_analysis/jadx/sources/defpackage/rz3.java:537`
  `boolean zNewAuthTabSession = newAuthTabSession(oz3.a.asInterface(parcel.readStrongBinder()), (Bundle) parcel.readTypedObject(Bundle.CREATOR));`
- `apk_analysis/jadx/sources/defpackage/rz3.java:539`
  `parcel2.writeInt(zNewAuthTabSession ? 1 : 0);`
- `apk_analysis/jadx/sources/defpackage/rz3.java:567`
  `boolean newAuthTabSession(oz3 oz3Var, Bundle bundle);`
- `apk_analysis/jadx/sources/defpackage/rz3.java:569`
  `boolean newSession(qz3 qz3Var);`
- `apk_analysis/jadx/sources/defpackage/rz3.java:571`
  `boolean newSessionWithExtras(qz3 qz3Var, Bundle bundle);`
- `apk_analysis/jadx/sources/defpackage/ko5.java:4`
  `import javax.net.ssl.SSLSession;`
- `apk_analysis/jadx/sources/defpackage/ko5.java:14`
  `public final boolean getEnableSessionCreation() {`
- `apk_analysis/jadx/sources/defpackage/ko5.java:34`
  `public final SSLSession getSession() {`
- `apk_analysis/jadx/sources/defpackage/ko5.java:63`
  `public final void setEnableSessionCreation(boolean z) {`
- `apk_analysis/jadx/sources/defpackage/bz0.java:29`
  `return Camera2CameraController.detachSessionAndCamera$lambda$0((Camera2CameraController) obj2, (Throwable) obj);`
- `apk_analysis/jadx/sources/defpackage/wg.java:4`
  `import androidx.media3.exoplayer.drm.DrmSessionEventListener;`
- `apk_analysis/jadx/sources/defpackage/wg.java:22`
  `((DrmSessionEventListener.EventDispatcher) obj).drmKeysRemoved();`
- `apk_analysis/jadx/sources/defpackage/s92.java:3`
  `import androidx.camera.camera2.adapter.SessionConfigAdapter;`
- `apk_analysis/jadx/sources/defpackage/s92.java:27`
  `return SessionConfigAdapter.validatingBuilder_delegate$lambda$0((SessionConfigAdapter) obj);`
- `apk_analysis/jadx/sources/defpackage/s92.java:31`
  `return UseCaseCameraImpl.sessionConfigAdapter_delegate$lambda$0((UseCaseCameraImpl) obj);`
- `apk_analysis/jadx/sources/defpackage/agb.java:12`
  `rz0.e(11, qz0.b(10, qz0.b(9, qz0.b(8, qz0.b(7, qz0.b(6, qz0.b(5, qz0.b(4, qz0.b(3, qz0.b(2, qz0.b(1, FieldDescriptor.builder("screenName"), "sessionId"), "timestampMs"), "options"), "elementName"), "isAutoCaptureMode"), "pageIndex"), "appliedToAllPages"), "errorCode"), "callerAppId"), "cleanUpStrokeSize"));`
- `apk_analysis/jadx/sources/defpackage/c60.java:3`
  `import com.warefly.checkscan.presentation.account.sessionExpired.presenter.SessionExpiredView$$State;`
- `apk_analysis/jadx/sources/defpackage/c60.java:30`
  `return new SessionExpiredView$$State();`
- `apk_analysis/jadx/sources/defpackage/in9.java:381`
  `strInjectScriptContentIntoHtml = ScriptInjector.injectScriptContentIntoHtml(";(function(omidGlobal) {\n  'use strict';var n;function aa(a){var b=0;return function(){return b<a.length?{done:!1,value:a[b++]}:{done:!0}}}function p(a){var b='undefined'!=typeof Symbol&&Symbol.iterator&&a[Symbol.iterator];return b?b.call(a):{next:aa(a)}}function q(a){if(!(a instanceof Array)){a=p(a);for(var b,c=[];!(b=a.next()).done;)c.push(b.value);a=c}return a}var ba='function'==typeof Object.create?Object.create:function(a){function b(){}b.prototype=a;return new b},ca;\nif('function'==typeof Object.setPrototypeOf)ca=Object.setPrototypeOf;else{var da;a:{var ea={S:!0},fa={};try{fa.__proto__=ea;da=fa.S;break a}catch(a){}da=!1}ca=da?function(a,b){a.__proto__=b;if(a.__proto__!==b)throw new TypeError(a+' is not extensible');return a}:null}var ha=ca;\nfunction r(a,b){a.prototype=ba(b.prototype);a.prototype.constru ... [truncated]`
- `apk_analysis/jadx/sources/defpackage/ti0.java:6`
  `import androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper;`
- `apk_analysis/jadx/sources/defpackage/ti0.java:41`
  `public static /* synthetic */ void d(CameraCaptureSessionWrapper cameraCaptureSessionWrapper) throws Exception {`
- `apk_analysis/jadx/sources/defpackage/ti0.java:43`
  `if (cameraCaptureSessionWrapper instanceof AutoCloseable) {`
- `apk_analysis/jadx/sources/defpackage/ti0.java:44`
  `cameraCaptureSessionWrapper.close();`
- `apk_analysis/jadx/sources/defpackage/ti0.java:47`
  `if (!(cameraCaptureSessionWrapper instanceof ExecutorService)) {`
- `apk_analysis/jadx/sources/defpackage/ti0.java:48`
  `if (cameraCaptureSessionWrapper instanceof TypedArray) {`
- `apk_analysis/jadx/sources/defpackage/ti0.java:49`
  `((TypedArray) cameraCaptureSessionWrapper).recycle();`
- `apk_analysis/jadx/sources/defpackage/ti0.java:52`
  `if (cameraCaptureSessionWrapper instanceof MediaMetadataRetriever) {`
- `apk_analysis/jadx/sources/defpackage/ti0.java:53`
  `((MediaMetadataRetriever) cameraCaptureSessionWrapper).release();`
- `apk_analysis/jadx/sources/defpackage/ti0.java:55`
  `} else if (cameraCaptureSessionWrapper instanceof MediaDrm) {`
- `apk_analysis/jadx/sources/defpackage/ti0.java:56`
  `((MediaDrm) cameraCaptureSessionWrapper).release();`
- `apk_analysis/jadx/sources/defpackage/ti0.java:63`
  `ExecutorService executorService = (ExecutorService) cameraCaptureSessionWrapper;`
- `apk_analysis/jadx/sources/defpackage/j7.java:13`
  `import com.google.firebase.sessions.EventGDTLogger;`
- `apk_analysis/jadx/sources/defpackage/j7.java:14`
  `import com.google.firebase.sessions.SessionEvent;`
- `apk_analysis/jadx/sources/defpackage/j7.java:45`
  `return ((EventGDTLogger) obj2).encode((SessionEvent) obj);`
- `apk_analysis/jadx/sources/defpackage/zqa.java:353`
  `contentValues2.put("current_session_count", (Integer) 0);`
- `apk_analysis/jadx/sources/defpackage/zqa.java:357`
  `kvaVarZzj3.a.zzaW().zzb().zzc("Error resetting session-scoped event counts. appId", zzgu.d(str15), e);`
- `apk_analysis/jadx/sources/defpackage/zqa.java:528`
  `cursorRawQuery = kvaVarZzj.M().rawQuery("select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;", new String[]{str6, str6});`
- `apk_analysis/jadx/sources/defpackage/zqa.java:1587`
  `cursorRawQuery = kvaVarZzj.M().rawQuery("select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;", new String[]{str6, str6});`
- `apk_analysis/jadx/sources/defpackage/zqa.java:2003`
  `cursorRawQuery = kvaVarZzj.M().rawQuery("select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;", new String[]{str6, str6});`
- `apk_analysis/jadx/sources/defpackage/zqa.java:2454`
  `cursorRawQuery = kvaVarZzj.M().rawQuery("select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;", new String[]{str6, str6});`
- `apk_analysis/jadx/sources/defpackage/zqa.java:2984`
  `cursorRawQuery = kvaVarZzj.M().rawQuery("select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;", new String[]{str6, str6});`
- `apk_analysis/jadx/sources/defpackage/kv5.java:290`
  `h88 h88VarH2 = lv5Var.E.verify(str5, ((SSLSocket) lv5Var.F).getSession()) ? h88.e : h88.m.h("HostNameVerifier verification failed for authority '" + str5 + "'");`
- `apk_analysis/jadx/sources/defpackage/o21.java:6`
  `import com.google.firebase.perf.session.gauges.GaugeManager;`
- `apk_analysis/jadx/sources/defpackage/lu3.java:10`
  `import javax.net.ssl.SSLSession;`
- `apk_analysis/jadx/sources/defpackage/lu3.java:38`
  `public static lu3 a(SSLSession sSLSession) throws IOException {`
- `apk_analysis/jadx/sources/defpackage/lu3.java:41`
  `String cipherSuite = sSLSession.getCipherSuite();`
- `apk_analysis/jadx/sources/defpackage/lu3.java:51`
  `String protocol = sSLSession.getProtocol();`
- `apk_analysis/jadx/sources/defpackage/lu3.java:63`
  `Certificate[] peerCertificates = sSLSession.getPeerCertificates();`
- `apk_analysis/jadx/sources/defpackage/lu3.java:67`
  `Certificate[] localCertificates = sSLSession.getLocalCertificates();`
- `apk_analysis/jadx/sources/defpackage/ut1.java:3`
  `import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;`
- `apk_analysis/jadx/sources/defpackage/ut1.java:12`
  `return ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt.lambda_129995601$lambda$0((TextContextMenuSession) obj, (TextContextMenuDataProvider) obj2, (ll3) obj3, (Composer) obj4, ((Integer) obj5).intValue());`
- `apk_analysis/jadx/sources/defpackage/f8a.java:15`
  `import javax.net.ssl.SSLSession;`
- `apk_analysis/jadx/sources/defpackage/f8a.java:71`
  `public final boolean verify(String str, SSLSession sSLSession) {`
- `apk_analysis/jadx/sources/defpackage/fv5.java:13`
  `import javax.net.ssl.SSLSession;`
- `apk_analysis/jadx/sources/defpackage/fv5.java:304`
  `public final boolean verify(String str, SSLSession sSLSession) {`
- `apk_analysis/jadx/sources/defpackage/fv5.java:344`
  `return b(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);`
- `apk_analysis/jadx/sources/defpackage/rr0.java:8`
  `import androidx.window.area.WindowAreaSessionCallback;`
- `apk_analysis/jadx/sources/defpackage/rr0.java:41`
  `WindowAreaControllerImpl.transferActivityToWindowArea$lambda$1((WindowAreaSessionCallback) obj);`
- `apk_analysis/jadx/sources/defpackage/qfa.java:13`
  `import androidx.browser.customtabs.CustomTabsSession;`
- `apk_analysis/jadx/sources/defpackage/qfa.java:26`
  `public CustomTabsSession d;`
- `apk_analysis/jadx/sources/defpackage/qfa.java:84`
  `CustomTabsSession customTabsSession = this.d;`
- `apk_analysis/jadx/sources/defpackage/qfa.java:85`
  `if (bVar == null || customTabsSession == null) {`
- `apk_analysis/jadx/sources/defpackage/qfa.java:99`
  `CustomTabsIntent customTabsIntentBuild = new CustomTabsIntent.Builder(customTabsSession).build();`
- `apk_analysis/jadx/sources/defpackage/sj2.java:5`
  `import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;`
- `apk_analysis/jadx/sources/defpackage/sj2.java:28`
  `return DefaultTextContextMenuDropdownProvider_androidKt.DefaultTextContextMenuDropdown$lambda$0$0$0$1((TextContextMenuItem) obj2, (TextContextMenuSession) obj);`
- `apk_analysis/jadx/sources/defpackage/pn7.java:3`
  `import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;`
- `apk_analysis/jadx/sources/defpackage/pn7.java:27`
  `return SelectionManager_androidKt.addSelectionContainerTextContextMenuComponents$lambda$0$selectionContainerItem$0((ll3) obj3, (ll3) obj2, (TextContextMenuSession) obj);`
- `apk_analysis/jadx/sources/defpackage/cgb.java:12`
  `rz0.e(7, qz0.b(6, qz0.b(5, qz0.b(4, qz0.b(3, qz0.b(2, qz0.b(1, FieldDescriptor.builder("options"), "sessionId"), "sessionDurationMs"), "callerAppId"), "numRetakes"), "pages"), "isSessionCanceled"));`
- `apk_analysis/jadx/sources/defpackage/di7.java:5`
  `import com.warefly.checkscan.presentation.account.sessionExpired.view.SessionExpiredFragment;`
- `apk_analysis/jadx/sources/defpackage/di7.java:13`
  `SessionExpiredFragment.i.getClass();`
- `apk_analysis/jadx/sources/defpackage/di7.java:14`
  `return new SessionExpiredFragment();`
- `apk_analysis/jadx/sources/defpackage/jo5.java:5`
  `import javax.net.ssl.SSLSession;`
- `apk_analysis/jadx/sources/defpackage/jo5.java:6`
  `import javax.net.ssl.SSLSessionContext;`
- `apk_analysis/jadx/sources/defpackage/jo5.java:10`
  `public class jo5 implements SSLSession {`
- `apk_analysis/jadx/sources/defpackage/jo5.java:11`
  `@Override // javax.net.ssl.SSLSession`
- `apk_analysis/jadx/sources/defpackage/jo5.java:16`
  `@Override // javax.net.ssl.SSLSession`
- `apk_analysis/jadx/sources/defpackage/jo5.java:21`
  `@Override // javax.net.ssl.SSLSession`
- `apk_analysis/jadx/sources/defpackage/jo5.java:26`
  `@Override // javax.net.ssl.SSLSession`
- `apk_analysis/jadx/sources/defpackage/jo5.java:31`
  `@Override // javax.net.ssl.SSLSession`
- `apk_analysis/jadx/sources/defpackage/jo5.java:36`
  `@Override // javax.net.ssl.SSLSession`
- `apk_analysis/jadx/sources/defpackage/jo5.java:41`
  `@Override // javax.net.ssl.SSLSession`
- `apk_analysis/jadx/sources/defpackage/jo5.java:46`
  `@Override // javax.net.ssl.SSLSession`
- `apk_analysis/jadx/sources/defpackage/jo5.java:51`
  `@Override // javax.net.ssl.SSLSession`
- `apk_analysis/jadx/sources/defpackage/jo5.java:56`
  `@Override // javax.net.ssl.SSLSession`
- `apk_analysis/jadx/sources/defpackage/jo5.java:61`
  `@Override // javax.net.ssl.SSLSession`
- `apk_analysis/jadx/sources/defpackage/jo5.java:66`
  `@Override // javax.net.ssl.SSLSession`
- `apk_analysis/jadx/sources/defpackage/jo5.java:71`
  `@Override // javax.net.ssl.SSLSession`
- `apk_analysis/jadx/sources/defpackage/jo5.java:76`
  `@Override // javax.net.ssl.SSLSession`
- `apk_analysis/jadx/sources/defpackage/jo5.java:77`
  `public final SSLSessionContext getSessionContext() {`
- `apk_analysis/jadx/sources/defpackage/jo5.java:81`
  `@Override // javax.net.ssl.SSLSession`
- `apk_analysis/jadx/sources/defpackage/jo5.java:86`
  `@Override // javax.net.ssl.SSLSession`
- `apk_analysis/jadx/sources/defpackage/jo5.java:91`
  `@Override // javax.net.ssl.SSLSession`
- `apk_analysis/jadx/sources/defpackage/jo5.java:95`
  `@Override // javax.net.ssl.SSLSession`
- `apk_analysis/jadx/sources/defpackage/jo5.java:100`
  `@Override // javax.net.ssl.SSLSession`
- `apk_analysis/jadx/sources/defpackage/jo5.java:104`
  `@Override // javax.net.ssl.SSLSession`
- `apk_analysis/jadx/sources/defpackage/gc5.java:3`
  `import androidx.camera.camera2.adapter.SessionConfigAdapter;`
- `apk_analysis/jadx/sources/defpackage/gc5.java:28`
  `return SessionConfigAdapter.sessionConfig_delegate$lambda$0((SessionConfigAdapter) obj);`
- `apk_analysis/jadx/sources/defpackage/sz3.java:17`
  `static final int TRANSACTION_onSessionEnded = 4;`
- `apk_analysis/jadx/sources/defpackage/sz3.java:47`
  `public final void onSessionEnded(boolean z, Bundle bundle) {`
- `apk_analysis/jadx/sources/defpackage/sz3.java:54`
  `throw new RemoteException("Method onSessionEnded is unimplemented.");`
- `apk_analysis/jadx/sources/defpackage/sz3.java:126`
  `onSessionEnded(parcel.readInt() != 0, (Bundle) parcel.readTypedObject(Bundle.CREATOR));`
- `apk_analysis/jadx/sources/defpackage/sz3.java:136`
  `void onSessionEnded(boolean z, Bundle bundle);`
- `apk_analysis/jadx/sources/defpackage/f9c.java:55`
  `zzicVar.zzaW().zzk().zzb("Session started, time", Long.valueOf(zzicVar.zzba().elapsedRealtime()));`
- `apk_analysis/jadx/sources/defpackage/rv5.java:55`
  `if (hostnameVerifier.verify((str.startsWith("[") && str.endsWith("]")) ? rg.f(1, 1, str) : str, sSLSocket.getSession())) {`
- `apk_analysis/jadx/sources/defpackage/rfa.java:18`
  `qfaVar.d = customTabsClient.newSession(qfaVar.e);`
- `apk_analysis/jadx/sources/defpackage/nd6.java:50`
  `sg.f("Session Replay onDecorViewReady failed: ", th, '.', ta6Var.v);`
- `apk_analysis/jadx/sources/defpackage/vt1.java:3`
  `import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;`
- `apk_analysis/jadx/sources/defpackage/vt1.java:12`
  `return ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt.lambda_636288403$lambda$0((TextContextMenuSession) obj, (TextContextMenuDataProvider) obj2, (ll3) obj3, (Composer) obj4, ((Integer) obj5).intValue());`
- `apk_analysis/jadx/sources/defpackage/h01.java:3`
  `import android.hardware.camera2.CameraCaptureSession;`
- `apk_analysis/jadx/sources/defpackage/h01.java:19`
  `public /* synthetic */ h01(CameraUseCaseAdapter.CaptureCallbackContainer captureCallbackContainer, CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j, long j2) {`
- `apk_analysis/jadx/sources/defpackage/h01.java:21`
  `this.f = cameraCaptureSession;`
- `apk_analysis/jadx/sources/defpackage/h01.java:35`
  `CameraCallbackMap.onReadoutStarted_mP9r_9w$lambda$0((CameraUseCaseAdapter.CaptureCallbackContainer) obj3, (CameraCaptureSession) obj2, (CaptureRequest) obj, this.c, this.d);`
- `apk_analysis/jadx/sources/defpackage/ev5.java:14`
  `import javax.net.ssl.SSLSession;`
- `apk_analysis/jadx/sources/defpackage/ev5.java:141`
  `public final boolean verify(String str, SSLSession sSLSession) {`
- `apk_analysis/jadx/sources/defpackage/ev5.java:143`
  `sSLSession.getClass();`
- `apk_analysis/jadx/sources/defpackage/ev5.java:146`
  `Certificate certificate = sSLSession.getPeerCertificates()[0];`
- `apk_analysis/jadx/sources/defpackage/j11.java:50`
  `WindowAreaControllerImpl.RearDisplaySessionConsumer.onSessionFinished$lambda$2((WindowAreaControllerImpl.RearDisplaySessionConsumer) obj);`
- `apk_analysis/jadx/sources/defpackage/yz0.java:4`
  `import android.hardware.camera2.CameraCaptureSession;`
- `apk_analysis/jadx/sources/defpackage/yz0.java:28`
  `CameraCallbackMap.onRequestSequenceAborted$lambda$0((CameraUseCaseAdapter.CaptureCallbackContainer) obj2, (CameraCaptureSession) obj);`
- `apk_analysis/jadx/sources/defpackage/e01.java:19`
  `return CameraCallbackMap.rejectOperationCameraCaptureSession_delegate$lambda$0();`
- `apk_analysis/jadx/sources/defpackage/z12.java:4`
  `import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;`
- `apk_analysis/jadx/sources/defpackage/z12.java:32`
  `return DefaultTextContextMenuDropdownProvider_androidKt.OpenContextMenu$lambda$1$0((TextContextMenuSession) obj);`
- `apk_analysis/jadx/sources/defpackage/i94.java:9`
  `import javax.net.ssl.SSLSession;`
- `apk_analysis/jadx/sources/defpackage/i94.java:23`
  `public a(SSLSession sSLSession) {`
- `apk_analysis/jadx/sources/defpackage/i94.java:24`
  `sSLSession.getCipherSuite();`
- `apk_analysis/jadx/sources/defpackage/i94.java:25`
  `Certificate[] localCertificates = sSLSession.getLocalCertificates();`
- `apk_analysis/jadx/sources/defpackage/i94.java:29`
  `Certificate[] peerCertificates = sSLSession.getPeerCertificates();`
- `apk_analysis/jadx/sources/defpackage/i94.java:34`
  `i94.d.log(Level.FINE, "Peer cert not available for peerHost=" + sSLSession.getPeerHost(), (Throwable) e);`
- `apk_analysis/jadx/sources/defpackage/vr3.java:3`
  `import androidx.camera.camera2.pipe.internal.GraphSessionLock;`
- `apk_analysis/jadx/sources/defpackage/vr3.java:25`
  `return GraphSessionLock.asyncUndispatched$lambda$0((nb4) obj2, (Throwable) obj);`
- `apk_analysis/jadx/sources/defpackage/xy.java:6`
  `import androidx.media3.exoplayer.drm.DrmSessionManager;`
- `apk_analysis/jadx/sources/defpackage/xy.java:17`
  `public final /* synthetic */ class xy implements mq5, DrmSessionManager.DrmSessionReference, st3, l66 {`
- `apk_analysis/jadx/sources/defpackage/xy.java:66`
  `@Override // androidx.media3.exoplayer.drm.DrmSessionManager.DrmSessionReference`
- `apk_analysis/jadx/sources/defpackage/xy.java:68`
  `DrmSessionManager.DrmSessionReference.lambda$static$0();`
- `apk_analysis/jadx/sources/defpackage/id9.java:3`
  `import androidx.camera.core.impl.SessionConfig;`
- `apk_analysis/jadx/sources/defpackage/id9.java:26`
  `return ((VideoCapture) this.b).lambda$setupSurfaceUpdateNotifier$6((SessionConfig.Builder) this.c, completer);`
- `apk_analysis/jadx/sources/defpackage/ad6.java:171`
  `Object objD = oc6Var.d(null, "sessionReplay");`
- `apk_analysis/jadx/sources/defpackage/ad6.java:398`
  `Object objD2 = oc6Var2 != null ? oc6Var2.d(null, "sessionReplay") : null;`
- `apk_analysis/jadx/sources/defpackage/ad6.java:492`
  `this.a.v.a("No cached session replay config to re-evaluate; replay stays disabled.");`
- `apk_analysis/jadx/sources/defpackage/ad6.java:554`
  `this.a.v.a("No cached session replay config to re-evaluate; replay stays disabled.");`
- `apk_analysis/jadx/sources/defpackage/ad6.java:923`
  `oc6Var2.remove("sessionReplay");`
- `apk_analysis/jadx/sources/defpackage/ad6.java:961`
  `oc6Var.a("sessionReplay", map);`
- `apk_analysis/jadx/sources/defpackage/mg1.java:8`
  `import com.google.firebase.crashlytics.internal.common.SessionReportingCoordinator;`
- `apk_analysis/jadx/sources/defpackage/mg1.java:30`
  `return Boolean.valueOf(((SessionReportingCoordinator) this.b).onReportSendComplete(task));`
- `apk_analysis/jadx/sources/defpackage/lxb.java:12`
  `rz0.e(6, qz0.b(5, qz0.b(4, qz0.b(3, qz0.b(2, qz0.b(1, FieldDescriptor.builder("appName"), "sessionId"), "startZoomLevel"), "endZoomLevel"), "durationMs"), "predictedArea"));`
- `apk_analysis/jadx/sources/defpackage/hc5.java:3`
  `import androidx.camera.camera2.adapter.SessionConfigAdapter;`
- `apk_analysis/jadx/sources/defpackage/hc5.java:29`
  `return SessionConfigAdapter.deferrableSurfaces_delegate$lambda$0((SessionConfigAdapter) obj);`
- `apk_analysis/jadx/sources/defpackage/se5.java:3`
  `import com.warefly.checkscan.presentation.account.sessionExpired.presenter.SessionExpiredPresenter;`
- `apk_analysis/jadx/sources/defpackage/se5.java:4`
  `import com.warefly.checkscan.presentation.account.sessionExpired.view.SessionExpiredFragment;`
- `apk_analysis/jadx/sources/defpackage/se5.java:256`
  `map.put(SessionExpiredPresenter.class, new c60(4));`
- `apk_analysis/jadx/sources/defpackage/se5.java:377`
  `map2.put(SessionExpiredFragment.class, Arrays.asList(new of6<SessionExpiredFragment>() { // from class: com.warefly.checkscan.presentation.account.sessionExpired.view.SessionExpiredFragment$$PresentersBinder`
- `apk_analysis/jadx/sources/defpackage/se5.java:379`
  `public class a extends pf6<SessionExpiredFragment> {`
- `apk_analysis/jadx/sources/defpackage/se5.java:381`
  `public final void a(SessionExpiredFragment sessionExpiredFragment, ih5 ih5Var) {`
- `apk_analysis/jadx/sources/defpackage/se5.java:382`
  `sessionExpiredFragment.presenter = (SessionExpiredPresenter) ih5Var;`
- `apk_analysis/jadx/sources/defpackage/se5.java:386`
  `public final ih5 b(SessionExpiredFragment sessionExpiredFragment) {`
- `apk_analysis/jadx/sources/defpackage/se5.java:387`
  `return sessionExpiredFragment.providePresenter();`
- `apk_analysis/jadx/sources/defpackage/se5.java:392`
  `public List<pf6<SessionExpiredFragment>> getPresenterFields() {`
- `apk_analysis/jadx/sources/defpackage/se5.java:394`
  `arrayList.add(new a("presenter", SessionExpiredPresenter.class));`
- `apk_analysis/jadx/sources/defpackage/tu.java:5`
  `import androidx.media3.exoplayer.drm.DrmSession;`
- `apk_analysis/jadx/sources/defpackage/tu.java:10`
  `import com.google.firebase.perf.session.gauges.GaugeManager;`
- `apk_analysis/jadx/sources/defpackage/tu.java:42`
  `((OfflineLicenseHelper) obj3).lambda$acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread$1((nr7) obj2, (DrmSession) obj);`
- `apk_analysis/jadx/sources/defpackage/x85.java:3`
  `import android.media.session.MediaSessionManager;`
- `apk_analysis/jadx/sources/defpackage/x85.java:7`
  `public static /* synthetic */ MediaSessionManager.RemoteUserInfo a(int i, int i2, String str) {`
- `apk_analysis/jadx/sources/defpackage/x85.java:8`
  `return new MediaSessionManager.RemoteUserInfo(str, i, i2);`
- `apk_analysis/jadx/sources/defpackage/cr7.java:3`
  `import com.google.firebase.crashlytics.internal.common.SessionReportingCoordinator;`
- `apk_analysis/jadx/sources/defpackage/cr7.java:20`
  `return SessionReportingCoordinator.lambda$getSortedCustomAttributes$4((CrashlyticsReport.CustomAttribute) obj, (CrashlyticsReport.CustomAttribute) obj2);`
- `apk_analysis/jadx/sources/defpackage/x9b.java:22`
  `((zzcp) Preconditions.checkNotNull(this.g.h)).getSessionId(this.f);`
- `apk_analysis/jadx/sources/defpackage/i84.java:3`
  `import androidx.camera.core.SessionConfig;`
- `apk_analysis/jadx/sources/defpackage/i84.java:23`
  `SessionConfig.featureSelectionListener$lambda$0((Set) obj);`
- `apk_analysis/jadx/sources/defpackage/oc6.java:13`
  `public static final Set<String> b = yr.k0(new String[]{"groups", "anonymousId", "distinctId", "isIdentified", "personProcessingEnabled", "opt-out", "featureFlags", "featureFlagsPayload", "sessionReplay", "surveys", "surveySeen", "lastSeenSurveyDate", "version", "build", "deviceId", "stringifiedKeys", "feature_flag_request_id", "feature_flag_evaluated_at", "flags", "personPropertiesForFlags", "groupPropertiesForFlags", "errorTracking", "capturePerformance"});`
- `apk_analysis/jadx/sources/defpackage/vy1.java:9`
  `import com.google.firebase.sessions.FirebaseSessionsComponent;`
- `apk_analysis/jadx/sources/defpackage/vy1.java:10`
  `import com.google.firebase.sessions.SessionDataSerializer;`
- `apk_analysis/jadx/sources/defpackage/vy1.java:40`
  `return FirebaseSessionsComponent.MainModule.Companion.sessionDataStore$lambda$3((SessionDataSerializer) obj2, (CorruptionException) obj);`
- `apk_analysis/jadx/sources/defpackage/hnb.java:48`
  `this.k = new zzhe(this, "session_timeout", 1800000L);`
- `apk_analysis/jadx/sources/defpackage/hnb.java:49`
  `this.l = new zzhc(this, "start_new_session", true);`
- `apk_analysis/jadx/sources/defpackage/hnb.java:51`
  `this.q = new zzhe(this, "session_id", 0L);`
- `apk_analysis/jadx/sources/defpackage/ap3.java:4`
  `import com.google.firebase.perf.session.gauges.GaugeManager;`
- `apk_analysis/jadx/sources/defpackage/wy2.java:65`
  `linkedHashMap.put("sessionId", str4);`
- `apk_analysis/jadx/sources/defpackage/dl3.java:22`
  `return FrameworkSQLiteDatabase.getThreadSessionMethod_delegate$lambda$7();`
- `apk_analysis/jadx/sources/defpackage/f7c.java:12`
  `bg.g(6, ag.c(5, ag.c(4, ag.c(3, ag.c(2, ag.c(1, FieldDescriptor.builder("inferenceCommonLogEvent"), "imageInfo"), "detectorOptions"), "loadDurationMs"), "sessionDurationMs"), "sessionTotalInferenceDurationMs"));`
- `apk_analysis/jadx/sources/defpackage/kg.java:4`
  `import android.view.contentcapture.ContentCaptureSession;`
- `apk_analysis/jadx/sources/defpackage/kg.java:15`
  `public static /* bridge */ /* synthetic */ ContentCaptureSession c(Object obj) {`
- `apk_analysis/jadx/sources/defpackage/kg.java:16`
  `return (ContentCaptureSession) obj;`
- `apk_analysis/jadx/sources/defpackage/y42.java:4`
  `import com.google.firebase.perf.session.gauges.CpuGaugeCollector;`
- `apk_analysis/jadx/sources/defpackage/gz0.java:6`
  `import com.google.firebase.sessions.FirebaseSessionsComponent;`
- `apk_analysis/jadx/sources/defpackage/gz0.java:27`
  `return FirebaseSessionsComponent.MainModule.Companion.sessionConfigsDataStore$lambda$2((Context) obj);`
- `apk_analysis/jadx/sources/defpackage/s85.java:29`
  `((MediaMetricsListener) obj2).lambda$finishCurrentSession$4((PlaybackMetrics) obj);`
- `apk_analysis/jadx/sources/defpackage/en.java:3`
  `import android.hardware.camera2.CameraExtensionSession$StateCallback;`
- `apk_analysis/jadx/sources/defpackage/en.java:4`
  `import android.hardware.camera2.params.ExtensionSessionConfiguration;`
- `apk_analysis/jadx/sources/defpackage/en.java:10`
  `public static /* synthetic */ ExtensionSessionConfiguration a(int i, List list, Executor executor, CameraExtensionSession$StateCallback cameraExtensionSession$StateCallback) {`
- `apk_analysis/jadx/sources/defpackage/en.java:11`
  `return new ExtensionSessionConfiguration(i, list, executor, cameraExtensionSession$StateCallback);`
- `apk_analysis/jadx/sources/defpackage/zb3.java:5`
  `import com.google.firebase.sessions.FirebaseSessionsRegistrar;`
- `apk_analysis/jadx/sources/defpackage/zb3.java:11`
  `return FirebaseSessionsRegistrar.getComponents$lambda$1(componentContainer);`
- `apk_analysis/jadx/sources/defpackage/y86.java:307`
  `vz5 vz5Var = new vz5(null, "setUseSessionTickets", Boolean.TYPE);`
- `apk_analysis/jadx/sources/defpackage/lv5.java:42`
  `import javax.net.ssl.SSLSession;`
- `apk_analysis/jadx/sources/defpackage/lv5.java:77`
  `public SSLSession b;`
- `apk_analysis/jadx/sources/defpackage/lv5.java:194`
  `lv5.this.b = sSLSocketA.getSession();`
- `apk_analysis/jadx/sources/defpackage/lv5.java:222`
  `SSLSession sSLSession = lv5.this.b;`
- `apk_analysis/jadx/sources/defpackage/lv5.java:223`
  `if (sSLSession != null) {`
- `apk_analysis/jadx/sources/defpackage/lv5.java:224`
  `new i94.a(sSLSession);`
- `apk_analysis/jadx/sources/defpackage/lv5.java:393`
  `@Override // javax.net.ssl.SSLSession`
- `apk_analysis/jadx/sources/defpackage/lv5.java:416`
  `public final SSLSession getHandshakeSession() {`
- `apk_analysis/jadx/sources/defpackage/xp.java:4`
  `import android.view.ScrollCaptureSession;`
- `apk_analysis/jadx/sources/defpackage/xp.java:20`
  `public static /* bridge */ /* synthetic */ ScrollCaptureSession c(Object obj) {`
- `apk_analysis/jadx/sources/defpackage/xp.java:21`
  `return (ScrollCaptureSession) obj;`
- `apk_analysis/jadx/sources/defpackage/ot2.java:5`
  `import com.google.firebase.perf.session.gauges.MemoryGaugeCollector;`
- `apk_analysis/jadx/sources/defpackage/er7.java:4`
  `import com.google.firebase.crashlytics.internal.common.SessionReportingCoordinator;`
- `apk_analysis/jadx/sources/defpackage/er7.java:11`
  `return SessionReportingCoordinator.lambda$persistRelevantAppExitInfoEvent$0((ApplicationExitInfo) obj);`
- `apk_analysis/jadx/sources/defpackage/dc6.java:11`
  `import com.posthog.internal.replay.PostHogSessionReplayHandler;`
- `apk_analysis/jadx/sources/defpackage/dc6.java:125`
  `PostHogSessionReplayHandler postHogSessionReplayHandler = oa6Var3.y;`
- `apk_analysis/jadx/sources/defpackage/dc6.java:126`
  `if (postHogSessionReplayHandler != null) {`
- `apk_analysis/jadx/sources/defpackage/dc6.java:127`
  `if (postHogSessionReplayHandler.isActive()) {`
- `apk_analysis/jadx/sources/defpackage/dc6.java:128`
  `postHogSessionReplayHandler.stop();`
- `apk_analysis/jadx/sources/defpackage/dc6.java:135`
  `ic6Var.a("Session replay isn't installed.");`
- `apk_analysis/jadx/sources/defpackage/fk.java:19`
  `Method declaredMethod = cls.getDeclaredMethod("setUseSessionTickets", Boolean.TYPE);`
- `apk_analysis/jadx/sources/defpackage/zg0.java:13`
  `import com.google.firebase.sessions.ProcessDataManagerImpl;`
- `apk_analysis/jadx/sources/defpackage/hz0.java:24`
  `return Camera2CameraMetadata._sessionCharacteristicsKeys$lambda$0((Camera2CameraMetadata) obj);`
- `apk_analysis/jadx/sources/defpackage/hd6.java:36`
  `sg.f("Session Replay generateSnapshot failed: ", th, '.', od6Var.c.v);`
- `apk_analysis/jadx/sources/defpackage/ge6.java:19`
  `sg.f("PostHogTouchActivityIntegration touchSession failed: ", th, '.', this.a.b.v);`
- `apk_analysis/jadx/sources/defpackage/gx1.java:39`
  `Conscrypt.setUseSessionTickets(sSLSocket, true);`
- `apk_analysis/jadx/sources/defpackage/bib.java:12`
  `y83.e(6, g7.b(5, g7.b(4, g7.b(3, g7.b(2, g7.b(1, FieldDescriptor.builder("inferenceCommonLogEvent"), "imageInfo"), "detectorOptions"), "loadDurationMs"), "sessionDurationMs"), "sessionTotalInferenceDurationMs"));`
- `apk_analysis/jadx/sources/defpackage/dn.java:3`
  `import android.hardware.camera2.CameraCaptureSession;`
- `apk_analysis/jadx/sources/defpackage/dn.java:4`
  `import android.hardware.camera2.params.SessionConfiguration;`
- `apk_analysis/jadx/sources/defpackage/dn.java:10`
  `public static /* synthetic */ SessionConfiguration a(int i, List list, Executor executor, CameraCaptureSession.StateCallback stateCallback) {`
- `apk_analysis/jadx/sources/defpackage/dn.java:11`
  `return new SessionConfiguration(i, list, executor, stateCallback);`
- `apk_analysis/jadx/sources/defpackage/c01.java:3`
  `import android.hardware.camera2.CameraCaptureSession;`
- `apk_analysis/jadx/sources/defpackage/c01.java:35`
  `CameraCallbackMap.onFailed_CcXjc1I$lambda$0((CameraUseCaseAdapter.CaptureCallbackContainer) obj4, (CameraCaptureSession) obj3, (CaptureRequest) obj2, (CaptureFailure) obj);`
- `apk_analysis/jadx/sources/defpackage/xb3.java:4`
  `import com.google.firebase.sessions.FirebaseSessionsComponent;`
- `apk_analysis/jadx/sources/defpackage/xb3.java:23`
  `return FirebaseSessionsComponent.MainModule.Companion.sessionDataStore$lambda$5(context);`
- `apk_analysis/jadx/sources/defpackage/v7.java:3`
  `import android.hardware.camera2.params.SessionConfiguration;`
- `apk_analysis/jadx/sources/defpackage/v7.java:8`
  `public static /* synthetic */ SessionConfiguration a(int i, List list) {`
- `apk_analysis/jadx/sources/defpackage/v7.java:9`
  `return new SessionConfiguration(i, list);`
- `apk_analysis/jadx/sources/defpackage/cg2.java:28`
  `((AnalyticsListener) obj).onAudioSessionIdChanged((AnalyticsListener.EventTime) obj2, i2);`
- `apk_analysis/jadx/sources/defpackage/zo3.java:4`
  `import com.google.firebase.perf.session.gauges.GaugeManager;`
- `apk_analysis/jadx/sources/defpackage/ny4.java:5`
  `import com.google.firebase.sessions.ProcessDataManagerImpl;`
- `apk_analysis/jadx/sources/defpackage/oa6.java:8`
  `import com.posthog.internal.replay.PostHogSessionReplayHandler;`
- `apk_analysis/jadx/sources/defpackage/oa6.java:52`
  `public PostHogSessionReplayHandler y;`
- `apk_analysis/jadx/sources/defpackage/oa6.java:310`
  `if (ac6Var instanceof PostHogSessionReplayHandler) {`
- `apk_analysis/jadx/sources/defpackage/oa6.java:311`
  `oa6Var.y = (PostHogSessionReplayHandler) ac6Var;`
- `apk_analysis/jadx/sources/defpackage/oa6.java:379`
  `ad6Var.t(postHogRemoteConfigResponseH.getSessionRecording(), true);`
- `apk_analysis/jadx/sources/defpackage/oa6.java:681`
  `if ((properties != null ? properties.get("$session_id") : null) == null) {`
- `apk_analysis/jadx/sources/defpackage/oa6.java:686`
  `ic6Var2.a(postHogEventD.getEvent() + " event dropped, because the $session_id property is missing");`
- `apk_analysis/jadx/sources/defpackage/oa6.java:708`
  `PostHogSessionReplayHandler postHogSessionReplayHandler = this.y;`
- `apk_analysis/jadx/sources/defpackage/oa6.java:709`
  `if (postHogSessionReplayHandler != null) {`
- `apk_analysis/jadx/sources/defpackage/oa6.java:710`
  `postHogSessionReplayHandler.onEvent(str, linkedHashMapK);`
- `apk_analysis/jadx/sources/defpackage/oa6.java:749`
  `PostHogSessionReplayHandler postHogSessionReplayHandler;`
- `apk_analysis/jadx/sources/defpackage/oa6.java:751`
  `if (h() && (postHogSessionReplayHandler = this.y) != null && postHogSessionReplayHandler.isActive()) {`
- `apk_analysis/jadx/sources/defpackage/oa6.java:883`
  `Object obj = map != null ? map.get("$session_id") : null;`
- `apk_analysis/jadx/sources/defpackage/oa6.java:906`
  `linkedHashMap.put("$session_id", string);`
- `apk_analysis/jadx/sources/defpackage/kva.java:67`
  `public static final String[] f = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};`
- `apk_analysis/jadx/sources/defpackage/kva.java:70`
  `public static final String[] i = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE  ... [truncated]`
- `apk_analysis/jadx/sources/defpackage/kva.java:73`
  `public static final String[] l = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};`
- `apk_analysis/jadx/sources/defpackage/kva.java:74`
  `public static final String[] m = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};`
- `apk_analysis/jadx/sources/defpackage/kva.java:1224`
  `cursorQuery = M().query("apps", new String[]{"app_instance_id", "gmp_app_id", "resettable_device_id_hash", "last_bundle_index", "last_bundle_start_timestamp", "last_bundle_end_timestamp", "app_version", "app_store", "gmp_version", "dev_cert_hash", "measurement_enabled", "day", "daily_public_events_count", "daily_events_count", "daily_conversions_count", "config_fetched_time", "failed_config_fetch_time", "app_version_int", "firebase_instance_id", "daily_error_events_count", "daily_realtime_events_count", "health_monitor_sample", "android_id", "adid_reporting_enabled", "admob_app_id", "dynamite_version", "safelisted_events", "ga_app_id", "session_stitching_token", "sgtm_upload_enabled", "target_os_version", "session_stitching_token_hash", "ad_services_version", "unmatched_first_open_without_ad_id", "npa_metadata_value", "attribution_eligibility_status", "sgtm_preview_key", "dma_consent_sta ... [truncated]`
- `apk_analysis/jadx/sources/defpackage/kva.java:1477`
  `contentValues.put("session_stitching_token", fmbVar.t);`
- `apk_analysis/jadx/sources/defpackage/kva.java:1484`
  `contentValues.put("session_stitching_token_hash", Long.valueOf(fmbVar.w));`
- `apk_analysis/jadx/sources/defpackage/kva.java:2522`
  `ArrayList arrayList = new ArrayList(Arrays.asList("lifetime_count", "current_bundle_count", "last_fire_timestamp", "last_bundled_timestamp", "last_bundled_day", "last_sampled_complex_event_id", "last_sampling_rate", "last_exempt_from_sampling", "current_session_count"));`
- `apk_analysis/jadx/sources/defpackage/kva.java:2596`
  `contentValues.put("current_session_count", Long.valueOf(qwaVar.e));`
- `apk_analysis/jadx/sources/defpackage/k85.java:5`
  `import android.media.session.MediaController;`
- `apk_analysis/jadx/sources/defpackage/k85.java:6`
  `import android.media.session.MediaSession;`
- `apk_analysis/jadx/sources/defpackage/k85.java:7`
  `import android.media.session.PlaybackState;`
- `apk_analysis/jadx/sources/defpackage/k85.java:13`
  `import android.support.v4.media.session.MediaSessionCompat;`
- `apk_analysis/jadx/sources/defpackage/k85.java:14`
  `import android.support.v4.media.session.c;`
- `apk_analysis/jadx/sources/defpackage/k85.java:26`
  `@Override // android.media.session.MediaController.Callback`
- `apk_analysis/jadx/sources/defpackage/k85.java:39`
  `@Override // android.media.session.MediaController.Callback`
- `apk_analysis/jadx/sources/defpackage/k85.java:41`
  `MediaSessionCompat.a(bundle);`
- `apk_analysis/jadx/sources/defpackage/k85.java:45`
  `@Override // android.media.session.MediaController.Callback`
- `apk_analysis/jadx/sources/defpackage/k85.java:60`
  `@Override // android.media.session.MediaController.Callback`
- `apk_analysis/jadx/sources/defpackage/k85.java:65`
  `@Override // android.media.session.MediaController.Callback`
- `apk_analysis/jadx/sources/defpackage/k85.java:66`
  `public final void onQueueChanged(List<MediaSession.QueueItem> list) {`
- `apk_analysis/jadx/sources/defpackage/k85.java:67`
  `MediaSessionCompat.QueueItem queueItem;`
- `apk_analysis/jadx/sources/defpackage/k85.java:72`
  `for (MediaSession.QueueItem queueItem2 : list) {`
- `apk_analysis/jadx/sources/defpackage/k85.java:74`
  `MediaSession.QueueItem queueItem3 = queueItem2;`
- `apk_analysis/jadx/sources/defpackage/k85.java:75`
  `queueItem = new MediaSessionCompat.QueueItem(queueItem2, MediaDescriptionCompat.a(queueItem3.getDescription()), queueItem3.getQueueId());`
- `apk_analysis/jadx/sources/defpackage/k85.java:83`
  `@Override // android.media.session.MediaController.Callback`
- `apk_analysis/jadx/sources/defpackage/k85.java:88`
  `@Override // android.media.session.MediaController.Callback`
- `apk_analysis/jadx/sources/defpackage/k85.java:89`
  `public final void onSessionDestroyed() {`
- `apk_analysis/jadx/sources/defpackage/k85.java:93`
  `@Override // android.media.session.MediaController.Callback`
- `apk_analysis/jadx/sources/defpackage/k85.java:94`
  `public final void onSessionEvent(String str, Bundle bundle) {`
- `apk_analysis/jadx/sources/defpackage/k85.java:95`
  `MediaSessionCompat.a(bundle);`
- `apk_analysis/jadx/sources/yads/y16.java:40`
  `jSONObjectA2.put("adSessionId", str);`
- `apk_analysis/jadx/sources/yads/y16.java:42`
  `Log.e("OMIDLIB", "Error with setting ad session id", e);`
- `apk_analysis/jadx/sources/yads/w04.java:10`
  `import android.media.metrics.PlaybackSession;`
- `apk_analysis/jadx/sources/yads/w04.java:31`
  `public final PlaybackSession c;`
- `apk_analysis/jadx/sources/yads/w04.java:56`
  `public w04(Context context, PlaybackSession playbackSession) {`
- `apk_analysis/jadx/sources/yads/w04.java:58`
  `this.c = playbackSession;`
- `apk_analysis/jadx/sources/yads/f4.java:66`
  `defpackage.ah.f("AdSession is finished");`
- `apk_analysis/jadx/sources/yads/cj5.java:14`
  `oa3 oa3Var = oa3.AD_SESSION_DATA;`
- `apk_analysis/jadx/sources/yads/nj0.java:67`
  `return new AudioTrack.Builder().setAudioAttributes(audioAttributesBuild2).setAudioFormat(audioFormatBuild).setTransferMode(1).setBufferSizeInBytes(this.h).setSessionId(i).setOffloadedPlayback(this.c == 1).build();`
- `apk_analysis/jadx/sources/yads/te5.java:209`
  `JSONObject jSONObjectOptJSONObject6 = jSONObject.optJSONObject("session");`
- `apk_analysis/jadx/sources/yads/cp.java:297`
  `String strB19 = v83.b(map, oa3.AD_FEED_SESSION_DATA);`
- `apk_analysis/jadx/sources/yads/hc6.java:46`
  `case DRM_SESSION_ERROR:`
- `apk_analysis/jadx/sources/yads/x15.java:35`
  `defpackage.o2.d("MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");`
- `apk_analysis/jadx/sources/yads/s9.java:29`
  `rp6.a(jSONObject2, "adSessionType", q9Var.e);`
- `apk_analysis/jadx/sources/yads/s9.java:61`
  `nq6.a.a((WebView) this.b.get(), "startSession", str2, jSONObject2, jSONObject5, jSONObject);`
- `apk_analysis/jadx/sources/yads/tk4.java:71`
  `return fb6.DRM_SESSION_ERROR;`
- `apk_analysis/jadx/sources/yads/tk4.java:76`
  `return ((cause3 instanceof MediaCodec.CryptoException) || (cause3 instanceof gr3)) ? fb6.DRM_KEYS_EXPIRED : fb6.DRM_SESSION_ERROR;`
- `apk_analysis/jadx/sources/yads/qw4.java:3`
  `import android.media.metrics.LogSessionId;`
- `apk_analysis/jadx/sources/yads/qw4.java:8`
  `public final LogSessionId a;`
- `apk_analysis/jadx/sources/yads/qw4.java:11`
  `LogSessionId unused = LogSessionId.LOG_SESSION_ID_NONE;`
- `apk_analysis/jadx/sources/yads/qw4.java:14`
  `public qw4(LogSessionId logSessionId) {`
- `apk_analysis/jadx/sources/yads/qw4.java:15`
  `this.a = logSessionId;`
- `apk_analysis/jadx/sources/yads/vj0.java:294`
  `this.W = this.u.getAudioSessionId();`
- `apk_analysis/jadx/sources/yads/gj5.java:12`
  `return ((av3) this.a).c("SessionData");`
- `apk_analysis/jadx/sources/yads/gj5.java:16`
  `((av3) this.a).a("SessionData", str);`
- `apk_analysis/jadx/sources/yads/dp6.java:73`
  `nq6.a.a((WebView) s9Var.b.get(), "finishSession", s9Var.a);`
- `apk_analysis/jadx/sources/yads/t50.java:200`
  `((av3) this.a).a(s50.SESSION_TOKEN.a(), dj5VarY.a());`
- `apk_analysis/jadx/sources/yads/t50.java:388`
  `strC = ((av3) this.a).c(s50.SESSION_TOKEN.a());`
- `apk_analysis/jadx/sources/yads/t50.java:594`
  `strC = ((av3) this.a).c(s50.SESSION_TOKEN.a());`
- `apk_analysis/jadx/sources/yads/a26.java:56`
  `jSONObjectA.put("adSessionId", obj);`
- `apk_analysis/jadx/sources/yads/a26.java:58`
  `Log.e("OMIDLIB", "Error with setting ad session id", e);`
- `apk_analysis/jadx/sources/yads/u56.java:677`
  `return audioManager.generateAudioSessionId();`
- `apk_analysis/jadx/sources/yads/dj5.java:27`
  `return defpackage.me0.c("SessionParameters(token=", this.a, ")");`
- `apk_analysis/jadx/sources/yads/fb6.java:20`
  `DRM_SESSION_ERROR,`
- `apk_analysis/jadx/sources/yads/eq2.java:162`
  `if (audioTrack != null && audioTrack.getAudioSessionId() != 0) {`
- `apk_analysis/jadx/sources/yads/eq2.java:172`
  `this.T = audioTrack2.getAudioSessionId();`
- `apk_analysis/jadx/sources/yads/rw4.java:3`
  `import android.media.metrics.LogSessionId;`
- `apk_analysis/jadx/sources/yads/rw4.java:26`
  `public rw4(LogSessionId logSessionId) {`
- `apk_analysis/jadx/sources/yads/rw4.java:27`
  `this.a = new qw4(logSessionId);`
- `apk_analysis/jadx/sources/yads/oz3.java:1987`
  `mediaFormat.setInteger("audio-session-id", i18);`
- `apk_analysis/jadx/sources/yads/jq6.java:7`
  `defpackage.ah.f("AdSession is not started");`
- `apk_analysis/jadx/sources/yads/jq6.java:9`
  `defpackage.ah.f("AdSession is finished");`
- `apk_analysis/jadx/sources/yads/ep6.java:21`
  `Log.w("NativeBridge", "Deallocating the Native bridge as it is unusable. No further events will be generated for this session.");`
- `apk_analysis/jadx/sources/yads/rp6.java:49`
  `if (jSONObject.optString("adSessionId", "").equals(jSONObject2.optString("adSessionId", "")) && Boolean.valueOf(jSONObject.optBoolean("noOutputDevice")).equals(Boolean.valueOf(jSONObject2.optBoolean("noOutputDevice"))) && Boolean.valueOf(jSONObject.optBoolean("hasWindowFocus")).equals(Boolean.valueOf(jSONObject2.optBoolean("hasWindowFocus")))) {`
- `apk_analysis/jadx/sources/yads/mo6.java:96`
  `strC = ";(function(omidGlobal) {\n  'use strict';var n;function aa(a){var b=0;return function(){return b<a.length?{done:!1,value:a[b++]}:{done:!0}}}function p(a){var b='undefined'!=typeof Symbol&&Symbol.iterator&&a[Symbol.iterator];return b?b.call(a):{next:aa(a)}}function q(a){if(!(a instanceof Array)){a=p(a);for(var b,c=[];!(b=a.next()).done;)c.push(b.value);a=c}return a}var ba='function'==typeof Object.create?Object.create:function(a){function b(){}b.prototype=a;return new b},ca;\nif('function'==typeof Object.setPrototypeOf)ca=Object.setPrototypeOf;else{var da;a:{var ea={S:!0},fa={};try{fa.__proto__=ea;da=fa.S;break a}catch(a){}da=!1}ca=da?function(a,b){a.__proto__=b;if(a.__proto__!==b)throw new TypeError(a+' is not extensible');return a}:null}var ha=ca;\nfunction r(a,b){a.prototype=ba(b.prototype);a.prototype.constructor=a;if(ha)ha(a,b);else for(var c in b)if('prototype'!=c)if(Object. ... [truncated]`
- `apk_analysis/jadx/sources/yads/mo6.java:118`
  `defpackage.ah.f("Cannot create MediaEvents for JavaScript AdSession");`
- `apk_analysis/jadx/sources/yads/mo6.java:122`
  `defpackage.ah.f("AdSession is started");`
- `apk_analysis/jadx/sources/yads/mo6.java:127`
  `defpackage.ah.f("AdSession is finished");`
- `apk_analysis/jadx/sources/yads/mo6.java:132`
  `defpackage.ah.f("MediaEvents already exists for AdSession");`
- `apk_analysis/jadx/sources/yads/mo6.java:138`
  `defpackage.ah.f("AdEvents already exists for AdSession");`
- `apk_analysis/jadx/sources/yads/mo6.java:142`
  `defpackage.ah.f("AdSession is finished");`
- `apk_analysis/jadx/sources/yads/s50.java:97`
  `SESSION_TOKEN("SessionToken"),`
- `apk_analysis/jadx/sources/yads/kj0.java:4`
  `import android.media.metrics.LogSessionId;`
- `apk_analysis/jadx/sources/yads/kj0.java:11`
  `LogSessionId logSessionId = qw4Var.a;`
- `apk_analysis/jadx/sources/yads/kj0.java:12`
  `if (logSessionId.equals(LogSessionId.LOG_SESSION_ID_NONE)) {`
- `apk_analysis/jadx/sources/yads/kj0.java:15`
  `audioTrack.setLogSessionId(logSessionId);`
- `apk_analysis/jadx/sources/yads/aq2.java:4`
  `import android.media.metrics.LogSessionId;`
- `apk_analysis/jadx/sources/yads/aq2.java:11`
  `w04 w04Var = mediaMetricsManagerB == null ? null : new w04(context, mediaMetricsManagerB.createPlaybackSession());`
- `apk_analysis/jadx/sources/yads/aq2.java:14`
  `return new rw4(LogSessionId.LOG_SESSION_ID_NONE);`
- `apk_analysis/jadx/sources/yads/aq2.java:25`
  `return new rw4(w04Var.c.getSessionId());`
- `apk_analysis/jadx/sources/yads/pl0.java:186`
  `defpackage.o2.d("MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");`
- `apk_analysis/jadx/sources/yads/xy3.java:3`
  `import android.media.metrics.LogSessionId;`
- `apk_analysis/jadx/sources/yads/xy3.java:10`
  `LogSessionId logSessionId = qw4Var.a;`
- `apk_analysis/jadx/sources/yads/xy3.java:11`
  `if (logSessionId.equals(LogSessionId.LOG_SESSION_ID_NONE)) {`
- `apk_analysis/jadx/sources/yads/xy3.java:14`
  `ny3Var.b.setString("log-session-id", logSessionId.getStringId());`
- `apk_analysis/jadx/sources/yads/oa3.java:34`
  `AD_SESSION_DATA("Ad-SessionData"),`
- `apk_analysis/jadx/sources/yads/oa3.java:35`
  `AD_FEED_SESSION_DATA("Ad-FeedSessionData"),`
- `apk_analysis/jadx/sources/yads/bw2.java:23`
  `return defpackage.me0.c("FeedSessionData(value=", this.a, ")");`
- `apk_analysis/jadx/sources/yads/uw2.java:50`
  `a(uz4Var, "session_random", sw2Var.d0);`
- `apk_analysis/jadx/sources/yads/uw2.java:92`
  `a(uz4Var, "session-data", sw2Var.O0);`
- `apk_analysis/jadx/sources/yads/zy3.java:992`
  `sv3.d("MediaCodecRenderer", sv3.a("Failed to update the DRM session, releasing the codec instead.", e));`
- `apk_analysis/jadx/sources/yads/zy3.java:1208`
  `sv3.d("MediaCodecRenderer", "Drm session requires secure decoder for " + this.B.m + ", but no secure decoder available. Trying to proceed with " + arrayListA2 + ".");`
- `apk_analysis/jadx/sources/io/grpc/f.java:4`
  `import javax.net.ssl.SSLSession;`
- `apk_analysis/jadx/sources/io/grpc/f.java:10`
  `public static final a.b<SSLSession> c = new a.b<>("io.grpc.Grpc.TRANSPORT_ATTR_SSL_SESSION");`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/AppMetricaDefaultValues.java:19`
  `public static final boolean DEFAULT_SESSIONS_AUTO_TRACKING_ENABLED = true;`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/AppMetricaDefaultValues.java:20`
  `public static final int DEFAULT_SESSION_TIMEOUT_SECONDS = 10;`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/AppMetricaConfig.java:52`
  `public final Integer sessionTimeout;`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/AppMetricaConfig.java:53`
  `public final Boolean sessionsAutoTrackingEnabled;`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/AppMetricaConfig.java:59`
  `this.sessionTimeout = builder.d;`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/AppMetricaConfig.java:73`
  `this.sessionsAutoTrackingEnabled = builder.r;`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/AppMetricaConfig.java:106`
  `jSONObject.put("session_timeout", this.sessionTimeout);`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/AppMetricaConfig.java:136`
  `jSONObject.put("sessions_auto_tracking_enabled", this.sessionsAutoTrackingEnabled);`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/AppMetricaConfig.java:332`
  `public Builder withSessionTimeout(int i) {`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/AppMetricaConfig.java:337`
  `public Builder withSessionsAutoTrackingEnabled(boolean z) {`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/AppMetricaConfig.java:359`
  `this.sessionTimeout = appMetricaConfig.sessionTimeout;`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/AppMetricaConfig.java:373`
  `this.sessionsAutoTrackingEnabled = appMetricaConfig.sessionsAutoTrackingEnabled;`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/IReporter.java:15`
  `void pauseSession();`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/IReporter.java:45`
  `void resumeSession();`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/IModuleReporter.java:11`
  `void setSessionExtra(String str, byte[] bArr);`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/ModulesFacade.java:82`
  `public static void setSessionExtra(String str, byte[] bArr) {`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/AppMetrica.java:66`
  `public static void pauseSession(Activity activity) {`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/AppMetrica.java:142`
  `public static void resumeSession(Activity activity) {`

### Signin Endpoint — 500

- `apk_analysis/jadx/resources/AndroidManifest.xml:648`
  `android:name="com.google.android.gms.auth.api.signin.internal.SignInHubActivity"`
- `apk_analysis/jadx/resources/AndroidManifest.xml:652`
  `android:name="com.google.android.gms.auth.api.signin.RevocationBoundService"`
- `apk_analysis/jadx/resources/AndroidManifest.xml:653`
  `android:permission="com.google.android.gms.auth.api.signin.permission.REVOCATION_NOTIFICATION"`
- `apk_analysis/jadx/sources/defpackage/hx7.java:4`
  `@bd2(c = "com.warefly.checkscan.auth.domain.useCases.SignInUseCase$invoke$1", f = "SignInUseCase.kt", l = {29, 28}, m = "invokeSuspend")`
- `apk_analysis/jadx/sources/defpackage/wja.java:36`
  `if (client.requiresSignIn()) {`
- `apk_analysis/jadx/sources/defpackage/wja.java:44`
  `client.getRemoteService(null, client.getScopesForConnectionlessNonSignIn());`
- `apk_analysis/jadx/sources/defpackage/ex7.java:56`
  `StringBuilder sbB = p2.b("SignInRequestBody(phone=", str, ", allowSmsNotifications=", ", confirmType=", z);`
- `apk_analysis/jadx/sources/defpackage/hna.java:4`
  `import com.google.android.gms.auth.api.signin.GoogleSignInOptions;`
- `apk_analysis/jadx/sources/defpackage/hna.java:5`
  `import com.google.android.gms.auth.api.signin.GoogleSignInResult;`
- `apk_analysis/jadx/sources/defpackage/hna.java:6`
  `import com.google.android.gms.auth.api.signin.internal.zbe;`
- `apk_analysis/jadx/sources/defpackage/hna.java:7`
  `import com.google.android.gms.auth.api.signin.internal.zbs;`
- `apk_analysis/jadx/sources/defpackage/hna.java:16`
  `public final /* synthetic */ GoogleSignInOptions s;`
- `apk_analysis/jadx/sources/defpackage/hna.java:19`
  `public hna(GoogleApiClient googleApiClient, Context context, GoogleSignInOptions googleSignInOptions) {`
- `apk_analysis/jadx/sources/defpackage/hna.java:22`
  `this.s = googleSignInOptions;`
- `apk_analysis/jadx/sources/defpackage/hna.java:30`
  `GoogleSignInOptions googleSignInOptions = this.s;`
- `apk_analysis/jadx/sources/defpackage/hna.java:31`
  `zbsVar.zbc(new gna(this, context, googleSignInOptions), googleSignInOptions);`
- `apk_analysis/jadx/sources/defpackage/hna.java:36`
  `return new GoogleSignInResult(null, status);`
- `apk_analysis/jadx/sources/defpackage/e3.java:56`
  `@z06("api/v2.1/users/signin")`
- `apk_analysis/jadx/sources/defpackage/zw.java:4`
  `@bd2(c = "com.warefly.checkscan.auth.data.network.repositoryImpl.AuthRepositoryImpl", f = "AuthRepositoryImpl.kt", l = {34}, m = "signIn")`
- `apk_analysis/jadx/sources/defpackage/ea7.java:24`
  `map.put("UpdateSignInState", w97.class);`
- `apk_analysis/jadx/sources/defpackage/jw2.java:9`
  `public static final jw2 SignIn;`
- `apk_analysis/jadx/sources/defpackage/jw2.java:12`
  `jw2 jw2Var = new jw2("SignIn", 0);`
- `apk_analysis/jadx/sources/defpackage/jw2.java:13`
  `SignIn = jw2Var;`
- `apk_analysis/jadx/sources/defpackage/bja.java:11`
  `import com.google.android.gms.signin.zae;`
- `apk_analysis/jadx/sources/defpackage/gna.java:4`
  `import com.google.android.gms.auth.api.signin.GoogleSignInAccount;`
- `apk_analysis/jadx/sources/defpackage/gna.java:5`
  `import com.google.android.gms.auth.api.signin.GoogleSignInOptions;`
- `apk_analysis/jadx/sources/defpackage/gna.java:6`
  `import com.google.android.gms.auth.api.signin.GoogleSignInResult;`
- `apk_analysis/jadx/sources/defpackage/gna.java:7`
  `import com.google.android.gms.auth.api.signin.internal.zba;`
- `apk_analysis/jadx/sources/defpackage/gna.java:8`
  `import com.google.android.gms.auth.api.signin.internal.zbn;`
- `apk_analysis/jadx/sources/defpackage/gna.java:14`
  `public final /* synthetic */ GoogleSignInOptions b;`
- `apk_analysis/jadx/sources/defpackage/gna.java:17`
  `public gna(hna hnaVar, Context context, GoogleSignInOptions googleSignInOptions) {`
- `apk_analysis/jadx/sources/defpackage/gna.java:19`
  `this.b = googleSignInOptions;`
- `apk_analysis/jadx/sources/defpackage/gna.java:23`
  `@Override // com.google.android.gms.auth.api.signin.internal.zba, com.google.android.gms.auth.api.signin.internal.zbr`
- `apk_analysis/jadx/sources/defpackage/gna.java:24`
  `public final void zbb(GoogleSignInAccount googleSignInAccount, Status status) {`
- `apk_analysis/jadx/sources/defpackage/gna.java:25`
  `if (googleSignInAccount != null) {`
- `apk_analysis/jadx/sources/defpackage/gna.java:26`
  `zbn.zba(this.a).zbc(this.b, googleSignInAccount);`
- `apk_analysis/jadx/sources/defpackage/gna.java:28`
  `this.l.setResult(new GoogleSignInResult(googleSignInAccount, status));`
- `apk_analysis/jadx/sources/defpackage/xja.java:62`
  `Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());`
- `apk_analysis/jadx/sources/defpackage/jna.java:3`
  `import com.google.android.gms.auth.api.signin.internal.zbe;`
- `apk_analysis/jadx/sources/defpackage/jna.java:4`
  `import com.google.android.gms.auth.api.signin.internal.zbs;`
- `apk_analysis/jadx/sources/defpackage/sia.java:4`
  `import com.google.android.gms.auth.api.signin.GoogleSignInAccount;`
- `apk_analysis/jadx/sources/defpackage/sia.java:14`
  `Parcelable.Creator<GoogleSignInAccount> creator = GoogleSignInAccount.CREATOR;`
- `apk_analysis/jadx/sources/defpackage/dja.java:9`
  `import com.google.android.gms.signin.internal.zak;`
- `apk_analysis/jadx/sources/defpackage/na7.java:11`
  `UpdateSignInState,`
- `apk_analysis/jadx/sources/defpackage/ija.java:3`
  `import com.google.android.gms.auth.api.signin.internal.Storage;`
- `apk_analysis/jadx/sources/defpackage/lna.java:3`
  `import com.google.android.gms.auth.api.signin.internal.zbe;`
- `apk_analysis/jadx/sources/defpackage/lna.java:4`
  `import com.google.android.gms.auth.api.signin.internal.zbs;`
- `apk_analysis/jadx/sources/defpackage/a59.java:24`
  `boolean zD = ta8.D(b37Var2.a.b(), "api/v2.1/users/signin", false);`
- `apk_analysis/jadx/sources/defpackage/fja.java:8`
  `import com.google.android.gms.signin.zae;`
- `apk_analysis/jadx/sources/defpackage/nna.java:6`
  `import com.google.android.gms.auth.api.signin.internal.SignInHubActivity;`
- `apk_analysis/jadx/sources/defpackage/nna.java:7`
  `import com.google.android.gms.auth.api.signin.internal.zbc;`
- `apk_analysis/jadx/sources/defpackage/nna.java:12`
  `public final /* synthetic */ SignInHubActivity a;`
- `apk_analysis/jadx/sources/defpackage/nna.java:21`
  `SignInHubActivity signInHubActivity = this.a;`
- `apk_analysis/jadx/sources/defpackage/nna.java:22`
  `signInHubActivity.setResult(signInHubActivity.f, signInHubActivity.g);`
- `apk_analysis/jadx/sources/defpackage/nna.java:23`
  `signInHubActivity.finish();`
- `apk_analysis/jadx/sources/defpackage/cv.java:10`
  `@z06("api/v2.1/users/signin/confirm/v2")`
- `apk_analysis/jadx/sources/defpackage/cv.java:13`
  `@z06("api/v2.1/users/signin/v2")`
- `apk_analysis/jadx/sources/defpackage/cna.java:3`
  `import com.google.android.gms.auth.api.identity.BeginSignInRequest;`
- `apk_analysis/jadx/sources/defpackage/cna.java:38`
  `((zbv) zbauVar.getService()).zbc(new xma((zbat) obj3, (TaskCompletionSource) obj2), (BeginSignInRequest) Preconditions.checkNotNull((BeginSignInRequest) abstractSafeParcelable), zbba.zba(zbauVar.getContext()));`
- `apk_analysis/jadx/sources/defpackage/eja.java:4`
  `import com.google.android.gms.signin.internal.zac;`
- `apk_analysis/jadx/sources/defpackage/eja.java:5`
  `import com.google.android.gms.signin.internal.zak;`
- `apk_analysis/jadx/sources/defpackage/eja.java:16`
  `@Override // com.google.android.gms.signin.internal.zac, com.google.android.gms.signin.internal.zae`
- `apk_analysis/jadx/sources/defpackage/bx7.java:6`
  `@bd2(c = "com.warefly.checkscan.auth.domain.useCases.SignInConfirmInteractor$invoke$1", f = "SignInConfirmInteractor.kt", l = {28, 48, 56}, m = "invokeSuspend")`
- `apk_analysis/jadx/sources/defpackage/bx7.java:17`
  `@bd2(c = "com.warefly.checkscan.auth.domain.useCases.SignInConfirmInteractor$invoke$1$sideEffects$1", f = "SignInConfirmInteractor.kt", l = {42}, m = "invokeSuspend")`
- `apk_analysis/jadx/sources/defpackage/bx7.java:63`
  `@bd2(c = "com.warefly.checkscan.auth.domain.useCases.SignInConfirmInteractor$invoke$1$sideEffects$2", f = "SignInConfirmInteractor.kt", l = {43}, m = "invokeSuspend")`
- `apk_analysis/jadx/sources/defpackage/bx7.java:106`
  `@bd2(c = "com.warefly.checkscan.auth.domain.useCases.SignInConfirmInteractor$invoke$1$sideEffects$3", f = "SignInConfirmInteractor.kt", l = {44}, m = "invokeSuspend")`
- `apk_analysis/jadx/sources/defpackage/ev.java:36`
  `return hg.d(this.b, "SignInEmail(email=", this.a, ", codeLength=", ")");`
- `apk_analysis/jadx/sources/defpackage/ev.java:68`
  `return n2.d("SignInUserCall(callPhone=", this.a, ", emailMask=", this.b, ")");`
- `apk_analysis/jadx/sources/defpackage/ax.java:4`
  `@bd2(c = "com.warefly.checkscan.auth.data.network.repositoryImpl.AuthRepositoryImpl", f = "AuthRepositoryImpl.kt", l = {77}, m = "signInConfirm")`
- `apk_analysis/jadx/sources/defpackage/dx7.java:44`
  `StringBuilder sb = new StringBuilder("SignInConfirmRequestBody(phone=");`
- `apk_analysis/jadx/sources/defpackage/ina.java:3`
  `import com.google.android.gms.auth.api.signin.internal.zba;`
- `apk_analysis/jadx/sources/defpackage/ina.java:14`
  `@Override // com.google.android.gms.auth.api.signin.internal.zba, com.google.android.gms.auth.api.signin.internal.zbr`
- `apk_analysis/jadx/sources/defpackage/dna.java:5`
  `import com.google.android.gms.auth.api.signin.GoogleSignInOptions;`
- `apk_analysis/jadx/sources/defpackage/dna.java:6`
  `import com.google.android.gms.auth.api.signin.internal.zbe;`
- `apk_analysis/jadx/sources/defpackage/dna.java:17`
  `return new zbe(context, looper, clientSettings, (GoogleSignInOptions) obj, connectionCallbacks, onConnectionFailedListener);`
- `apk_analysis/jadx/sources/defpackage/dna.java:22`
  `GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions) obj;`
- `apk_analysis/jadx/sources/defpackage/dna.java:23`
  `return googleSignInOptions == null ? Collections.EMPTY_LIST : googleSignInOptions.getScopes();`
- `apk_analysis/jadx/sources/defpackage/xma.java:3`
  `import com.google.android.gms.auth.api.identity.BeginSignInResult;`
- `apk_analysis/jadx/sources/defpackage/xma.java:19`
  `public final void zbb(Status status, BeginSignInResult beginSignInResult) {`
- `apk_analysis/jadx/sources/defpackage/xma.java:20`
  `TaskUtil.setResultOrApiException(status, beginSignInResult, (TaskCompletionSource<BeginSignInResult>) this.a);`
- `apk_analysis/jadx/sources/defpackage/kna.java:3`
  `import com.google.android.gms.auth.api.signin.internal.zba;`
- `apk_analysis/jadx/sources/defpackage/kna.java:14`
  `@Override // com.google.android.gms.auth.api.signin.internal.zba, com.google.android.gms.auth.api.signin.internal.zbr`
- `apk_analysis/jadx/sources/defpackage/ria.java:8`
  `import com.google.android.gms.signin.internal.SignInClientImpl;`
- `apk_analysis/jadx/sources/defpackage/ria.java:14`
  `return new SignInClientImpl(context, looper, true, clientSettings, SignInClientImpl.createBundleFromClientSettings(clientSettings), connectionCallbacks, onConnectionFailedListener);`
- `apk_analysis/jadx/sources/defpackage/fx7.java:4`
  `@bd2(c = "com.warefly.checkscan.auth.domain.useCases.SignInRetryUseCase$invoke$1", f = "SignInRetryUseCase.kt", l = {19, 22, 21}, m = "invokeSuspend")`
- `apk_analysis/jadx/sources/defpackage/mma.java:3`
  `import com.google.android.gms.auth.api.signin.GoogleSignInResult;`
- `apk_analysis/jadx/sources/defpackage/mma.java:11`
  `return ((GoogleSignInResult) result).getSignInAccount();`
- `apk_analysis/jadx/sources/defpackage/lka.java:8`
  `import com.google.android.gms.signin.internal.zak;`
- `apk_analysis/jadx/sources/defpackage/lka.java:31`
  `Log.wtf("SignInCoordinator", "Sign-in succeeded with resolve account failure: ".concat(strValueOf), new Exception());`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/impl/A3.java:5`
  `import android.content.pm.SigningInfo;`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/impl/A3.java:50`
  `SigningInfo signingInfo = safePackageManager.getPackageInfo(this.a, this.c, 134217728).signingInfo;`
- `apk_analysis/jadx/sources/io/appmetrica/analytics/impl/A3.java:51`
  `apkContentsSigners = signingInfo.hasMultipleSigners() ? signingInfo.getApkContentsSigners() : signingInfo.getSigningCertificateHistory();`
- `apk_analysis/jadx/sources/androidx/emoji2/text/DefaultEmojiCompatConfig.java:50`
  `return new FontRequest(str, str2, DEFAULT_EMOJI_QUERY, convertToByteArray(this.mHelper.getSigningSignatures(packageManager, str2)));`
- `apk_analysis/jadx/sources/androidx/emoji2/text/DefaultEmojiCompatConfig.java:98`
  `public Signature[] getSigningSignatures(PackageManager packageManager, String str) {`
- `apk_analysis/jadx/sources/androidx/emoji2/text/DefaultEmojiCompatConfig.java:121`
  `public Signature[] getSigningSignatures(PackageManager packageManager, String str) {`
- `apk_analysis/jadx/sources/androidx/constraintlayout/widget/ConstraintLayout.java:845`
  `setDesignInformation(0, resourceName, Integer.valueOf(childAt.getId()));`
- `apk_analysis/jadx/sources/androidx/constraintlayout/widget/ConstraintLayout.java:1218`
  `public Object getDesignInformation(int i, Object obj) {`
- `apk_analysis/jadx/sources/androidx/constraintlayout/widget/ConstraintLayout.java:1499`
  `public void setDesignInformation(int i, Object obj, Object obj2) {`
- `apk_analysis/jadx/sources/androidx/constraintlayout/widget/ConstraintHelper.java:116`
  `Object designInformation = constraintLayout.getDesignInformation(0, str);`
- `apk_analysis/jadx/sources/androidx/constraintlayout/widget/ConstraintHelper.java:117`
  `if (designInformation instanceof Integer) {`
- `apk_analysis/jadx/sources/androidx/constraintlayout/widget/ConstraintHelper.java:118`
  `iFindId = ((Integer) designInformation).intValue();`
- `apk_analysis/jadx/sources/androidx/constraintlayout/widget/ConstraintSet.java:1232`
  `Object designInformation;`
- `apk_analysis/jadx/sources/androidx/constraintlayout/widget/ConstraintSet.java:1248`
  `if (iIntValue == 0 && view.isInEditMode() && (view.getParent() instanceof ConstraintLayout) && (designInformation = ((ConstraintLayout) view.getParent()).getDesignInformation(0, strTrim)) != null && (designInformation instanceof Integer)) {`
- `apk_analysis/jadx/sources/androidx/constraintlayout/widget/ConstraintSet.java:1249`
  `iIntValue = ((Integer) designInformation).intValue();`
- `apk_analysis/jadx/sources/androidx/core/content/pm/PackageInfoCompat.java:6`
  `import android.content.pm.SigningInfo;`
- `apk_analysis/jadx/sources/androidx/core/content/pm/PackageInfoCompat.java:29`
  `public static Signature[] getApkContentsSigners(SigningInfo signingInfo) {`
- `apk_analysis/jadx/sources/androidx/core/content/pm/PackageInfoCompat.java:30`
  `return signingInfo.getApkContentsSigners();`
- `apk_analysis/jadx/sources/androidx/core/content/pm/PackageInfoCompat.java:37`
  `public static Signature[] getSigningCertificateHistory(SigningInfo signingInfo) {`
- `apk_analysis/jadx/sources/androidx/core/content/pm/PackageInfoCompat.java:38`
  `return signingInfo.getSigningCertificateHistory();`
- `apk_analysis/jadx/sources/androidx/core/content/pm/PackageInfoCompat.java:41`
  `public static boolean hasMultipleSigners(SigningInfo signingInfo) {`
- `apk_analysis/jadx/sources/androidx/core/content/pm/PackageInfoCompat.java:42`
  `return signingInfo.hasMultipleSigners();`
- `apk_analysis/jadx/sources/androidx/core/content/pm/PackageInfoCompat.java:45`
  `public static boolean hasSigningCertificate(PackageManager packageManager, String str, byte[] bArr, int i) {`
- `apk_analysis/jadx/sources/androidx/core/content/pm/PackageInfoCompat.java:46`
  `return packageManager.hasSigningCertificate(str, bArr, i);`
- `apk_analysis/jadx/sources/androidx/core/content/pm/PackageInfoCompat.java:78`
  `SigningInfo signingInfo = packageManager.getPackageInfo(str, 134217728).signingInfo;`
- `apk_analysis/jadx/sources/androidx/core/content/pm/PackageInfoCompat.java:79`
  `apkContentsSigners = Api28Impl.hasMultipleSigners(signingInfo) ? Api28Impl.getApkContentsSigners(signingInfo) : Api28Impl.getSigningCertificateHistory(signingInfo);`
- `apk_analysis/jadx/sources/androidx/core/content/pm/PackageInfoCompat.java:111`
  `if (!Api28Impl.hasSigningCertificate(packageManager, str, bArr3, map.get(bArr3).intValue())) {`
- `apk_analysis/jadx/sources/androidx/browser/trusted/PackageIdentityUtils.java:6`
  `import android.content.pm.SigningInfo;`
- `apk_analysis/jadx/sources/androidx/browser/trusted/PackageIdentityUtils.java:24`
  `SigningInfo signingInfo = packageInfo.signingInfo;`
- `apk_analysis/jadx/sources/androidx/browser/trusted/PackageIdentityUtils.java:25`
  `if (!signingInfo.hasMultipleSigners()) {`
- `apk_analysis/jadx/sources/androidx/browser/trusted/PackageIdentityUtils.java:26`
  `arrayList.add(PackageIdentityUtils.getCertificateSHA256Fingerprint(signingInfo.getSigningCertificateHistory()[0]));`
- `apk_analysis/jadx/sources/androidx/browser/trusted/PackageIdentityUtils.java:29`
  `for (Signature signature : signingInfo.getApkContentsSigners()) {`
- `apk_analysis/jadx/sources/androidx/browser/trusted/PackageIdentityUtils.java:39`
  `return fingerprintsForPackage.size() == 1 ? packageManager.hasSigningCertificate(str, tokenContents.getFingerprint(0), 1) : tokenContents.equals(TokenContents.create(str, fingerprintsForPackage));`
- `apk_analysis/jadx/sources/org/conscrypt/CryptoUpcalls.java:156`
  `logger.log(Level.WARNING, "Exception while signing message with " + privateKey.getAlgorithm() + " private key:", (Throwable) e3);`
- `apk_analysis/jadx/sources/org/conscrypt/OpenSSLSignature.java:31`
  `private boolean signing;`
- `apk_analysis/jadx/sources/org/conscrypt/OpenSSLSignature.java:285`
  `this.signing = z;`
- `apk_analysis/jadx/sources/org/conscrypt/OpenSSLSignature.java:296`
  `boolean z = this.signing;`
- `apk_analysis/jadx/sources/org/conscrypt/OpenSSLSignature.java:299`
  `jEVP_DigestVerifyInit = NativeCrypto.EVP_DigestSignInit(evp_md_ctx, j, this.key.getNativeRef());`
- `apk_analysis/jadx/sources/org/conscrypt/OpenSSLSignature.java:378`
  `if (this.signing) {`
- `apk_analysis/jadx/sources/org/conscrypt/OpenSSLSignature.java:424`
  `if (this.signing) {`
- `apk_analysis/jadx/sources/org/conscrypt/NativeCrypto.java:257`
  `public static native long EVP_DigestSignInit(NativeRef.EVP_MD_CTX evp_md_ctx, long j, NativeRef.EVP_PKEY evp_pkey);`
- `apk_analysis/jadx/sources/org/conscrypt/OpenSslSignatureEdDsa.java:34`
  `NativeCrypto.EVP_DigestSignInit(evp_md_ctx, 0L, this.key.getNativeRef());`
- `apk_analysis/jadx/sources/org/conscrypt/OpenSslSignatureMlDsa.java:61`
  `NativeCrypto.EVP_DigestSignInit(evp_md_ctx, 0L, this.key.getNativeRef());`
- `apk_analysis/jadx/sources/com/tapjoy/TJAppInfo.java:12`
  `import android.content.pm.SigningInfo;`
- `apk_analysis/jadx/sources/com/tapjoy/TJAppInfo.java:54`
  `SigningInfo signingInfo;`
- `apk_analysis/jadx/sources/com/tapjoy/TJAppInfo.java:73`
  `if (packageInfo == null || (signingInfo = packageInfo.signingInfo) == null) {`
- `apk_analysis/jadx/sources/com/tapjoy/TJAppInfo.java:76`
  `apkContentsSigners = signingInfo.getApkContentsSigners();`
- `apk_analysis/jadx/sources/com/google/firebase/auth/GetTokenResult.java:39`
  `public String getSignInProvider() {`
- `apk_analysis/jadx/sources/com/google/firebase/auth/GetTokenResult.java:47`
  `public String getSignInSecondFactor() {`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/zae.java:1`
  `package com.google.android.gms.signin;`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/zae.java:8`
  `void zaa(com.google.android.gms.signin.internal.zae zaeVar);`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/SignInOptions.java:1`
  `package com.google.android.gms.signin;`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/SignInOptions.java:7`
  `public final class SignInOptions implements Api.ApiOptions.Optional {`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/SignInOptions.java:8`
  `public static final SignInOptions zaa = new SignInOptions();`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/SignInOptions.java:14`
  `return (obj instanceof SignInOptions) && Objects.equal(null, null) && Objects.equal(null, null) && Objects.equal(null, null) && Objects.equal(null, null) && Objects.equal(null, null);`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/zad.java:1`
  `package com.google.android.gms.signin;`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/zad.java:29`
  `zag = new Api("SignIn.API", riaVar, clientKey);`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/zad.java:30`
  `zah = new Api("SignIn.INTERNAL_API", ojaVar, clientKey2);`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/zac.java:1`
  `package com.google.android.gms.signin;`
- `apk_analysis/jadx/sources/com/google/android/gms/dynamic/RemoteCreator.java:23`
  `T remoteCreator = getRemoteCreator((IBinder) remoteContext.getClassLoader().loadClass("com.google.android.gms.common.ui.SignInButtonCreatorImpl").newInstance());`
- `apk_analysis/jadx/sources/com/google/android/gms/common/GoogleSignatureVerifier.java:8`
  `import android.content.pm.SigningInfo;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/GoogleSignatureVerifier.java:59`
  `SigningInfo signingInfo = packageInfo.signingInfo;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/GoogleSignatureVerifier.java:60`
  `if (signingInfo == null || signingInfo.hasMultipleSigners() || signingInfo.getSigningCertificateHistory() == null) {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/GoogleSignatureVerifier.java:65`
  `for (Signature signature : signingInfo.getSigningCertificateHistory()) {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/SignInButton.java:17`
  `public final class SignInButton extends FrameLayout implements View.OnClickListener {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/SignInButton.java:37`
  `public SignInButton(Context context, AttributeSet attributeSet, int i) {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/SignInButton.java:40`
  `TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, com.google.android.gms.base.R.styleable.SignInButton, 0, 0);`
- `apk_analysis/jadx/sources/com/google/android/gms/common/SignInButton.java:42`
  `this.b = typedArrayObtainStyledAttributes.getInt(com.google.android.gms.base.R.styleable.SignInButton_buttonSize, 0);`
- `apk_analysis/jadx/sources/com/google/android/gms/common/SignInButton.java:43`
  `this.c = typedArrayObtainStyledAttributes.getInt(com.google.android.gms.base.R.styleable.SignInButton_colorScheme, 2);`
- `apk_analysis/jadx/sources/com/google/android/gms/common/SignInButton.java:100`
  `Log.w("SignInButton", "Sign in button not found, using placeholder instead");`
- `apk_analysis/jadx/sources/com/google/android/gms/common/SignInButton.java:112`
  `public SignInButton(Context context, AttributeSet attributeSet) {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/SignInButton.java:116`
  `public SignInButton(Context context) {`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:16`
  `public static int common_google_signin_btn_text_dark = 0x7f06006c;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:17`
  `public static int common_google_signin_btn_text_dark_default = 0x7f06006d;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:18`
  `public static int common_google_signin_btn_text_dark_disabled = 0x7f06006e;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:19`
  `public static int common_google_signin_btn_text_dark_focused = 0x7f06006f;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:20`
  `public static int common_google_signin_btn_text_dark_pressed = 0x7f060070;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:21`
  `public static int common_google_signin_btn_text_light = 0x7f060071;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:22`
  `public static int common_google_signin_btn_text_light_default = 0x7f060072;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:23`
  `public static int common_google_signin_btn_text_light_disabled = 0x7f060073;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:24`
  `public static int common_google_signin_btn_text_light_focused = 0x7f060074;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:25`
  `public static int common_google_signin_btn_text_light_pressed = 0x7f060075;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:26`
  `public static int common_google_signin_btn_tint = 0x7f060076;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:31`
  `public static int common_google_signin_btn_icon_dark = 0x7f08015b;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:32`
  `public static int common_google_signin_btn_icon_dark_focused = 0x7f08015c;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:33`
  `public static int common_google_signin_btn_icon_dark_normal = 0x7f08015d;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:34`
  `public static int common_google_signin_btn_icon_dark_normal_background = 0x7f08015e;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:35`
  `public static int common_google_signin_btn_icon_disabled = 0x7f08015f;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:36`
  `public static int common_google_signin_btn_icon_light = 0x7f080160;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:37`
  `public static int common_google_signin_btn_icon_light_focused = 0x7f080161;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:38`
  `public static int common_google_signin_btn_icon_light_normal = 0x7f080162;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:39`
  `public static int common_google_signin_btn_icon_light_normal_background = 0x7f080163;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:40`
  `public static int common_google_signin_btn_text_dark = 0x7f080164;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:41`
  `public static int common_google_signin_btn_text_dark_focused = 0x7f080165;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:42`
  `public static int common_google_signin_btn_text_dark_normal = 0x7f080166;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:43`
  `public static int common_google_signin_btn_text_dark_normal_background = 0x7f080167;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:44`
  `public static int common_google_signin_btn_text_disabled = 0x7f080168;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:45`
  `public static int common_google_signin_btn_text_light = 0x7f080169;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:46`
  `public static int common_google_signin_btn_text_light_focused = 0x7f08016a;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:47`
  `public static int common_google_signin_btn_text_light_normal = 0x7f08016b;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:48`
  `public static int common_google_signin_btn_text_light_normal_background = 0x7f08016c;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:74`
  `public static int common_google_play_services_signin_required_text = 0x7f140144;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:75`
  `public static int common_google_play_services_signin_required_title = 0x7f140145;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:87`
  `public static int common_signin_button_text = 0x7f140152;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:88`
  `public static int common_signin_button_text_long = 0x7f140153;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:95`
  `public static int SignInButton_buttonSize = 0x00000000;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:96`
  `public static int SignInButton_colorScheme = 0x00000001;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:97`
  `public static int SignInButton_scopeUris = 0x00000002;`
- `apk_analysis/jadx/sources/com/google/android/gms/base/R.java:99`
  `public static int[] SignInButton = {com.warefly.checkscan.R.attr.buttonSize, com.warefly.checkscan.R.attr.colorScheme, com.warefly.checkscan.R.attr.scopeUris};`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:1`
  `package com.google.android.gms.signin.internal;`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:11`
  `import com.google.android.gms.auth.api.signin.internal.Storage;`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:22`
  `public class SignInClientImpl extends GmsClient<zaf> implements com.google.android.gms.signin.zae {`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:29`
  `public SignInClientImpl(Context context, Looper looper, boolean z, ClientSettings clientSettings, Bundle bundle, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:41`
  `bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", clientSettings.getAccount());`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:45`
  `bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", false);`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:46`
  `bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", false);`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:47`
  `bundle.putString("com.google.android.gms.signin.internal.serverClientId", null);`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:48`
  `bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:49`
  `bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", false);`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:50`
  `bundle.putString("com.google.android.gms.signin.internal.hostedDomain", null);`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:51`
  `bundle.putString("com.google.android.gms.signin.internal.logSessionId", null);`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:52`
  `bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", false);`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:61`
  `IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:62`
  `return iInterfaceQueryLocalInterface instanceof zaf ? (zaf) iInterfaceQueryLocalInterface : new zaf(iBinder, "com.google.android.gms.signin.internal.ISignInService");`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:71`
  `bundle.putString("com.google.android.gms.signin.internal.realClientPackageName", clientSettings.getRealClientPackageName());`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:83`
  `return "com.google.android.gms.signin.internal.ISignInService";`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:88`
  `return "com.google.android.gms.signin.service.START";`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:92`
  `public final boolean requiresSignIn() {`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:97`
  `@Override // com.google.android.gms.signin.zae`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:99`
  `Preconditions.checkNotNull(zaeVar, "Expecting a valid ISignInCallbacks");`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:102`
  `((zaf) getService()).zag(new zai(1, new zay(accountOrDefault, ((Integer) Preconditions.checkNotNull(this.e)).intValue(), "<<default account>>".equals(accountOrDefault.name) ? Storage.getInstance(getContext()).getSavedDefaultGoogleSignInAccount() : null)), zaeVar);`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:104`
  `Log.w("SignInClientImpl", "Remote service probably died when signIn is called");`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:108`
  `Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e);`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:114`
  `@Override // com.google.android.gms.signin.zae`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:119`
  `Log.w("SignInClientImpl", "Remote service probably died when saveDefaultAccount is called");`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:124`
  `@Override // com.google.android.gms.signin.zae`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:129`
  `Log.w("SignInClientImpl", "Remote service probably died when clearAccountFromSessionStore is called");`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/SignInClientImpl.java:133`
  `@Override // com.google.android.gms.signin.zae`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/zae.java:1`
  `package com.google.android.gms.signin.internal;`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/zaa.java:1`
  `package com.google.android.gms.signin.internal;`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/zai.java:1`
  `package com.google.android.gms.signin.internal;`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/zal.java:1`
  `package com.google.android.gms.signin.internal;`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/zah.java:1`
  `package com.google.android.gms.signin.internal;`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/zad.java:1`
  `package com.google.android.gms.signin.internal;`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/zad.java:8`
  `super("com.google.android.gms.signin.internal.ISignInCallbacks");`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/zaj.java:1`
  `package com.google.android.gms.signin.internal;`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/zaf.java:1`
  `package com.google.android.gms.signin.internal;`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/zab.java:1`
  `package com.google.android.gms.signin.internal;`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/zag.java:1`
  `package com.google.android.gms.signin.internal;`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/zac.java:1`
  `package com.google.android.gms.signin.internal;`
- `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/zak.java:1`
  `package com.google.android.gms.signin.internal;`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbl.java:4`
  `import com.google.android.gms.auth.api.identity.BeginSignInResult;`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbl.java:9`
  `void zbb(Status status, BeginSignInResult beginSignInResult);`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbp.java:10`
  `super("com.google.android.gms.auth.api.identity.internal.IGetSignInIntentCallback");`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbat.java:8`
  `import com.google.android.gms.auth.api.identity.BeginSignInRequest;`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbat.java:9`
  `import com.google.android.gms.auth.api.identity.BeginSignInResult;`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbat.java:11`
  `import com.google.android.gms.auth.api.identity.GetSignInIntentRequest;`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbat.java:12`
  `import com.google.android.gms.auth.api.identity.SignInClient;`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbat.java:13`
  `import com.google.android.gms.auth.api.identity.SignInCredential;`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbat.java:37`
  `public final class zbat extends GoogleApi implements SignInClient {`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbat.java:38`
  `public static final Api b = new Api("Auth.Api.Identity.SignIn.API", new wma(), new Api.ClientKey());`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbat.java:46`
  `@Override // com.google.android.gms.auth.api.identity.SignInClient`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbat.java:47`
  `public final Task<BeginSignInResult> beginSignIn(BeginSignInRequest beginSignInRequest) {`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbat.java:48`
  `Preconditions.checkNotNull(beginSignInRequest);`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbat.java:49`
  `BeginSignInRequest.Builder builderZba = BeginSignInRequest.zba(beginSignInRequest);`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbat.java:54`
  `@Override // com.google.android.gms.auth.api.identity.SignInClient`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbat.java:73`
  `@Override // com.google.android.gms.auth.api.identity.SignInClient`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbat.java:79`
  `@Override // com.google.android.gms.auth.api.identity.SignInClient`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbat.java:80`
  `public final SignInCredential getSignInCredentialFromIntent(Intent intent) throws ApiException {`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbat.java:91`
  `SignInCredential signInCredential = (SignInCredential) SafeParcelableSerializer.deserializeFromIntentExtra(intent, "sign_in_credential", SignInCredential.CREATOR);`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbat.java:92`
  `if (signInCredential != null) {`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbat.java:93`
  `return signInCredential;`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbat.java:98`
  `@Override // com.google.android.gms.auth.api.identity.SignInClient`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbat.java:99`
  `public final Task<PendingIntent> getSignInIntent(GetSignInIntentRequest getSignInIntentRequest) {`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbat.java:100`
  `Preconditions.checkNotNull(getSignInIntentRequest);`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbat.java:101`
  `GetSignInIntentRequest.Builder builderZba = GetSignInIntentRequest.zba(getSignInIntentRequest);`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbat.java:103`
  `final GetSignInIntentRequest getSignInIntentRequestBuild = builderZba.build();`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbat.java:109`
  `((com.google.android.gms.internal.p000authapi.zbv) zbauVar.getService()).zbe(new zma(this.b, (TaskCompletionSource) obj2), (GetSignInIntentRequest) Preconditions.checkNotNull(getSignInIntentRequestBuild), zbba.zba(zbauVar.getContext()));`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbat.java:114`
  `@Override // com.google.android.gms.auth.api.identity.SignInClient`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbat.java:116`
  `getApplicationContext().getSharedPreferences("com.google.android.gms.signin", 0).edit().clear().apply();`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbv.java:5`
  `import com.google.android.gms.auth.api.identity.BeginSignInRequest;`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbv.java:7`
  `import com.google.android.gms.auth.api.identity.GetSignInIntentRequest;`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbv.java:13`
  `public final void zbc(zbl zblVar, BeginSignInRequest beginSignInRequest, ApiMetadata apiMetadata) {`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbv.java:16`
  `zbc.zbb(parcelF, beginSignInRequest);`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbv.java:29`
  `public final void zbe(zbq zbqVar, GetSignInIntentRequest getSignInIntentRequest, ApiMetadata apiMetadata) {`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbv.java:32`
  `zbc.zbb(parcelF, getSignInIntentRequest);`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbk.java:4`
  `import com.google.android.gms.auth.api.identity.BeginSignInResult;`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbk.java:10`
  `super("com.google.android.gms.auth.api.identity.internal.IBeginSignInCallback");`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbk.java:19`
  `BeginSignInResult beginSignInResult = (BeginSignInResult) zbc.zba(parcel, BeginSignInResult.CREATOR);`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbk.java:21`
  `zbb(status, beginSignInResult);`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbau.java:29`
  `IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.identity.internal.ISignInService");`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbau.java:30`
  `return iInterfaceQueryLocalInterface instanceof zbv ? (zbv) iInterfaceQueryLocalInterface : new zbv(iBinder, "com.google.android.gms.auth.api.identity.internal.ISignInService");`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbau.java:50`
  `return "com.google.android.gms.auth.api.identity.internal.ISignInService";`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbau.java:55`
  `return "com.google.android.gms.auth.api.identity.service.signin.START";`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/auth/zzby.java:17`
  `NEEDS_POST_SIGN_IN_FLOW("PostSignInFlowRequired"),`
- `apk_analysis/jadx/sources/com/google/android/gms/internal/auth/zzbe.java:55`
  `public final boolean requiresSignIn() {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/GoogleApiClient.java:16`
  `import com.google.android.gms.common.api.internal.SignInConnectionListener;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/GoogleApiClient.java:24`
  `import com.google.android.gms.signin.SignInOptions;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/GoogleApiClient.java:25`
  `import com.google.android.gms.signin.zad;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/GoogleApiClient.java:137`
  `public boolean maybeSignIn(SignInConnectionListener signInConnectionListener) {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/GoogleApiClient.java:272`
  `if (clientBuildClient.providesSignIn()) {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/GoogleApiClient.java:285`
  `ah.f(kh.c(new StringBuilder(String.valueOf(strZad3).length() + 82), "With using ", strZad3, ", GamesOptions can only be specified within GoogleSignInOptions.Builder"));`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/GoogleApiClient.java:288`
  `Preconditions.checkState(this.a == null, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead", api.zad());`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/GoogleApiClient.java:289`
  `Preconditions.checkState(this.b.equals(this.c), "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead.", api.zad());`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/GoogleApiClient.java:340`
  `SignInOptions signInOptions = SignInOptions.zaa;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/GoogleApiClient.java:344`
  `signInOptions = (SignInOptions) arrayMap.get(api);`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/GoogleApiClient.java:350`
  `return new ClientSettings(account, this.b, this.h, i, view, this.f, str, signInOptions, false);`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/GoogleApi.java:11`
  `import com.google.android.gms.auth.api.signin.GoogleSignInAccount;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/GoogleApi.java:149`
  `GoogleSignInAccount googleSignInAccount;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/GoogleApi.java:150`
  `GoogleSignInAccount googleSignInAccount2;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/GoogleApi.java:153`
  `boolean z = apiOptions instanceof Api.ApiOptions.HasGoogleSignInAccountOptions;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/GoogleApi.java:154`
  `if (!z || (googleSignInAccount2 = ((Api.ApiOptions.HasGoogleSignInAccountOptions) apiOptions).getGoogleSignInAccount()) == null) {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/GoogleApi.java:157`
  `account = googleSignInAccount2.getAccount();`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/GoogleApi.java:160`
  `Set<Scope> requestedScopes = (!z || (googleSignInAccount = ((Api.ApiOptions.HasGoogleSignInAccountOptions) apiOptions).getGoogleSignInAccount()) == null) ? Collections.EMPTY_SET : googleSignInAccount.getRequestedScopes();`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/Api.java:8`
  `import com.google.android.gms.auth.api.signin.GoogleSignInAccount;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/Api.java:42`
  `public interface HasGoogleSignInAccountOptions extends HasOptions {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/Api.java:43`
  `GoogleSignInAccount getGoogleSignInAccount();`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/Api.java:97`
  `Set<Scope> getScopesForConnectionlessNonSignIn();`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/Api.java:101`
  `Intent getSignInIntent();`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/Api.java:109`
  `boolean providesSignIn();`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/Api.java:115`
  `boolean requiresSignIn();`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zaae.java:34`
  `IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zaae.java:35`
  `return iInterfaceQueryLocalInterface instanceof zar ? (zar) iInterfaceQueryLocalInterface : new zar(iBinder, "com.google.android.gms.common.internal.ISignInButtonCreator");`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/ClientSettings.java:10`
  `import com.google.android.gms.signin.SignInOptions;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/ClientSettings.java:28`
  `public final SignInOptions i;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/ClientSettings.java:36`
  `public final SignInOptions e = SignInOptions.zaa;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/ClientSettings.java:68`
  `public ClientSettings(Account account, Set set, Map map, int i, View view, String str, String str2, SignInOptions signInOptions, boolean z) {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/ClientSettings.java:78`
  `this.i = signInOptions == null ? SignInOptions.zaa : signInOptions;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/ClientSettings.java:151`
  `public final SignInOptions zac() {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/ClientSettings.java:163`
  `public ClientSettings(Account account, Set<Scope> set, Map<Api<?>, zae> map, int i, View view, String str, String str2, SignInOptions signInOptions) {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/ClientSettings.java:164`
  `this(account, set, map, i, view, str, str2, signInOptions, false);`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zay.java:6`
  `import com.google.android.gms.auth.api.signin.GoogleSignInAccount;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zay.java:16`
  `public final GoogleSignInAccount e;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zay.java:18`
  `public zay(int i, Account account, int i2, GoogleSignInAccount googleSignInAccount) {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zay.java:22`
  `this.e = googleSignInAccount;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zay.java:35`
  `public zay(Account account, int i, GoogleSignInAccount googleSignInAccount) {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zay.java:36`
  `this(2, account, i, googleSignInAccount);`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/ServiceSpecificExtraArgs.java:13`
  `public static final String SIGNIN_OPTIONS = "com.google.android.gms.games.key.signInOptions";`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zaaf.java:44`
  `int i4 = com.google.android.gms.base.R.drawable.common_google_signin_btn_icon_dark;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zaaf.java:45`
  `int i5 = com.google.android.gms.base.R.drawable.common_google_signin_btn_icon_light;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zaaf.java:47`
  `int i6 = com.google.android.gms.base.R.drawable.common_google_signin_btn_text_dark;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zaaf.java:48`
  `int i7 = com.google.android.gms.base.R.drawable.common_google_signin_btn_text_light;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zaaf.java:57`
  `DrawableCompat.setTintList(drawableWrap, resources.getColorStateList(com.google.android.gms.base.R.color.common_google_signin_btn_tint));`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zaaf.java:60`
  `int i8 = com.google.android.gms.base.R.color.common_google_signin_btn_text_dark;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zaaf.java:61`
  `int i9 = com.google.android.gms.base.R.color.common_google_signin_btn_text_light;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zaaf.java:64`
  `setText(resources.getString(com.google.android.gms.base.R.string.common_signin_button_text));`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zaaf.java:66`
  `setText(resources.getString(com.google.android.gms.base.R.string.common_signin_button_text_long));`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zaf.java:83`
  `return resources.getString(com.google.android.gms.base.R.string.common_google_play_services_signin_required_title);`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zaf.java:151`
  `return resources.getString(com.google.android.gms.base.R.string.common_google_play_services_signin_required_text, strZaf);`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/BaseGmsClient.java:451`
  `if (requiresSignIn()) {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/BaseGmsClient.java:534`
  `public Intent getSignInIntent() {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/BaseGmsClient.java:604`
  `public boolean providesSignIn() {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/BaseGmsClient.java:616`
  `public boolean requiresSignIn() {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zaz.java:6`
  `import com.google.android.gms.auth.api.signin.GoogleSignInAccount;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zaz.java:17`
  `GoogleSignInAccount googleSignInAccount = null;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zaz.java:30`
  `googleSignInAccount = (GoogleSignInAccount) SafeParcelReader.createParcelable(parcel, header, GoogleSignInAccount.CREATOR);`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zaz.java:34`
  `return new zay(i, account, i2, googleSignInAccount);`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/GmsClient.java:91`
  `public Set<Scope> getScopesForConnectionlessNonSignIn() {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/internal/GmsClient.java:92`
  `return requiresSignIn() ? this.zac : Collections.EMPTY_SET;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/SignInConnectionListener.java:4`
  `public interface SignInConnectionListener {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zabu.java:29`
  `boolean zak(SignInConnectionListener signInConnectionListener);`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zabd.java:197`
  `public final boolean zak(SignInConnectionListener signInConnectionListener) {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/f.java:74`
  `((SignInConnectionListener) it.next()).onComplete();`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/f.java:89`
  `return zan.zaa(this.a, System.identityHashCode(this.b), client.getSignInIntent(), zan.zaa | 134217728);`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/f.java:254`
  `public final boolean zak(SignInConnectionListener signInConnectionListener) {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/f.java:262`
  `this.p.add(signInConnectionListener);`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zacl.java:11`
  `import com.google.android.gms.signin.zad;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zacl.java:17`
  `public final class zacl extends com.google.android.gms.signin.internal.zac implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zacl.java:24`
  `public com.google.android.gms.signin.zae o;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zacl.java:49`
  `@Override // com.google.android.gms.signin.internal.zac, com.google.android.gms.signin.internal.zae`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zacl.java:50`
  `public final void zab(com.google.android.gms.signin.internal.zak zakVar) {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zacl.java:55`
  `com.google.android.gms.signin.zae zaeVar = this.o;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zacl.java:63`
  `this.o = (com.google.android.gms.signin.zae) this.l.buildClient(this.a, handler.getLooper(), clientSettings, clientSettings.zac(), (GoogleApiClient.ConnectionCallbacks) this, (GoogleApiClient.OnConnectionFailedListener) this);`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zacl.java:74`
  `com.google.android.gms.signin.zae zaeVar = this.o;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/NonGmsServiceBrokerClient.java:183`
  `public final Set<Scope> getScopesForConnectionlessNonSignIn() {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/NonGmsServiceBrokerClient.java:193`
  `public final Intent getSignInIntent() {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/NonGmsServiceBrokerClient.java:242`
  `public final boolean providesSignIn() {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/NonGmsServiceBrokerClient.java:257`
  `public final boolean requiresSignIn() {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zaar.java:37`
  `public com.google.android.gms.signin.zae k;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zaar.java:96`
  `com.google.android.gms.signin.zae zaeVar = this.k;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zaar.java:153`
  `com.google.android.gms.signin.zae zaeVar = this.k;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zaar.java:222`
  `if (client.requiresSignIn()) {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zaar.java:243`
  `this.k = (com.google.android.gms.signin.zae) abstractClientBuilder.buildClient(this.c, zaazVar.getLooper(), clientSettings, clientSettings.zac(), (GoogleApiClient.ConnectionCallbacks) fjaVar, (GoogleApiClient.OnConnectionFailedListener) fjaVar);`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zaaz.java:105`
  `boolean zRequiresSignIn = false;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zaaz.java:106`
  `boolean zProvidesSignIn = false;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zaaz.java:109`
  `zRequiresSignIn |= client.requiresSignIn();`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zaaz.java:110`
  `zProvidesSignIn |= client.providesSignIn();`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zaaz.java:112`
  `if (zRequiresSignIn) {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zaaz.java:113`
  `return (zProvidesSignIn && z) ? 2 : 1;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zaaz.java:219`
  `throw new IllegalStateException("Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zaaz.java:280`
  `boolean zRequiresSignIn = false;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zaaz.java:281`
  `boolean zProvidesSignIn = false;`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zaaz.java:283`
  `zRequiresSignIn |= client.requiresSignIn();`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zaaz.java:284`
  `zProvidesSignIn |= client.providesSignIn();`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zaaz.java:288`
  `if (iIntValue2 == 2 && zRequiresSignIn) {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zaaz.java:294`
  `if (true == client3.providesSignIn()) {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zaaz.java:297`
  `if (client3.requiresSignIn()) {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zaaz.java:339`
  `} else if (!zRequiresSignIn) {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zaaz.java:343`
  `if (zProvidesSignIn) {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zaaz.java:551`
  `public final boolean maybeSignIn(SignInConnectionListener signInConnectionListener) {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zaaz.java:553`
  `return zabuVar != null && zabuVar.zak(signInConnectionListener);`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zabk.java:69`
  `if (clientZaf.requiresSignIn()) {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zabk.java:365`
  `client.disconnect(dg.c(new StringBuilder(name.length() + 25 + strValueOf.length()), "onSignInFailed for ", name, " with ", strValueOf));`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zabk.java:526`
  `if (client.requiresSignIn()) {`
- `apk_analysis/jadx/sources/com/google/android/gms/common/api/internal/zabk.java:558`
  `return this.b.requiresSignIn();`
- `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/Fido2ApiClient.java:56`
  `public Task<Fido2PendingIntent> getSignIntent(final PublicKeyCredentialRequestOptions publicKeyCredentialRequestOptions) {`
- `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/Fido2PrivilegedApiClient.java:70`
  `public Task<Fido2PendingIntent> getSignIntent(final BrowserPublicKeyCredentialRequestOptions browserPublicKeyCredentialRequestOptions) {`
- `apk_analysis/jadx/sources/com/google/android/gms/fido/u2f/U2fApiClient.java:41`
  `public Task<U2fPendingIntent> getSignIntent(final SignRequestParams signRequestParams) {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/Auth.java:4`
  `import com.google.android.gms.auth.api.signin.GoogleSignInApi;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/Auth.java:5`
  `import com.google.android.gms.auth.api.signin.GoogleSignInOptions;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/Auth.java:12`
  `public static final Api<GoogleSignInOptions> GOOGLE_SIGN_IN_API;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/Auth.java:13`
  `public static final GoogleSignInApi GoogleSignInApi;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/Auth.java:34`
  `GoogleSignInApi = new com.google.android.gms.auth.api.signin.internal.zbd();`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:64`
  `public static int common_google_signin_btn_text_dark = 0x7f06006c;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:65`
  `public static int common_google_signin_btn_text_dark_default = 0x7f06006d;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:66`
  `public static int common_google_signin_btn_text_dark_disabled = 0x7f06006e;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:67`
  `public static int common_google_signin_btn_text_dark_focused = 0x7f06006f;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:68`
  `public static int common_google_signin_btn_text_dark_pressed = 0x7f060070;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:69`
  `public static int common_google_signin_btn_text_light = 0x7f060071;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:70`
  `public static int common_google_signin_btn_text_light_default = 0x7f060072;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:71`
  `public static int common_google_signin_btn_text_light_disabled = 0x7f060073;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:72`
  `public static int common_google_signin_btn_text_light_focused = 0x7f060074;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:73`
  `public static int common_google_signin_btn_text_light_pressed = 0x7f060075;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:74`
  `public static int common_google_signin_btn_tint = 0x7f060076;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:110`
  `public static int common_google_signin_btn_icon_dark = 0x7f08015b;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:111`
  `public static int common_google_signin_btn_icon_dark_focused = 0x7f08015c;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:112`
  `public static int common_google_signin_btn_icon_dark_normal = 0x7f08015d;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:113`
  `public static int common_google_signin_btn_icon_dark_normal_background = 0x7f08015e;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:114`
  `public static int common_google_signin_btn_icon_disabled = 0x7f08015f;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:115`
  `public static int common_google_signin_btn_icon_light = 0x7f080160;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:116`
  `public static int common_google_signin_btn_icon_light_focused = 0x7f080161;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:117`
  `public static int common_google_signin_btn_icon_light_normal = 0x7f080162;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:118`
  `public static int common_google_signin_btn_icon_light_normal_background = 0x7f080163;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:119`
  `public static int common_google_signin_btn_text_dark = 0x7f080164;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:120`
  `public static int common_google_signin_btn_text_dark_focused = 0x7f080165;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:121`
  `public static int common_google_signin_btn_text_dark_normal = 0x7f080166;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:122`
  `public static int common_google_signin_btn_text_dark_normal_background = 0x7f080167;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:123`
  `public static int common_google_signin_btn_text_disabled = 0x7f080168;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:124`
  `public static int common_google_signin_btn_text_light = 0x7f080169;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:125`
  `public static int common_google_signin_btn_text_light_focused = 0x7f08016a;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:126`
  `public static int common_google_signin_btn_text_light_normal = 0x7f08016b;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:127`
  `public static int common_google_signin_btn_text_light_normal_background = 0x7f08016c;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:314`
  `public static int common_google_play_services_signin_required_text = 0x7f140144;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:315`
  `public static int common_google_play_services_signin_required_title = 0x7f140145;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:328`
  `public static int common_signin_button_text = 0x7f140152;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:329`
  `public static int common_signin_button_text_long = 0x7f140153;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:412`
  `public static int SignInButton_buttonSize = 0x00000000;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:413`
  `public static int SignInButton_colorScheme = 0x00000001;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:414`
  `public static int SignInButton_scopeUris = 0x00000002;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/R.java:429`
  `public static int[] SignInButton = {com.warefly.checkscan.R.attr.buttonSize, com.warefly.checkscan.R.attr.colorScheme, com.warefly.checkscan.R.attr.scopeUris};`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbd.java:15`
  `BeginSignInRequest.PasswordRequestOptions passwordRequestOptions = null;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbd.java:16`
  `BeginSignInRequest.GoogleIdTokenRequestOptions googleIdTokenRequestOptions = null;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbd.java:18`
  `BeginSignInRequest.PasskeysRequestOptions passkeysRequestOptions = null;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbd.java:19`
  `BeginSignInRequest.PasskeyJsonRequestOptions passkeyJsonRequestOptions = null;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbd.java:24`
  `passwordRequestOptions = (BeginSignInRequest.PasswordRequestOptions) SafeParcelReader.createParcelable(parcel, header, BeginSignInRequest.PasswordRequestOptions.CREATOR);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbd.java:27`
  `googleIdTokenRequestOptions = (BeginSignInRequest.GoogleIdTokenRequestOptions) SafeParcelReader.createParcelable(parcel, header, BeginSignInRequest.GoogleIdTokenRequestOptions.CREATOR);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbd.java:39`
  `passkeysRequestOptions = (BeginSignInRequest.PasskeysRequestOptions) SafeParcelReader.createParcelable(parcel, header, BeginSignInRequest.PasskeysRequestOptions.CREATOR);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbd.java:42`
  `passkeyJsonRequestOptions = (BeginSignInRequest.PasskeyJsonRequestOptions) SafeParcelReader.createParcelable(parcel, header, BeginSignInRequest.PasskeyJsonRequestOptions.CREATOR);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbd.java:53`
  `return new BeginSignInRequest(passwordRequestOptions, googleIdTokenRequestOptions, strCreateString, z, i, passkeysRequestOptions, passkeyJsonRequestOptions, z2);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbd.java:58`
  `return new BeginSignInRequest[i];`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbl.java:58`
  `return new BeginSignInRequest.GoogleIdTokenRequestOptions(z, strCreateString, strCreateString2, z2, strCreateString3, arrayListCreateStringList, z3, arrayListCreateTypedList, strCreateString4);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbl.java:63`
  `return new BeginSignInRequest.GoogleIdTokenRequestOptions[i];`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/BeginSignInResult.java:12`
  `public final class BeginSignInResult extends AbstractSafeParcelable {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/BeginSignInResult.java:13`
  `public static final Parcelable.Creator<BeginSignInResult> CREATOR = new zbe();`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/BeginSignInResult.java:16`
  `public BeginSignInResult(PendingIntent pendingIntent) {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SavePasswordRequest.java:14`
  `public final SignInPassword b;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SavePasswordRequest.java:20`
  `public SignInPassword a;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SavePasswordRequest.java:28`
  `public Builder setSignInPassword(SignInPassword signInPassword) {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SavePasswordRequest.java:29`
  `this.a = signInPassword;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SavePasswordRequest.java:44`
  `public SavePasswordRequest(SignInPassword signInPassword, String str, int i) {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SavePasswordRequest.java:45`
  `this.b = (SignInPassword) Preconditions.checkNotNull(signInPassword);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SavePasswordRequest.java:57`
  `builder.setSignInPassword(savePasswordRequest.getSignInPassword());`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SavePasswordRequest.java:74`
  `public SignInPassword getSignInPassword() {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SavePasswordRequest.java:85`
  `SafeParcelWriter.writeParcelable(parcel, 1, getSignInPassword(), i, false);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbu.java:59`
  `return new SignInCredential(strCreateString, strCreateString2, strCreateString3, strCreateString4, uri, strCreateString5, strCreateString6, strCreateString7, publicKeyCredential);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbu.java:64`
  `return new SignInCredential[i];`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbm.java:26`
  `return new BeginSignInRequest.PasskeyJsonRequestOptions(z, strCreateString);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbm.java:31`
  `return new BeginSignInRequest.PasskeyJsonRequestOptions[i];`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/AuthorizationResult.java:7`
  `import com.google.android.gms.auth.api.signin.GoogleSignInAccount;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/AuthorizationResult.java:21`
  `public final GoogleSignInAccount f;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/AuthorizationResult.java:26`
  `public AuthorizationResult(String str, String str2, String str3, List<String> list, GoogleSignInAccount googleSignInAccount, PendingIntent pendingIntent) {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/AuthorizationResult.java:31`
  `this.f = googleSignInAccount;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/AuthorizationResult.java:72`
  `public GoogleSignInAccount toGoogleSignInAccount() {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/AuthorizationResult.java:83`
  `SafeParcelWriter.writeParcelable(parcel, 5, toGoogleSignInAccount(), i, false);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/AuthorizationResult.java:89`
  `public AuthorizationResult(String str, String str2, String str3, List<String> list, GoogleSignInAccount googleSignInAccount, PendingIntent pendingIntent, Bundle bundle) {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/AuthorizationResult.java:94`
  `this.f = googleSignInAccount;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SignInClient.java:9`
  `public interface SignInClient extends HasApiKey<zbv> {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SignInClient.java:11`
  `Task<BeginSignInResult> beginSignIn(BeginSignInRequest beginSignInRequest);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SignInClient.java:18`
  `SignInCredential getSignInCredentialFromIntent(Intent intent);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SignInClient.java:21`
  `Task<PendingIntent> getSignInIntent(GetSignInIntentRequest getSignInIntentRequest);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/Identity.java:20`
  `public static SignInClient getSignInClient(Activity activity) {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/Identity.java:28`
  `public static SignInClient getSignInClient(Context context) {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbe.java:23`
  `return new BeginSignInResult(pendingIntent);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbe.java:28`
  `return new BeginSignInResult[i];`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SignInPassword.java:12`
  `public class SignInPassword extends AbstractSafeParcelable {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SignInPassword.java:13`
  `public static final Parcelable.Creator<SignInPassword> CREATOR = new zbw();`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SignInPassword.java:17`
  `public SignInPassword(String str, String str2) {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SignInPassword.java:23`
  `if (!(obj instanceof SignInPassword)) {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SignInPassword.java:26`
  `SignInPassword signInPassword = (SignInPassword) obj;`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SignInPassword.java:27`
  `return Objects.equal(this.b, signInPassword.b) && Objects.equal(this.c, signInPassword.c);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbo.java:22`
  `return new BeginSignInRequest.PasswordRequestOptions(z);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbo.java:27`
  `return new BeginSignInRequest.PasswordRequestOptions[i];`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/GetSignInIntentRequest.java:13`
  `public class GetSignInIntentRequest extends AbstractSafeParcelable {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/GetSignInIntentRequest.java:14`
  `public static final Parcelable.Creator<GetSignInIntentRequest> CREATOR = new zbk();`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/GetSignInIntentRequest.java:32`
  `public GetSignInIntentRequest build() {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/GetSignInIntentRequest.java:33`
  `return new GetSignInIntentRequest(this.a, this.b, this.c, this.e, this.f, this.g, this.d);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/GetSignInIntentRequest.java:74`
  `public GetSignInIntentRequest(String str, String str2, String str3, String str4, boolean z, int i, List list) {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/GetSignInIntentRequest.java:89`
  `public static Builder zba(GetSignInIntentRequest getSignInIntentRequest) {`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/GetSignInIntentRequest.java:90`
  `Preconditions.checkNotNull(getSignInIntentRequest);`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/GetSignInIntentRequest.java:92`
  `builder.setServerClientId(getSignInIntentRequest.getServerClientId());`
- `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/GetSignInIntentRequest.java:93`
  `builder.setNonce(getSignInIntentRequest.getNonce());`

## Как восстановить жизненный цикл токена

1. Confirm API → response DTO / JSON adapter.
2. DTO → exact token field (do not guess key names).
3. Token field → persistence (preferences / encrypted preferences / keystore).
4. Persistence → session restore on app launch.
5. Stored token → request interceptor / Authorization or cookie.
6. Refresh flow → request, response, expiration and retry behavior.

> Статический поиск не подтверждает поведение во время выполнения. Проверяй переходы по call-site и типам.