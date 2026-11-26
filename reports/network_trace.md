# CheckScan — сетевой трассировщик авторизации APK

- Repository/root: `/home/definitly/CheckScanReverseEngineering`
- Scan directory: `/home/definitly/CheckScanReverseEngineering/apk_analysis/jadx/sources`
- Context: 5 строк до и после совпадений
- Это поиск текстовых признаков, не доказательство выполнения конкретного кода.


---

## `apk_analysis/jadx/sources/defpackage/dbc.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   22:         try {
   23:             this.a.zze(str, str2, bundle, j);
   24:         } catch (RemoteException e) {
   25:             zzic zzicVar = this.b.a;
   26:             if (zzicVar != null) {
   27:                 zzicVar.zzaW().zze().zzb("Event interceptor threw exception", e);
   28:             }
   29:         }
   30:     }
   31: }
```


---

## `apk_analysis/jadx/sources/defpackage/xt0.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   66:                 sb.append(j02Var.b);
   67:                 i = i2;
   68:             }
   69:             aVarA.b("Cookie", sb.toString());
   70:         }
   71:         if (jv3Var.a("User-Agent") == null) {
   72:             aVarA.b("User-Agent", "okhttp/4.12.0");
   73:         }
   74:         z47 z47VarB = ez6Var.b(aVarA.a());
   75:         jv3 jv3Var2 = z47VarB.g;
   76:         az3.b(l02Var, fz3Var, jv3Var2);
   77:         z47.a aVarP = z47VarB.p();
```


---

## `apk_analysis/jadx/sources/defpackage/on.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    2: 
    3: import com.google.gson.Gson;
    4: import java.util.ArrayList;
    5: import java.util.List;
    6: import java.util.concurrent.TimeUnit;
    7: import okhttp3.OkHttpClient;
    8: 
    9: /* JADX INFO: loaded from: classes5.dex */
   10: public final class on implements jg4 {
   11:     public static final on b = new on();
   12:     public static final bz3 c;
   17:         aVar.getClass();
   18:         bz3Var.c = aVar;
   19:         c = bz3Var;
   20:     }
   21: 
   22:     public static n67 a(String str, OkHttpClient okHttpClient) {
   23:         n67.b bVar = new n67.b();
   24:         bVar.b(str.concat("/"));
   25:         bVar.a = okHttpClient;
   26:         bVar.a((i02.a) ay3.a.getValue());
   27:         bVar.a(new xs3(new Gson()));
   28:         bVar.d.add(new c97());
   29:         return bVar.c();
   30:     }
   31: 
   32:     /* JADX WARN: Multi-variable type inference failed */
   33:     public final OkHttpClient.a c(boolean z, boolean z2) {
   34:         OkHttpClient.a aVar = new OkHttpClient.a();
   35:         TimeUnit timeUnit = TimeUnit.SECONDS;
   36:         timeUnit.getClass();
   37:         aVar.x = gb9.b(30L, timeUnit);
   38:         aVar.z = gb9.b(30L, timeUnit);
   39:         aVar.y = gb9.b(90L, timeUnit);
```


---

## `apk_analysis/jadx/sources/defpackage/pz2.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package defpackage;
    2: 
    3: import com.google.firebase.remoteconfig.RemoteConfigComponent;
    4: 
    5: /* JADX INFO: loaded from: classes3.dex */
    6: @bd2(c = "coil3.intercept.EngineInterceptor", f = "EngineInterceptor.kt", l = {169}, m = RemoteConfigComponent.FETCH_FILE_NAME, v = 1)
    7: public final class pz2 extends f02 {
    8:     public fs1 l;
    9:     public b24 m;
   10:     public Object n;
   11:     public zz5 o;
```


---

## `apk_analysis/jadx/sources/defpackage/mm4.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   30:                 }
   31:                 property = sb.toString();
   32:             }
   33:             HashMap map = new HashMap(2);
   34:             if (!TextUtils.isEmpty(property)) {
   35:                 map.put("User-Agent", Collections.singletonList(new b(property)));
   36:             }
   37:             b = Collections.unmodifiableMap(map);
   38:         }
   39:     }
   40: 
```


---

## `apk_analysis/jadx/sources/defpackage/ex7.java`

**Разделы:** SIGN-IN ROUTES / DTO

```
    7:     private final String a;
    8: 
    9:     @bq7("allowSmsNotifications")
   10:     private final boolean b;
   11: 
   12:     @bq7("confirmType")
   13:     private final dw1 c;
   14: 
   15:     @bq7("referral")
   16:     private final String d;
   17: 
   51:         String str = this.a;
   52:         boolean z = this.b;
   53:         dw1 dw1Var = this.c;
   54:         String str2 = this.d;
   55:         Boolean bool = this.e;
   56:         StringBuilder sbB = p2.b("SignInRequestBody(phone=", str, ", allowSmsNotifications=", ", confirmType=", z);
   57:         sbB.append(dw1Var);
   58:         sbB.append(", referral=");
   59:         sbB.append(str2);
   60:         sbB.append(", fromOnboarding=");
   61:         sbB.append(bool);
```


---

## `apk_analysis/jadx/sources/defpackage/b24.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   89:         public final int hashCode() {
   90:             return this.n.a.hashCode() + ((this.m.hashCode() + ((this.l.hashCode() + ((this.k.hashCode() + ((this.j.hashCode() + ((this.i.hashCode() + ((this.h.hashCode() + ((this.g.hashCode() + ((this.f.hashCode() + ((this.e.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
   91:         }
   92: 
   93:         public final String toString() {
   94:             return "Defaults(fileSystem=" + this.a + ", interceptorCoroutineContext=" + this.b + ", fetcherCoroutineContext=" + this.c + ", decoderCoroutineContext=" + this.d + ", memoryCachePolicy=" + this.e + ", diskCachePolicy=" + this.f + ", networkCachePolicy=" + this.g + ", placeholderFactory=" + this.h + ", errorFactory=" + this.i + ", fallbackFactory=" + this.j + ", sizeResolver=" + this.k + ", scale=" + this.l + ", precision=" + this.m + ", extras=" + this.n + ")";
   95:         }
   96:     }
   97: 
   98:     public static final class c {
   99:         public final o22 a;
  139:             re6 re6Var = this.f;
  140:             return iHashCode6 + (re6Var != null ? re6Var.hashCode() : 0);
  141:         }
  142: 
  143:         public final String toString() {
  144:             StringBuilder sb = new StringBuilder("Defined(fileSystem=null, interceptorCoroutineContext=");
  145:             sb.append(this.a);
  146:             sb.append(", fetcherCoroutineContext=");
  147:             sb.append(this.b);
  148:             sb.append(", decoderCoroutineContext=");
  149:             sb.append(this.c);
  210:         xk8 xk8Var = this.c;
  211:         return this.t.hashCode() + ((this.s.hashCode() + k.c(this.r.a, (this.q.hashCode() + ((this.p.hashCode() + ((this.o.hashCode() + ((this.n.hashCode() + ((this.m.hashCode() + ((this.l.hashCode() + ((this.k.hashCode() + ((this.j.hashCode() + ((this.i.hashCode() + ((this.h.hashCode() + ((this.g.hashCode() + ((this.f.hashCode() + ((this.e.hashCode() + k.c(this.d, (iHashCode + (xk8Var == null ? 0 : xk8Var.hashCode())) * 29791, 961)) * 29791)) * 31)) * 31)) * 31)) * 31)) * 31)) * 961)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31, 31)) * 31);
  212:     }
  213: 
  214:     public final String toString() {
  215:         return "ImageRequest(context=" + this.a + ", data=" + this.b + ", target=" + this.c + ", listener=null, memoryCacheKey=null, memoryCacheKeyExtras=" + this.d + ", diskCacheKey=null, fileSystem=" + this.e + ", fetcherFactory=null, decoderFactory=null, interceptorCoroutineContext=" + this.f + ", fetcherCoroutineContext=" + this.g + ", decoderCoroutineContext=" + this.h + ", memoryCachePolicy=" + this.i + ", diskCachePolicy=" + this.j + ", networkCachePolicy=" + this.k + ", placeholderMemoryCacheKey=null, placeholderFactory=" + this.l + ", errorFactory=" + this.m + ", fallbackFactory=" + this.n + ", sizeResolver=" + this.o + ", scale=" + this.p + ", precision=" + this.q + ", extras=" + this.r + ", defined=" + this.s + ", defaults=" + this.t + ")";
  216:     }
  217: 
  218:     public static final class a {
  219:         public final Context a;
  220:         public b b;
```


---

## `apk_analysis/jadx/sources/defpackage/ly6.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   23: import javax.net.ssl.SSLHandshakeException;
   24: import javax.net.ssl.SSLPeerUnverifiedException;
   25: import javax.net.ssl.SSLSession;
   26: import javax.net.ssl.SSLSocket;
   27: import javax.net.ssl.SSLSocketFactory;
   28: import okhttp3.OkHttpClient;
   29: import okhttp3.b;
   30: import okhttp3.internal.connection.RouteException;
   31: 
   32: /* JADX INFO: loaded from: classes5.dex */
   33: public final class ly6 extends hy3.b implements lw1 {
   71:         this.o = 1;
   72:         this.p = new ArrayList();
   73:         this.q = Long.MAX_VALUE;
   74:     }
   75: 
   76:     public static void e(OkHttpClient okHttpClient, i87 i87Var, IOException iOException) {
   77:         okHttpClient.getClass();
   78:         i87Var.getClass();
   79:         iOException.getClass();
   80:         if (i87Var.b.type() != Proxy.Type.DIRECT) {
   81:             l9 l9Var = i87Var.a;
   82:             l9Var.g.connectFailed(l9Var.h.g(), i87Var.b.address(), iOException);
   83:         }
   84:         j87 j87Var = okHttpClient.C;
   85:         synchronized (j87Var) {
   86:             j87Var.a.add(i87Var);
   87:         }
   88:     }
   89: 
  374:         i87 i87Var = this.b;
  375:         aVar2.a = i87Var.a.h;
  376:         aVar2.c(FirebasePerformance.HttpMethod.CONNECT, null);
  377:         aVar2.b("Host", gb9.v(i87Var.a.h, true));
  378:         aVar2.b("Proxy-Connection", "Keep-Alive");
  379:         aVar2.b("User-Agent", "okhttp/4.12.0");
  380:         b37 b37VarA = aVar2.a();
  381:         z47.a aVar3 = new z47.a();
  382:         aVar3.a = b37VarA;
  383:         ts6 ts6Var = ts6.HTTP_1_1;
  384:         ts6Var.getClass();
  661:         } catch (IOException unused2) {
  662:             return false;
  663:         }
  664:     }
  665: 
  666:     public final o13 k(OkHttpClient okHttpClient, ez6 ez6Var) throws SocketException {
  667:         okHttpClient.getClass();
  668:         int i = ez6Var.g;
  669:         Socket socket = this.d;
  670:         socket.getClass();
  671:         iy6 iy6Var = this.h;
  672:         iy6Var.getClass();
  673:         hy6 hy6Var = this.i;
  674:         hy6Var.getClass();
  675:         hy3 hy3Var = this.g;
  676:         if (hy3Var != null) {
  677:             return new qy3(okHttpClient, this, ez6Var, hy3Var);
  678:         }
  679:         socket.setSoTimeout(i);
  680:         iy6Var.b.r().g(i);
  681:         hy6Var.b.r().g(ez6Var.h);
  682:         return new dy3(okHttpClient, this, iy6Var, hy6Var);
  683:     }
  684: 
  685:     public final synchronized void l() {
  686:         this.j = true;
  687:     }
```


---

## `apk_analysis/jadx/sources/defpackage/jx3.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  399:         av3 av3Var5 = new av3(gx0Var2, "/index.html");
  400:         gx0 gx0Var3 = av3.h;
  401:         av3 av3Var6 = new av3(gx0Var3, ProxyConfig.MATCH_HTTP);
  402:         av3 av3Var7 = new av3(gx0Var3, ProxyConfig.MATCH_HTTPS);
  403:         gx0 gx0Var4 = av3.e;
  404:         av3[] av3VarArr = {av3Var, av3Var2, av3Var3, av3Var4, av3Var5, av3Var6, av3Var7, new av3(gx0Var4, "200"), new av3(gx0Var4, "204"), new av3(gx0Var4, "206"), new av3(gx0Var4, "304"), new av3(gx0Var4, "400"), new av3(gx0Var4, "404"), new av3(gx0Var4, "500"), new av3("accept-charset", ""), new av3("accept-encoding", "gzip, deflate"), new av3("accept-language", ""), new av3("accept-ranges", ""), new av3("accept", ""), new av3("access-control-allow-origin", ""), new av3("age", ""), new av3("allow", ""), new av3("authorization", ""), new av3("cache-control", ""), new av3("content-disposition", ""), new av3("content-encoding", ""), new av3("content-language", ""), new av3("content-length", ""), new av3("content-location", ""), new av3("content-range", ""), new av3("content-type", ""), new av3("cookie", ""), new av3("date", ""), new av3("etag", ""), new av3("expect", ""), new av3("expires", ""), new av3("from", ""), new av3("host", ""), new av3("if-match", ""), new av3("if-modified-since", ""), new av3("if-none-match", ""), new av3("if-range", ""), new av3("if-unmodified-since", ""), new av3("last-modified", ""), new av3(DynamicLink.Builder.KEY_LINK, ""), new av3(FirebaseAnalytics.Param.LOCATION, ""), new av3("max-forwards", ""), new av3("proxy-authenticate", ""), new av3("proxy-authorization", ""), new av3("range", ""), new av3("referer", ""), new av3("refresh", ""), new av3("retry-after", ""), new av3("server", ""), new av3("set-cookie", ""), new av3("strict-transport-security", ""), new av3("transfer-encoding", ""), new av3("user-agent", ""), new av3("vary", ""), new av3("via", ""), new av3("www-authenticate", "")};
  405:         a = av3VarArr;
  406:         LinkedHashMap linkedHashMap = new LinkedHashMap(61);
  407:         for (int i = 0; i < 61; i++) {
  408:             if (!linkedHashMap.containsKey(av3VarArr[i].a)) {
  409:                 linkedHashMap.put(av3VarArr[i].a, Integer.valueOf(i));
```


---

## `apk_analysis/jadx/sources/defpackage/z86.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   21: import javax.net.ssl.SSLSocket;
   22: import javax.net.ssl.SSLSocketFactory;
   23: import javax.net.ssl.TrustManager;
   24: import javax.net.ssl.TrustManagerFactory;
   25: import javax.net.ssl.X509TrustManager;
   26: import okhttp3.OkHttpClient;
   27: 
   28: /* JADX INFO: loaded from: classes5.dex */
   29: public class z86 {
   30:     public static volatile z86 a;
   31:     public static final Logger b;
  394:                     }
  395:                 }
  396:             }
  397:         }
  398:         a = z86Var;
  399:         b = Logger.getLogger(OkHttpClient.class.getName());
  400:     }
  401: 
  402:     public static void i(String str, int i, Throwable th) {
  403:         b.log(i == 5 ? Level.WARNING : Level.INFO, str, th);
  404:     }
  446:         return true;
  447:     }
  448: 
  449:     public void k(Object obj, String str) {
  450:         if (obj == null) {
  451:             str = str.concat(" To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);");
  452:         }
  453:         i(str, 5, (Throwable) obj);
  454:     }
  455: 
  456:     public SSLContext l() throws NoSuchAlgorithmException {
```


---

## `apk_analysis/jadx/sources/defpackage/wc5.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP, API HOST / NETWORK CONFIG

```
   19: import java.util.ArrayList;
   20: import java.util.Arrays;
   21: import java.util.HashMap;
   22: import java.util.List;
   23: import java.util.regex.Pattern;
   24: import okhttp3.OkHttpClient;
   25: 
   26: /* JADX INFO: loaded from: classes5.dex */
   27: public final class wc5 {
   28:     public static final tc5 a = h.c(a.f);
   29:     public static final tc5 b = h.c(b.f);
 1605:                 defpackage.s0.c("KOIN: authorized retrofit created");
 1606:                 on onVar = on.b;
 1607:                 String str = (String) ze7Var2.c("server_host");
 1608:                 n67.b bVar = new n67.b();
 1609:                 bVar.b(str.concat("/"));
 1610:                 bVar.a = new OkHttpClient(onVar.c(true, true));
 1611:                 bVar.a((i02.a) ay3.a.getValue());
 1612:                 ws3 ws3Var = new ws3();
 1613:                 TransferShowcaseDeserializer transferShowcaseDeserializer = new TransferShowcaseDeserializer();
 1614:                 HashMap map = transferShowcaseDeserializer.b;
 1615:                 map.put("REGISTER", k70.k.class);
 1758:                 defpackage.s0.c("KOIN: bonuses retrofit created");
 1759:                 on onVar = on.b;
 1760:                 String str = (String) ze7Var2.c("server_host");
 1761:                 n67.b bVar = new n67.b();
 1762:                 bVar.b(str.concat("/"));
 1763:                 bVar.a = new OkHttpClient(onVar.c(false, true));
 1764:                 bVar.a((i02.a) ay3.a.getValue());
 1765:                 bVar.a(new xs3(new Gson()));
 1766:                 bVar.d.add(new c97());
 1767:                 return bVar.c();
 1768:             }
 1844:                 ze7 ze7Var2 = ze7Var;
 1845:                 ze7Var2.getClass();
 1846:                 i36Var.getClass();
 1847:                 defpackage.s0.c("KOIN: plain retrofit created");
 1848:                 on onVar = on.b;
 1849:                 return on.a((String) ze7Var2.c("server_host"), (OkHttpClient) ze7Var2.e(x07.a(OkHttpClient.class), null, p72.c));
 1850:             }
 1851:         }
 1852: 
 1853:         public final class u1 extends gh4 implements bm3<ze7, i36, ov2> {
 1854:             public static final u1 f = new u1(2);
 1858:                 ze7 ze7Var2 = ze7Var;
 1859:                 return (ov2) zc5.b(ze7Var2, i36Var, ze7Var2, ov2.class);
 1860:             }
 1861:         }
 1862: 
 1863:         public final class u2 extends gh4 implements bm3<ze7, i36, OkHttpClient> {
 1864:             public static final u2 f = new u2(2);
 1865: 
 1866:             @Override // defpackage.bm3
 1867:             public final OkHttpClient invoke(ze7 ze7Var, i36 i36Var) {
 1868:                 ze7Var.getClass();
 1869:                 i36Var.getClass();
 1870:                 return new OkHttpClient(on.b.c(false, false));
 1871:             }
 1872:         }
 1873: 
 1874:         public final class u3 extends gh4 implements bm3<ze7, i36, df5> {
 1875:             public static final u3 f = new u3(2);
 2113:             public final eu4 invoke(ze7 ze7Var, i36 i36Var) {
 2114:                 ze7 ze7Var2 = ze7Var;
 2115:                 ze7Var2.getClass();
 2116:                 i36Var.getClass();
 2117:                 jg4 jg4Var = on.b;
 2118:                 String str = (String) ze7Var2.c("location_by_ip_base_url");
 2119:                 OkHttpClient.a aVar = new OkHttpClient.a();
 2120:                 bz3 bz3Var = on.c;
 2121:                 bz3Var.getClass();
 2122:                 ArrayList arrayList = aVar.c;
 2123:                 arrayList.add(bz3Var);
 2124:                 ba8 ba8Var = p72.i;
 2125:                 for (f94 f94Var : (Iterable) (jg4Var instanceof og4 ? defpackage.n2.c(List.class, ((og4) jg4Var).getScope(), ba8Var, null) : jg4Var.b().c.d.e(x07.a(List.class), null, ba8Var))) {
 2126:                     f94Var.getClass();
 2127:                     arrayList.add(f94Var);
 2128:                 }
 2129:                 Object objB = on.a(str, new OkHttpClient(aVar)).b(eu4.class);
 2130:                 objB.getClass();
 2131:                 return (eu4) objB;
 2132:             }
 2133:         }
 2134: 
 2301:             public final ns5 invoke(ze7 ze7Var, i36 i36Var) {
 2302:                 ze7 ze7Var2 = ze7Var;
 2303:                 ze7Var2.getClass();
 2304:                 i36Var.getClass();
 2305:                 on onVar = on.b;
 2306:                 Object objB = on.a((String) ze7Var2.c("ofd_base_url"), (OkHttpClient) ze7Var2.e(x07.a(OkHttpClient.class), null, p72.c)).b(ns5.class);
 2307:                 objB.getClass();
 2308:                 return (ns5) objB;
 2309:             }
 2310:         }
 2311: 
 2376:             i01.c(new gi0(ba8Var, x07.a(Clock.class), null, r0.f, cg4Var), tc5Var2);
 2377:             i01.c(new gi0(ba8Var, x07.a(r22.class), p72.h, c1.f, cg4Var), tc5Var2);
 2378:             i01.c(new gi0(ba8Var, x07.a(ip.class), null, n1.f, cg4Var), tc5Var2);
 2379:             i01.c(new gi0(ba8Var, x07.a(y22.class), oe0.e, y1.f, cg4Var), tc5Var2);
 2380:             i01.c(new gi0(ba8Var, x07.a(qm5.class), null, j2.f, cg4Var), tc5Var2);
 2381:             i01.c(new gi0(ba8Var, x07.a(OkHttpClient.class), p72.c, u2.f, cg4Var), tc5Var2);
 2382:             i01.c(new gi0(ba8Var, x07.a(eu4.class), null, x2.f, cg4Var), tc5Var2);
 2383:             i01.c(new gi0(ba8Var, x07.a(ns5.class), null, z2.f, cg4Var), tc5Var2);
 2384:             i01.c(new gi0(ba8Var, x07.a(la3.class), null, a3.f, cg4Var), tc5Var2);
 2385:             i01.c(new gi0(ba8Var, x07.a(av6.class), null, b3.f, cg4Var), tc5Var2);
 2386:             i01.c(new gi0(ba8Var, x07.a(CheckscanDatabase.class), null, c3.f, cg4Var), tc5Var2);
```


---

## `apk_analysis/jadx/sources/defpackage/iz4.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   82:     static {
   83:         Method declaredMethod;
   84:         try {
   85:             Class<?> cls = Class.forName("io.grpc.census.InternalCensusStatsAccessor");
   86:             Class cls2 = Boolean.TYPE;
   87:             declaredMethod = cls.getDeclaredMethod("getClientInterceptor", cls2, cls2, cls2, cls2);
   88:         } catch (ClassNotFoundException e) {
   89:             z.log(Level.FINE, "Unable to apply census stats", (Throwable) e);
   90:             declaredMethod = null;
   91:         } catch (NoSuchMethodException e2) {
   92:             z.log(Level.FINE, "Unable to apply census stats", (Throwable) e2);
  271:                 arrayList.add(0, xl1Var2);
  272:             }
  273:         }
  274:         if (this.v) {
  275:             try {
  276:                 xl1Var = (xl1) Class.forName("io.grpc.census.InternalCensusTracingAccessor").getDeclaredMethod("getClientInterceptor", null).invoke(null, null);
  277:             } catch (ClassNotFoundException e8) {
  278:                 z.log(Level.FINE, "Unable to apply census stats", (Throwable) e8);
  279:                 xl1Var = null;
  280:             } catch (IllegalAccessException e9) {
  281:                 z.log(Level.FINE, "Unable to apply census stats", (Throwable) e9);
```


---

## `apk_analysis/jadx/sources/defpackage/pna.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package defpackage;
    2: 
    3: import com.google.android.gms.auth.api.identity.AuthorizationResult;
    4: import com.google.android.gms.common.api.Status;
    5: import com.google.android.gms.common.internal.ApiExceptionUtil;
    6: import com.google.android.gms.internal.p000authapi.zbad;
    7: import com.google.android.gms.internal.p000authapi.zbh;
    8: import com.google.android.gms.tasks.TaskCompletionSource;
   14:     public pna(zbad zbadVar, TaskCompletionSource taskCompletionSource) {
   15:         this.a = taskCompletionSource;
   16:     }
   17: 
   18:     @Override // com.google.android.gms.internal.p000authapi.zbi
   19:     public final void zbb(Status status, AuthorizationResult authorizationResult) {
   20:         boolean zIsSuccess = status.isSuccess();
   21:         TaskCompletionSource taskCompletionSource = this.a;
   22:         if (zIsSuccess) {
   23:             taskCompletionSource.setResult(authorizationResult);
   24:         } else {
   25:             taskCompletionSource.setException(ApiExceptionUtil.fromStatus(status));
   26:         }
   27:     }
   28: }
```


---

## `apk_analysis/jadx/sources/defpackage/cv3.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   40:     public final int hashCode() {
   41:         return this.b.hashCode() + (this.a.hashCode() * 31);
   42:     }
   43: 
   44:     public final String toString() {
   45:         return n2.d("Header(key=", this.a, ", value=", this.b, ")");
   46:     }
   47: }
```


---

## `apk_analysis/jadx/sources/defpackage/ha7.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package defpackage;
    2: 
    3: import com.google.gson.Gson;
    4: import okhttp3.OkHttpClient;
    5: 
    6: /* JADX INFO: loaded from: classes5.dex */
    7: public final class ha7 extends gh4 implements bm3<ze7, i36, ka7> {
    8:     public static final ha7 f = new ha7(2);
    9: 
   10:     @Override // defpackage.bm3
   11:     public final ka7 invoke(ze7 ze7Var, i36 i36Var) {
   12:         ze7 ze7Var2 = ze7Var;
   13:         ze7Var2.getClass();
   14:         i36Var.getClass();
   15:         return new ma7((Gson) ze7Var2.e(x07.a(Gson.class), null, x97.b), (b37) ze7Var2.e(x07.a(b37.class), null, x97.d), (OkHttpClient) ze7Var2.e(x07.a(OkHttpClient.class), null, x97.c));
   16:     }
   17: }
```


---

## `apk_analysis/jadx/sources/defpackage/xfa.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   53:                 public final boolean verify(String str2, SSLSession sSLSession) {
   54:                     return str2.equals(url.getHost());
   55:                 }
   56:             });
   57:             httpsURLConnection.setRequestMethod("POST");
   58:             httpsURLConnection.setRequestProperty("Authorization", "Token ".concat(str));
   59:             httpsURLConnection.setDoOutput(true);
   60:             OutputStream outputStream = httpsURLConnection.getOutputStream();
   61:             try {
   62:                 byte[] bytes = string.getBytes(ha1.b);
   63:                 bytes.getClass();
```


---

## `apk_analysis/jadx/sources/defpackage/rz2.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    2: 
    3: import android.content.Context;
    4: import java.util.LinkedHashMap;
    5: 
    6: /* JADX INFO: loaded from: classes3.dex */
    7: @bd2(c = "coil3.intercept.EngineInterceptor$intercept$2", f = "EngineInterceptor.kt", l = {77}, m = "invokeSuspend", v = 1)
    8: public final class rz2 extends pg8 implements bm3<y22, e02<? super zc8>, Object> {
    9:     public int l;
   10:     public final /* synthetic */ lz2 m;
   11:     public final /* synthetic */ b24 n;
   12:     public final /* synthetic */ Object o;
```


---

## `apk_analysis/jadx/sources/defpackage/o67.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   12: import java.util.regex.Pattern;
   13: import javax.net.ssl.HostnameVerifier;
   14: import javax.net.ssl.SSLHandshakeException;
   15: import javax.net.ssl.SSLPeerUnverifiedException;
   16: import javax.net.ssl.SSLSocketFactory;
   17: import okhttp3.OkHttpClient;
   18: import okhttp3.internal.connection.RouteException;
   19: import okhttp3.internal.http2.ConnectionShutdownException;
   20: 
   21: /* JADX INFO: loaded from: classes5.dex */
   22: public final class o67 implements f94 {
   23:     public final OkHttpClient a;
   24: 
   25:     public o67(OkHttpClient okHttpClient) {
   26:         okHttpClient.getClass();
   27:         this.a = okHttpClient;
   28:     }
   29: 
   30:     public static int d(z47 z47Var, int i) {
   31:         String strN = z47.n(z47Var, "Retry-After");
   32:         if (strN == null) {
   81:                 j59 j59Var = j59.a;
   82:             }
   83:             if (z) {
   84:                 py6 py6Var = jy6Var.d;
   85:                 fz3 fz3Var = b37VarB.a;
   86:                 OkHttpClient okHttpClient = jy6Var.b;
   87:                 if (fz3Var.j) {
   88:                     SSLSocketFactory sSLSocketFactory = okHttpClient.q;
   89:                     if (sSLSocketFactory == null) {
   90:                         ah.f("CLEARTEXT-only client");
   91:                         return z47Var;
   92:                     }
   93:                     HostnameVerifier hostnameVerifier = okHttpClient.u;
   94:                     r23 = okHttpClient.v;
   95:                     r21 = sSLSocketFactory;
   96:                     r22 = hostnameVerifier;
   97:                 } else {
   98:                     z47 z47Var3 = z47Var;
   99:                     z47 z47Var4 = z47Var3;
  100:                     r23 = z47Var4;
  101:                     r21 = z47Var3;
  102:                     r22 = z47Var4;
  103:                 }
  104:                 jy6Var.i = new p13(py6Var, new l9(fz3Var.d, fz3Var.e, okHttpClient.m, okHttpClient.p, r21, r22, r23, okHttpClient.o, okHttpClient.t, okHttpClient.s, okHttpClient.n), jy6Var, jy6Var.e);
  105:             }
  106:             try {
  107:                 if (jy6Var.p) {
  108:                     throw new IOException("Canceled");
  109:                 }
  178:     /* JADX WARN: Code duplicated, block: B:88:0x00fc  */
  179:     /* JADX WARN: Code duplicated, block: B:92:0x0108  */
  180:     /* JADX WARN: Code duplicated, block: B:98:0x0119 A[DONT_INVERT] */
  181:     /* JADX WARN: Code duplicated, block: B:99:0x011b  */
  182:     public final b37 b(z47 z47Var, n13 n13Var) throws ProtocolException {
  183:         OkHttpClient okHttpClient;
  184:         String strN;
  185:         b37 b37Var;
  186:         fz3.a aVar;
  187:         fz3 fz3VarA;
  188:         b37.a aVarA;
  191:         ly6 ly6Var;
  192:         i87 i87Var = (n13Var == null || (ly6Var = n13Var.f) == null) ? null : ly6Var.b;
  193:         int i = z47Var.e;
  194:         String str = z47Var.b.b;
  195:         if (i == 307 || i == 308) {
  196:             okHttpClient = this.a;
  197:             if (okHttpClient.i) {
  198:                 strN = z47.n(z47Var, "Location");
  199:                 b37Var = z47Var.b;
  200:                 if (strN != null) {
  201:                     fz3 fz3Var = b37Var.a;
  202:                     fz3Var.getClass();
  209:                     if (aVar != null) {
  210:                         fz3VarA = aVar.a();
  211:                     } else {
  212:                         fz3VarA = null;
  213:                     }
  214:                     if (fz3VarA != null && (aa4.e(fz3VarA.a, b37Var.a.a) || okHttpClient.j)) {
  215:                         aVarA = b37Var.a();
  216:                         if (zd3.f(str)) {
  217:                             int i2 = z47Var.e;
  218:                             z = !str.equals("PROPFIND") || i2 == 308 || i2 == 307;
  219:                             if (!str.equals("PROPFIND") || i2 == 308 || i2 == 307) {
  226:                                 aVarA.c.g("Content-Length");
  227:                                 aVarA.c.g("Content-Type");
  228:                             }
  229:                         }
  230:                         if (!gb9.a(b37Var.a, fz3VarA)) {
  231:                             aVarA.c.g("Authorization");
  232:                         }
  233:                         aVarA.a = fz3VarA;
  234:                         return aVarA.a();
  235:                     }
  236:                 }
  259:                         switch (i) {
  260:                             case 300:
  261:                             case 301:
  262:                             case 302:
  263:                             case 303:
  264:                                 okHttpClient = this.a;
  265:                                 if (okHttpClient.i) {
  266:                                     strN = z47.n(z47Var, "Location");
  267:                                     b37Var = z47Var.b;
  268:                                     if (strN != null) {
  269:                                         fz3 fz3Var2 = b37Var.a;
  270:                                         fz3Var2.getClass();
  291:                                                     aVarA.c.g("Content-Length");
  292:                                                     aVarA.c.g("Content-Type");
  293:                                                 }
  294:                                             }
  295:                                             if (!gb9.a(b37Var.a, fz3VarA)) {
  296:                                                 aVarA.c.g("Authorization");
  297:                                             }
  298:                                             aVarA.a = fz3VarA;
  299:                                             return aVarA.a();
  300:                                         }
  301:                                     }
```


---

## `apk_analysis/jadx/sources/defpackage/at6.java`

**Разделы:** API HOST / NETWORK CONFIG

```
    1: package defpackage;
    2: 
    3: import androidx.webkit.ProxyConfig;
    4: import java.io.IOException;
    5: import java.net.Authenticator;
    6: import java.net.InetAddress;
    7: import java.net.InetSocketAddress;
    8: import java.net.MalformedURLException;
    9: import java.net.PasswordAuthentication;
   10: import java.net.Proxy;
   31:         public final PasswordAuthentication a(String str, InetAddress inetAddress, int i) {
   32:             URL url;
   33:             try {
   34:                 url = new URL(ProxyConfig.MATCH_HTTPS, str, i, "");
   35:             } catch (MalformedURLException unused) {
   36:                 at6.c.log(Level.WARNING, "failed to create URL for Authenticator: {0} {1}", new Object[]{ProxyConfig.MATCH_HTTPS, str});
   37:                 url = null;
   38:             }
   39:             return Authenticator.requestPasswordAuthentication(str, inetAddress, i, ProxyConfig.MATCH_HTTPS, "", null, url, Authenticator.RequestorType.PROXY);
   40:         }
   41:     }
   42: 
   43:     public class b implements kd8<ProxySelector> {
   44:         @Override // defpackage.kd8
```


---

## `apk_analysis/jadx/sources/defpackage/ez6.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   62:             fz3 fz3Var = b37Var.a;
   63:             p13Var.getClass();
   64:             fz3Var.getClass();
   65:             fz3 fz3Var2 = p13Var.b.h;
   66:             if (fz3Var.e != fz3Var2.e || !aa4.e(fz3Var.d, fz3Var2.d)) {
   67:                 wg.c(arrayList.get(i - 1), "network interceptor ", " must retain the same host and port");
   68:                 return null;
   69:             }
   70:             if (this.i != 1) {
   71:                 wg.c(arrayList.get(i - 1), "network interceptor ", " must call proceed() exactly once");
   72:                 return null;
   73:             }
   74:         }
   75:         int i2 = i + 1;
   76:         ez6 ez6VarA = a(this, i2, null, b37Var, 58);
   77:         f94 f94Var = (f94) arrayList.get(i);
   78:         z47 z47VarA = f94Var.a(ez6VarA);
   79:         if (z47VarA == null) {
   80:             throw new NullPointerException("interceptor " + f94Var + " returned null");
   81:         }
   82:         if (n13Var != null && i2 < arrayList.size() && ez6VarA.i != 1) {
   83:             wg.c(f94Var, "network interceptor ", " must call proceed() exactly once");
   84:             return null;
   85:         }
   86:         if (z47VarA.h != null) {
   87:             return z47VarA;
   88:         }
   89:         wg.c(f94Var, "interceptor ", " returned a response with no body");
   90:         return null;
   91:     }
   92: }
```


---

## `apk_analysis/jadx/sources/defpackage/mab.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   16:         this.g = zzezVar;
   17:     }
   18: 
   19:     @Override // defpackage.cbb
   20:     public final void a() {
   21:         ((zzcp) Preconditions.checkNotNull(this.g.h)).setEventInterceptor(this.f);
   22:     }
   23: }
```


---

## `apk_analysis/jadx/sources/defpackage/nz2.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package defpackage;
    2: 
    3: import androidx.media3.extractor.ts.TsExtractor;
    4: 
    5: /* JADX INFO: loaded from: classes3.dex */
    6: @bd2(c = "coil3.intercept.EngineInterceptor", f = "EngineInterceptor.kt", l = {126, TsExtractor.TS_STREAM_TYPE_HDMV_DTS, 148}, m = "execute", v = 1)
    7: public final class nz2 extends f02 {
    8:     public b24 l;
    9:     public Object m;
   10:     public Object n;
   11:     public r07 o;
```


---

## `apk_analysis/jadx/sources/defpackage/ex.java`

**Разделы:** SIGN-IN ROUTES / DTO

```
    5: /* JADX INFO: loaded from: classes.dex */
    6: public interface ex {
    7: 
    8:     public static final class a implements ex {
    9: 
   10:         @bq7("confirmType")
   11:         private final dw1 a;
   12: 
   13:         @bq7(TypedValues.AttributesType.S_TARGET)
   14:         private final String b;
   15: 
   53: 
   54:         public final String toString() {
   55:             dw1 dw1Var = this.a;
   56:             String str = this.b;
   57:             int i = this.c;
   58:             StringBuilder sb = new StringBuilder("OtpConfirmResponse(confirmType=");
   59:             sb.append(dw1Var);
   60:             sb.append(", target=");
   61:             sb.append(str);
   62:             sb.append(", codeLength=");
   63:             return l2.e(sb, ")", i);
```


---

## `apk_analysis/jadx/sources/defpackage/x97.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   12: /* JADX INFO: loaded from: classes5.dex */
   13: public final class x97 implements vx2, rxa {
   14:     public static final ba8 b = new ba8("sse_gson");
   15:     public static final ba8 c = new ba8("sse_http");
   16:     public static final ba8 d = new ba8("sse_request");
   17:     public static final ba8 e = new ba8("sse_header_interceptor");
   18:     public static final ba8 f = new ba8("sse_cookie_jar");
   19:     public static final /* synthetic */ x97 g = new x97();
   20: 
   21:     public static final int a(mp7 mp7Var, mp7[] mp7VarArr) {
   22:         mp7VarArr.getClass();
```


---

## `apk_analysis/jadx/sources/defpackage/fr2.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package defpackage;
    2: 
    3: import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProviderKt;
    4: import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
    5: import okhttp3.OkHttpClient;
    6: 
    7: /* JADX INFO: loaded from: classes.dex */
    8: public final /* synthetic */ class fr2 implements ll3 {
    9:     public final /* synthetic */ int b;
   10: 
   16:     public final Object invoke() {
   17:         switch (this.b) {
   18:             case 0:
   19:                 return j59.a;
   20:             case 1:
   21:                 return new ky0(new OkHttpClient());
   22:             case 2:
   23:                 return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodGetDividerAttributesValid$lambda$42());
   24:             default:
   25:                 return TextContextMenuProviderKt.LocalTextContextMenuDropdownProvider$lambda$0();
   26:         }
```


---

## `apk_analysis/jadx/sources/defpackage/gd9.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   30:         switch (i) {
   31:             case 0:
   32:                 VideoCapture.lambda$setupSurfaceUpdateNotifier$5((AtomicBoolean) obj3, (SessionConfig.Builder) obj2, (CameraCaptureCallback) obj);
   33:                 break;
   34:             default:
   35:                 ((c1) obj3).b((String) obj2, (MyTrackerConfig.OkHttpClientProvider) obj);
   36:                 break;
   37:         }
   38:     }
   39: }
```


---

## `apk_analysis/jadx/sources/defpackage/od6.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  195:                         }
  196:                     } catch (Throwable unused) {
  197:                     }
  198:                     return eo2Var;
  199:                 } catch (Throwable th) {
  200:                     od6Var.c.v.a("TouchEventInterceptor " + motionEvent + " failed: " + th + '.');
  201:                     throw th;
  202:                 }
  203:             }
  204:         };
  205:         this.z = nm4.a(po4.PUBLICATION, new q(this, 4));
```


---

## `apk_analysis/jadx/sources/defpackage/xm1.java`

**Разделы:** SIGN-IN ROUTES / DTO

```
    4: public final class xm1 {
    5: 
    6:     @bq7("code")
    7:     private final String a;
    8: 
    9:     @bq7("confirmType")
   10:     private final cw1 b;
   11: 
   12:     @bq7("objType")
   13:     private final qc9 c;
   14: 
   35:     public final int hashCode() {
   36:         return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
   37:     }
   38: 
   39:     public final String toString() {
   40:         return "CodeRequest(code=" + this.a + ", confirmType=" + this.b + ", objType=" + this.c + ")";
   41:     }
   42: }
```


---

## `apk_analysis/jadx/sources/defpackage/jy6.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   10: import java.util.ArrayList;
   11: import java.util.Iterator;
   12: import java.util.concurrent.ConcurrentLinkedQueue;
   13: import java.util.concurrent.atomic.AtomicBoolean;
   14: import java.util.concurrent.atomic.AtomicInteger;
   15: import okhttp3.OkHttpClient;
   16: 
   17: /* JADX INFO: loaded from: classes5.dex */
   18: public final class jy6 implements okhttp3.a {
   19:     public final OkHttpClient b;
   20:     public final b37 c;
   21:     public final py6 d;
   22:     public final okhttp3.b e;
   23:     public final ky6 f;
   24:     public final AtomicBoolean g;
   44: 
   45:         @Override // java.lang.Runnable
   46:         public final void run() {
   47:             fz3.a aVar;
   48:             boolean z;
   49:             OkHttpClient okHttpClient;
   50:             fz3 fz3Var = jy6.this.c.a;
   51:             fz3Var.getClass();
   52:             fz3.a aVar2 = null;
   53:             try {
   54:                 aVar = new fz3.a();
   70:                     jy6Var.f.h();
   71:                     try {
   72:                         z = true;
   73:                         try {
   74:                             this.b.onResponse(jy6Var, jy6Var.e());
   75:                             okHttpClient = jy6Var.b;
   76:                         } catch (IOException e) {
   77:                             e = e;
   78:                             if (z) {
   79:                                 z86 z86Var = z86.a;
   80:                                 z86 z86Var2 = z86.a;
   99:                                 z86Var2.getClass();
  100:                                 z86.i(string, 4, e);
  101:                             } else {
  102:                                 this.b.onFailure(jy6Var, e);
  103:                             }
  104:                             okHttpClient = jy6Var.b;
  105:                         } catch (Throwable th) {
  106:                             th = th;
  107:                             z2 = true;
  108:                             jy6Var.cancel();
  109:                             if (!z2) {
  117:                         e = e2;
  118:                         z = false;
  119:                     } catch (Throwable th2) {
  120:                         th = th2;
  121:                     }
  122:                     okHttpClient.b.c(this);
  123:                     threadCurrentThread.setName(name);
  124:                 } catch (Throwable th3) {
  125:                     threadCurrentThread.setName(name);
  126:                     throw th3;
  127:                 }
  139:             super(jy6Var);
  140:             this.a = obj;
  141:         }
  142:     }
  143: 
  144:     public jy6(OkHttpClient okHttpClient, b37 b37Var) {
  145:         okHttpClient.getClass();
  146:         b37Var.getClass();
  147:         this.b = okHttpClient;
  148:         this.c = b37Var;
  149:         this.d = (py6) okHttpClient.c.b;
  150:         this.e = okHttpClient.f.a(this);
  151:         ky6 ky6Var = new ky6(this);
  152:         ky6Var.g(okHttpClient.x);
  153:         this.f = ky6Var;
  154:         this.g = new AtomicBoolean();
  155:         this.o = true;
  156:     }
  157: 
  286:         arrayList.add(new px0(this.b.l));
  287:         arrayList.add(jw1.a);
  288:         nn1.s(this.b.e, arrayList);
  289:         arrayList.add(new oy0());
  290:         b37 b37Var = this.c;
  291:         OkHttpClient okHttpClient = this.b;
  292:         try {
  293:             try {
  294:                 z47 z47VarB = new ez6(this, arrayList, 0, null, b37Var, okHttpClient.y, okHttpClient.z, okHttpClient.A).b(this.c);
  295:                 if (this.p) {
  296:                     gb9.d(z47VarB);
  297:                     throw new IOException("Canceled");
  298:                 }
  299:                 g(null);
```


---

## `apk_analysis/jadx/sources/defpackage/ky0.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package defpackage;
    2: 
    3: import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
    4: import java.io.Closeable;
    5: import okhttp3.OkHttpClient;
    6: 
    7: /* JADX INFO: loaded from: classes3.dex */
    8: public final class ky0 implements gm5 {
    9:     public final OkHttpClient a;
   10: 
   11:     public /* synthetic */ ky0(OkHttpClient okHttpClient) {
   12:         this.a = okHttpClient;
   13:     }
   14: 
   15:     /* JADX WARN: Code duplicated, block: B:33:0x00a4  */
   16:     /* JADX WARN: Code duplicated, block: B:7:0x0013  */
   17:     public static Object b(OkHttpClient okHttpClient, tm5 tm5Var, bm3 bm3Var, f02 f02Var) throws Throwable {
   18:         jy0 jy0Var;
   19:         bm3 bm3Var2;
   20:         Closeable closeable;
   21:         Throwable th;
   22:         Closeable closeable2;
   35:         a32 a32Var = a32.COROUTINE_SUSPENDED;
   36:         int i2 = jy0Var.o;
   37:         if (i2 == 0) {
   38:             r57.b(objC);
   39:             jy0Var.l = bm3Var;
   40:             jy0Var.m = okHttpClient;
   41:             jy0Var.o = 1;
   42:             objC = ny0.c(tm5Var, jy0Var);
   43:             if (objC != a32Var) {
   44:             }
   45:             return a32Var;
   83:                 th = th4;
   84:                 closeable2 = closeable;
   85:                 throw th;
   86:             }
   87:         }
   88:         okHttpClient = jy0Var.m;
   89:         bm3Var = (bm3) jy0Var.l;
   90:         r57.b(objC);
   91:         jy6 jy6VarB = okHttpClient.b((b37) objC);
   92:         jy0Var.l = bm3Var;
   93:         jy0Var.m = null;
   94:         jy0Var.o = 2;
   95:         c31 c31Var = new c31(1, zya.b(jy0Var));
   96:         c31Var.u();
   97:         c31Var.n(new yy0(jy6VarB));
   98:         FirebasePerfOkHttpClient.enqueue(jy6VarB, new zy0(c31Var));
   99:         objC = c31Var.s();
  100:         if (objC != a32Var) {
  101:             bm3Var2 = bm3Var;
  102:             closeable = (Closeable) objC;
  103:             vm5 vm5VarB2 = ny0.b((z47) closeable);
```


---

## `apk_analysis/jadx/sources/defpackage/cv.java`

**Разделы:** SIGN-IN ROUTES / DTO

```
    5: /* JADX INFO: loaded from: classes.dex */
    6: public interface cv {
    7:     @gn3("api/v2.1/users/agreements")
    8:     Object a(e02<? super p99> e02Var);
    9: 
   10:     @z06("api/v2.1/users/signin/confirm/v2")
   11:     Object b(@lk0 dx7 dx7Var, e02<? super a57<g3>> e02Var);
   12: 
   13:     @z06("api/v2.1/users/signin/v2")
   14:     Object c(@lk0 ex7 ex7Var, e02<? super a57<ex>> e02Var);
   15: 
   16:     @z06("api/v2.1/users/email")
   17:     Object d(@lk0 hw2 hw2Var, e02<? super a57<Object>> e02Var);
   18: 
```


---

## `apk_analysis/jadx/sources/defpackage/jw1.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package defpackage;
    2: 
    3: import java.io.IOException;
    4: import okhttp3.OkHttpClient;
    5: import okhttp3.internal.connection.RouteException;
    6: 
    7: /* JADX INFO: loaded from: classes5.dex */
    8: public final class jw1 implements f94 {
    9:     public static final jw1 a = new jw1();
   23:             }
   24:             j59 j59Var = j59.a;
   25:         }
   26:         p13 p13Var = jy6Var.i;
   27:         p13Var.getClass();
   28:         OkHttpClient okHttpClient = jy6Var.b;
   29:         okHttpClient.getClass();
   30:         try {
   31:             n13 n13Var = new n13(jy6Var, jy6Var.e, p13Var, p13Var.a(ez6Var.f, okHttpClient.g, !aa4.e(ez6Var.e.b, "GET"), ez6Var.g, ez6Var.h).k(okHttpClient, ez6Var));
   32:             jy6Var.l = n13Var;
   33:             jy6Var.q = n13Var;
   34:             synchronized (jy6Var) {
   35:                 jy6Var.m = true;
   36:                 jy6Var.n = true;
```


---

## `apk_analysis/jadx/sources/defpackage/khb.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class khb implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         int i = 0;
   14:         int i2 = 0;
   15:         int i3 = 0;
   16:         int i4 = 0;
   17:         long j = 0;
   18:         while (parcel.dataPosition() < iValidateObjectHeader) {
   19:             int header = SafeParcelReader.readHeader(parcel);
   20:             int fieldId = SafeParcelReader.getFieldId(header);
   21:             if (fieldId == 1) {
   22:                 i = SafeParcelReader.readInt(parcel, header);
   23:             } else if (fieldId == 2) {
   24:                 i2 = SafeParcelReader.readInt(parcel, header);
```


---

## `apk_analysis/jadx/sources/defpackage/oz2.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package defpackage;
    2: 
    3: import androidx.media3.muxer.WebmConstants;
    4: 
    5: /* JADX INFO: loaded from: classes3.dex */
    6: @bd2(c = "coil3.intercept.EngineInterceptor$execute$executeResult$1", f = "EngineInterceptor.kt", l = {WebmConstants.MkvEbmlElement.TRACK_TYPE}, m = "invokeSuspend", v = 1)
    7: public final class oz2 extends pg8 implements bm3<y22, e02<? super lz2.a>, Object> {
    8:     public int l;
    9:     public final /* synthetic */ lz2 m;
   10:     public final /* synthetic */ r07<b83> n;
   11:     public final /* synthetic */ r07<fs1> o;
```


---

## `apk_analysis/jadx/sources/defpackage/px0.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   18: public final class px0 implements f94 {
   19:     public final lx0 a;
   20: 
   21:     public static final class a {
   22:         public static boolean a(String str) {
   23:             return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
   24:         }
   25: 
   26:         public static z47 b(z47 z47Var) {
   27:             if ((z47Var != null ? z47Var.h : null) == null) {
   28:                 return z47Var;
```


---

## `apk_analysis/jadx/sources/defpackage/gb9.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   15: import java.util.Comparator;
   16: import java.util.List;
   17: import java.util.Locale;
   18: import java.util.TimeZone;
   19: import java.util.concurrent.TimeUnit;
   20: import okhttp3.OkHttpClient;
   21: 
   22: /* JADX INFO: loaded from: classes5.dex */
   23: public final class gb9 {
   24:     public static final byte[] a;
   25:     public static final jv3 b = jv3.b.c(new String[0]);
   41:         d = yz5.a.b(gx0.a.b("efbbbf"), gx0.a.b("feff"), gx0.a.b("fffe"), gx0.a.b("0000ffff"), gx0.a.b("ffff0000"));
   42:         TimeZone timeZone = TimeZone.getTimeZone("GMT");
   43:         timeZone.getClass();
   44:         e = timeZone;
   45:         f = new g17("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
   46:         g = ta8.U(ta8.T(OkHttpClient.class.getName(), "okhttp3."), "Client");
   47:     }
   48: 
   49:     public static final boolean a(fz3 fz3Var, fz3 fz3Var2) {
   50:         fz3Var.getClass();
   51:         return aa4.e(fz3Var.d, fz3Var2.d) && fz3Var.e == fz3Var2.e && aa4.e(fz3Var.a, fz3Var2.a);
  228:         return (String[]) arrayList.toArray(new String[0]);
  229:     }
  230: 
  231:     public static final boolean p(String str) {
  232:         str.getClass();
  233:         return str.equalsIgnoreCase("Authorization") || str.equalsIgnoreCase("Cookie") || str.equalsIgnoreCase("Proxy-Authorization") || str.equalsIgnoreCase("Set-Cookie");
  234:     }
  235: 
  236:     public static final int q(char c2) {
  237:         if ('0' <= c2 && c2 < ':') {
  238:             return c2 - '0';
```


---

## `apk_analysis/jadx/sources/defpackage/ov2.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: public interface ov2 {
    7:     @gn3("api/v2.1/v1/e_checks/receipts/processed")
    8:     mz7<Boolean> a();
    9: 
   10:     @z06("https://mco.nalog.ru/api/v1/receipt/fiscal_data")
   11:     @kv3({"Content-Type: application/json", "Accept: application/json", "User-Agent: Mozilla/5.0 (Linux; Android 11; Pixel 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.91 Mobile Safari/537.36"})
   12:     tq5<hl3.a> b(@lk0 mf4 mf4Var, @bv3("Authorization") String str);
   13: 
   14:     @z06("api/v2.1/v1/e_checks/receipts")
   15:     mz7<a57<b57>> c(@lk0 List<hl3> list);
   16: 
   17:     @z06("api/v2.1/v1/e_checks/bind")
   18:     mz7<n37> d(@lk0 u99 u99Var);
   19: 
   20:     @z06("https://mco.nalog.ru/api/v1/receipt")
   21:     @kv3({"Content-Type: application/json", "Accept: application/json", "User-Agent: Mozilla/5.0 (Linux; Android 11; Pixel 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.91 Mobile Safari/537.36"})
   22:     mz7<mr4> e(@lk0 yb7 yb7Var, @bv3("Authorization") String str);
   23: 
   24:     @gn3("api/v2.1/v1/e_checks/goToUrl")
   25:     mz7<String> getUrl();
   26: }
```


---

## `apk_analysis/jadx/sources/defpackage/yl1.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   30:         public final y81 a;
   31:         public final xl1 b;
   32: 
   33:         public b(y81 y81Var, xl1 xl1Var) {
   34:             this.a = y81Var;
   35:             o8.l(xl1Var, "interceptor");
   36:             this.b = xl1Var;
   37:         }
   38: 
   39:         @Override // defpackage.y81
   40:         public final String a() {
```


---

## `apk_analysis/jadx/sources/defpackage/jy0.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package defpackage;
    2: 
    3: import okhttp3.OkHttpClient;
    4: 
    5: /* JADX INFO: loaded from: classes3.dex */
    6: @bd2(c = "coil3.network.okhttp.internal.CallFactoryNetworkClient", f = "CallFactoryNetworkClient.kt", l = {24, 24, 25}, m = "executeRequest-impl", v = 1)
    7: public final class jy0<T> extends f02 {
    8:     public Object l;
    9:     public OkHttpClient m;
   10:     public /* synthetic */ Object n;
   11:     public int o;
   12: 
   13:     @Override // defpackage.cd0
   14:     public final Object invokeSuspend(Object obj) {
```


---

## `apk_analysis/jadx/sources/defpackage/bx7.java`

**Разделы:** SIGN-IN ROUTES / DTO

```
    1: package defpackage;
    2: 
    3: import java.util.Iterator;
    4: 
    5: /* JADX INFO: loaded from: classes.dex */
    6: @bd2(c = "com.warefly.checkscan.auth.domain.useCases.SignInConfirmInteractor$invoke$1", f = "SignInConfirmInteractor.kt", l = {28, 48, 56}, m = "invokeSuspend")
    7: public final class bx7 extends pg8 implements bm3<id3<? super j3>, e02<? super j59>, Object> {
    8:     public j3 l;
    9:     public Iterator m;
   10:     public int n;
   11:     public /* synthetic */ Object o;
   12:     public final /* synthetic */ cx7 p;
   13:     public final /* synthetic */ String q;
   14:     public final /* synthetic */ am2 r;
   15:     public final /* synthetic */ String s;
   16: 
   17:     @bd2(c = "com.warefly.checkscan.auth.domain.useCases.SignInConfirmInteractor$invoke$1$sideEffects$1", f = "SignInConfirmInteractor.kt", l = {42}, m = "invokeSuspend")
   18:     public static final class a extends pg8 implements nl3<e02<? super j59>, Object> {
   19:         public int l;
   20:         public final /* synthetic */ cx7 m;
   21:         public final /* synthetic */ j3 n;
   22: 
   58:             }
   59:             return j59.a;
   60:         }
   61:     }
   62: 
   63:     @bd2(c = "com.warefly.checkscan.auth.domain.useCases.SignInConfirmInteractor$invoke$1$sideEffects$2", f = "SignInConfirmInteractor.kt", l = {43}, m = "invokeSuspend")
   64:     public static final class b extends pg8 implements nl3<e02<? super j59>, Object> {
   65:         public int l;
   66:         public final /* synthetic */ cx7 m;
   67: 
   68:         /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
  101:             }
  102:             return j59.a;
  103:         }
  104:     }
  105: 
  106:     @bd2(c = "com.warefly.checkscan.auth.domain.useCases.SignInConfirmInteractor$invoke$1$sideEffects$3", f = "SignInConfirmInteractor.kt", l = {44}, m = "invokeSuspend")
  107:     public static final class c extends pg8 implements nl3<e02<? super j59>, Object> {
  108:         public int l;
  109:         public final /* synthetic */ cx7 m;
  110: 
  111:         /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
```


---

## `apk_analysis/jadx/sources/defpackage/i80.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  391:                 }
  392:                 frameLayout2.clearAnimation();
  393:                 i80Var.c();
  394:             }
  395:         });
  396:         popupWindow.setTouchInterceptor(new j80(this));
  397:         balloonLayoutOverlayBindingInflate.getRoot().setOnClickListener(new View.OnClickListener() { // from class: g80
  398:             @Override // android.view.View.OnClickListener
  399:             public final void onClick(View view) {
  400:                 this.b.c();
  401:             }
```


---

## `apk_analysis/jadx/sources/defpackage/zv6.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  201:             StringBuilder sbF = xp.f(j2, "File is truncated. Expected length: ", ", Actual length: ");
  202:             sbF.append(randomAccessFile.length());
  203:             throw new IOException(sbF.toString());
  204:         }
  205:         if (j2 <= i) {
  206:             ki0.d(k2.b(this.f, ") is invalid.", new StringBuilder("File is corrupt; length stored in header (")));
  207:             throw null;
  208:         }
  209:         this.h = b(jA2);
  210:         this.i = b(jA);
  211:     }
```


---

## `apk_analysis/jadx/sources/defpackage/mz2.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package defpackage;
    2: 
    3: import androidx.compose.runtime.ComposerKt;
    4: 
    5: /* JADX INFO: loaded from: classes3.dex */
    6: @bd2(c = "coil3.intercept.EngineInterceptor", f = "EngineInterceptor.kt", l = {ComposerKt.providerValuesKey}, m = "decode", v = 1)
    7: public final class mz2 extends f02 {
    8:     public x48 l;
    9:     public fs1 m;
   10:     public b24 n;
   11:     public Object o;
```


---

## `apk_analysis/jadx/sources/defpackage/gv5.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package defpackage;
    2: 
    3: import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
    4: import java.io.IOException;
    5: import java.util.ArrayList;
    6: 
    7: /* JADX INFO: loaded from: classes5.dex */
    8: public final class gv5<T> implements fy0<T> {
  243:             aVarI = i();
  244:         }
  245:         if (this.g) {
  246:             aVarI.cancel();
  247:         }
  248:         return j(FirebasePerfOkHttpClient.execute(aVarI));
  249:     }
  250: 
  251:     public final okhttp3.a i() throws IOException {
  252:         okhttp3.a aVar = this.h;
  253:         if (aVar != null) {
  365:             return;
  366:         }
  367:         if (this.g) {
  368:             aVar.cancel();
  369:         }
  370:         FirebasePerfOkHttpClient.enqueue(aVar, new a(sy0Var));
  371:     }
  372: 
  373:     /* JADX INFO: renamed from: clone, reason: collision with other method in class */
  374:     public final Object m9527clone() {
  375:         return new gv5(this.b, this.c, this.d, this.e, this.f);
```


---

## `apk_analysis/jadx/sources/defpackage/ma7.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    2: 
    3: import android.util.Log;
    4: import androidx.core.app.NotificationCompat;
    5: import com.google.gson.Gson;
    6: import com.tapjoy.TJAdUnitConstants;
    7: import okhttp3.OkHttpClient;
    8: import okhttp3.b;
    9: 
   10: /* JADX INFO: loaded from: classes5.dex */
   11: public final class ma7 implements ka7 {
   12:     public final Gson a;
   13:     public final b37 b;
   14:     public final OkHttpClient c;
   15:     public ry6 e;
   16:     public final zs7 d = bt7.b(0, 64, null, 4);
   17:     public final a f = new a();
   18: 
   19:     public static final class a extends y14 {
   50:             Log.i("SSERepository", TJAdUnitConstants.String.ANIMATION_EVENT_ON_OPEN);
   51:             ma7.this.d.e(new ka7.a(null));
   52:         }
   53:     }
   54: 
   55:     public ma7(Gson gson, b37 b37Var, OkHttpClient okHttpClient) {
   56:         this.a = gson;
   57:         this.b = b37Var;
   58:         this.c = okHttpClient;
   59:     }
   60: 
   61:     @Override // defpackage.ka7
   62:     public final void a() {
   63:         if (this.e == null) {
   83:             b37.a aVarA = b37VarA.a();
   84:             aVarA.c.a("Accept", "text/event-stream");
   85:             b37VarA = aVarA.a();
   86:         }
   87:         ry6 ry6Var2 = new ry6(b37VarA, aVar);
   88:         OkHttpClient.a aVarE = this.c.e();
   89:         b bVar = b.NONE;
   90:         bVar.getClass();
   91:         byte[] bArr = gb9.a;
   92:         aVarE.e = new y52(bVar);
   93:         jy6 jy6Var2 = new jy6(new OkHttpClient(aVarE), b37VarA);
   94:         ry6Var2.b = jy6Var2;
   95:         jy6Var2.a(ry6Var2);
   96:         this.e = ry6Var2;
   97:     }
   98: 
```


---

## `apk_analysis/jadx/sources/defpackage/vs3.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  292:         f = new la5.b("content-encoding", aVar);
  293:         g = n94.a("accept-encoding", new f());
  294:         h = new la5.b("content-length", aVar);
  295:         i = new la5.b("content-type", aVar);
  296:         j = new la5.b("te", aVar);
  297:         k = new la5.b("user-agent", aVar);
  298:         k68.a(',');
  299:         y91.n.d.getClass();
  300:         l = 20000000000L;
  301:         m = new at6();
  302:         n = new io.grpc.b.C0204b<>("io.grpc.internal.CALL_OPTIONS_RPC_OWNED_BY_BALANCER");
```


---

## `apk_analysis/jadx/sources/defpackage/ax.java`

**Разделы:** SIGN-IN ROUTES / DTO

```
    1: package defpackage;
    2: 
    3: /* JADX INFO: loaded from: classes.dex */
    4: @bd2(c = "com.warefly.checkscan.auth.data.network.repositoryImpl.AuthRepositoryImpl", f = "AuthRepositoryImpl.kt", l = {77}, m = "signInConfirm")
    5: public final class ax extends f02 {
    6:     public /* synthetic */ Object l;
    7:     public final /* synthetic */ dx m;
    8:     public int n;
    9: 
```


---

## `apk_analysis/jadx/sources/defpackage/dx7.java`

**Разделы:** SIGN-IN ROUTES / DTO

```
    4: public final class dx7 {
    5: 
    6:     @bq7("phone")
    7:     private final String a;
    8: 
    9:     @bq7("destinationType")
   10:     private final am2 b;
   11: 
   12:     @bq7("code")
   13:     private final String c;
   14: 
   39: 
   40:     public final String toString() {
   41:         String str = this.a;
   42:         am2 am2Var = this.b;
   43:         String str2 = this.c;
   44:         StringBuilder sb = new StringBuilder("SignInConfirmRequestBody(phone=");
   45:         sb.append(str);
   46:         sb.append(", destinationType=");
   47:         sb.append(am2Var);
   48:         sb.append(", code=");
   49:         return me0.d(sb, str2, ")");
   50:     }
   51: 
```


---

## `apk_analysis/jadx/sources/defpackage/cq3.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   16:     }
   17: 
   18:     public final bq3 b() {
   19:         byte[] bArr;
   20:         if (this.b == null) {
   21:             ah.f("You must call setData() before parseHeader()");
   22:             return null;
   23:         }
   24:         if (a()) {
   25:             return this.c;
   26:         }
```


---

## `apk_analysis/jadx/sources/defpackage/ti.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    2: 
    3: import java.util.LinkedHashMap;
    4: import java.util.Map;
    5: import java.util.concurrent.CopyOnWriteArraySet;
    6: import java.util.logging.Logger;
    7: import okhttp3.OkHttpClient;
    8: 
    9: /* JADX INFO: loaded from: classes5.dex */
   10: public final class ti {
   11:     public static final CopyOnWriteArraySet<Logger> a = new CopyOnWriteArraySet<>();
   12:     public static final Map<String, String> b;
   13: 
   14:     static {
   15:         LinkedHashMap linkedHashMap = new LinkedHashMap();
   16:         Package r2 = OkHttpClient.class.getPackage();
   17:         String name = r2 != null ? r2.getName() : null;
   18:         if (name != null) {
   19:             linkedHashMap.put(name, "OkHttp");
   20:         }
   21:         linkedHashMap.put(OkHttpClient.class.getName(), "okhttp.OkHttpClient");
   22:         linkedHashMap.put(fy3.class.getName(), "okhttp.Http2");
   23:         linkedHashMap.put(ho8.class.getName(), "okhttp.TaskRunner");
   24:         linkedHashMap.put("okhttp3.mockwebserver.MockWebServer", "okhttp.MockWebServer");
   25:         b = n05.l(linkedHashMap);
   26:     }
```


---

## `apk_analysis/jadx/sources/defpackage/fz6.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   67:             r57.b(obj);
   68:         }
   69:         g24 g24Var = (g24) obj;
   70:         b24 request = g24Var.getRequest();
   71:         if (request.a != b24Var.a) {
   72:             wg.c(e94Var, "Interceptor '", "' cannot modify the request's context.");
   73:             return null;
   74:         }
   75:         if (request.b == zp5.a) {
   76:             wg.c(e94Var, "Interceptor '", "' cannot set the request's data to null.");
   77:             return null;
   78:         }
   79:         if (request.c != b24Var.c) {
   80:             wg.c(e94Var, "Interceptor '", "' cannot modify the request's target.");
   81:             return null;
   82:         }
   83:         if (request.o == b24Var.o) {
   84:             return g24Var;
   85:         }
   86:         wg.c(e94Var, "Interceptor '", "' cannot modify the request's size resolver. Use `Interceptor.Chain.withSize` instead.");
   87:         return null;
   88:     }
   89: 
   90:     @Override // e94.a
   91:     public final b24 getRequest() {
```


---

## `apk_analysis/jadx/sources/defpackage/qz2.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package defpackage;
    2: 
    3: import androidx.media3.container.MdtaMetadataEntry;
    4: 
    5: /* JADX INFO: loaded from: classes3.dex */
    6: @bd2(c = "coil3.intercept.EngineInterceptor", f = "EngineInterceptor.kt", l = {MdtaMetadataEntry.TYPE_INDICATOR_8_BIT_UNSIGNED_INT}, m = "intercept", v = 1)
    7: public final class qz2 extends f02 {
    8:     public fz6 l;
    9:     public /* synthetic */ Object m;
   10:     public final /* synthetic */ lz2 n;
   11:     public int o;
```


---

## `apk_analysis/jadx/sources/defpackage/qy3.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    5: import java.net.ProtocolException;
    6: import java.net.SocketTimeoutException;
    7: import java.util.ArrayList;
    8: import java.util.List;
    9: import java.util.Locale;
   10: import okhttp3.OkHttpClient;
   11: import okhttp3.internal.http2.ConnectionShutdownException;
   12: import okhttp3.internal.http2.StreamResetException;
   13: 
   14: /* JADX INFO: loaded from: classes5.dex */
   15: public final class qy3 implements o13 {
   20:     public final hy3 c;
   21:     public volatile vy3 d;
   22:     public final ts6 e;
   23:     public volatile boolean f;
   24: 
   25:     public qy3(OkHttpClient okHttpClient, ly6 ly6Var, ez6 ez6Var, hy3 hy3Var) {
   26:         okHttpClient.getClass();
   27:         hy3Var.getClass();
   28:         this.a = ly6Var;
   29:         this.b = ez6Var;
   30:         this.c = hy3Var;
   31:         List<ts6> list = okHttpClient.t;
   32:         ts6 ts6Var = ts6.H2_PRIOR_KNOWLEDGE;
   33:         this.e = list.contains(ts6Var) ? ts6Var : ts6.HTTP_2;
   34:     }
   35: 
   36:     @Override // defpackage.o13
```


---

## `apk_analysis/jadx/sources/defpackage/if1.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   39:         httpURLConnection.setConnectTimeout(30000);
   40:         httpURLConnection.setReadTimeout(130000);
   41:         httpURLConnection.setDoOutput(true);
   42:         httpURLConnection.setInstanceFollowRedirects(false);
   43:         httpURLConnection.setRequestMethod("POST");
   44:         httpURLConnection.setRequestProperty("User-Agent", "datatransport/3.3.0 android/");
   45:         httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
   46:         httpURLConnection.setRequestProperty("Content-Type", "application/json");
   47:         httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
   48:         String str = aVar.c;
   49:         if (str != null) {
```


---

## `apk_analysis/jadx/sources/defpackage/lv5.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  314:         @Override // java.lang.Runnable
  315:         public final void run() {
  316:             lv5 lv5Var;
  317:             h88 h88VarH;
  318:             String name = Thread.currentThread().getName();
  319:             Thread.currentThread().setName("OkHttpClientTransport");
  320:             while (true) {
  321:                 try {
  322:                     boolean zA = ((ey3.c) this.c).a(this);
  323:                     lv5Var = lv5.this;
  324:                     if (!zA) {
 1117:         ez3 ez3Var = new ez3(aVar);
 1118:         a37.a aVar2 = new a37.a();
 1119:         aVar2.b = new iv3.a();
 1120:         aVar2.a = ez3Var;
 1121:         aVar2.a("Host", ez3Var.a + StringUtils.PROCESS_POSTFIX_DELIMITER + ez3Var.b);
 1122:         aVar2.a("User-Agent", this.e);
 1123:         if (str != null && str2 != null) {
 1124:             try {
 1125:                 aVar2.a("Proxy-Authorization", "Basic " + gx0.q((str + StringUtils.PROCESS_POSTFIX_DELIMITER + str2).getBytes("ISO-8859-1")).a());
 1126:             } catch (UnsupportedEncodingException unused3) {
 1127:                 xp.g();
 1128:                 return a37Var;
 1129:             }
 1130:         }
```


---

## `apk_analysis/jadx/sources/defpackage/e72.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    4: import java.util.Map;
    5: import java.util.Set;
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class e72 implements f94 {
    9:     public static final Set<String> d = yr.k0(new String[]{"content-type", "user-agent", "accept-encoding", "content-encoding"});
   10:     public final ta6 a;
   11:     public final String b;
   12:     public final Map<String, String> c;
   13: 
   14:     public e72(ta6 ta6Var) {
```


---

## `apk_analysis/jadx/sources/defpackage/fa7.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package defpackage;
    2: 
    3: import java.util.concurrent.TimeUnit;
    4: import okhttp3.OkHttpClient;
    5: 
    6: /* JADX INFO: loaded from: classes5.dex */
    7: public final class fa7 extends gh4 implements bm3<ze7, i36, OkHttpClient> {
    8:     public static final fa7 f = new fa7(2);
    9: 
   10:     @Override // defpackage.bm3
   11:     public final OkHttpClient invoke(ze7 ze7Var, i36 i36Var) {
   12:         ze7 ze7Var2 = ze7Var;
   13:         ze7Var2.getClass();
   14:         i36Var.getClass();
   15:         f94 f94Var = (f94) ze7Var2.e(x07.a(f94.class), null, x97.e);
   16:         l02 l02Var = (l02) ze7Var2.e(x07.a(l02.class), null, x97.f);
   17:         OkHttpClient.a aVar = new OkHttpClient.a();
   18:         TimeUnit timeUnit = TimeUnit.SECONDS;
   19:         timeUnit.getClass();
   20:         aVar.x = gb9.b(30L, timeUnit);
   21:         TimeUnit timeUnit2 = TimeUnit.MINUTES;
   22:         timeUnit2.getClass();
   23:         aVar.y = gb9.b(30L, timeUnit2);
   24:         aVar.z = gb9.b(30L, timeUnit2);
   25:         aVar.c.add(f94Var);
   26:         aVar.j = l02Var;
   27:         return new OkHttpClient(aVar);
   28:     }
   29: }
```


---

## `apk_analysis/jadx/sources/defpackage/r76.java`

**Разделы:** SIGN-IN ROUTES / DTO

```
    3: import androidx.constraintlayout.core.motion.utils.TypedValues;
    4: 
    5: /* JADX INFO: loaded from: classes5.dex */
    6: public final class r76 {
    7: 
    8:     @bq7("confirmType")
    9:     private final cw1 a;
   10: 
   11:     @bq7("objType")
   12:     private final qc9 b;
   13: 
   40: 
   41:     public final String toString() {
   42:         cw1 cw1Var = this.a;
   43:         qc9 qc9Var = this.b;
   44:         String str = this.c;
   45:         StringBuilder sb = new StringBuilder("PhoneRequest(confirmType=");
   46:         sb.append(cw1Var);
   47:         sb.append(", objType=");
   48:         sb.append(qc9Var);
   49:         sb.append(", target=");
   50:         return me0.d(sb, str, ")");
```


---

## `apk_analysis/jadx/sources/defpackage/ix3.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  265:         zu3 zu3Var5 = new zu3(gx0Var3, "/index.html");
  266:         gx0 gx0Var4 = zu3.g;
  267:         zu3 zu3Var6 = new zu3(gx0Var4, ProxyConfig.MATCH_HTTP);
  268:         zu3 zu3Var7 = new zu3(gx0Var4, ProxyConfig.MATCH_HTTPS);
  269:         gx0 gx0Var5 = zu3.d;
  270:         zu3[] zu3VarArr = {zu3Var, zu3Var2, zu3Var3, zu3Var4, zu3Var5, zu3Var6, zu3Var7, new zu3(gx0Var5, "200"), new zu3(gx0Var5, "204"), new zu3(gx0Var5, "206"), new zu3(gx0Var5, "304"), new zu3(gx0Var5, "400"), new zu3(gx0Var5, "404"), new zu3(gx0Var5, "500"), new zu3("accept-charset", ""), new zu3("accept-encoding", "gzip, deflate"), new zu3("accept-language", ""), new zu3("accept-ranges", ""), new zu3("accept", ""), new zu3("access-control-allow-origin", ""), new zu3("age", ""), new zu3("allow", ""), new zu3("authorization", ""), new zu3("cache-control", ""), new zu3("content-disposition", ""), new zu3("content-encoding", ""), new zu3("content-language", ""), new zu3("content-length", ""), new zu3("content-location", ""), new zu3("content-range", ""), new zu3("content-type", ""), new zu3("cookie", ""), new zu3("date", ""), new zu3("etag", ""), new zu3("expect", ""), new zu3("expires", ""), new zu3("from", ""), new zu3("host", ""), new zu3("if-match", ""), new zu3("if-modified-since", ""), new zu3("if-none-match", ""), new zu3("if-range", ""), new zu3("if-unmodified-since", ""), new zu3("last-modified", ""), new zu3(DynamicLink.Builder.KEY_LINK, ""), new zu3(FirebaseAnalytics.Param.LOCATION, ""), new zu3("max-forwards", ""), new zu3("proxy-authenticate", ""), new zu3("proxy-authorization", ""), new zu3("range", ""), new zu3("referer", ""), new zu3("refresh", ""), new zu3("retry-after", ""), new zu3("server", ""), new zu3("set-cookie", ""), new zu3("strict-transport-security", ""), new zu3("transfer-encoding", ""), new zu3("user-agent", ""), new zu3("vary", ""), new zu3("via", ""), new zu3("www-authenticate", "")};
  271:         b = zu3VarArr;
  272:         LinkedHashMap linkedHashMap = new LinkedHashMap(61);
  273:         for (int i = 0; i < 61; i++) {
  274:             if (!linkedHashMap.containsKey(zu3VarArr[i].a)) {
  275:                 linkedHashMap.put(zu3VarArr[i].a, Integer.valueOf(i));
```


---

## `apk_analysis/jadx/sources/defpackage/n67.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP, API HOST / NETWORK CONFIG

```
   10: import java.util.Collections;
   11: import java.util.List;
   12: import java.util.Objects;
   13: import java.util.concurrent.ConcurrentHashMap;
   14: import java.util.concurrent.Executor;
   15: import okhttp3.OkHttpClient;
   16: 
   17: /* JADX INFO: loaded from: classes5.dex */
   18: public final class n67 {
   19:     public final ConcurrentHashMap<Method, Object> a = new ConcurrentHashMap<>();
   20:     public final okhttp3.a.InterfaceC0310a b;
  117:             fz3 fz3VarA = aVar.a();
  118:             ArrayList arrayList = fz3VarA.f;
  119:             if ("".equals(arrayList.get(arrayList.size() - 1))) {
  120:                 this.b = fz3VarA;
  121:             } else {
  122:                 r01.e(fz3VarA, "baseUrl must end in /: ");
  123:             }
  124:         }
  125: 
  126:         public final n67 c() {
  127:             if (this.b == null) {
  128:                 ah.f("Base URL required.");
  129:                 return null;
  130:             }
  131:             okhttp3.a.InterfaceC0310a okHttpClient = this.a;
  132:             if (okHttpClient == null) {
  133:                 okHttpClient = new OkHttpClient();
  134:             }
  135:             okhttp3.a.InterfaceC0310a interfaceC0310a = okHttpClient;
  136:             vi viVar = a96.a;
  137:             dv0 dv0Var = a96.c;
  138:             ArrayList arrayList = new ArrayList(this.d);
  139:             List<? extends gy0.a> listA = dv0Var.a(viVar);
  140:             arrayList.addAll(listA);
```


---

## `apk_analysis/jadx/sources/defpackage/dz6.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package defpackage;
    2: 
    3: /* JADX INFO: loaded from: classes3.dex */
    4: @bd2(c = "coil3.intercept.RealInterceptorChain", f = "RealInterceptorChain.kt", l = {31}, m = "proceed", v = 1)
    5: public final class dz6 extends f02 {
    6:     public e94 l;
    7:     public /* synthetic */ Object m;
    8:     public final /* synthetic */ fz6 n;
    9:     public int o;
```


---

## `apk_analysis/jadx/sources/defpackage/ez0.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    4: import androidx.compose.material.ripple.RippleIndicationInstance;
    5: import androidx.compose.runtime.State;
    6: import java.util.LinkedHashMap;
    7: import java.util.Map;
    8: import java.util.Set;
    9: import okhttp3.OkHttpClient;
   10: 
   11: /* JADX INFO: loaded from: classes4.dex */
   12: public final /* synthetic */ class ez0 implements ll3 {
   13:     public final /* synthetic */ int b;
   14:     public final /* synthetic */ Object c;
   59:                 if (str4 != null) {
   60:                     linkedHashMap.put("service.version", str4);
   61:                 }
   62:                 return linkedHashMap;
   63:             case 2:
   64:                 OkHttpClient.a aVarE = ((db6) obj).c.e();
   65:                 aVarE.f = false;
   66:                 return new OkHttpClient(aVarE);
   67:             default:
   68:                 return RippleIndicationInstance.stateLayer$lambda$0((State) obj);
   69:         }
   70:     }
   71: }
```


---

## `apk_analysis/jadx/sources/defpackage/p72.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8: import java.util.List;
    9: 
   10: /* JADX INFO: loaded from: classes4.dex */
   11: public final class p72 implements rxa, OnFailureListener {
   12:     public static final ba8 c = new ba8("default_ok_http");
   13:     public static final ba8 d = new ba8("authorized_retrofit");
   14:     public static final ba8 e = new ba8("bonuses_retrofit");
   15:     public static final ba8 f = new ba8("plain_retrofit");
   16:     public static final ba8 g = new ba8("AUTHORISED_DISPOSABLES");
   17:     public static final ba8 h = new ba8("DISPATCHER_IO");
   18:     public static final ba8 i = new ba8("extra_interceptors");
   19:     public static final /* synthetic */ p72 j = new p72(1);
   20:     public static final /* synthetic */ p72 k = new p72(2);
   21:     public final /* synthetic */ int b;
   22: 
   23:     public /* synthetic */ p72(int i2) {
```


---

## `apk_analysis/jadx/sources/defpackage/pda.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   50:                 httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str2).openConnection()));
   51:                 try {
   52:                     httpURLConnection.setReadTimeout(10000);
   53:                     httpURLConnection.setConnectTimeout(10000);
   54:                     httpURLConnection.setRequestMethod("GET");
   55:                     httpURLConnection.addRequestProperty("User-Agent", System.getProperty("http.agent"));
   56:                     httpURLConnection.setInstanceFollowRedirects(false);
   57:                     httpURLConnection.setRequestProperty("connection", TJAdUnitConstants.String.CLOSE);
   58:                     y14.m(httpURLConnection);
   59:                     if (ln9Var != null) {
   60:                         ln9Var.c(httpURLConnection);
```


---

## `apk_analysis/jadx/sources/defpackage/sz2.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package defpackage;
    2: 
    3: import java.util.List;
    4: 
    5: /* JADX INFO: loaded from: classes3.dex */
    6: @bd2(c = "coil3.intercept.EngineInterceptorKt", f = "EngineInterceptor.kt", l = {259}, m = "transform", v = 1)
    7: public final class sz2 extends f02 {
    8:     public lz2.a l;
    9:     public b24 m;
   10:     public zz5 n;
   11:     public a13 o;
```


---

## `apk_analysis/jadx/sources/defpackage/na0.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   68:             String str = this.a;
   69:             return this.d.hashCode() + zg.b(zg.b((str == null ? 0 : str.hashCode()) * 31, 31, this.b), 31, this.c);
   70:         }
   71: 
   72:         public final String toString() {
   73:             return dg.c(ad2.d("Header(title=", this.a, ", subtitle=", this.b, ", imageUrl="), this.c, ", backgroundColor=", this.d, ")");
   74:         }
   75:     }
   76: 
   77:     public na0(b bVar, ArrayList arrayList, a aVar) {
   78:         this.a = bVar;
```


---

## `apk_analysis/jadx/sources/defpackage/ia7.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package defpackage;
    2: 
    3: import com.google.gson.Gson;
    4: import okhttp3.OkHttpClient;
    5: 
    6: /* JADX INFO: loaded from: classes5.dex */
    7: public final class ia7 {
    8:     public static final tc5 a = h.c(a.f);
    9: 
   17:             ba8 ba8Var = x97.b;
   18:             cg4 cg4Var = cg4.Singleton;
   19:             zk1 zk1VarA = x07.a(Gson.class);
   20:             ba8 ba8Var2 = bf7.e;
   21:             u4.d(new gi0(ba8Var2, zk1VarA, ba8Var, ea7.f, cg4Var), tc5Var2);
   22:             u4.d(new gi0(ba8Var2, x07.a(OkHttpClient.class), x97.c, fa7.f, cg4Var), tc5Var2);
   23:             u4.d(new gi0(ba8Var2, x07.a(b37.class), x97.d, ga7.f, cg4Var), tc5Var2);
   24:             u4.d(new gi0(ba8Var2, x07.a(ka7.class), null, ha7.f, cg4Var), tc5Var2);
   25:             return j59.a;
   26:         }
   27:     }
```


---

## `apk_analysis/jadx/sources/defpackage/dy3.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    5: import java.io.IOException;
    6: import java.net.ProtocolException;
    7: import java.net.Proxy;
    8: import java.net.Socket;
    9: import java.util.concurrent.TimeUnit;
   10: import okhttp3.OkHttpClient;
   11: 
   12: /* JADX INFO: loaded from: classes5.dex */
   13: public final class dy3 implements o13 {
   14:     public final OkHttpClient a;
   15:     public final ly6 b;
   16:     public final wu0 c;
   17:     public final vu0 d;
   18:     public int e;
   19:     public final mv3 f;
  327:             m();
  328:             return -1L;
  329:         }
  330:     }
  331: 
  332:     public dy3(OkHttpClient okHttpClient, ly6 ly6Var, iy6 iy6Var, hy6 hy6Var) {
  333:         iy6Var.getClass();
  334:         hy6Var.getClass();
  335:         this.a = okHttpClient;
  336:         this.b = ly6Var;
  337:         this.c = iy6Var;
  338:         this.d = hy6Var;
  339:         this.f = new mv3(iy6Var);
  340:     }
```


---

## `apk_analysis/jadx/sources/defpackage/db6.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package defpackage;
    2: 
    3: import androidx.work.WorkRequest;
    4: import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
    5: import com.google.gson.JsonIOException;
    6: import com.google.gson.JsonSyntaxException;
    7: import com.posthog.PostHogEvent;
    8: import com.posthog.internal.PostHogApiError;
    9: import com.posthog.internal.PostHogBatchEvent;
   20: import java.net.SocketException;
   21: import java.net.SocketTimeoutException;
   22: import java.util.LinkedHashMap;
   23: import java.util.List;
   24: import java.util.Map;
   25: import okhttp3.OkHttpClient;
   26: 
   27: /* JADX INFO: loaded from: classes4.dex */
   28: public final class db6 {
   29:     public final ta6 a;
   30:     public final fh8 b = new fh8(new tc4(1));
   31:     public final OkHttpClient c;
   32:     public final fh8 d;
   33: 
   34:     public static final class a extends x39<PostHogBatchEvent> {
   35:     }
   36: 
   71:     public static final class d extends x39<PostHogRemoteConfigResponse> {
   72:     }
   73: 
   74:     public db6(ta6 ta6Var) {
   75:         this.a = ta6Var;
   76:         OkHttpClient.a aVar = new OkHttpClient.a();
   77:         aVar.c.add(new vt3(ta6Var));
   78:         aVar.d.add(new e72(ta6Var));
   79:         this.c = new OkHttpClient(aVar);
   80:         this.d = new fh8(new ez0(this, 2));
   81:     }
   82: 
   83:     /* JADX WARN: Code duplicated, block: B:31:0x0077  */
   84:     /* JADX WARN: Code duplicated, block: B:35:0x007f  */
  194:             return null;
  195:         }
  196:     }
  197: 
  198:     public final PostHogFlagsResponse c(b37 b37Var) throws IOException {
  199:         OkHttpClient okHttpClient = (OkHttpClient) this.d.getValue();
  200:         okHttpClient.getClass();
  201:         z47 z47VarExecute = FirebasePerfOkHttpClient.execute(new jy6(okHttpClient, b37Var));
  202:         try {
  203:             if (!z47VarExecute.o()) {
  204:                 throw new PostHogApiError(z47VarExecute.d, z47VarExecute.e, null);
  205:             }
  206:             b57 b57Var = z47VarExecute.h;
  220:             }
  221:         }
  222:     }
  223: 
  224:     public final void d(b37 b37Var) {
  225:         OkHttpClient okHttpClient = this.c;
  226:         okHttpClient.getClass();
  227:         z47 z47VarExecute = FirebasePerfOkHttpClient.execute(new jy6(okHttpClient, b37Var));
  228:         try {
  229:             Integer numO = null;
  230:             if (z47VarExecute.o()) {
  231:                 j59 j59Var = j59.a;
  232:                 m96.c(z47VarExecute, null);
  264:         StringBuilder sb = new StringBuilder();
  265:         ta6 ta6Var = this.a;
  266:         sb.append(ta6Var.y);
  267:         sb.append('/');
  268:         sb.append(ta6Var.z);
  269:         aVar.b("User-Agent", sb.toString());
  270:         aVar.c("POST", cVar);
  271:         return aVar.a();
  272:     }
  273: 
  274:     public final PostHogRemoteConfigResponse h() throws IOException {
  282:         StringBuilder sbC = ti0.c(strF, "/array/");
  283:         ta6 ta6Var = this.a;
  284:         sbC.append(ta6Var.t);
  285:         sbC.append("/config");
  286:         aVar.e(sbC.toString());
  287:         aVar.b("User-Agent", ta6Var.y + '/' + ta6Var.z);
  288:         aVar.b("Content-Type", "application/json; charset=utf-8");
  289:         aVar.c("GET", null);
  290:         b37 b37VarA = aVar.a();
  291:         OkHttpClient okHttpClient = this.c;
  292:         okHttpClient.getClass();
  293:         z47 z47VarExecute = FirebasePerfOkHttpClient.execute(new jy6(okHttpClient, b37VarA));
  294:         try {
  295:             if (!z47VarExecute.o()) {
  296:                 throw new PostHogApiError(z47VarExecute.d, z47VarExecute.e, null);
  297:             }
  298:             b57 b57Var = z47VarExecute.h;
```


---

## `apk_analysis/jadx/sources/okhttp3/OkHttpClient.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   32: import javax.net.ssl.HostnameVerifier;
   33: import javax.net.ssl.SSLSocketFactory;
   34: import javax.net.ssl.X509TrustManager;
   35: 
   36: /* JADX INFO: loaded from: classes5.dex */
   37: public class OkHttpClient implements Cloneable, okhttp3.a.InterfaceC0310a {
   38:     public static final List<ts6> D = gb9.k(ts6.HTTP_2, ts6.HTTP_1_1);
   39:     public static final List<tw1> E = gb9.k(tw1.e, tw1.f);
   40:     public final int A;
   41:     public final long B;
   42:     public final j87 C;
  109:             this.l = vp2.b;
  110:             this.n = pxVar;
  111:             SocketFactory socketFactory = SocketFactory.getDefault();
  112:             socketFactory.getClass();
  113:             this.o = socketFactory;
  114:             this.r = OkHttpClient.E;
  115:             this.s = OkHttpClient.D;
  116:             this.t = ev5.a;
  117:             this.u = u81.c;
  118:             this.x = 10000;
  119:             this.y = 10000;
  120:             this.z = 10000;
  121:             this.A = 1024L;
  122:         }
  123:     }
  124: 
  125:     public OkHttpClient(a aVar) {
  126:         SSLSocketFactory sSLSocketFactoryM;
  127:         X509TrustManager x509TrustManagerN;
  128:         y14 y14VarB;
  129:         this.b = aVar.a;
  130:         this.c = aVar.b;
  208:         }
  209:         List<f94> list3 = this.e;
  210:         List<f94> list4 = this.d;
  211:         list4.getClass();
  212:         if (list4.contains(null)) {
  213:             vh.e(list4, "Null interceptor: ");
  214:             throw null;
  215:         }
  216:         list3.getClass();
  217:         if (list3.contains(null)) {
  218:             vh.e(list3, "Null network interceptor: ");
  219:             throw null;
  220:         }
  221:         List<tw1> list5 = this.s;
  222:         if (!(list5 instanceof Collection) || !list5.isEmpty()) {
  223:             Iterator<T> it2 = list5.iterator();
  299:         aVar.A = this.B;
  300:         aVar.B = this.C;
  301:         return aVar;
  302:     }
  303: 
  304:     public OkHttpClient() {
  305:         this(new a());
  306:     }
  307: }
```


---

## `apk_analysis/jadx/sources/yads/fl0.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  335:         if (string != null) {
  336:             httpURLConnectionA.setRequestProperty("Range", string);
  337:         }
  338:         String str2 = this.g;
  339:         if (str2 != null) {
  340:             httpURLConnectionA.setRequestProperty("User-Agent", str2);
  341:         }
  342:         httpURLConnectionA.setRequestProperty("Accept-Encoding", z ? "gzip" : "identity");
  343:         httpURLConnectionA.setInstanceFollowRedirects(z2);
  344:         httpURLConnectionA.setDoOutput(bArr != null);
  345:         int i2 = bd0.k;
```


---

## `apk_analysis/jadx/sources/yads/mc0.java`

**Разделы:** API HOST / NETWORK CONFIG

```
  433:         t56 t56Var = null;
  434:         Uri uri2 = null;
  435:         bj5 bj5Var = null;
  436:         while (true) {
  437:             xmlPullParser.next();
  438:             String str33 = "BaseURL";
  439:             if (am6.c(xmlPullParser, "BaseURL")) {
  440:                 if (!z4) {
  441:                     jA6 = a(xmlPullParser, jA6);
  442:                     z4 = z;
  443:                 }
  444:                 arrayList25.addAll(a(xmlPullParser, arrayListA, z2));
 2755:                                                                                                             if (xmlPullParser.getEventType() == 4) {
 2756:                                                                                                                 text = xmlPullParser.getText();
 2757:                                                                                                             } else {
 2758:                                                                                                                 a(xmlPullParser);
 2759:                                                                                                             }
 2760:                                                                                                         } while (!am6.b(xmlPullParser, "BaseURL"));
 2761:                                                                                                         if (text != null && o46.a(text)[0] != -1) {
 2762:                                                                                                             if (attributeValue3 == null) {
 2763:                                                                                                                 attributeValue3 = text;
 2764:                                                                                                             }
 2765:                                                                                                             return xt3.a(new ms(i, i2, text, attributeValue3));
```


---

## `apk_analysis/jadx/sources/yads/ph0.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   18:     public final int hashCode() {
   19:         return this.a.hashCode();
   20:     }
   21: 
   22:     public final String toString() {
   23:         return defpackage.me0.c("Header(text=", this.a, ")");
   24:     }
   25: }
```


---

## `apk_analysis/jadx/sources/yads/ss.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   65:                 ua3 ua3Var = A.a;
   66:                 ua3Var.getClass();
   67:                 HashMap map3 = new HashMap();
   68:                 map3.putAll(map);
   69:                 oa3 oa3Var = oa3.AD_HEADER_WIDTH;
   70:                 map3.put("User-Agent", ua3Var.b.a.a());
   71:                 sa3 sa3VarA = ua3Var.a.a(r75Var, map3);
   72:                 try {
   73:                     int i = sa3VarA.a;
   74:                     List listUnmodifiableList = Collections.unmodifiableList(sa3VarA.b);
   75:                     if (i == 304) {
```


---

## `apk_analysis/jadx/sources/yads/lr0.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8:     NONE("none"),
    9:     BUTTON("button"),
   10:     IMAGE("image"),
   11:     TEXT("text"),
   12:     EDIT_TEXT("edit_text"),
   13:     HEADER("header"),
   14:     TAB_BAR("tab_bar"),
   15:     LIST("list"),
   16:     SELECT("select"),
   17:     CHECKBOX("checkbox"),
   18:     RADIO("radio"),
```


---

## `apk_analysis/jadx/sources/yads/jb4.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP, API HOST / NETWORK CONFIG

```
  208:     }
  209: 
  210:     public static final void a(jb4 jb4Var, String str, String str2) {
  211:         jb4Var.h = str2;
  212:         ls4 ls4Var = jb4Var.b.a;
  213:         ls4Var.loadDataWithBaseURL("https://yandex.ru", ls4Var.a(str), "text/html", "UTF-8", null);
  214:     }
  215: 
  216:     public final void a(vb4 vb4Var, Map map) {
  217:         ls4 ls4Var = this.a;
  218:         vt5 vt5Var = new vt5(ls4Var);
```


---

## `apk_analysis/jadx/sources/yads/br.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP, API HOST / NETWORK CONFIG

```
    9:         ls4Var.setId(2);
   10:     }
   11: 
   12:     public void a(String str) {
   13:         ls4 ls4Var = this.a;
   14:         ls4Var.loadDataWithBaseURL("https://yandex.ru", ls4Var.a(str), "text/html", "UTF-8", null);
   15:     }
   16: 
   17:     public void a(ha3 ha3Var) {
   18:         this.a.setHtmlWebViewListener(ha3Var);
   19:     }
```


---

## `apk_analysis/jadx/sources/yads/xb2.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  110:                 gc5Var.setTouchModal(qb2Var.h instanceof dc2);
  111:             } else {
  112:                 gc5Var.setFocusable(qb2Var.h instanceof dc2);
  113:             }
  114:             final View view2 = childAt;
  115:             gc5Var.setTouchInterceptor(new mx4(gc5Var, view2, qb2Var.h instanceof dc2, gc5Var.isOutsideTouchable(), qb2Var.k, ttVar));
  116:             k11 k11Var = qb2Var.a;
  117:             gc5Var.setEnterTransition(k11Var != null ? rb2.a(k11Var, (pb2) qb2Var.j.a(fs2Var), true, fs2Var) : new TransitionSet().addTransition(new Fade()).addTransition(new w16((pb2) qb2Var.j.a(fs2Var))).setInterpolator((TimeInterpolator) new tp5()));
  118:             k11 k11Var2 = qb2Var.b;
  119:             gc5Var.setExitTransition(k11Var2 != null ? rb2.a(k11Var2, (pb2) qb2Var.j.a(fs2Var), false, fs2Var) : new TransitionSet().addTransition(new Fade()).addTransition(new w16((pb2) qb2Var.j.a(fs2Var))).setInterpolator((TimeInterpolator) new tp5()));
  120:             s0 s0Var = this.f;
```


---

## `apk_analysis/jadx/sources/yads/oa3.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   38:     AD_NON_SKIPPABLE_AD_ENABLED("Ad-NonSkippableAdEnabled"),
   39:     AD_TYPE_FORMAT("Ad-AdTypeFormat"),
   40:     AD_PRODUCT_TYPE("Ad-ProductType"),
   41:     AD_SOURCE("Ad-Source"),
   42:     /* JADX INFO: Fake field, exist only in values array */
   43:     APP_ID("User-Agent"),
   44:     /* JADX INFO: Fake field, exist only in values array */
   45:     APP_VERSION_NAME("encrypted-request"),
   46:     AD_ANALYTICS_PARAMETERS("Ad-AnalyticsParameters"),
   47:     AD_INCREASED_AD_SIZE("Ad-IncreasedAdSize"),
   48:     AD_SHOULD_INVALIDATE_STARTUP("Ad-ShouldInvalidateStartup"),
```


---

## `apk_analysis/jadx/sources/yads/uw2.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   88:         a((Map) uz4Var, "age_restricted_user", sw2Var.p);
   89:         a(uz4Var, "view_size_info", sw2Var.J0);
   90:         a((Map) uz4Var, "web_view_available", sw2Var.K0);
   91:         a(uz4Var, "startup_version", sw2Var.L0);
   92:         a(uz4Var, "session-data", sw2Var.O0);
   93:         a(uz4Var, "user-agent", sw2Var.N0);
   94:         a(uz4Var, "stub_reason", sw2Var.R0);
   95:         a((Map) uz4Var, "gms_available", sw2Var.S0);
   96:         a((Map) uz4Var, "opt_out", sw2Var.T0);
   97:         a(uz4Var, "ram", sw2Var.U0);
   98:         a(uz4Var, "cpu_cores", sw2Var.V0);
```


---

## `apk_analysis/jadx/sources/io/appmetrica/analytics/impl/Om.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   60:         return null;
   61:     }
   62: 
   63:     @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
   64:     public final boolean onCreateTask() {
   65:         this.d.setHeader("Accept-Encoding", "encrypted");
   66:         return this.a.g();
   67:     }
   68: 
   69:     @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
   70:     public final void onPerformRequest() {
```


---

## `apk_analysis/jadx/sources/io/appmetrica/analytics/networkapi/Request.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   24: 
   25:         public Builder(String str) {
   26:             this.a = str;
   27:         }
   28: 
   29:         public final Builder addHeader(String str, String str2) {
   30:             this.d.put(str, str2);
   31:             return this;
   32:         }
   33: 
   34:         public final Request build() {
```


---

## `apk_analysis/jadx/sources/io/appmetrica/analytics/push/impl/A1.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package io.appmetrica.analytics.push.impl;
    2: 
    3: import android.content.Context;
    4: import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
    5: import defpackage.b37;
    6: import defpackage.b57;
    7: import defpackage.jy6;
    8: import defpackage.lx0;
    9: import defpackage.z47;
   10: import io.appmetrica.analytics.push.logger.internal.PublicLogger;
   11: import java.io.IOException;
   12: import okhttp3.OkHttpClient;
   13: 
   14: /* JADX INFO: loaded from: classes5.dex */
   15: public final class A1 implements C0 {
   16:     public final OkHttpClient a;
   17: 
   18:     public A1(Context context) {
   19:         lx0 lx0Var = new lx0(context.getCacheDir());
   20:         OkHttpClient.a aVar = new OkHttpClient.a();
   21:         aVar.k = lx0Var;
   22:         this.a = new OkHttpClient(aVar);
   23:     }
   24: 
   25:     @Override // io.appmetrica.analytics.push.impl.C0
   26:     public final byte[] a(String str) throws Throwable {
   27:         z47 z47VarExecute;
   29:         aVar.e(str);
   30:         b37 b37VarA = aVar.a();
   31:         z47 z47Var = null;
   32:         z47Var = null;
   33:         try {
   34:             OkHttpClient okHttpClient = this.a;
   35:             try {
   36:                 okHttpClient.getClass();
   37:                 z47VarExecute = FirebasePerfOkHttpClient.execute(new jy6(okHttpClient, b37VarA));
   38:                 try {
   39:                     try {
   40:                         z47 z47Var2 = z47VarExecute.j;
   41:                         b57 b57Var = z47VarExecute.h;
   42:                         byte[] bArrM = b57Var != null ? b57Var.m() : null;
```


---

## `apk_analysis/jadx/sources/io/appmetrica/analytics/push/impl/G2.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    9: import io.appmetrica.analytics.push.coreutils.internal.model.BasePushMessage;
   10: import io.appmetrica.analytics.push.coreutils.internal.utils.CoreUtils;
   11: import java.io.Closeable;
   12: import java.io.InputStream;
   13: import java.util.List;
   14: import okhttp3.OkHttpClient;
   15: import org.json.JSONObject;
   16: 
   17: /* JADX INFO: loaded from: classes5.dex */
   18: public abstract class G2 {
   19:     /* JADX WARN: Code duplicated, block: B:6:0x0011  */
   78:         }
   79:     }
   80: 
   81:     public static boolean a() {
   82:         try {
   83:             List<ts6> list = OkHttpClient.D;
   84:             return true;
   85:         } catch (ClassNotFoundException unused) {
   86:             return false;
   87:         }
   88:     }
```


---

## `apk_analysis/jadx/sources/io/appmetrica/analytics/networktasks/impl/a.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   10: /* JADX INFO: loaded from: classes5.dex */
   11: public final class a {
   12:     public static Response a(String str, String str2, SSLSocketFactory sSLSocketFactory) {
   13:         Request.Builder builderWithMethod = new Request.Builder(str2).withMethod(Request.Method.GET);
   14:         if (!TextUtils.isEmpty(str)) {
   15:             builderWithMethod.addHeader("If-None-Match", str);
   16:         }
   17:         NetworkClientBuilder networkClientBuilder = new NetworkClientBuilder();
   18:         NetworkClientSettings.Builder builderWithSslSocketFactory = new NetworkClientSettings.Builder().withInstanceFollowRedirects(true).withSslSocketFactory(sSLSocketFactory);
   19:         int i = b.a;
   20:         return networkClientBuilder.withSettings(builderWithSslSocketFactory.withConnectTimeout(i).withReadTimeout(i).build()).build().newCall(builderWithMethod.build()).execute();
```


---

## `apk_analysis/jadx/sources/io/appmetrica/analytics/networktasks/impl/h.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   59:                     sb.append("`. All hosts = ");
   60:                     List<String> allHosts = networkTask.getUnderlyingTask().getFullUrlFormer().getAllHosts();
   61:                     sb.append(allHosts != null ? allHosts.toString() : null);
   62:                     networkTask.onRequestError(new IllegalArgumentException(sb.toString()));
   63:                 } else {
   64:                     Request.Builder builderAddHeader = new Request.Builder(url).addHeader("Accept", "application/json").addHeader("User-Agent", networkTask.getUserAgent());
   65:                     RequestDataHolder requestDataHolder = networkTask.getRequestDataHolder();
   66:                     Iterator<T> it = requestDataHolder.getHeaders().entrySet().iterator();
   67:                     while (it.hasNext()) {
   68:                         Map.Entry entry = (Map.Entry) it.next();
   69:                         builderAddHeader.addHeader((String) entry.getKey(), qn1.a0((Iterable) entry.getValue(), StringUtils.COMMA, null, null, 0, null, 62));
   70:                     }
   71:                     if (NetworkTask.Method.POST == requestDataHolder.getMethod() && (postData = requestDataHolder.getPostData()) != null) {
   72:                         if (!(postData.length == 0)) {
   73:                             builderAddHeader.withMethod(Request.Method.POST);
   74:                             builderAddHeader.withBody(postData);
   75:                             Long sendTimestamp = requestDataHolder.getSendTimestamp();
   76:                             if (sendTimestamp != null) {
   77:                                 builderAddHeader.addHeader("Send-Timestamp", String.valueOf(sendTimestamp.longValue() / 1000));
   78:                             }
   79:                             Integer sendTimezoneSec = requestDataHolder.getSendTimezoneSec();
   80:                             if (sendTimezoneSec != null) {
   81:                                 builderAddHeader.addHeader("Send-Timezone", String.valueOf(sendTimezoneSec.intValue()));
   82:                             }
   83:                         }
   84:                     }
   85:                     NetworkClientBuilder networkClientBuilder = new NetworkClientBuilder();
   86:                     NetworkClientSettings.Builder builder = new NetworkClientSettings.Builder();
   87:                     int i = b.a;
   88:                     Response responseExecute = networkClientBuilder.withSettings(builder.withConnectTimeout(i).withReadTimeout(i).withSslSocketFactory(networkTask.getSslSocketFactory()).build()).build().newCall(builderAddHeader.build()).execute();
   89:                     int code = responseExecute.getCode();
   90:                     ResponseDataHolder responseDataHolder = networkTask.getResponseDataHolder();
   91:                     responseDataHolder.setResponseCode(code);
   92:                     responseDataHolder.setResponseHeaders(CollectionUtils.convertMapKeysToLowerCase(responseExecute.getHeaders()));
   93:                     if (responseDataHolder.isValidResponse()) {
```


---

## `apk_analysis/jadx/sources/io/appmetrica/analytics/networktasks/internal/RequestDataHolder.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   38: 
   39:     public Integer getSendTimezoneSec() {
   40:         return this.e;
   41:     }
   42: 
   43:     public void setHeader(String str, String... strArr) {
   44:         this.b.put(str, Arrays.asList(strArr));
   45:     }
   46: 
   47:     public void setPostData(byte[] bArr) {
   48:         this.a = NetworkTask.Method.POST;
```


---

## `apk_analysis/jadx/sources/io/appmetrica/analytics/idsync/impl/q.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   43:         if ((A.a[d.a.ordinal()] == 1 ? new C0764b(b.a) : new C0763a()).a()) {
   44:             r rVar = qVar.e;
   45:             rVar.getClass();
   46:             Request.Builder builder = new Request.Builder(g.b);
   47:             for (Map.Entry entry : g.d.entrySet()) {
   48:                 builder.addHeader((String) entry.getKey(), qn1.a0((Iterable) entry.getValue(), ", ", null, null, 0, null, 62));
   49:             }
   50:             Response responseExecute = new NetworkClientBuilder().withSettings(new NetworkClientSettings.Builder().withSslSocketFactory(rVar.a.getSslSocketFactory()).withUseCaches(false).withInstanceFollowRedirects(true).withMaxResponseSize(102400).build()).build().newCall(builder.build()).execute();
   51:             rVar.b.a(new J(g.a, responseExecute.isCompleted(), responseExecute.getUrl(), g.g.contains(Integer.valueOf(responseExecute.getCode())), responseExecute.getCode(), responseExecute.getResponseData(), responseExecute.getHeaders()), g);
   52:         }
   53:     }
```


---

## `apk_analysis/jadx/sources/io/appmetrica/analytics/idsync/impl/x.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   17:     }
   18: 
   19:     public final boolean a(String str, String str2) {
   20:         int code;
   21:         try {
   22:             Response responseExecute = new NetworkClientBuilder().withSettings(new NetworkClientSettings.Builder().withSslSocketFactory(this.a.getNetworkContext().getSslSocketFactoryProvider().getSslSocketFactory()).withUseCaches(false).withInstanceFollowRedirects(true).withMaxResponseSize(Data.MAX_DATA_BYTES).build()).build().newCall(new Request.Builder(str).withMethod(Request.Method.POST).withBody(str2.getBytes(ha1.b)).addHeader("Content-Type", "application/json").build()).execute();
   23:             return responseExecute.isCompleted() && (responseExecute.getCode() == 200 || (400 <= (code = responseExecute.getCode()) && code < 500));
   24:         } catch (Exception unused) {
   25:         }
   26:     }
   27: }
```


---

## `apk_analysis/jadx/sources/io/appmetrica/analytics/networkokhttp/impl/c.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package io.appmetrica.analytics.networkokhttp.impl;
    2: 
    3: import com.google.firebase.perf.FirebasePerformance;
    4: import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
    5: import defpackage.aa4;
    6: import defpackage.b37;
    7: import defpackage.f37;
    8: import defpackage.gb9;
    9: import defpackage.jv;
   21: import io.appmetrica.analytics.networkapi.Response;
   22: import java.util.ArrayList;
   23: import java.util.LinkedHashMap;
   24: import java.util.List;
   25: import java.util.Map;
   26: import okhttp3.OkHttpClient;
   27: 
   28: /* JADX INFO: loaded from: classes5.dex */
   29: public final class c extends Call {
   30:     public final OkHttpClient a;
   31:     public final Request b;
   32:     public final NetworkClientSettings c;
   33: 
   34:     public c(OkHttpClient okHttpClient, Request request, NetworkClientSettings networkClientSettings) {
   35:         this.a = okHttpClient;
   36:         this.b = request;
   37:         this.c = networkClientSettings;
   38:     }
   39: 
   40:     public static b37 a(Request request) {
   73:     @Override // io.appmetrica.analytics.networkapi.Call
   74:     public final Response execute() {
   75:         NetworkCallMetrics networkCallMetricsBuild;
   76:         NetworkCallMetrics networkCallMetricsBuild2 = null;
   77:         d dVar = aa4.e(this.c.getCollectMetrics(), Boolean.TRUE) ? new d(new SystemTimeProvider()) : null;
   78:         OkHttpClient okHttpClient = this.a;
   79:         if (dVar != null) {
   80:             OkHttpClient.a aVarE = okHttpClient.e();
   81:             aVarE.e = new jv(dVar, 3);
   82:             okHttpClient = new OkHttpClient(aVarE);
   83:         }
   84:         try {
   85:             z47 z47VarExecute = FirebasePerfOkHttpClient.execute(okHttpClient.b(a(this.b)));
   86:             Response.Builder builderWithUrl = new Response.Builder(true, z47VarExecute.e, InputStreamUtils.INSTANCE.readSafelyApprox(this.c.getMaxResponseSize(), new b(z47VarExecute))).withHeaders(a(z47VarExecute.g)).withUrl(z47VarExecute.b.a.i);
   87:             if (dVar != null) {
   88:                 Long lA = d.a(dVar.b, dVar.c);
   89:                 Long lA2 = d.a(dVar.d, dVar.e);
   90:                 networkCallMetricsBuild = new NetworkCallMetrics.Builder().withDnsLookup(lA).withTcpConnect(lA2).withTlsHandshake(d.a(dVar.f, dVar.g)).withTimeToFirstByte(d.a(dVar.h, dVar.i)).withResponse(d.a(dVar.i, dVar.j)).withConnectionReused(dVar.l).withProtocol(dVar.k).build();
```


---

## `apk_analysis/jadx/sources/io/appmetrica/analytics/networkokhttp/impl/f.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    3: import defpackage.jh2;
    4: import io.appmetrica.analytics.networkapi.Call;
    5: import io.appmetrica.analytics.networkapi.NetworkClient;
    6: import io.appmetrica.analytics.networkapi.NetworkClientSettings;
    7: import io.appmetrica.analytics.networkapi.Request;
    8: import okhttp3.OkHttpClient;
    9: 
   10: /* JADX INFO: loaded from: classes5.dex */
   11: public final class f extends NetworkClient {
   12:     public final OkHttpClient a;
   13: 
   14:     public /* synthetic */ f(NetworkClientSettings networkClientSettings, OkHttpClient okHttpClient, int i, jh2 jh2Var) {
   15:         this(networkClientSettings, (i & 2) != 0 ? e.a(networkClientSettings) : okHttpClient);
   16:     }
   17: 
   18:     @Override // io.appmetrica.analytics.networkapi.NetworkClient
   19:     public final Call newCall(Request request) {
   20:         return new c(this.a, request, getSettings());
   27:     /* JADX WARN: Multi-variable type inference failed */
   28:     public f(NetworkClientSettings networkClientSettings) {
   29:         this(networkClientSettings, null, 2, 0 == true ? 1 : 0);
   30:     }
   31: 
   32:     public f(NetworkClientSettings networkClientSettings, OkHttpClient okHttpClient) {
   33:         super(networkClientSettings);
   34:         this.a = okHttpClient;
   35:     }
   36: }
```


---

## `apk_analysis/jadx/sources/io/appmetrica/analytics/networkokhttp/impl/e.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   10: import defpackage.u96;
   11: import defpackage.z86;
   12: import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
   13: import io.appmetrica.analytics.coreutils.internal.system.SystemPropertiesHelper;
   14: import io.appmetrica.analytics.networkapi.NetworkClientSettings;
   15: import io.appmetrica.analytics.networkokhttp.internal.InterceptorSupplier;
   16: import java.security.KeyStore;
   17: import java.util.ArrayList;
   18: import java.util.Collections;
   19: import java.util.List;
   20: import java.util.concurrent.TimeUnit;
   21: import javax.net.ssl.SSLSocketFactory;
   22: import javax.net.ssl.TrustManager;
   23: import javax.net.ssl.TrustManagerFactory;
   24: import javax.net.ssl.X509TrustManager;
   25: import okhttp3.OkHttpClient;
   26: 
   27: /* JADX INFO: loaded from: classes5.dex */
   28: public abstract class e {
   29:     public static OkHttpClient a(NetworkClientSettings networkClientSettings) {
   30:         f94 f94Var;
   31:         OkHttpClient.a aVar = new OkHttpClient.a();
   32:         ts6 ts6Var = ts6.HTTP_2;
   33:         ts6 ts6Var2 = ts6.HTTP_1_1;
   34:         ArrayList arrayList = new ArrayList(u96.i(ts6Var, ts6Var2));
   35:         ts6 ts6Var3 = ts6.H2_PRIOR_KNOWLEDGE;
   36:         if (!arrayList.contains(ts6Var3) && !arrayList.contains(ts6Var2)) {
   79:         if (instanceFollowRedirects != null) {
   80:             aVar.h = instanceFollowRedirects.booleanValue();
   81:         }
   82:         try {
   83:             String systemProperty = SystemPropertiesHelper.readSystemProperty("debug.yndx.iaa.okhttp.mock");
   84:             InterceptorSupplier interceptorSupplier = ta8.M(systemProperty) ? null : (InterceptorSupplier) ReflectionUtils.loadAndInstantiateClassWithDefaultConstructor(systemProperty, InterceptorSupplier.class);
   85:             if (interceptorSupplier != null && (f94Var = interceptorSupplier.get()) != null) {
   86:                 aVar.c.add(f94Var);
   87:             }
   88:         } catch (Throwable unused) {
   89:         }
   90:         SSLSocketFactory sslSocketFactory = networkClientSettings.getSslSocketFactory();
  114:         }
  115:         Boolean useCaches = networkClientSettings.getUseCaches();
  116:         if (useCaches != null && !useCaches.booleanValue()) {
  117:             aVar.k = null;
  118:         }
  119:         return new OkHttpClient(aVar);
  120:     }
  121: }
```


---

## `apk_analysis/jadx/sources/io/appmetrica/analytics/networkokhttp/internal/InterceptorSupplier.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package io.appmetrica.analytics.networkokhttp.internal;
    2: 
    3: import defpackage.f94;
    4: 
    5: /* JADX INFO: loaded from: classes5.dex */
    6: public interface InterceptorSupplier {
    7:     f94 get();
    8: }
```


---

## `apk_analysis/jadx/sources/androidx/room/RoomDatabase.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   16: import androidx.room.support.AutoCloser;
   17: import androidx.room.support.AutoClosingRoomOpenHelper;
   18: import androidx.room.support.AutoClosingRoomOpenHelperFactory;
   19: import androidx.room.support.PrePackagedCopyOpenHelper;
   20: import androidx.room.support.PrePackagedCopyOpenHelperFactory;
   21: import androidx.room.support.QueryInterceptorOpenHelperFactory;
   22: import androidx.room.util.DBUtil;
   23: import androidx.room.util.KClassUtil;
   24: import androidx.room.util.MigrationUtil;
   25: import androidx.sqlite.SQLiteConnection;
   26: import androidx.sqlite.SQLiteDriver;
 1025:             this.allowMainThreadQueries = true;
 1026:             return this;
 1027:         }
 1028: 
 1029:         public T build() {
 1030:             SupportSQLiteOpenHelper.Factory queryInterceptorOpenHelperFactory;
 1031:             SupportSQLiteOpenHelper.Factory factory;
 1032:             T tInvoke;
 1033:             o22 o22VarX;
 1034:             Executor executor = this.queryExecutor;
 1035:             if (executor == null && this.transactionExecutor == null) {
 1042:                 this.queryExecutor = this.transactionExecutor;
 1043:             }
 1044:             RoomDatabaseKt.validateMigrationsNotRequired(this.migrationStartAndEndVersions, this.migrationsNotRequiredFrom);
 1045:             SQLiteDriver sQLiteDriver = this.driver;
 1046:             if (sQLiteDriver == null && this.supportOpenHelperFactory == null) {
 1047:                 queryInterceptorOpenHelperFactory = new FrameworkSQLiteOpenHelperFactory();
 1048:             } else {
 1049:                 SupportSQLiteOpenHelper.Factory factory2 = this.supportOpenHelperFactory;
 1050:                 if (sQLiteDriver == null) {
 1051:                     queryInterceptorOpenHelperFactory = factory2;
 1052:                 } else {
 1053:                     if (factory2 != null) {
 1054:                         fg.c("A RoomDatabase cannot be configured with both a SQLiteDriver and a SupportOpenHelper.Factory.");
 1055:                         return null;
 1056:                     }
 1057:                     queryInterceptorOpenHelperFactory = null;
 1058:                 }
 1059:             }
 1060:             boolean z = this.autoCloseTimeout > 0;
 1061:             boolean z2 = (this.copyFromAssetPath == null && this.copyFromFile == null && this.copyFromInputStream == null) ? false : true;
 1062:             boolean z3 = this.queryCallback != null;
 1063:             if (queryInterceptorOpenHelperFactory != null) {
 1064:                 if (z) {
 1065:                     if (this.name == null) {
 1066:                         fg.c("Cannot create auto-closing database for an in-memory database.");
 1067:                         return null;
 1068:                     }
 1070:                     TimeUnit timeUnit = this.autoCloseTimeUnit;
 1071:                     if (timeUnit == null) {
 1072:                         fg.c("Required value was null.");
 1073:                         return null;
 1074:                     }
 1075:                     queryInterceptorOpenHelperFactory = new AutoClosingRoomOpenHelperFactory(queryInterceptorOpenHelperFactory, new AutoCloser(j, timeUnit, null, 4, null));
 1076:                 }
 1077:                 if (z2) {
 1078:                     if (this.name == null) {
 1079:                         fg.c("Cannot create from asset or file for an in-memory database.");
 1080:                         return null;
 1086:                     Callable<InputStream> callable = this.copyFromInputStream;
 1087:                     if (i + i2 + (callable != null ? 1 : 0) != 1) {
 1088:                         fg.c("More than one of createFromAsset(), createFromInputStream(), and createFromFile() were called on this Builder, but the database can only be created using one of the three configurations.");
 1089:                         return null;
 1090:                     }
 1091:                     queryInterceptorOpenHelperFactory = new PrePackagedCopyOpenHelperFactory(str, file, callable, queryInterceptorOpenHelperFactory);
 1092:                 }
 1093:                 if (z3) {
 1094:                     Executor executor2 = this.queryCallbackExecutor;
 1095:                     if (executor2 != null) {
 1096:                         o22VarX = aq5.x(executor2);
 1105:                     QueryCallback queryCallback = this.queryCallback;
 1106:                     if (queryCallback == null) {
 1107:                         fg.c("Required value was null.");
 1108:                         return null;
 1109:                     }
 1110:                     queryInterceptorOpenHelperFactory = new QueryInterceptorOpenHelperFactory(queryInterceptorOpenHelperFactory, kz1VarA, queryCallback);
 1111:                 }
 1112:                 factory = queryInterceptorOpenHelperFactory;
 1113:             } else {
 1114:                 factory = null;
 1115:             }
 1116:             if (factory == null) {
 1117:                 if (z) {
```


---

## `apk_analysis/jadx/sources/androidx/webkit/WebResourceResponseCompat.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   16: 
   17:     public WebResourceResponseCompat(String str, String str2, int i, String str3, Map<String, String> map, InputStream inputStream) {
   18:         this.mWrapped = new WebResourceResponse(str, str2, i, str3, map == null ? Collections.EMPTY_MAP : map, inputStream);
   19:     }
   20: 
   21:     private String serializeMultiCookieHeader(List<String> list) {
   22:         if (list.isEmpty()) {
   23:             return "";
   24:         }
   25:         StringBuilder sb = new StringBuilder();
   26:         for (String str : list) {
  111: 
  112:     public WebResourceResponse toWebResourceResponse() {
  113:         Map<String, String> responseHeaders = this.mWrapped.getResponseHeaders();
  114:         HashMap map = responseHeaders != null ? new HashMap(responseHeaders) : new HashMap();
  115:         if (!this.mCookies.isEmpty()) {
  116:             map.put(WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_HEADER_NAME, serializeMultiCookieHeader(this.mCookies));
  117:         }
  118:         int statusCode = this.mWrapped.getStatusCode();
  119:         String reasonPhrase = this.mWrapped.getReasonPhrase();
  120:         if (statusCode < 100) {
  121:             statusCode = 200;
```


---

## `apk_analysis/jadx/sources/androidx/webkit/CustomHeader.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: public class CustomHeader {
    8:     private final String mName;
    9:     private final Set<String> mRules;
   10:     private final String mValue;
   11: 
   12:     public CustomHeader(String str, String str2, Set<String> set) {
   13:         this.mName = str;
   14:         this.mValue = str2;
   15:         this.mRules = set;
   16:     }
   17: 
```


---

## `apk_analysis/jadx/sources/androidx/webkit/NoVarySearchHeader.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8:     public final List<String> consideredQueryParameters;
    9:     public final boolean ignoreDifferencesInParameters;
   10:     public final List<String> ignoredQueryParameters;
   11:     public final boolean varyOnKeyOrder;
   12: 
   13:     private NoVarySearchHeader(boolean z, boolean z2, List<String> list, List<String> list2) {
   14:         this.varyOnKeyOrder = z;
   15:         this.ignoreDifferencesInParameters = z2;
   16:         this.ignoredQueryParameters = list;
   17:         this.consideredQueryParameters = list2;
   18:     }
   19: 
   20:     public static NoVarySearchHeader alwaysVaryHeader() {
   21:         return new NoVarySearchHeader(true, false, new ArrayList(), new ArrayList());
   22:     }
   23: 
   24:     public static NoVarySearchHeader neverVaryExcept(boolean z, List<String> list) {
   25:         return new NoVarySearchHeader(z, true, new ArrayList(), list);
   26:     }
   27: 
   28:     public static NoVarySearchHeader neverVaryHeader() {
   29:         return new NoVarySearchHeader(false, true, new ArrayList(), new ArrayList());
   30:     }
   31: 
   32:     public static NoVarySearchHeader varyExcept(boolean z, List<String> list) {
   33:         return new NoVarySearchHeader(z, false, list, new ArrayList());
   34:     }
   35: }
```


---

## `apk_analysis/jadx/sources/androidx/webkit/SpeculativeLoadingParameters.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   14:         private final Map<String, String> mAdditionalHeaders = new HashMap();
   15:         private NoVarySearchHeader mExpectedNoVarySearchHeader = null;
   16:         private boolean mIsJavaScriptEnabled = false;
   17:         private Integer mVariationsId = null;
   18: 
   19:         public Builder addAdditionalHeader(String str, String str2) {
   20:             this.mAdditionalHeaders.put(str, str2);
   21:             return this;
   22:         }
   23: 
   24:         public Builder addAdditionalHeaders(Map<String, String> map) {
```


---

## `apk_analysis/jadx/sources/androidx/webkit/WebViewCompat.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  248:             return getFactory().getStatics().getSafeBrowsingPrivacyPolicyUrl();
  249:         }
  250:         throw WebViewFeatureInternal.getUnsupportedOperationException();
  251:     }
  252: 
  253:     public static String getVariationsHeader() {
  254:         if (WebViewFeatureInternal.GET_VARIATIONS_HEADER.isSupportedByWebView()) {
  255:             return getFactory().getStatics().getVariationsHeader();
  256:         }
  257:         throw WebViewFeatureInternal.getUnsupportedOperationException();
  258:     }
  259: 
  260:     public static WebChromeClient getWebChromeClient(WebView webView) {
```


---

## `apk_analysis/jadx/sources/androidx/webkit/Profile.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   40:     @Target({ElementType.METHOD, ElementType.TYPE, ElementType.FIELD})
   41:     @Retention(RetentionPolicy.CLASS)
   42:     public @interface ExperimentalWarmUpRendererProcess {
   43:     }
   44: 
   45:     default void addCustomHeader(CustomHeader customHeader) {
   46:     }
   47: 
   48:     default void addQuicHints(Set<String> set) {
   49:         throw new UnsupportedOperationException("Profile#addQuicHints is not implemented.");
   50:     }
   52:     default void clearAllCustomHeaders() {
   53:     }
   54: 
   55:     void clearAllOriginMatchedHeaders();
   56: 
   57:     default void clearCustomHeader(String str) {
   58:     }
   59: 
   60:     default void clearCustomHeader(String str, String str2) {
   61:     }
   62: 
   63:     void clearOriginMatchedHeader(String str);
   64: 
   65:     CookieManager getCookieManager();
   66: 
   67:     default Set<CustomHeader> getCustomHeaders() {
   68:         return Collections.EMPTY_SET;
   78: 
   79:     ServiceWorkerController getServiceWorkerController();
   80: 
   81:     WebStorage getWebStorage();
   82: 
   83:     default boolean hasCustomHeader(String str) {
   84:         return false;
   85:     }
   86: 
   87:     boolean hasOriginMatchedHeader(String str);
   88: 
   89:     default void preconnect(String str) {
   90:         throw new UnsupportedOperationException("Profile#preconnect is not implemented.");
   91:     }
   92: 
   96: 
   97:     default void setMaxPrerenders(Integer num) {
   98:         throw new UnsupportedOperationException("Profile#setMaxPrerenders is not implemented.");
   99:     }
  100: 
  101:     void setOriginMatchedHeader(String str, String str2, Set<String> set);
  102: 
  103:     @Deprecated(forRemoval = true)
  104:     void setSpeculativeLoadingConfig(SpeculativeLoadingConfig speculativeLoadingConfig);
  105: 
  106:     void warmUpRendererProcess();
```


---

## `apk_analysis/jadx/sources/androidx/work/Data.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  475:             }
  476:             byteArrayInputStream.reset();
  477:             return z;
  478:         }
  479: 
  480:         private static final void fromByteArray$readHeader(DataInputStream dataInputStream) throws IOException {
  481:             short s = dataInputStream.readShort();
  482:             if (s != -21521) {
  483:                 j2.d(jh.b(s, "Magic number doesn't match: "));
  484:                 return;
  485:             }
  672:                 toByteArrayInternalV1$writeArray(dataOutputStream, (Object[]) obj);
  673:             }
  674:             dataOutputStream.writeUTF(str);
  675:         }
  676: 
  677:         private static final void toByteArrayInternalV1$writeHeader(DataOutputStream dataOutputStream) throws IOException {
  678:             dataOutputStream.writeShort(-21521);
  679:             dataOutputStream.writeShort(1);
  680:         }
  681: 
  682:         public final Data fromByteArray(byte[] bArr) {
  710:                         }
  711:                     }
  712:                 } else {
  713:                     DataInputStream dataInputStream = new DataInputStream(byteArrayInputStream);
  714:                     try {
  715:                         fromByteArray$readHeader(dataInputStream);
  716:                         int i3 = dataInputStream.readInt();
  717:                         while (i < i3) {
  718:                             linkedHashMap.put(dataInputStream.readUTF(), fromByteArray$readValue(dataInputStream, dataInputStream.readByte()));
  719:                             i++;
  720:                         }
  786:             data.getClass();
  787:             try {
  788:                 ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
  789:                 DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
  790:                 try {
  791:                     toByteArrayInternalV1$writeHeader(dataOutputStream);
  792:                     dataOutputStream.writeInt(data.size());
  793:                     for (Map.Entry entry : data.values.entrySet()) {
  794:                         toByteArrayInternalV1$writeEntry(dataOutputStream, (String) entry.getKey(), entry.getValue());
  795:                     }
  796:                     dataOutputStream.flush();
```


---

## `apk_analysis/jadx/sources/androidx/paging/PagedListAdapter.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  126:         loadStateAdapter.getClass();
  127:         addLoadStateListener(new wy2(loadStateAdapter, 1));
  128:         return new ConcatAdapter((RecyclerView.Adapter<? extends RecyclerView.ViewHolder>[]) new RecyclerView.Adapter[]{this, loadStateAdapter});
  129:     }
  130: 
  131:     public final ConcatAdapter withLoadStateHeader(final LoadStateAdapter<?> loadStateAdapter) {
  132:         loadStateAdapter.getClass();
  133:         addLoadStateListener(new bm3() { // from class: s16
  134:             @Override // defpackage.bm3
  135:             public final Object invoke(Object obj, Object obj2) {
  136:                 return PagedListAdapter.withLoadStateHeader$lambda$0(loadStateAdapter, (LoadType) obj, (LoadState) obj2);
```


---

## `apk_analysis/jadx/sources/androidx/paging/PagingDataAdapter.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  189:         loadStateAdapter.getClass();
  190:         addLoadStateListener(new im1(loadStateAdapter, 1));
  191:         return new ConcatAdapter((RecyclerView.Adapter<? extends RecyclerView.ViewHolder>[]) new RecyclerView.Adapter[]{this, loadStateAdapter});
  192:     }
  193: 
  194:     public final ConcatAdapter withLoadStateHeader(LoadStateAdapter<?> loadStateAdapter) {
  195:         loadStateAdapter.getClass();
  196:         addLoadStateListener(new rf0(loadStateAdapter, 3));
  197:         return new ConcatAdapter((RecyclerView.Adapter<? extends RecyclerView.ViewHolder>[]) new RecyclerView.Adapter[]{loadStateAdapter, this});
  198:     }
  199: 
```


---

## `apk_analysis/jadx/sources/androidx/profileinstaller/DeviceProfileWriter.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   46:                     inputStreamOpenStreamFromAssets.close();
   47:                 }
   48:                 return null;
   49:             }
   50:             try {
   51:                 this.mProfile = ProfileTranscoder.readMeta(inputStreamOpenStreamFromAssets, ProfileTranscoder.readHeader(inputStreamOpenStreamFromAssets, ProfileTranscoder.MAGIC_PROFM), bArr, dexProfileDataArr);
   52:                 inputStreamOpenStreamFromAssets.close();
   53:                 return this;
   54:             } catch (Throwable th) {
   55:                 try {
   56:                     inputStreamOpenStreamFromAssets.close();
  126: 
  127:     private DexProfileData[] readProfileInternal(InputStream inputStream) {
  128:         try {
  129:             try {
  130:                 try {
  131:                     DexProfileData[] profile = ProfileTranscoder.readProfile(inputStream, ProfileTranscoder.readHeader(inputStream, ProfileTranscoder.MAGIC_PROF), this.mApkName);
  132:                     try {
  133:                         inputStream.close();
  134:                         return profile;
  135:                     } catch (IOException e) {
  136:                         this.mDiagnostics.onResultReceived(7, e);
  220:         if (dexProfileDataArr != null && bArr != null) {
  221:             assertDeviceAllowsProfileInstallerAotWritesCalled();
  222:             try {
  223:                 ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
  224:                 try {
  225:                     ProfileTranscoder.writeHeader(byteArrayOutputStream, bArr);
  226:                     if (!ProfileTranscoder.transcodeAndWriteBody(byteArrayOutputStream, bArr, dexProfileDataArr)) {
  227:                         this.mDiagnostics.onResultReceived(5, null);
  228:                         this.mProfile = null;
  229:                         byteArrayOutputStream.close();
  230:                         return this;
```


---

## `apk_analysis/jadx/sources/androidx/profileinstaller/ProfileTranscoder.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   48:         ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(iUtf8Length);
   49:         if (Arrays.equals(bArr, ProfileVersion.V009_O_MR1)) {
   50:             int length = dexProfileDataArr.length;
   51:             while (i < length) {
   52:                 DexProfileData dexProfileData2 = dexProfileDataArr[i];
   53:                 writeLineHeader(byteArrayOutputStream, dexProfileData2, generateDexKey(dexProfileData2.apkName, dexProfileData2.dexName, bArr));
   54:                 writeLineData(byteArrayOutputStream, dexProfileData2);
   55:                 i++;
   56:             }
   57:         } else {
   58:             for (DexProfileData dexProfileData3 : dexProfileDataArr) {
   59:                 writeLineHeader(byteArrayOutputStream, dexProfileData3, generateDexKey(dexProfileData3.apkName, dexProfileData3.dexName, bArr));
   60:             }
   61:             int length2 = dexProfileDataArr.length;
   62:             while (i < length2) {
   63:                 writeLineData(byteArrayOutputStream, dexProfileDataArr[i]);
   64:                 i++;
  245:     private static int readFlagsFromBitmap(BitSet bitSet, int i, int i2) {
  246:         int i3 = bitSet.get(methodFlagBitmapIndex(2, i, i2)) ? 2 : 0;
  247:         return bitSet.get(methodFlagBitmapIndex(4, i, i2)) ? i3 | 4 : i3;
  248:     }
  249: 
  250:     public static byte[] readHeader(InputStream inputStream, byte[] bArr) {
  251:         if (Arrays.equals(bArr, Encoding.read(inputStream, bArr.length))) {
  252:             return Encoding.read(inputStream, ProfileVersion.V010_P.length);
  253:         }
  254:         throw Encoding.error("Invalid magic");
  255:     }
  534:             }
  535:             throw th;
  536:         }
  537:     }
  538: 
  539:     public static void writeHeader(OutputStream outputStream, byte[] bArr) throws IOException {
  540:         outputStream.write(MAGIC_PROF);
  541:         outputStream.write(bArr);
  542:     }
  543: 
  544:     private static void writeLineData(OutputStream outputStream, DexProfileData dexProfileData) throws IOException {
  545:         writeMethodsWithInlineCaches(outputStream, dexProfileData);
  546:         writeClasses(outputStream, dexProfileData);
  547:         writeMethodBitmap(outputStream, dexProfileData);
  548:     }
  549: 
  550:     private static void writeLineHeader(OutputStream outputStream, DexProfileData dexProfileData, String str) throws IOException {
  551:         Encoding.writeUInt16(outputStream, Encoding.utf8Length(str));
  552:         Encoding.writeUInt16(outputStream, dexProfileData.classSetSize);
  553:         Encoding.writeUInt32(outputStream, dexProfileData.hotMethodRegionSize);
  554:         Encoding.writeUInt32(outputStream, dexProfileData.dexChecksum);
  555:         Encoding.writeUInt32(outputStream, dexProfileData.numMethodIds);
```


---

## `apk_analysis/jadx/sources/androidx/camera/core/impl/utils/ExifOutputStream.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   39:         public static final short JPG = -56;
   40:         public static final short SOF0 = -64;
   41:         public static final short SOF15 = -49;
   42:         public static final short SOI = -40;
   43: 
   44:         private JpegHeader() {
   45:         }
   46: 
   47:         public static boolean isSofMarker(short s) {
   48:             return (s < -64 || s > -49 || s == -60 || s == -56 || s == -52) ? false : true;
   49:         }
```


---

## `apk_analysis/jadx/sources/androidx/media3/container/ObuParser.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   21:         private static final int FRAME_TYPE_KEY_FRAME = 0;
   22:         private static final int FRAME_TYPE_SWITCH_FRAME = 3;
   23:         private static final int PROBE_BYTES = 4;
   24:         private final boolean isDependedOn;
   25: 
   26:         private FrameHeader(SequenceHeader sequenceHeader, Obu obu) throws NotYetImplementedException {
   27:             int i = obu.type;
   28:             o8.e(i == 6 || i == 3);
   29:             byte[] bArr = new byte[Math.min(4, obu.payload.remaining())];
   30:             obu.payload.asReadOnlyBuffer().get(bArr);
   31:             ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
   59:             this.isDependedOn = ((bits == 3 || bits == 0) ? 255 : parsableBitArray.readBits(8)) != 0;
   60:         }
   61: 
   62:         public static FrameHeader parse(SequenceHeader sequenceHeader, Obu obu) {
   63:             try {
   64:                 return new FrameHeader(sequenceHeader, obu);
   65:             } catch (NotYetImplementedException unused) {
   66:                 return null;
   67:             }
   68:         }
   69: 
  111: 
  112:         /* JADX WARN: Multi-variable type inference failed */
  113:         /* JADX WARN: Type inference failed for: r8v4, types: [int] */
  114:         /* JADX WARN: Type inference failed for: r8v5 */
  115:         /* JADX WARN: Type inference failed for: r8v6 */
  116:         private SequenceHeader(Obu obu) {
  117:             int bits;
  118:             int bits2;
  119:             boolean bit;
  120:             ?? r8;
  121:             boolean bit2;
  314:             parsableBitArray.skipBit();
  315:         }
  316: 
  317:         public static SequenceHeader parse(Obu obu) {
  318:             try {
  319:                 return new SequenceHeader(obu);
  320:             } catch (NotYetImplementedException unused) {
  321:                 return null;
  322:             }
  323:         }
  324: 
```


---

## `apk_analysis/jadx/sources/androidx/media3/container/NalUnitUtil.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   82:     public static final class H265NalHeader {
   83:         public final int layerId;
   84:         public final int nalUnitType;
   85:         public final int temporalId;
   86: 
   87:         public H265NalHeader(int i, int i2, int i3) {
   88:             this.nalUnitType = i;
   89:             this.layerId = i2;
   90:             this.temporalId = i3;
   91:         }
   92:     }
  439:             if (length > 3) {
  440:                 j<Integer> jVarFindNalUnitPositions = findNalUnitPositions(bArr);
  441:                 for (int i2 = 0; i2 < jVarFindNalUnitPositions.size(); i2++) {
  442:                     if (jVarFindNalUnitPositions.get(i2).intValue() + 3 < length) {
  443:                         ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(bArr, jVarFindNalUnitPositions.get(i2).intValue() + 3, length);
  444:                         H265NalHeader h265NalHeader = parseH265NalHeader(parsableNalUnitBitArray);
  445:                         if (h265NalHeader.nalUnitType == 33 && h265NalHeader.layerId == 0) {
  446:                             return createCodecStringFromH265SpsPalyoad(parsableNalUnitBitArray);
  447:                         }
  448:                     }
  449:                 }
  490:         int i = b & 31;
  491:         return (i == 1 || i == 9 || i == 14) ? false : true;
  492:     }
  493: 
  494:     private static boolean isH265NalUnitDependedOn(byte[] bArr, int i, int i2, Format format) {
  495:         H265NalHeader h265NalHeader = parseH265NalHeader(new ParsableNalUnitBitArray(bArr, i, i2 + i));
  496:         int i3 = h265NalHeader.nalUnitType;
  497:         if (i3 == 35) {
  498:             return false;
  499:         }
  500:         return (i3 <= 14 && i3 % 2 == 0 && h265NalHeader.temporalId == format.maxSubLayers - 1) ? false : true;
  503:     public static boolean isNalUnitSei(Format format, byte b) {
  504:         String nalStructureMimeType = getNalStructureMimeType(format);
  505:         return (Objects.equals(nalStructureMimeType, "video/avc") && (b & 31) == 6) || (Objects.equals(nalStructureMimeType, MimeTypes.VIDEO_H265) && ((b & 126) >> 1) == 39);
  506:     }
  507: 
  508:     public static int numberOfBytesInNalUnitHeader(Format format) {
  509:         String nalStructureMimeType = getNalStructureMimeType(format);
  510:         if (Objects.equals(nalStructureMimeType, "video/avc")) {
  511:             return 1;
  512:         }
  513:         return Objects.equals(nalStructureMimeType, MimeTypes.VIDEO_H265) ? 2 : 0;
  514:     }
  515: 
  516:     private static H265NalHeader parseH265NalHeader(ParsableNalUnitBitArray parsableNalUnitBitArray) {
  517:         parsableNalUnitBitArray.skipBit();
  518:         return new H265NalHeader(parsableNalUnitBitArray.readBits(6), parsableNalUnitBitArray.readBits(6), parsableNalUnitBitArray.readBits(3) - 1);
  519:     }
  520: 
  521:     /* JADX WARN: Code duplicated, block: B:21:0x005e  */
  522:     /* JADX WARN: Code duplicated, block: B:23:0x0064  */
  523:     /* JADX WARN: Code duplicated, block: B:26:0x006c  */
  724:         }
  725:         return null;
  726:     }
  727: 
  728:     public static H265SpsData parseH265SpsNalUnit(byte[] bArr, int i, int i2, H265VpsData h265VpsData) {
  729:         return parseH265SpsNalUnitPayload(bArr, i + 2, i2, parseH265NalHeader(new ParsableNalUnitBitArray(bArr, i, i2)), h265VpsData);
  730:     }
  731: 
  732:     /* JADX WARN: Code duplicated, block: B:36:0x00b0  */
  733:     /* JADX WARN: Code duplicated, block: B:88:0x01c9  */
  734:     public static H265SpsData parseH265SpsNalUnitPayload(byte[] bArr, int i, int i2, H265NalHeader h265NalHeader, H265VpsData h265VpsData) {
  989:         return new H265VideoSignalInfosAndIndices(aVarM.g(), iArr2);
  990:     }
  991: 
  992:     public static H265VpsData parseH265VpsNalUnit(byte[] bArr, int i, int i2) {
  993:         ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(bArr, i, i2);
  994:         return parseH265VpsNalUnitPayload(parsableNalUnitBitArray, parseH265NalHeader(parsableNalUnitBitArray));
  995:     }
  996: 
  997:     /* JADX WARN: Multi-variable type inference failed */
  998:     private static H265VpsData parseH265VpsNalUnitPayload(ParsableNalUnitBitArray parsableNalUnitBitArray, H265NalHeader h265NalHeader) {
  999:         int[] iArr;
```


---

## `apk_analysis/jadx/sources/androidx/media3/muxer/Av1ConfigUtil.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   24:             int i = obu.type;
   25:             if (i == 5) {
   26:                 arrayList.add(getConfigObuWithHeaderAndLength(obu));
   27:             } else if (i == 1 && byteBufferConcatenateBuffers == null) {
   28:                 byteBufferConcatenateBuffers = getConfigObuWithHeaderAndLength(obu);
   29:                 configFromSeqHeader = parseConfigFromSeqHeader(obu);
   30:             }
   31:         }
   32:         o8.l(byteBufferConcatenateBuffers, "No sequence header available.");
   33:         ByteBuffer byteBufferConcatenateBuffers2 = BoxUtils.concatenateBuffers((ByteBuffer[]) arrayList.toArray(new ByteBuffer[0]));
   34:         if (byteBufferConcatenateBuffers2 != null) {
   38:         return BoxUtils.concatenateBuffers(configFromSeqHeader, byteBufferConcatenateBuffers).array();
   39:     }
   40: 
   41:     private static ByteBuffer getConfigObuWithHeaderAndLength(ObuParser.Obu obu) {
   42:         ByteBuffer byteBufferAllocate = ByteBuffer.allocate(obu.payload.remaining() + 9);
   43:         byteBufferAllocate.put(obuHeader(obu.type));
   44:         byteBufferAllocate.put(lebEncode(obu.payload.remaining()));
   45:         byteBufferAllocate.put(obu.payload.duplicate());
   46:         byteBufferAllocate.flip();
   47:         return byteBufferAllocate;
   48:     }
   71:             i >>= 7;
   72:         } while (i != 0);
   73:         return i2;
   74:     }
   75: 
   76:     private static byte obuHeader(int i) {
   77:         return (byte) ((i << 3) | 2);
   78:     }
   79: 
   80:     private static ByteBuffer parseConfigFromSeqHeader(ObuParser.Obu obu) {
   81:         ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
   82:         byteBufferAllocate.put((byte) -127);
   83:         ObuParser.SequenceHeader sequenceHeader = ObuParser.SequenceHeader.parse(obu);
   84:         o8.l(sequenceHeader, "No sequence header available.");
   85:         byteBufferAllocate.put((byte) ((sequenceHeader.seqProfile << 5) | sequenceHeader.seqLevelIdx0));
```


---

## `apk_analysis/jadx/sources/androidx/media3/muxer/Boxes.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  534:             arrayList.add(ByteBuffer.wrap(Util.getUtf8Bytes(strArr[i])));
  535:         }
  536:         return BoxUtils.wrapBoxesIntoBox("ftyp", arrayList);
  537:     }
  538: 
  539:     public static ByteBuffer getAxteBoxHeader(long j) {
  540:         ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
  541:         byteBufferAllocate.putInt(1);
  542:         byteBufferAllocate.put(Util.getUtf8Bytes("axte"));
  543:         byteBufferAllocate.putLong(j + 16);
  544:         byteBufferAllocate.flip();
```


---

## `apk_analysis/jadx/sources/androidx/media3/muxer/Mp4Writer.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   75:     private ByteBuffer getAxteBox() {
   76:         ByteBuffer byteBufferFtyp = Boxes.ftyp();
   77:         MetadataCollector metadataCollector = new MetadataCollector();
   78:         MuxerUtil.populateAuxiliaryTracksMetadata(metadataCollector, this.metadataCollector.timestampData, true, this.auxiliaryTracks);
   79:         ByteBuffer byteBufferMoov = Boxes.moov(this.auxiliaryTracks, metadataCollector, false, this.lastSampleDurationBehavior);
   80:         return BoxUtils.concatenateBuffers(Boxes.getAxteBoxHeader(byteBufferMoov.remaining() + byteBufferFtyp.remaining()), byteBufferFtyp, byteBufferMoov);
   81:     }
   82: 
   83:     private long getMdatExtensionAmount(long j) {
   84:         return Math.min(C.NANOS_PER_SECOND, Math.max(500000L, (long) (j * 0.2f)));
   85:     }
  183:         SeekableMuxerOutput seekableMuxerOutput = this.muxerOutput;
  184:         seekableMuxerOutput.setPosition(seekableMuxerOutput.getSize());
  185:         this.muxerOutput.write(axteBox);
  186:     }
  187: 
  188:     private void writeHeader() throws IOException {
  189:         this.muxerOutput.setPosition(0L);
  190:         this.muxerOutput.write(Boxes.ftyp());
  191:         if (this.freeSpaceAfterFtypInBytes > 0) {
  192:             this.reservedMoovSpaceStart = this.muxerOutput.getPosition();
  193:             this.muxerOutput.write(BoxUtils.wrapIntoBox(FREE_BOX_TYPE, ByteBuffer.allocate(this.freeSpaceAfterFtypInBytes)));
  212:         o8.r(track.pendingSamplesByteBuffer.size() == track.pendingSamplesBufferInfo.size());
  213:         if (track.pendingSamplesBufferInfo.isEmpty()) {
  214:             return;
  215:         }
  216:         if (!this.hasWrittenSamples.getAndSet(true)) {
  217:             writeHeader();
  218:         }
  219:         Iterator<ByteBuffer> it = track.pendingSamplesByteBuffer.iterator();
  220:         long jLimit = 0;
  221:         while (it.hasNext()) {
  222:             jLimit += (long) it.next().limit();
```


---

## `apk_analysis/jadx/sources/androidx/media3/muxer/AacWriter.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   35: 
   36:     public AacWriter(FileOutputStream fileOutputStream) {
   37:         this.outputFileChannel = fileOutputStream.getChannel();
   38:     }
   39: 
   40:     private ByteBuffer createAdtsHeader(int i) {
   41:         ByteBuffer byteBufferAllocate = ByteBuffer.allocate(7);
   42:         byteBufferAllocate.put((byte) -1);
   43:         byteBufferAllocate.put((byte) -15);
   44:         Format format = this.format;
   45:         format.getClass();
   64:         this.sampleFreqIndex = num.intValue();
   65:         this.format = format;
   66:     }
   67: 
   68:     public void writeSampleData(ByteBuffer byteBuffer, BufferInfo bufferInfo) throws IOException {
   69:         this.outputFileChannel.write(createAdtsHeader(bufferInfo.size + 7));
   70:         this.outputFileChannel.write(byteBuffer);
   71:     }
   72: }
```


---

## `apk_analysis/jadx/sources/androidx/media3/muxer/FragmentedMp4Writer.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  119:         writeMdatBox(jVarProcessAllTracks);
  120:         this.currentFragmentSequenceNumber++;
  121:         this.maxTrackDurationUs = 0L;
  122:     }
  123: 
  124:     private void createHeader() throws IOException {
  125:         this.outputChannel.write(Boxes.ftyp());
  126:         this.outputChannel.write(Boxes.moov(this.tracks, this.metadataCollector, true, this.lastSampleDurationBehavior));
  127:     }
  128: 
  129:     private static j<ByteBuffer> createTrafBoxes(List<ProcessedTrackInfo> list, long j) {
  241:     public void writeSampleData(Track track, ByteBuffer byteBuffer, BufferInfo bufferInfo) throws IOException {
  242:         if (Objects.equals(track.format.sampleMimeType, MimeTypes.VIDEO_AV1) && track.format.initializationData.isEmpty() && track.parsedCsd == null) {
  243:             track.parsedCsd = Av1ConfigUtil.createAv1CodecConfigurationRecord(byteBuffer.duplicate());
  244:         }
  245:         if (!this.headerCreated) {
  246:             createHeader();
  247:             this.headerCreated = true;
  248:         }
  249:         if (shouldFlushPendingSamples(track, bufferInfo)) {
  250:             createFragment();
  251:         }
```


---

## `apk_analysis/jadx/sources/androidx/media3/muxer/Mp4Muxer.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  111:         str.getClass();
  112:         FileInputStream fileInputStream = new FileInputStream(str);
  113:         try {
  114:             FileChannel channel = fileInputStream.getChannel();
  115:             long size = channel.size();
  116:             this.muxerOutput.write(Boxes.getAxteBoxHeader(size));
  117:             channel.transferTo(0L, size, this.muxerOutput);
  118:             fileInputStream.close();
  119:         } catch (Throwable th) {
  120:             try {
  121:                 fileInputStream.close();
```


---

## `apk_analysis/jadx/sources/androidx/media3/muxer/WebmWriter.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  104: 
  105:     private long usToSegmentTicks(long j) {
  106:         return Util.scaleLargeTimestamp(j, 1000L, 1000000L);
  107:     }
  108: 
  109:     private void writeSegmentHeader() throws IOException {
  110:         this.muxerOutput.write(WebmElements.createEbmlHeaderElement());
  111:         this.muxerOutput.write(WebmElements.uintToMinimumLengthByteBuffer(408125543L));
  112:         this.muxerOutput.write(WebmElements.uintToMinimumLengthByteBuffer(WebmConstants.MKV_UNKNOWN_LENGTH));
  113:         this.segmentDataStart = this.muxerOutput.getPosition();
  114:         this.muxerOutput.write(WebmElements.createVoidElement(72));
  143:         this.muxerOutput.write(WebmElements.createVoidElement((int) (this.infoElementStart - this.muxerOutput.getPosition())));
  144:     }
  145: 
  146:     public void writeSampleData(Track track, ByteBuffer byteBuffer, BufferInfo bufferInfo) throws IOException {
  147:         if (!this.writtenSegmentHeader) {
  148:             writeSegmentHeader();
  149:             this.writtenSegmentHeader = true;
  150:         }
  151:         if (shouldCreateCluster(track, bufferInfo)) {
  152:             createCluster();
  153:         }
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/FlacMetadataReader.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  136: 
  137:     private static List<String> readVorbisCommentMetadataBlock(ExtractorInput extractorInput, int i) {
  138:         ParsableByteArray parsableByteArray = new ParsableByteArray(i);
  139:         extractorInput.readFully(parsableByteArray.getData(), 0, i);
  140:         parsableByteArray.skipBytes(4);
  141:         return Arrays.asList(VorbisUtil.readVorbisCommentHeader(parsableByteArray, false, false).comments);
  142:     }
  143: 
  144:     private static FlacStreamMetadata.SeekTable readSeekTableMetadataBlock(ExtractorInput extractorInput, int i) {
  145:         ParsableByteArray parsableByteArray = new ParsableByteArray(i);
  146:         extractorInput.readFully(parsableByteArray.getData(), 0, i);
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/MpegAudioUtil.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   98:         public String mimeType;
   99:         public int sampleRate;
  100:         public int samplesPerFrame;
  101:         public int version;
  102: 
  103:         public Header(Header header) {
  104:             this.version = header.version;
  105:             this.mimeType = header.mimeType;
  106:             this.frameSize = header.frameSize;
  107:             this.sampleRate = header.sampleRate;
  108:             this.channels = header.channels;
  146:             }
  147:             this.channels = ((i >> 6) & 3) == 3 ? 1 : 2;
  148:             return true;
  149:         }
  150: 
  151:         public Header() {
  152:         }
  153:     }
  154: }
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/VorbisUtil.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   22:     public static final class CommentHeader {
   23:         public final String[] comments;
   24:         public final int length;
   25:         public final String vendor;
   26: 
   27:         public CommentHeader(String str, String[] strArr, int i) {
   28:             this.vendor = str;
   29:             this.comments = strArr;
   30:             this.length = i;
   31:         }
   32:     }
   55:         public final byte[] data;
   56:         public final boolean framingFlag;
   57:         public final int sampleRate;
   58:         public final int version;
   59: 
   60:         public VorbisIdHeader(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z, byte[] bArr) {
   61:             this.version = i;
   62:             this.channels = i2;
   63:             this.sampleRate = i3;
   64:             this.bitrateMaximum = i4;
   65:             this.bitrateNominal = i5;
  274:                 }
  275:             }
  276:         }
  277:     }
  278: 
  279:     public static CommentHeader readVorbisCommentHeader(ParsableByteArray parsableByteArray, boolean z, boolean z2) throws ParserException {
  280:         if (z) {
  281:             verifyVorbisHeaderCapturePattern(3, parsableByteArray, false);
  282:         }
  283:         String string = parsableByteArray.readString((int) parsableByteArray.readLittleEndianUnsignedInt());
  284:         int length = string.length();
  291:             length2 = length2 + 4 + string2.length();
  292:         }
  293:         if (z2 && (parsableByteArray.readUnsignedByte() & 1) == 0) {
  294:             throw ParserException.createForMalformedContainer("framing bit expected to be set", null);
  295:         }
  296:         return new CommentHeader(string, strArr, length2 + 1);
  297:     }
  298: 
  299:     public static VorbisIdHeader readVorbisIdentificationHeader(ParsableByteArray parsableByteArray) throws ParserException {
  300:         verifyVorbisHeaderCapturePattern(1, parsableByteArray, false);
  301:         int littleEndianUnsignedIntToInt = parsableByteArray.readLittleEndianUnsignedIntToInt();
  302:         int unsignedByte = parsableByteArray.readUnsignedByte();
  303:         int littleEndianUnsignedIntToInt2 = parsableByteArray.readLittleEndianUnsignedIntToInt();
  304:         int littleEndianInt = parsableByteArray.readLittleEndianInt();
  312:         int littleEndianInt3 = parsableByteArray.readLittleEndianInt();
  313:         if (littleEndianInt3 <= 0) {
  314:             littleEndianInt3 = -1;
  315:         }
  316:         int unsignedByte2 = parsableByteArray.readUnsignedByte();
  317:         return new VorbisIdHeader(littleEndianUnsignedIntToInt, unsignedByte, littleEndianUnsignedIntToInt2, littleEndianInt, littleEndianInt2, littleEndianInt3, (int) Math.pow(2.0d, unsignedByte2 & 15), (int) Math.pow(2.0d, (unsignedByte2 & PsExtractor.VIDEO_STREAM_MASK) >> 4), (parsableByteArray.readUnsignedByte() & 1) > 0, Arrays.copyOf(parsableByteArray.getData(), parsableByteArray.limit()));
  318:     }
  319: 
  320:     public static Mode[] readVorbisModes(ParsableByteArray parsableByteArray, int i) {
  321:         verifyVorbisHeaderCapturePattern(5, parsableByteArray, false);
  322:         int unsignedByte = parsableByteArray.readUnsignedByte() + 1;
  403:             return false;
  404:         }
  405:         throw ParserException.createForMalformedContainer("expected characters 'vorbis'", null);
  406:     }
  407: 
  408:     public static CommentHeader readVorbisCommentHeader(ParsableByteArray parsableByteArray) {
  409:         return readVorbisCommentHeader(parsableByteArray, true, true);
  410:     }
  411: }
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/FlacFrameReader.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   42:         } catch (NumberFormatException unused) {
   43:             return false;
   44:         }
   45:     }
   46: 
   47:     public static boolean checkAndReadFrameHeader(ParsableByteArray parsableByteArray, FlacStreamMetadata flacStreamMetadata, int i, SampleNumberHolder sampleNumberHolder) {
   48:         int position = parsableByteArray.getPosition();
   49:         long unsignedInt = parsableByteArray.readUnsignedInt();
   50:         long j = unsignedInt >>> 16;
   51:         if (j != i) {
   52:             return false;
  114:             return false;
  115:         }
  116:         parsableByteArray.setLimit(ExtractorUtil.peekToLength(extractorInput, parsableByteArray.getData(), 2, 15) + 2);
  117:         extractorInput.resetPeekPosition();
  118:         extractorInput.advancePeekPosition((int) (peekPosition - extractorInput.getPosition()));
  119:         return checkAndReadFrameHeader(parsableByteArray, flacStreamMetadata, i, sampleNumberHolder);
  120:     }
  121: 
  122:     public static long getFirstSampleNumber(ExtractorInput extractorInput, FlacStreamMetadata flacStreamMetadata) throws ParserException {
  123:         extractorInput.resetPeekPosition();
  124:         extractorInput.advancePeekPosition(1);
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/Ac4Util.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   81: 
   82:     private static String createCodecsString(int i, int i2, int i3) {
   83:         return Util.formatInvariant("ac-4.%02d.%02d.%02d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
   84:     }
   85: 
   86:     public static void getAc4SampleHeader(int i, ParsableByteArray parsableByteArray) {
   87:         parsableByteArray.reset(7);
   88:         byte[] data = parsableByteArray.getData();
   89:         data[0] = -84;
   90:         data[1] = 64;
   91:         data[2] = -1;
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/DtsUtil.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   74:         public final long frameDurationUs;
   75:         public final int frameSize;
   76:         public final String mimeType;
   77:         public final int sampleRate;
   78: 
   79:         private DtsHeader(String str, int i, int i2, int i3, long j, int i4) {
   80:             this.mimeType = str;
   81:             this.channelCount = i;
   82:             this.sampleRate = i2;
   83:             this.frameSize = i3;
   84:             this.frameDurationUs = j;
  156:         byte b = bArr[0];
  157:         if (b == 127 || b == 100 || b == 64 || b == 113) {
  158:             return new ParsableBitArray(bArr);
  159:         }
  160:         byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
  161:         if (isLittleEndianFrameHeader(bArrCopyOf)) {
  162:             for (int i = 0; i < bArrCopyOf.length - 1; i += 2) {
  163:                 byte b2 = bArrCopyOf[i];
  164:                 int i2 = i + 1;
  165:                 bArrCopyOf[i] = bArrCopyOf[i2];
  166:                 bArrCopyOf[i2] = b2;
  176:         }
  177:         parsableBitArray.reset(bArrCopyOf);
  178:         return parsableBitArray;
  179:     }
  180: 
  181:     private static boolean isLittleEndianFrameHeader(byte[] bArr) {
  182:         byte b = bArr[0];
  183:         return b == -2 || b == -1 || b == 37 || b == -14 || b == -24;
  184:     }
  185: 
  186:     public static boolean isSampleDtsHd(ExtractorInput extractorInput, int i) {
  248:         int i4 = bits >= iArr.length ? -1 : (iArr[bits] * 1000) / 2;
  249:         normalizedFrame.skipBits(10);
  250:         return new Format.Builder().setId(str).setContainerMimeType(str3).setSampleMimeType(MimeTypes.AUDIO_DTS).setAverageBitrate(i4).setChannelCount(i2 + (normalizedFrame.readBits(2) > 0 ? 1 : 0)).setSampleRate(i3).setDrmInitData(drmInitData).setLanguage(str2).setRoleFlags(i).build();
  251:     }
  252: 
  253:     public static DtsHeader parseDtsHdHeader(byte[] bArr) throws ParserException {
  254:         int i;
  255:         int i2;
  256:         int bits;
  257:         int i3;
  258:         long jScaleLargeTimestamp;
  335:             }
  336:             jScaleLargeTimestamp = Util.scaleLargeTimestamp(i5, 1000000L, i4);
  337:         } else {
  338:             jScaleLargeTimestamp = C.TIME_UNSET;
  339:         }
  340:         return new DtsHeader(MimeTypes.AUDIO_DTS_EXPRESS, bits4, i8, bits3, jScaleLargeTimestamp, 0);
  341:     }
  342: 
  343:     public static int parseDtsHdHeaderSize(byte[] bArr) {
  344:         ParsableBitArray normalizedFrame = getNormalizedFrame(bArr);
  345:         normalizedFrame.skipBits(42);
  346:         return normalizedFrame.readBits(normalizedFrame.readBit() ? 12 : 8) + 1;
  347:     }
  348: 
  349:     public static DtsHeader parseDtsUhdHeader(byte[] bArr, AtomicInteger atomicInteger) throws ParserException {
  350:         int bits;
  351:         long jScaleLargeTimestamp;
  352:         AtomicInteger atomicInteger2;
  353:         int i;
  354:         int i2;
  402:             atomicInteger2 = atomicInteger;
  403:             atomicInteger2.set(parseUnsignedVarInt(normalizedFrame, UHD_AUDIO_CHUNK_ID_LENGTH_TABLE, true));
  404:         } else {
  405:             atomicInteger2 = atomicInteger;
  406:         }
  407:         return new DtsHeader(MimeTypes.AUDIO_DTS_X, 2, i4, unsignedVarInt2 + (atomicInteger2.get() != 0 ? parseUnsignedVarInt(normalizedFrame, UHD_AUDIO_CHUNK_SIZE_LENGTH_TABLE, true) : 0) + unsignedVarInt, j, 0);
  408:     }
  409: 
  410:     public static int parseDtsUhdHeaderSize(byte[] bArr) {
  411:         ParsableBitArray normalizedFrame = getNormalizedFrame(bArr);
  412:         normalizedFrame.skipBits(32);
```


---

## `apk_analysis/jadx/sources/androidx/media3/datasource/HttpUtil.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   19:     private static final Pattern CONTENT_RANGE_WITH_SIZE = Pattern.compile("bytes (?:(?:\\d+-\\d+)|\\*)/(\\d+)");
   20: 
   21:     private HttpUtil() {
   22:     }
   23: 
   24:     public static String buildRangeRequestHeader(long j, long j2) {
   25:         if (j == 0 && j2 == -1) {
   26:             return null;
   27:         }
   28:         StringBuilder sbF = xp.f(j, "bytes=", "-");
   29:         if (j2 != -1) {
   70:             Log.e(TAG, "Unexpected Content-Range [" + str2 + "]");
   71:             return j;
   72:         }
   73:     }
   74: 
   75:     public static String getCookieHeader(String str, Map<String, List<String>> map, CookieHandler cookieHandler) {
   76:         List<String> list;
   77:         if (cookieHandler == null) {
   78:             return "";
   79:         }
   80:         Map<String, List<String>> map2 = x.h;
```


---

## `apk_analysis/jadx/sources/androidx/media3/datasource/DefaultHttpDataSource.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  526:         map2.putAll(this.requestProperties.getSnapshot());
  527:         map2.putAll(map);
  528:         for (Map.Entry entry : map2.entrySet()) {
  529:             httpURLConnectionOpenConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
  530:         }
  531:         String strBuildRangeRequestHeader = HttpUtil.buildRangeRequestHeader(j, j2);
  532:         if (strBuildRangeRequestHeader != null) {
  533:             httpURLConnectionOpenConnection.setRequestProperty("Range", strBuildRangeRequestHeader);
  534:         }
  535:         String str = this.userAgent;
  536:         if (str != null) {
  537:             httpURLConnectionOpenConnection.setRequestProperty("User-Agent", str);
  538:         }
  539:         httpURLConnectionOpenConnection.setRequestProperty("Accept-Encoding", z ? "gzip" : "identity");
  540:         httpURLConnectionOpenConnection.setInstanceFollowRedirects(z2);
  541:         httpURLConnectionOpenConnection.setDoOutput(bArr != null);
  542:         httpURLConnectionOpenConnection.setRequestMethod(DataSpec.getStringForHttpMethod(i));
```


---

## `apk_analysis/jadx/sources/androidx/media3/datasource/HttpEngineDataSource.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  116:                 cookieManager = new CookieManager();
  117:             }
  118:             String url = urlResponseInfo.getUrl();
  119:             Map<String, List<String>> asMap = urlResponseInfo.getHeaders().getAsMap();
  120:             HttpUtil.storeCookiesFromHeaders(url, asMap, cookieManager);
  121:             String cookieHeader = HttpUtil.getCookieHeader(url, asMap, cookieManager);
  122:             boolean z = HttpEngineDataSource.this.keepPostFor302Redirects && dataSpec.httpMethod == 2 && httpStatusCode == 302;
  123:             if (!z && (!HttpEngineDataSource.this.handleSetCookieRequests || TextUtils.isEmpty(cookieHeader))) {
  124:                 urlRequest.followRedirect();
  125:                 return;
  126:             }
  240:             map.putAll(requestProperties.getSnapshot());
  241:         }
  242:         map.putAll(this.requestProperties.getSnapshot());
  243:         map.putAll(dataSpec.httpRequestHeaders);
  244:         for (Map.Entry entry : map.entrySet()) {
  245:             directExecutorAllowed.addHeader((String) entry.getKey(), (String) entry.getValue());
  246:         }
  247:         if (dataSpec.httpBody != null && !map.containsKey("Content-Type")) {
  248:             throw new OpenException("HTTP request with non-empty body must set Content-Type", dataSpec, 1004, 0);
  249:         }
  250:         String strBuildRangeRequestHeader = HttpUtil.buildRangeRequestHeader(dataSpec.position, dataSpec.length);
  251:         if (strBuildRangeRequestHeader != null) {
  252:             directExecutorAllowed.addHeader("Range", strBuildRangeRequestHeader);
  253:         }
  254:         String str = this.userAgent;
  255:         if (str != null) {
  256:             directExecutorAllowed.addHeader("User-Agent", str);
  257:         }
  258:         directExecutorAllowed.setHttpMethod(dataSpec.getHttpMethodString());
  259:         if (dataSpec.httpBody != null) {
  260:             directExecutorAllowed.setUploadDataProvider(new ByteArrayUploadDataProvider(dataSpec.httpBody), this.executor);
  261:         }
  275:         byteBuffer2.put(byteBuffer);
  276:         byteBuffer.limit(iLimit);
  277:         return iMin;
  278:     }
  279: 
  280:     private static String getFirstHeader(Map<String, List<String>> map, String str) {
  281:         List<String> list = map.get(str);
  282:         if (list == null || list.isEmpty()) {
  283:             return null;
  284:         }
  285:         return list.get(0);
  485:                 int httpStatusCode = urlResponseInfo.getHttpStatusCode();
  486:                 Map<String, List<String>> asMap = urlResponseInfo.getHeaders().getAsMap();
  487:                 long j = 0;
  488:                 if (httpStatusCode < 200 || httpStatusCode > 299) {
  489:                     if (httpStatusCode == 416) {
  490:                         if (dataSpec.position == HttpUtil.getDocumentSize(getFirstHeader(asMap, "Content-Range"))) {
  491:                             this.transferStarted = true;
  492:                             transferStarted(dataSpec);
  493:                             long j2 = dataSpec.length;
  494:                             if (j2 != -1) {
  495:                                 return j2;
  503:                         responseBody = Util.EMPTY_BYTE_ARRAY;
  504:                     }
  505:                     throw new HttpDataSource.InvalidResponseCodeException(httpStatusCode, urlResponseInfo.getHttpStatusText(), httpStatusCode == 416 ? new DataSourceException(2008) : null, asMap, dataSpec, responseBody);
  506:                 }
  507:                 bf6<String> bf6Var = this.contentTypePredicate;
  508:                 if (bf6Var != null && (firstHeader = getFirstHeader(asMap, "Content-Type")) != null && !bf6Var.apply(firstHeader)) {
  509:                     throw new HttpDataSource.InvalidContentTypeException(firstHeader, dataSpec);
  510:                 }
  511:                 if (httpStatusCode == 200) {
  512:                     long j3 = dataSpec.position;
  513:                     if (j3 != 0) {
  517:                 boolean zIsCompressed = isCompressed(urlResponseInfo);
  518:                 long j4 = dataSpec.length;
  519:                 if (zIsCompressed || j4 != -1) {
  520:                     this.bytesRemaining = j4;
  521:                 } else {
  522:                     long contentLength = HttpUtil.getContentLength(getFirstHeader(asMap, "Content-Length"), getFirstHeader(asMap, "Content-Range"));
  523:                     this.bytesRemaining = contentLength != -1 ? contentLength - j : -1L;
  524:                 }
  525:                 this.transferStarted = true;
  526:                 transferStarted(dataSpec);
  527:                 skipFully(j, dataSpec);
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/heif/HeicMotionPhotoExtractor.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   48:         ExtractorOutput extractorOutput = this.extractorOutput;
   49:         extractorOutput.getClass();
   50:         extractorOutput.track(1024, 4).format(new Format.Builder().setContainerMimeType(MimeTypes.IMAGE_HEIC).setMetadata(new Metadata(motionPhotoMetadata)).build());
   51:     }
   52: 
   53:     private boolean readAtomHeader(ExtractorInput extractorInput) {
   54:         if (this.atomHeaderBytesRead == 0) {
   55:             if (!extractorInput.readFully(this.scratch.getData(), 0, 8, true)) {
   56:                 return false;
   57:             }
   58:             this.atomHeaderBytesRead = 8;
  140:                         ud.g();
  141:                         return 0;
  142:                     }
  143:                     sniffMotionPhotoVideo(extractorInput);
  144:                 }
  145:             } else if (!readAtomHeader(extractorInput)) {
  146:                 endReading();
  147:                 return -1;
  148:             }
  149:         }
  150:     }
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/flv/VideoTagPayloadReader.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   27:         this.nalStartCode = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
   28:         this.nalLength = new ParsableByteArray(4);
   29:     }
   30: 
   31:     @Override // androidx.media3.extractor.flv.TagPayloadReader
   32:     public boolean parseHeader(ParsableByteArray parsableByteArray) throws TagPayloadReader.UnsupportedFormatException {
   33:         int unsignedByte = parsableByteArray.readUnsignedByte();
   34:         int i = (unsignedByte >> 4) & 15;
   35:         int i2 = unsignedByte & 15;
   36:         if (i2 != 7) {
   37:             throw new TagPayloadReader.UnsupportedFormatException(jh.b(i2, "Video format not supported: "));
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/flv/TagPayloadReader.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   17:     public TagPayloadReader(TrackOutput trackOutput) {
   18:         this.output = trackOutput;
   19:     }
   20: 
   21:     public final boolean consume(ParsableByteArray parsableByteArray, long j) {
   22:         return parseHeader(parsableByteArray) && parsePayload(parsableByteArray, j);
   23:     }
   24: 
   25:     public abstract boolean parseHeader(ParsableByteArray parsableByteArray);
   26: 
   27:     public abstract boolean parsePayload(ParsableByteArray parsableByteArray, long j);
   28: 
   29:     public abstract void seek();
   30: }
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/flv/AudioTagPayloadReader.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   23:     public AudioTagPayloadReader(TrackOutput trackOutput) {
   24:         super(trackOutput);
   25:     }
   26: 
   27:     @Override // androidx.media3.extractor.flv.TagPayloadReader
   28:     public boolean parseHeader(ParsableByteArray parsableByteArray) throws TagPayloadReader.UnsupportedFormatException {
   29:         if (this.hasParsedAudioDataHeader) {
   30:             parsableByteArray.skipBytes(1);
   31:         } else {
   32:             int unsignedByte = parsableByteArray.readUnsignedByte();
   33:             int i = (unsignedByte >> 4) & 15;
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/flv/FlvExtractor.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   80:         extractorInput.readFully(this.tagData.getData(), 0, this.tagDataSize);
   81:         return this.tagData;
   82:     }
   83: 
   84:     @RequiresNonNull({"extractorOutput"})
   85:     private boolean readFlvHeader(ExtractorInput extractorInput) {
   86:         if (!extractorInput.readFully(this.headerBuffer.getData(), 0, 9, true)) {
   87:             return false;
   88:         }
   89:         this.headerBuffer.setPosition(0);
   90:         this.headerBuffer.skipBytes(4);
  158:         this.bytesToNextTagHeader = 4;
  159:         this.state = 2;
  160:         return z;
  161:     }
  162: 
  163:     private boolean readTagHeader(ExtractorInput extractorInput) {
  164:         if (!extractorInput.readFully(this.tagHeaderBuffer.getData(), 0, 11, true)) {
  165:             return false;
  166:         }
  167:         this.tagHeaderBuffer.setPosition(0);
  168:         this.tagType = this.tagHeaderBuffer.readUnsignedByte();
  172:         this.tagHeaderBuffer.skipBytes(3);
  173:         this.state = 4;
  174:         return true;
  175:     }
  176: 
  177:     private void skipToTagHeader(ExtractorInput extractorInput) {
  178:         extractorInput.skipFully(this.bytesToNextTagHeader);
  179:         this.bytesToNextTagHeader = 0;
  180:         this.state = 3;
  181:     }
  182: 
  190:         this.extractorOutput.getClass();
  191:         while (true) {
  192:             int i = this.state;
  193:             if (i != 1) {
  194:                 if (i == 2) {
  195:                     skipToTagHeader(extractorInput);
  196:                 } else if (i != 3) {
  197:                     if (i != 4) {
  198:                         ud.g();
  199:                         return 0;
  200:                     }
  201:                     if (readTagData(extractorInput)) {
  202:                         return 0;
  203:                     }
  204:                 } else if (!readTagHeader(extractorInput)) {
  205:                     return -1;
  206:                 }
  207:             } else if (!readFlvHeader(extractorInput)) {
  208:                 return -1;
  209:             }
  210:         }
  211:     }
  212: 
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/flv/ScriptTagPayloadReader.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  136:     public long[] getKeyFrameTimesUs() {
  137:         return this.keyFrameTimesUs;
  138:     }
  139: 
  140:     @Override // androidx.media3.extractor.flv.TagPayloadReader
  141:     public boolean parseHeader(ParsableByteArray parsableByteArray) {
  142:         return true;
  143:     }
  144: 
  145:     @Override // androidx.media3.extractor.flv.TagPayloadReader
  146:     public boolean parsePayload(ParsableByteArray parsableByteArray, long j) {
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/flac/FlacExtractor.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   69:         boolean zCheckAndReadFrameHeader;
   70:         this.flacStreamMetadata.getClass();
   71:         int position = parsableByteArray.getPosition();
   72:         while (position <= parsableByteArray.limit() - 16) {
   73:             parsableByteArray.setPosition(position);
   74:             if (FlacFrameReader.checkAndReadFrameHeader(parsableByteArray, this.flacStreamMetadata, this.frameStartMarker, this.sampleNumberHolder)) {
   75:                 parsableByteArray.setPosition(position);
   76:                 return this.sampleNumberHolder.sampleNumber;
   77:             }
   78:             position++;
   79:         }
   82:             return -1L;
   83:         }
   84:         while (position <= parsableByteArray.limit() - this.minFrameSize) {
   85:             parsableByteArray.setPosition(position);
   86:             try {
   87:                 zCheckAndReadFrameHeader = FlacFrameReader.checkAndReadFrameHeader(parsableByteArray, this.flacStreamMetadata, this.frameStartMarker, this.sampleNumberHolder);
   88:             } catch (IndexOutOfBoundsException unused) {
   89:                 zCheckAndReadFrameHeader = false;
   90:             }
   91:             if (parsableByteArray.getPosition() <= parsableByteArray.limit() ? zCheckAndReadFrameHeader : false) {
   92:                 parsableByteArray.setPosition(position);
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/wav/WavHeaderReader.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   20:     public static final class ChunkHeader {
   21:         public static final int SIZE_IN_BYTES = 8;
   22:         public final int id;
   23:         public final long size;
   24: 
   25:         private ChunkHeader(int i, long j) {
   26:             this.id = i;
   27:             this.size = j;
   28:         }
   29: 
   30:         public static ChunkHeader peek(ExtractorInput extractorInput, ParsableByteArray parsableByteArray) {
   31:             extractorInput.peekFully(parsableByteArray.getData(), 0, 8);
   32:             parsableByteArray.setPosition(0);
   33:             return new ChunkHeader(parsableByteArray.readInt(), parsableByteArray.readLittleEndianUnsignedInt());
   34:         }
   35:     }
   36: 
   37:     private WavHeaderReader() {
   38:     }
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/ogg/StreamReader.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   92:         if (oggSeeker != null) {
   93:             this.oggSeeker = oggSeeker;
   94:         } else if (extractorInput.getLength() == -1) {
   95:             this.oggSeeker = new UnseekableOggSeeker();
   96:         } else {
   97:             OggPageHeader pageHeader = this.oggPacket.getPageHeader();
   98:             this.oggSeeker = new DefaultOggSeeker(this, this.payloadStartPosition, extractorInput.getLength(), pageHeader.headerSize + pageHeader.bodySize, pageHeader.granulePosition, (pageHeader.type & 4) != 0);
   99:         }
  100:         this.state = 2;
  101:         this.oggPacket.trimPayload();
  102:         return 0;
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/ogg/OggPacket.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8: 
    9: /* JADX INFO: loaded from: classes3.dex */
   10: final class OggPacket {
   11:     private boolean populated;
   12:     private int segmentCount;
   13:     private final OggPageHeader pageHeader = new OggPageHeader();
   14:     private final ParsableByteArray packetArray = new ParsableByteArray(new byte[OggPageHeader.MAX_PAGE_PAYLOAD], 0);
   15:     private int currentSegmentIndex = -1;
   16: 
   17:     private int calculatePacketSize(int i) {
   18:         int i2;
   31:             i3 += i2;
   32:         } while (i2 == 255);
   33:         return i3;
   34:     }
   35: 
   36:     public OggPageHeader getPageHeader() {
   37:         return this.pageHeader;
   38:     }
   39: 
   40:     public ParsableByteArray getPayload() {
   41:         return this.packetArray;
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/ogg/OpusReader.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   56:             }
   57:             setupData.format.getClass();
   58:             if (!this.firstCommentHeaderSeen) {
   59:                 this.firstCommentHeaderSeen = true;
   60:                 parsableByteArray.skipBytes(bArr.length);
   61:                 Metadata vorbisComments = VorbisUtil.parseVorbisComments(j.p(VorbisUtil.readVorbisCommentHeader(parsableByteArray, false, false).comments));
   62:                 if (vorbisComments != null) {
   63:                     setupData.format = setupData.format.buildUpon().setMetadata(vorbisComments.copyWithAppendedEntriesFrom(setupData.format.metadata)).build();
   64:                     return true;
   65:                 }
   66:             }
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/ogg/DefaultOggSeeker.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   69:             this.totalGranules = j4;
   70:             this.state = 4;
   71:         } else {
   72:             this.state = 0;
   73:         }
   74:         this.pageHeader = new OggPageHeader();
   75:     }
   76: 
   77:     private long getNextSeekPosition(ExtractorInput extractorInput) throws IOException {
   78:         if (this.start == this.end) {
   79:             return -1L;
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/ogg/VorbisReader.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  110:     }
  111: 
  112:     public VorbisSetup readSetupHeaders(ParsableByteArray parsableByteArray) {
  113:         VorbisUtil.VorbisIdHeader vorbisIdHeader = this.vorbisIdHeader;
  114:         if (vorbisIdHeader == null) {
  115:             this.vorbisIdHeader = VorbisUtil.readVorbisIdentificationHeader(parsableByteArray);
  116:             return null;
  117:         }
  118:         VorbisUtil.CommentHeader commentHeader = this.commentHeader;
  119:         if (commentHeader == null) {
  120:             this.commentHeader = VorbisUtil.readVorbisCommentHeader(parsableByteArray);
  121:             return null;
  122:         }
  123:         byte[] bArr = new byte[parsableByteArray.limit()];
  124:         System.arraycopy(parsableByteArray.getData(), 0, bArr, 0, parsableByteArray.limit());
  125:         VorbisUtil.Mode[] vorbisModes = VorbisUtil.readVorbisModes(parsableByteArray, vorbisIdHeader.channels);
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/ogg/OggExtractor.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   29:         return parsableByteArray;
   30:     }
   31: 
   32:     @EnsuresNonNullIf(expression = {"streamReader"}, result = true)
   33:     private boolean sniffInternal(ExtractorInput extractorInput) {
   34:         OggPageHeader oggPageHeader = new OggPageHeader();
   35:         if (oggPageHeader.populate(extractorInput, true) && (oggPageHeader.type & 2) == 2) {
   36:             int iMin = Math.min(oggPageHeader.bodySize, 8);
   37:             ParsableByteArray parsableByteArray = new ParsableByteArray(iMin);
   38:             extractorInput.peekFully(parsableByteArray.getData(), 0, iMin);
   39:             if (FlacReader.verifyBitstreamType(resetPosition(parsableByteArray))) {
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/mp3/XingFrame.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   13:     public final long frameCount;
   14:     public final MpegAudioUtil.Header header;
   15:     public final long[] tableOfContents;
   16: 
   17:     private XingFrame(MpegAudioUtil.Header header, long j, long j2, long[] jArr, int i, int i2) {
   18:         this.header = new MpegAudioUtil.Header(header);
   19:         this.frameCount = j;
   20:         this.dataSize = j2;
   21:         this.tableOfContents = jArr;
   22:         this.encoderDelay = i;
   23:         this.encoderPadding = i2;
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/mp3/Mp3Extractor.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   83: 
   84:     public Mp3Extractor(int i, long j) {
   85:         this.flags = (i & 2) != 0 ? i | 1 : i;
   86:         this.forcedFirstSampleTimestampUs = j;
   87:         this.scratch = new ParsableByteArray(10);
   88:         this.synchronizedHeader = new MpegAudioUtil.Header();
   89:         this.gaplessInfoHolder = new GaplessInfoHolder();
   90:         this.basisTimeUs = C.TIME_UNSET;
   91:         this.id3Peeker = new Id3Peeker();
   92:         DiscardingTrackOutput discardingTrackOutput = new DiscardingTrackOutput();
   93:         this.skippingTrackOutput = discardingTrackOutput;
  161:     private static long getId3TlenUs(Metadata metadata) {
  162:         TextInformationFrame textInformationFrame;
  163:         return (metadata == null || (textInformationFrame = (TextInformationFrame) metadata.getFirstMatchingEntry(TextInformationFrame.class, new ue5())) == null) ? C.TIME_UNSET : Util.msToUs(Long.parseLong(textInformationFrame.values.get(0)));
  164:     }
  165: 
  166:     private static int getSeekFrameHeader(ParsableByteArray parsableByteArray, int i) {
  167:         if (parsableByteArray.limit() >= i + 4) {
  168:             parsableByteArray.setPosition(i);
  169:             int i2 = parsableByteArray.readInt();
  170:             if (i2 == SEEK_HEADER_XING || i2 == SEEK_HEADER_INFO) {
  171:                 return i2;
  226:                 i3 = 36;
  227:             }
  228:         } else if (header.channels == 1) {
  229:             i3 = 13;
  230:         }
  231:         int seekFrameHeader = getSeekFrameHeader(parsableByteArray, i3);
  232:         if (seekFrameHeader != SEEK_HEADER_INFO) {
  233:             if (seekFrameHeader == SEEK_HEADER_VBRI) {
  234:                 VbriSeeker vbriSeekerCreate = VbriSeeker.create(extractorInput.getLength(), extractorInput.getPosition(), this.synchronizedHeader, parsableByteArray);
  235:                 extractorInput.skipFully(this.synchronizedHeader.frameSize);
  236:                 return vbriSeekerCreate;
  269:             trackOutput.getClass();
  270:             trackOutput.durationUs(this.seeker.getDurationUs());
  271:         }
  272:     }
  273: 
  274:     private boolean peekEndOfStreamOrHeader(ExtractorInput extractorInput) {
  275:         Seeker seeker = this.seeker;
  276:         if (seeker != null) {
  277:             long dataEndPosition = seeker.getDataEndPosition();
  278:             if (dataEndPosition != -1 && extractorInput.getPeekPosition() > dataEndPosition - 4) {
  279:                 return true;
  317: 
  318:     @RequiresNonNull({"realTrackOutput", "seeker"})
  319:     private int readSample(ExtractorInput extractorInput) {
  320:         if (this.sampleBytesRemaining == 0) {
  321:             extractorInput.resetPeekPosition();
  322:             if (peekEndOfStreamOrHeader(extractorInput)) {
  323:                 return -1;
  324:             }
  325:             this.scratch.setPosition(0);
  326:             int i = this.scratch.readInt();
  327:             if (!headersMatch(i, this.synchronizedHeaderData) || MpegAudioUtil.getFrameSize(i) == -1) {
  390:             i = 0;
  391:         }
  392:         int i2 = i;
  393:         int i3 = i2;
  394:         while (true) {
  395:             if (peekEndOfStreamOrHeader(extractorInput)) {
  396:                 if (i2 > 0) {
  397:                     break;
  398:                 }
  399:                 maybeUpdateCbrDurationToLastSample();
  400:                 n7.e();
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/ts/MpeghReader.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   33:     private int truncationSamples;
   34:     private int state = 0;
   35:     private final ParsableByteArray headerScratchBytes = new ParsableByteArray(new byte[15], 2);
   36:     private final ParsableBitArray headerScratchBits = new ParsableBitArray();
   37:     private final ParsableByteArray dataScratchBytes = new ParsableByteArray();
   38:     private MpeghUtil.MhasPacketHeader header = new MpeghUtil.MhasPacketHeader();
   39:     private int samplingRate = C.RATE_UNSET_INT;
   40:     private int standardFrameLength = -1;
   41:     private long mainStreamLabel = -1;
   42:     private boolean rapPending = true;
   43:     private boolean headerDataFinished = true;
   96:             this.output.format(new Format.Builder().setId(this.formatId).setContainerMimeType(this.containerMimeType).setSampleMimeType(MimeTypes.AUDIO_MPEGH_MHM1).setSampleRate(this.samplingRate).setCodecs(strConcat).setInitializationData((bArr == null || bArr.length <= 0) ? null : j.t(Util.EMPTY_BYTE_ARRAY, bArr)).build());
   97:         }
   98:         this.configFound = true;
   99:     }
  100: 
  101:     private boolean parseHeader() throws ParserException {
  102:         int iLimit = this.headerScratchBytes.limit();
  103:         this.headerScratchBits.reset(this.headerScratchBytes.getData(), iLimit);
  104:         boolean mhasPacketHeader = MpeghUtil.parseMhasPacketHeader(this.headerScratchBits, this.header);
  105:         if (mhasPacketHeader) {
  106:             this.payloadBytesRead = 0;
  107:             this.frameBytes = this.header.packetLength + iLimit + this.frameBytes;
  108:         }
  109:         return mhasPacketHeader;
  150:             int i = this.state;
  151:             if (i != 0) {
  152:                 if (i == 1) {
  153:                     copyData(parsableByteArray, this.headerScratchBytes, false);
  154:                     if (this.headerScratchBytes.bytesLeft() == 0) {
  155:                         boolean header = parseHeader();
  156:                         ParsableByteArray parsableByteArray2 = this.headerScratchBytes;
  157:                         if (header) {
  158:                             parsableByteArray2.setPosition(0);
  159:                             TrackOutput trackOutput = this.output;
  160:                             ParsableByteArray parsableByteArray3 = this.headerScratchBytes;
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/ts/MpeghUtil.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  197:         }
  198:         parsableBitArray.skipBits(2);
  199:         return parsableBitArray.readBits(13);
  200:     }
  201: 
  202:     public static boolean parseMhasPacketHeader(ParsableBitArray parsableBitArray, MhasPacketHeader mhasPacketHeader) throws ParserException {
  203:         parsableBitArray.getBytePosition();
  204:         int escapedIntValue = readEscapedIntValue(parsableBitArray, 3, 8, 8);
  205:         mhasPacketHeader.packetType = escapedIntValue;
  206:         if (escapedIntValue == -1) {
  207:             return false;
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/ts/Ac4Reader.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   53:         this.bytesRead = i2;
   54:         return i2 == i;
   55:     }
   56: 
   57:     @RequiresNonNull({"output"})
   58:     private void parseHeader() {
   59:         this.headerScratchBits.setPosition(0);
   60:         Ac4Util.SyncFrameInfo ac4SyncframeInfo = Ac4Util.parseAc4SyncframeInfo(this.headerScratchBits);
   61:         Format format = this.format;
   62:         if (format == null || ac4SyncframeInfo.channelCount != format.channelCount || ac4SyncframeInfo.sampleRate != format.sampleRate || !MimeTypes.AUDIO_AC4.equals(format.sampleMimeType)) {
   63:             Format formatBuild = new Format.Builder().setId(this.formatId).setContainerMimeType(this.containerMimeType).setSampleMimeType(MimeTypes.AUDIO_AC4).setChannelCount(ac4SyncframeInfo.channelCount).setSampleRate(ac4SyncframeInfo.sampleRate).setLanguage(this.language).setRoleFlags(this.roleFlags).build();
  104:                             this.timeUs += this.sampleDurationUs;
  105:                             this.state = 0;
  106:                         }
  107:                     }
  108:                 } else if (continueRead(parsableByteArray, this.headerScratchBytes.getData(), 16)) {
  109:                     parseHeader();
  110:                     this.headerScratchBytes.setPosition(0);
  111:                     this.output.sampleData(this.headerScratchBytes, 16);
  112:                     this.state = 2;
  113:                 }
  114:             } else if (skipToNextSync(parsableByteArray)) {
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/ts/PesReader.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   50:         int i2 = this.bytesRead + iMin;
   51:         this.bytesRead = i2;
   52:         return i2 == i;
   53:     }
   54: 
   55:     private boolean parseHeader() {
   56:         this.pesScratch.setPosition(0);
   57:         int bits = this.pesScratch.readBits(24);
   58:         if (bits != 1) {
   59:             kg.d(bits, "Unexpected start code prefix: ", TAG);
   60:             this.payloadSize = -1;
  114:         this.state = i;
  115:         this.bytesRead = 0;
  116:     }
  117: 
  118:     public boolean canConsumeSynthesizedEmptyPusi(boolean z) {
  119:         return this.state == 3 && this.payloadSize == -1 && !(z && (this.reader instanceof H262Reader)) && (!z || parseHeader());
  120:     }
  121: 
  122:     @Override // androidx.media3.extractor.ts.TsPayloadReader
  123:     public void consume(ParsableByteArray parsableByteArray, int i) {
  124:         this.timestampAdjuster.getClass();
  174:                             setState(1);
  175:                         }
  176:                     }
  177:                 }
  178:             } else if (continueRead(parsableByteArray, this.pesScratch.data, 9)) {
  179:                 setState(parseHeader() ? 2 : 0);
  180:             }
  181:         }
  182:     }
  183: 
  184:     @Override // androidx.media3.extractor.ts.TsPayloadReader
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/ts/Ac3Reader.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   51:         this.bytesRead = i2;
   52:         return i2 == i;
   53:     }
   54: 
   55:     @RequiresNonNull({"output"})
   56:     private void parseHeader() {
   57:         this.headerScratchBits.setPosition(0);
   58:         Ac3Util.SyncFrameInfo ac3SyncframeInfo = Ac3Util.parseAc3SyncframeInfo(this.headerScratchBits);
   59:         Format format = this.format;
   60:         if (format == null || ac3SyncframeInfo.channelCount != format.channelCount || ac3SyncframeInfo.sampleRate != format.sampleRate || !Objects.equals(ac3SyncframeInfo.mimeType, format.sampleMimeType)) {
   61:             Format.Builder peakBitrate = new Format.Builder().setId(this.formatId).setContainerMimeType(this.containerMimeType).setSampleMimeType(ac3SyncframeInfo.mimeType).setChannelCount(ac3SyncframeInfo.channelCount).setSampleRate(ac3SyncframeInfo.sampleRate).setLanguage(this.language).setRoleFlags(this.roleFlags).setPeakBitrate(ac3SyncframeInfo.bitrate);
  106:                             this.timeUs += this.sampleDurationUs;
  107:                             this.state = 0;
  108:                         }
  109:                     }
  110:                 } else if (continueRead(parsableByteArray, this.headerScratchBytes.getData(), 128)) {
  111:                     parseHeader();
  112:                     this.headerScratchBytes.setPosition(0);
  113:                     this.output.sampleData(this.headerScratchBytes, 128);
  114:                     this.state = 2;
  115:                 }
  116:             } else if (skipToNextSync(parsableByteArray)) {
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/ts/MpegAudioReader.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   34:     public MpegAudioReader(String str, int i, String str2) {
   35:         this.state = 0;
   36:         ParsableByteArray parsableByteArray = new ParsableByteArray(4);
   37:         this.headerScratch = parsableByteArray;
   38:         parsableByteArray.getData()[0] = -1;
   39:         this.header = new MpegAudioUtil.Header();
   40:         this.timeUs = C.TIME_UNSET;
   41:         this.language = str;
   42:         this.roleFlags = i;
   43:         this.containerMimeType = str2;
   44:     }
   45: 
   46:     private void findHeader(ParsableByteArray parsableByteArray) {
   47:         byte[] data = parsableByteArray.getData();
   48:         int iLimit = parsableByteArray.limit();
   49:         for (int position = parsableByteArray.getPosition(); position < iLimit; position++) {
   50:             byte b = data[position];
   51:             boolean z = (b & 255) == 255;
  110:     public void consume(ParsableByteArray parsableByteArray) {
  111:         this.output.getClass();
  112:         while (parsableByteArray.bytesLeft() > 0) {
  113:             int i = this.state;
  114:             if (i == 0) {
  115:                 findHeader(parsableByteArray);
  116:             } else if (i == 1) {
  117:                 readHeaderRemainder(parsableByteArray);
  118:             } else {
  119:                 if (i != 2) {
  120:                     ud.g();
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/ts/DtsReader.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   59:         this.bytesRead = i2;
   60:         return i2 == i;
   61:     }
   62: 
   63:     @RequiresNonNull({"output"})
   64:     private void parseCoreHeader() {
   65:         byte[] data = this.headerScratchBytes.getData();
   66:         if (this.format == null) {
   67:             Format dtsFormat = DtsUtil.parseDtsFormat(data, this.formatId, this.language, this.roleFlags, this.containerMimeType, null);
   68:             this.format = dtsFormat;
   69:             this.output.format(dtsFormat);
   71:         this.sampleSize = DtsUtil.getDtsFrameSize(data);
   72:         this.sampleDurationUs = fa4.V(Util.sampleCountToDurationUs(DtsUtil.parseDtsAudioSampleCount(data), this.format.sampleRate));
   73:     }
   74: 
   75:     @RequiresNonNull({"output"})
   76:     private void parseExtensionSubstreamHeader() throws ParserException {
   77:         DtsUtil.DtsHeader dtsHdHeader = DtsUtil.parseDtsHdHeader(this.headerScratchBytes.getData());
   78:         updateFormatWithDtsHeaderInfo(dtsHdHeader);
   79:         this.sampleSize = dtsHdHeader.frameSize;
   80:         long j = dtsHdHeader.frameDurationUs;
   81:         if (j == C.TIME_UNSET) {
   82:             j = 0;
   83:         }
   84:         this.sampleDurationUs = j;
   85:     }
   86: 
   87:     @RequiresNonNull({"output"})
   88:     private void parseUhdHeader() throws ParserException {
   89:         DtsUtil.DtsHeader dtsUhdHeader = DtsUtil.parseDtsUhdHeader(this.headerScratchBytes.getData(), this.uhdAudioChunkId);
   90:         if (this.frameType == 3) {
   91:             updateFormatWithDtsHeaderInfo(dtsUhdHeader);
   92:         }
   93:         this.sampleSize = dtsUhdHeader.frameSize;
   94:         long j = dtsUhdHeader.frameDurationUs;
  155:                         }
  156:                     }
  157:                     break;
  158:                 case 1:
  159:                     if (continueRead(parsableByteArray, this.headerScratchBytes.getData(), 18)) {
  160:                         parseCoreHeader();
  161:                         this.headerScratchBytes.setPosition(0);
  162:                         this.output.sampleData(this.headerScratchBytes, 18);
  163:                         this.state = 6;
  164:                     }
  165:                     break;
  169:                         this.state = 3;
  170:                     }
  171:                     break;
  172:                 case 3:
  173:                     if (continueRead(parsableByteArray, this.headerScratchBytes.getData(), this.extensionSubstreamHeaderSize)) {
  174:                         parseExtensionSubstreamHeader();
  175:                         this.headerScratchBytes.setPosition(0);
  176:                         this.output.sampleData(this.headerScratchBytes, this.extensionSubstreamHeaderSize);
  177:                         this.state = 6;
  178:                     }
  179:                     break;
  190:                         this.state = 5;
  191:                     }
  192:                     break;
  193:                 case 5:
  194:                     if (continueRead(parsableByteArray, this.headerScratchBytes.getData(), this.uhdHeaderSize)) {
  195:                         parseUhdHeader();
  196:                         this.headerScratchBytes.setPosition(0);
  197:                         this.output.sampleData(this.headerScratchBytes, this.uhdHeaderSize);
  198:                         this.state = 6;
  199:                     }
  200:                     break;
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/ts/AdtsExtractor.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   64:         }
   65:         this.averageFrameSize = -1;
   66:         extractorInput.resetPeekPosition();
   67:         long j = 0;
   68:         if (extractorInput.getPosition() == 0) {
   69:             peekId3Header(extractorInput);
   70:         }
   71:         int i = 0;
   72:         int i2 = 0;
   73:         while (true) {
   74:             try {
  132:             this.extractorOutput.seekMap(getConstantBitrateSeekMap(j, (this.flags & 2) != 0));
  133:         }
  134:         this.hasOutputSeekMap = true;
  135:     }
  136: 
  137:     private int peekId3Header(ExtractorInput extractorInput) {
  138:         int i = 0;
  139:         while (true) {
  140:             extractorInput.peekFully(this.scratch.getData(), 0, 10);
  141:             this.scratch.setPosition(0);
  142:             if (this.scratch.readUnsignedInt24() != 4801587) {
  197:         this.firstSampleTimestampUs = j2;
  198:     }
  199: 
  200:     @Override // androidx.media3.extractor.Extractor
  201:     public boolean sniff(ExtractorInput extractorInput) {
  202:         int iPeekId3Header = peekId3Header(extractorInput);
  203:         int i = iPeekId3Header;
  204:         int i2 = 0;
  205:         int i3 = 0;
  206:         do {
  207:             extractorInput.peekFully(this.scratch.getData(), 0, 2);
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/ts/AdtsReader.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   80:         this.output.getClass();
   81:         Util.castNonNull(this.currentOutput);
   82:         Util.castNonNull(this.id3Output);
   83:     }
   84: 
   85:     private void checkAdtsHeader(ParsableByteArray parsableByteArray) {
   86:         if (parsableByteArray.bytesLeft() == 0) {
   87:             return;
   88:         }
   89:         this.adtsScratch.data[0] = parsableByteArray.getData()[parsableByteArray.getPosition()];
   90:         this.adtsScratch.setPosition(2);
  213:     public static boolean isAdtsSyncWord(int i) {
  214:         return (i & 65526) == 65520;
  215:     }
  216: 
  217:     @RequiresNonNull({"output"})
  218:     private void parseAdtsHeader() {
  219:         this.adtsScratch.setPosition(0);
  220:         boolean z = this.hasOutputFormat;
  221:         ParsableBitArray parsableBitArray = this.adtsScratch;
  222:         if (z) {
  223:             parsableBitArray.skipBits(10);
  245:         }
  246:         setReadingSampleState(this.output, this.sampleDurationUs, 0, i2);
  247:     }
  248: 
  249:     @RequiresNonNull({"id3Output"})
  250:     private void parseId3Header() {
  251:         this.id3Output.sampleData(this.id3HeaderBuffer, 10);
  252:         this.id3HeaderBuffer.setPosition(6);
  253:         setReadingSampleState(this.id3Output, 0L, 10, this.id3HeaderBuffer.readSynchSafeInt() + 10);
  254:     }
  255: 
  317:         while (parsableByteArray.bytesLeft() > 0) {
  318:             int i = this.state;
  319:             if (i == 0) {
  320:                 findNextSample(parsableByteArray);
  321:             } else if (i == 1) {
  322:                 checkAdtsHeader(parsableByteArray);
  323:             } else if (i != 2) {
  324:                 if (i == 3) {
  325:                     if (continueRead(parsableByteArray, this.adtsScratch.data, this.hasCrc ? 7 : 5)) {
  326:                         parseAdtsHeader();
  327:                     }
  328:                 } else {
  329:                     if (i != 4) {
  330:                         ud.g();
  331:                         return;
  332:                     }
  333:                     readSample(parsableByteArray);
  334:                 }
  335:             } else if (continueRead(parsableByteArray, this.id3HeaderBuffer.getData(), 10)) {
  336:                 parseId3Header();
  337:             }
  338:         }
  339:     }
  340: 
  341:     @Override // androidx.media3.extractor.ts.ElementaryStreamReader
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/ts/PsDurationReader.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   99:             return C.TIME_UNSET;
  100:         }
  101:         byte[] bArr = new byte[9];
  102:         parsableByteArray.readBytes(bArr, 0, 9);
  103:         parsableByteArray.setPosition(position);
  104:         return !checkMarkerBits(bArr) ? C.TIME_UNSET : readScrValueFromPackHeader(bArr);
  105:     }
  106: 
  107:     private static long readScrValueFromPackHeader(byte[] bArr) {
  108:         byte b = bArr[0];
  109:         long j = (((((long) b) & 56) >> 3) << 30) | ((((long) b) & 3) << 28) | ((((long) bArr[1]) & 255) << 20);
  110:         byte b2 = bArr[2];
  111:         return j | (((((long) b2) & 248) >> 3) << 15) | ((((long) b2) & 3) << 13) | ((((long) bArr[3]) & 255) << 5) | ((((long) bArr[4]) & 248) >> 3);
  112:     }
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/ts/PsExtractor.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   56:         public PesReader(ElementaryStreamReader elementaryStreamReader, TimestampAdjuster timestampAdjuster) {
   57:             this.pesPayloadReader = elementaryStreamReader;
   58:             this.timestampAdjuster = timestampAdjuster;
   59:         }
   60: 
   61:         private void parseHeader() {
   62:             this.pesScratch.skipBits(8);
   63:             this.ptsFlag = this.pesScratch.readBit();
   64:             this.dtsFlag = this.pesScratch.readBit();
   65:             this.pesScratch.skipBits(6);
   66:             this.extendedHeaderLength = this.pesScratch.readBits(8);
   92:         }
   93: 
   94:         public void consume(ParsableByteArray parsableByteArray) {
   95:             parsableByteArray.readBytes(this.pesScratch.data, 0, 3);
   96:             this.pesScratch.setPosition(0);
   97:             parseHeader();
   98:             parsableByteArray.readBytes(this.pesScratch.data, 0, this.extendedHeaderLength);
   99:             this.pesScratch.setPosition(0);
  100:             parseHeaderExtension();
  101:             this.pesPayloadReader.packetStarted(this.timeUs, 4);
  102:             this.pesPayloadReader.consume(parsableByteArray);
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/mp4/Mp4Extractor.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  504:         if (this.parserState != 2) {
  505:             enterReadingAtomHeaderState();
  506:         }
  507:     }
  508: 
  509:     private void processEndOfStreamReadingAtomHeader() {
  510:         if (this.fileType != 2 || (this.flags & 2) == 0) {
  511:             return;
  512:         }
  513:         TrackOutput trackOutputTrack = this.extractorOutput.track(0, 4);
  514:         MotionPhotoMetadata motionPhotoMetadata = this.motionPhotoMetadata;
  662:             int i = this.atomHeaderBytesRead;
  663:             this.motionPhotoMetadata = new MotionPhotoMetadata(0L, j, C.TIME_UNSET, j + ((long) i), this.atomSize - ((long) i));
  664:         }
  665:     }
  666: 
  667:     private boolean readAtomHeader(ExtractorInput extractorInput) throws ParserException {
  668:         Mp4Box.ContainerBox containerBoxPeek;
  669:         if (this.atomHeaderBytesRead == 0) {
  670:             if (!extractorInput.readFully(this.atomHeader.getData(), 0, 8, true)) {
  671:                 processEndOfStreamReadingAtomHeader();
  672:                 return false;
  673:             }
  674:             this.atomHeaderBytesRead = 8;
  675:             this.atomHeader.setPosition(0);
  676:             this.atomSize = this.atomHeader.readUnsignedInt();
  811:         }
  812:         Track track = mp4Track.track;
  813:         if (track.nalUnitLengthFieldLength == 0) {
  814:             if (MimeTypes.AUDIO_AC4.equals(track.format.sampleMimeType)) {
  815:                 if (this.sampleBytesWritten == 0) {
  816:                     Ac4Util.getAc4SampleHeader(i2, this.scratch);
  817:                     trackOutput.sampleData(this.scratch, 7);
  818:                     this.sampleBytesWritten += 7;
  819:                 }
  820:                 i2 += 7;
  821:                 cryptoData = null;
  827:             } else {
  828:                 Format formatBuild = mp4Track.pendingFormat;
  829:                 this.scratch.reset(4);
  830:                 extractorInput.peekFully(this.scratch.getData(), 0, 4);
  831:                 extractorInput.resetPeekPosition();
  832:                 MpegAudioUtil.Header header = new MpegAudioUtil.Header();
  833:                 TrackOutput trackOutput2 = mp4Track.trackOutput;
  834:                 if (header.setForHeaderData(this.scratch.readInt()) && !Objects.equals(formatBuild.sampleMimeType, header.mimeType)) {
  835:                     Format.Builder builderBuildUpon = formatBuild.buildUpon();
  836:                     String str = header.mimeType;
  837:                     str.getClass();
  861:             while (this.sampleBytesWritten < i2) {
  862:                 int i5 = this.sampleCurrentNalBytesRemaining;
  863:                 if (i5 == 0) {
  864:                     Track track2 = mp4Track.track;
  865:                     int i6 = track2.nalUnitLengthFieldLength;
  866:                     if (this.isSampleDependedOn || NalUnitUtil.numberOfBytesInNalUnitHeader(track2.format) + i6 > mp4Track.sampleTable.sizes[i] - this.sampleBytesRead) {
  867:                         iNumberOfBytesInNalUnitHeader = 0;
  868:                     } else {
  869:                         iNumberOfBytesInNalUnitHeader = NalUnitUtil.numberOfBytesInNalUnitHeader(mp4Track.track.format);
  870:                         i6 = mp4Track.track.nalUnitLengthFieldLength + iNumberOfBytesInNalUnitHeader;
  871:                     }
  872:                     extractorInput.readFully(data, i4, i6);
  873:                     this.sampleBytesRead += i6;
  874:                     this.nalPrefix.setPosition(0);
  997:                     return 0;
  998:                 }
  999:                 if (readAtomPayload(extractorInput, positionHolder)) {
 1000:                     return 1;
 1001:                 }
 1002:             } else if (!readAtomHeader(extractorInput)) {
 1003:                 return -1;
 1004:             }
 1005:         }
 1006:     }
 1007: 
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/mp4/FragmentedMp4Extractor.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
 1105:             onContainerAtomRead(this.containerAtoms.pop());
 1106:         }
 1107:         enterReadingAtomHeaderState();
 1108:     }
 1109: 
 1110:     private boolean readAtomHeader(ExtractorInput extractorInput) throws ParserException {
 1111:         if (this.atomHeaderBytesRead == 0) {
 1112:             if (!extractorInput.readFully(this.atomHeader.getData(), 0, 8, true)) {
 1113:                 return false;
 1114:             }
 1115:             this.atomHeaderBytesRead = 8;
 1289:             }
 1290:             boolean zEquals = MimeTypes.AUDIO_AC4.equals(nextTrackBundle.moovSampleTable.track.format.sampleMimeType);
 1291:             int i = this.sampleSize;
 1292:             if (zEquals) {
 1293:                 this.sampleBytesWritten = nextTrackBundle.outputSampleEncryptionData(i, 7);
 1294:                 Ac4Util.getAc4SampleHeader(this.sampleSize, this.scratch);
 1295:                 nextTrackBundle.output.sampleData(this.scratch, 7);
 1296:                 iOutputSampleEncryptionData = this.sampleBytesWritten + 7;
 1297:                 this.sampleBytesWritten = iOutputSampleEncryptionData;
 1298:             } else {
 1299:                 iOutputSampleEncryptionData = nextTrackBundle.outputSampleEncryptionData(i, 0);
 1327:             int i4 = 4 - track.nalUnitLengthFieldLength;
 1328:             while (this.sampleBytesWritten < this.sampleSize) {
 1329:                 int i5 = this.sampleCurrentNalBytesRemaining;
 1330:                 if (i5 == 0) {
 1331:                     if (this.ceaTrackOutputs.length > 0 || !this.isSampleDependedOn) {
 1332:                         iNumberOfBytesInNalUnitHeader = NalUnitUtil.numberOfBytesInNalUnitHeader(track.format);
 1333:                         if (track.nalUnitLengthFieldLength + iNumberOfBytesInNalUnitHeader > this.sampleSize - this.sampleBytesWritten) {
 1334:                             iNumberOfBytesInNalUnitHeader = 0;
 1335:                         }
 1336:                     } else {
 1337:                         iNumberOfBytesInNalUnitHeader = 0;
 1436:                 } else if (i == 2) {
 1437:                     readEncryptionData(extractorInput);
 1438:                 } else if (readSample(extractorInput)) {
 1439:                     return 0;
 1440:                 }
 1441:             } else if (!readAtomHeader(extractorInput)) {
 1442:                 long j = this.seekPositionBeforeSidxProcessing;
 1443:                 if (j == -1) {
 1444:                     this.reorderingBufferQueue.flush();
 1445:                     return -1;
 1446:                 }
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/amr/AmrExtractor.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  203:             return getFrameSizeInBytes((b >> 3) & 15);
  204:         }
  205:         throw ParserException.createForMalformedContainer("Invalid padding bits for frame header " + ((int) b), null);
  206:     }
  207: 
  208:     private boolean readAmrHeader(ExtractorInput extractorInput) {
  209:         byte[] bArr = amrSignatureNb;
  210:         if (peekAmrSignature(extractorInput, bArr)) {
  211:             this.isWideBand = false;
  212:             extractorInput.skipFully(bArr.length);
  213:             return true;
  279:     }
  280: 
  281:     @Override // androidx.media3.extractor.Extractor
  282:     public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws ParserException {
  283:         assertInitialized();
  284:         if (extractorInput.getPosition() == 0 && !readAmrHeader(extractorInput)) {
  285:             throw ParserException.createForMalformedContainer("Could not find AMR header.", null);
  286:         }
  287:         maybeOutputFormat();
  288:         int sample = readSample(extractorInput);
  289:         maybeOutputSeekMap(extractorInput.getLength(), sample);
  328:         this.currentTrackOutput = this.skippingTrackOutput;
  329:     }
  330: 
  331:     @Override // androidx.media3.extractor.Extractor
  332:     public boolean sniff(ExtractorInput extractorInput) {
  333:         return readAmrHeader(extractorInput);
  334:     }
  335: 
  336:     public AmrExtractor() {
  337:         this(0);
  338:     }
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/avi/StreamFormatChunk.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   60:             return null;
   61:         }
   62:         return MimeTypes.AUDIO_DTS;
   63:     }
   64: 
   65:     private static AviChunk parseBitmapInfoHeader(ParsableByteArray parsableByteArray) {
   66:         parsableByteArray.skipBytes(4);
   67:         int littleEndianInt = parsableByteArray.readLittleEndianInt();
   68:         int littleEndianInt2 = parsableByteArray.readLittleEndianInt();
   69:         parsableByteArray.skipBytes(4);
   70:         int littleEndianInt3 = parsableByteArray.readLittleEndianInt();
   78:         return new StreamFormatChunk(builder.build());
   79:     }
   80: 
   81:     public static AviChunk parseFrom(int i, ParsableByteArray parsableByteArray) {
   82:         if (i == 2) {
   83:             return parseBitmapInfoHeader(parsableByteArray);
   84:         }
   85:         if (i == 1) {
   86:             return parseWaveFormatEx(parsableByteArray);
   87:         }
   88:         Log.w(TAG, "Ignoring strf box for unsupported track type: " + Util.getTrackTypeString(i));
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/text/webvtt/WebvttParserUtil.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   14:     private static final String WEBVTT_HEADER = "WEBVTT";
   15: 
   16:     private WebvttParserUtil() {
   17:     }
   18: 
   19:     public static Matcher findNextCueHeader(ParsableByteArray parsableByteArray) {
   20:         String line;
   21:         while (true) {
   22:             String line2 = parsableByteArray.readLine();
   23:             if (line2 == null) {
   24:                 return null;
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/text/ttml/TtmlParser.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  199:             i3 = Integer.parseInt(attributeValue4);
  200:         }
  201:         return new FrameAndTickRate(i * f, i2, i3);
  202:     }
  203: 
  204:     private static Map<String, TtmlStyle> parseHeader(XmlPullParser xmlPullParser, Map<String, TtmlStyle> map, int i, TtsExtent ttsExtent, Map<String, TtmlRegion> map2, Map<String, String> map3) throws XmlPullParserException, IOException {
  205:         do {
  206:             xmlPullParser.next();
  207:             if (XmlPullParserUtil.isStartTag(xmlPullParser, "style")) {
  208:                 String attributeValue = XmlPullParserUtil.getAttributeValue(xmlPullParser, "style");
  209:                 TtmlStyle styleAttributes = parseStyleAttributes(xmlPullParser, new TtmlStyle());
  782:                             TtsExtent ttsExtent2 = ttsExtent;
  783:                             FrameAndTickRate frameAndTickRate = frameAndTickRates;
  784:                             int i4 = cellRows;
  785:                             if (isSupportedTag(name)) {
  786:                                 if (TtmlNode.TAG_HEAD.equals(name)) {
  787:                                     parseHeader(xmlPullParserNewPullParser, map, i4, ttsExtent2, map2, map3);
  788:                                 } else {
  789:                                     try {
  790:                                         TtmlNode node = parseNode(xmlPullParserNewPullParser, ttmlNode, map2, frameAndTickRate);
  791:                                         arrayDeque.push(node);
  792:                                         if (ttmlNode != null) {
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/text/ssa/SsaParser.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   60:         String strFromUtf8Bytes = Util.fromUtf8Bytes(list.get(0));
   61:         o8.e(strFromUtf8Bytes.startsWith(FORMAT_LINE_PREFIX));
   62:         SsaDialogueFormat ssaDialogueFormatFromFormatLine = SsaDialogueFormat.fromFormatLine(strFromUtf8Bytes);
   63:         ssaDialogueFormatFromFormatLine.getClass();
   64:         this.dialogueFormatFromInitializationData = ssaDialogueFormatFromFormatLine;
   65:         parseHeader(new ParsableByteArray(list.get(1)), StandardCharsets.UTF_8);
   66:     }
   67: 
   68:     private static int addCuePlacerholderByTime(long j, List<Long> list, List<List<Cue>> list2) {
   69:         int i;
   70:         int size = list.size() - 1;
  205:                 }
  206:             }
  207:         }
  208:     }
  209: 
  210:     private void parseHeader(ParsableByteArray parsableByteArray, Charset charset) {
  211:         while (true) {
  212:             String line = parsableByteArray.readLine(charset);
  213:             if (line == null) {
  214:                 return;
  215:             }
  362:         ArrayList arrayList2 = new ArrayList();
  363:         this.parsableByteArray.reset(bArr, i + i2);
  364:         this.parsableByteArray.setPosition(i);
  365:         Charset charsetDetectUtfCharset = detectUtfCharset(this.parsableByteArray);
  366:         if (!this.haveInitializationData) {
  367:             parseHeader(this.parsableByteArray, charsetDetectUtfCharset);
  368:         }
  369:         parseEventBody(this.parsableByteArray, arrayList, arrayList2, charsetDetectUtfCharset);
  370:         ArrayList arrayList3 = (outputOptions.startTimeUs == C.TIME_UNSET || !outputOptions.outputAllCues) ? null : new ArrayList();
  371:         for (int i3 = 0; i3 < arrayList.size(); i3++) {
  372:             List list = (List) arrayList.get(i3);
```


---

## `apk_analysis/jadx/sources/androidx/media3/extractor/metadata/id3/Id3Decoder.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   48:     public static final class Id3Header {
   49:         private final int framesSize;
   50:         private final boolean isUnsynchronized;
   51:         private final int majorVersion;
   52: 
   53:         public Id3Header(int i, boolean z, int i2) {
   54:             this.majorVersion = i;
   55:             this.isUnsynchronized = z;
   56:             this.framesSize = i2;
   57:         }
   58:     }
  525:         int iDelimiterLength = iIndexOfTerminator + delimiterLength(unsignedByte);
  526:         int iIndexOfTerminator2 = indexOfTerminator(bArr, iDelimiterLength, unsignedByte);
  527:         return new GeobFrame(strNormalizeMimeType, strDecodeStringIfValid, decodeStringIfValid(bArr, iDelimiterLength, iIndexOfTerminator2, charset), copyOfRangeIfValid(bArr, iIndexOfTerminator2 + delimiterLength(unsignedByte), i2));
  528:     }
  529: 
  530:     private static Id3Header decodeHeader(ParsableByteArray parsableByteArray) {
  531:         if (parsableByteArray.bytesLeft() < 10) {
  532:             Log.w(TAG, "Data too short to be an ID3 tag");
  533:             return null;
  534:         }
  535:         int unsignedInt24 = parsableByteArray.readUnsignedInt24();
  564:             }
  565:             if ((unsignedByte2 & 16) != 0) {
  566:                 synchSafeInt -= 10;
  567:             }
  568:         }
  569:         return new Id3Header(unsignedByte, unsignedByte < 4 && (unsignedByte2 & 128) != 0, synchSafeInt);
  570:     }
  571: 
  572:     private static MlltFrame decodeMlltFrame(ParsableByteArray parsableByteArray, int i) {
  573:         int unsignedShort = parsableByteArray.readUnsignedShort();
  574:         int unsignedInt24 = parsableByteArray.readUnsignedInt24();
  792:     }
  793: 
  794:     public Metadata decode(byte[] bArr, int i) throws Throwable {
  795:         ArrayList arrayList = new ArrayList();
  796:         ParsableByteArray parsableByteArray = new ParsableByteArray(bArr, i);
  797:         Id3Header id3HeaderDecodeHeader = decodeHeader(parsableByteArray);
  798:         if (id3HeaderDecodeHeader == null) {
  799:             return null;
  800:         }
  801:         int position = parsableByteArray.getPosition();
  802:         int i2 = id3HeaderDecodeHeader.majorVersion == 2 ? 6 : 10;
```


---

## `apk_analysis/jadx/sources/androidx/media3/exoplayer/audio/OggOpusAudioPacketizer.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   44:             }
   45:             byteBufferReplaceOutputBuffer.put(OGG_DEFAULT_COMMENT_HEADER_PAGE);
   46:         }
   47:         int packetAudioSampleCount = this.granulePosition + OpusUtil.parsePacketAudioSampleCount(byteBuffer);
   48:         this.granulePosition = packetAudioSampleCount;
   49:         writeOggPacketHeader(byteBufferReplaceOutputBuffer, packetAudioSampleCount, this.pageSequenceNumber, i3, false);
   50:         for (int i4 = 0; i4 < i3; i4++) {
   51:             if (i2 >= 255) {
   52:                 byteBufferReplaceOutputBuffer.put((byte) -1);
   53:                 i2 -= 255;
   54:             } else {
   82:         }
   83:         return this.outputBuffer;
   84:     }
   85: 
   86:     private void writeOggIdHeaderPage(ByteBuffer byteBuffer, byte[] bArr) {
   87:         writeOggPacketHeader(byteBuffer, 0L, 0, 1, true);
   88:         byteBuffer.put(i79.a(bArr.length));
   89:         byteBuffer.put(bArr);
   90:         byteBuffer.putInt(22, Util.crc32(byteBuffer.array(), byteBuffer.arrayOffset(), bArr.length + 28, 0));
   91:         byteBuffer.position(bArr.length + 28);
   92:     }
   93: 
   94:     private void writeOggPacketHeader(ByteBuffer byteBuffer, long j, int i, int i2, boolean z) {
   95:         byteBuffer.put((byte) 79);
   96:         byteBuffer.put((byte) 103);
   97:         byteBuffer.put((byte) 103);
   98:         byteBuffer.put((byte) 83);
   99:         byteBuffer.put((byte) 0);
```


---

## `apk_analysis/jadx/sources/androidx/media3/exoplayer/audio/TeeAudioProcessor.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   52:         private void maybePrepareFile() throws IOException {
   53:             if (this.randomAccessFile != null) {
   54:                 return;
   55:             }
   56:             RandomAccessFile randomAccessFile = new RandomAccessFile(getNextOutputFileName(), "rw");
   57:             writeFileHeader(randomAccessFile);
   58:             this.randomAccessFile = randomAccessFile;
   59:             this.bytesWritten = 44;
   60:         }
   61: 
   62:         private void reset() {
   92:                 randomAccessFile.write(this.scratchBuffer, 0, iMin);
   93:                 this.bytesWritten += iMin;
   94:             }
   95:         }
   96: 
   97:         private void writeFileHeader(RandomAccessFile randomAccessFile) throws IOException {
   98:             randomAccessFile.writeInt(WavUtil.RIFF_FOURCC);
   99:             randomAccessFile.writeInt(-1);
  100:             randomAccessFile.writeInt(WavUtil.WAVE_FOURCC);
  101:             randomAccessFile.writeInt(WavUtil.FMT_FOURCC);
  102:             this.scratchByteBuffer.clear();
```


---

## `apk_analysis/jadx/sources/androidx/media3/exoplayer/hls/WebvttExtractor.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   75:                 String strGroup2 = matcher2.group(1);
   76:                 strGroup2.getClass();
   77:                 jPtsToUs = TimestampAdjuster.ptsToUs(Long.parseLong(strGroup2));
   78:             }
   79:         }
   80:         Matcher matcherFindNextCueHeader = WebvttParserUtil.findNextCueHeader(parsableByteArray);
   81:         if (matcherFindNextCueHeader == null) {
   82:             buildTrackOutput(0L);
   83:             return;
   84:         }
   85:         String strGroup3 = matcherFindNextCueHeader.group(1);
```


---

## `apk_analysis/jadx/sources/androidx/media3/exoplayer/hls/playlist/HlsPlaylistParser.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  219:     public HlsPlaylistParser(HlsMultivariantPlaylist hlsMultivariantPlaylist, HlsMediaPlaylist hlsMediaPlaylist) {
  220:         this.multivariantPlaylist = hlsMultivariantPlaylist;
  221:         this.previousMediaPlaylist = hlsMediaPlaylist;
  222:     }
  223: 
  224:     private static boolean checkPlaylistHeader(BufferedReader bufferedReader) throws IOException {
  225:         int i = bufferedReader.read();
  226:         if (i == 239) {
  227:             if (bufferedReader.read() != 187 || bufferedReader.read() != 191) {
  228:                 return false;
  229:             }
  861:     @Override // androidx.media3.exoplayer.upstream.ParsingLoadable.Parser
  862:     public HlsPlaylist parse(Uri uri, InputStream inputStream) throws ParserException {
  863:         BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
  864:         ArrayDeque arrayDeque = new ArrayDeque();
  865:         try {
  866:             if (!checkPlaylistHeader(bufferedReader)) {
  867:                 throw ParserException.createForMalformedManifest("Input does not start with the #EXTM3U header.", null);
  868:             }
  869:             while (true) {
  870:                 String line = bufferedReader.readLine();
  871:                 if (line == null) {
```


---

## `apk_analysis/jadx/sources/androidx/compose/material3/ModalWideNavigationRailOverrideScope.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   68: 
   69:     public final Shape getExpandedShape() {
   70:         return this.expandedShape;
   71:     }
   72: 
   73:     public final bm3<Composer, Integer, j59> getHeader() {
   74:         return this.header;
   75:     }
   76: 
   77:     public final Modifier getModifier() {
   78:         return this.modifier;
```


---

## `apk_analysis/jadx/sources/androidx/compose/material3/DatePickerKt.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
 5644:         if ((196608 & i) == 0) {
 5645:             i2 |= composerStartRestartGroup.changedInstance(bm3Var2) ? 131072 : 65536;
 5646:         }
 5647:         if (composerStartRestartGroup.shouldExecute((74899 & i2) != 74898, i2 & 1)) {
 5648:             if (ComposerKt.isTraceInProgress()) {
 5649:                 ComposerKt.traceEventStart(2020490761, i2, -1, "androidx.compose.material3.DatePickerHeader (DatePicker.kt:1677)");
 5650:             }
 5651:             Modifier modifierThen = SizeKt.fillMaxWidth$default(modifier, 0.0f, 1, null).then(bm3Var != null ? SizeKt.m2084defaultMinSizeVpY3zN4$default(Modifier.Companion, 0.0f, f, 1, null) : Modifier.Companion);
 5652:             MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getSpaceBetween(), Alignment.Companion.getStart(), composerStartRestartGroup, 6);
 5653:             int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
 5654:             CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
```


---

## `apk_analysis/jadx/sources/androidx/compose/material3/DefaultNavigationRailOverride.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  135:             if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
  136:                 dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
  137:             }
  138:             Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
  139:             ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
  140:             dm3<ColumnScope, Composer, Integer, j59> header = navigationRailOverrideScope.getHeader();
  141:             if (header != null) {
  142:                 composer.startReplaceGroup(-548298554);
  143:                 header.invoke(columnScopeInstance, composer, 6);
  144:                 SpacerKt.Spacer(SizeKt.m2085height3ABfNKs(companion, NavigationRailKt.NavigationRailHeaderPadding), composer, 6);
  145:                 composer.endReplaceGroup();
```


---

## `apk_analysis/jadx/sources/androidx/compose/material3/DefaultWideNavigationRailOverride.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   33:         }
   34:         if (composerStartRestartGroup.shouldExecute((i2 & 3) != 2, i2 & 1)) {
   35:             if (ComposerKt.isTraceInProgress()) {
   36:                 ComposerKt.traceEventStart(-1829525426, i2, -1, "androidx.compose.material3.DefaultWideNavigationRailOverride.WideNavigationRail (WideNavigationRail.kt:192)");
   37:             }
   38:             WideNavigationRailKt.WideNavigationRailLayout(wideNavigationRailOverrideScope.getModifier(), false, WideNavigationRailStateKt.isExpanded(wideNavigationRailOverrideScope.getState().getTargetValue()), wideNavigationRailOverrideScope.getColors(), wideNavigationRailOverrideScope.getShape(), wideNavigationRailOverrideScope.getHeader(), wideNavigationRailOverrideScope.getWindowInsets(), wideNavigationRailOverrideScope.getArrangement(), wideNavigationRailOverrideScope.getContent(), composerStartRestartGroup, 48);
   39:             if (ComposerKt.isTraceInProgress()) {
   40:                 ComposerKt.traceEventEnd();
   41:             }
   42:         } else {
   43:             composerStartRestartGroup.skipToGroupEnd();
```


---

## `apk_analysis/jadx/sources/androidx/compose/material3/WideNavigationRailOverrideScope.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   42: 
   43:     public final bm3<Composer, Integer, j59> getContent() {
   44:         return this.content;
   45:     }
   46: 
   47:     public final bm3<Composer, Integer, j59> getHeader() {
   48:         return this.header;
   49:     }
   50: 
   51:     public final Modifier getModifier() {
   52:         return this.modifier;
```


---

## `apk_analysis/jadx/sources/androidx/compose/material3/DefaultModalWideNavigationRailOverride.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  196:                 composerStartRestartGroup.endReplaceGroup();
  197:             } else {
  198:                 composerStartRestartGroup.startReplaceGroup(97400069);
  199:                 i3 = i8;
  200:                 r4 = 0;
  201:                 WideNavigationRailKt.WideNavigationRailLayout(modalWideNavigationRailOverrideScope.getModifier(), false, false, modalWideNavigationRailOverrideScope.getColors(), modalWideNavigationRailOverrideScope.getCollapsedShape(), modalWideNavigationRailOverrideScope.getHeader(), modalWideNavigationRailOverrideScope.getWindowInsets(), modalWideNavigationRailOverrideScope.getArrangement(), bm3Var, composerStartRestartGroup, 432);
  202:                 composerStartRestartGroup = composerStartRestartGroup;
  203:                 composerStartRestartGroup.endReplaceGroup();
  204:             }
  205:             Object objRememberedValue7 = composerStartRestartGroup.rememberedValue();
  206:             if (objRememberedValue7 == companion.getEmpty()) {
  391:                                 if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
  392:                                     dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
  393:                                 }
  394:                                 Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
  395:                                 BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
  396:                                 bm3<Composer, Integer, j59> header = modalWideNavigationRailOverrideScope4.getHeader();
  397:                                 if (header == null) {
  398:                                     composer3.startReplaceGroup(-1627801290);
  399:                                 } else {
  400:                                     composer3.startReplaceGroup(-2130719701);
  401:                                     header.invoke(composer3, 0);
```


---

## `apk_analysis/jadx/sources/androidx/compose/material3/NavigationRailOverrideScope.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   34:     /* JADX INFO: renamed from: getContentColor-0d7_KjU, reason: not valid java name */
   35:     public final long m3717getContentColor0d7_KjU() {
   36:         return this.contentColor;
   37:     }
   38: 
   39:     public final dm3<ColumnScope, Composer, Integer, j59> getHeader() {
   40:         return this.header;
   41:     }
   42: 
   43:     public final Modifier getModifier() {
   44:         return this.modifier;
```


---

## `apk_analysis/jadx/sources/androidx/compose/foundation/lazy/LazyListScope.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   69:             obj = null;
   70:         }
   71:         if ((i & 2) != 0) {
   72:             obj2 = null;
   73:         }
   74:         lazyListScope.stickyHeader(obj, obj2, dm3Var);
   75:     }
   76: 
   77:     /* JADX INFO: Access modifiers changed from: private */
   78:     static j59 stickyHeader$lambda$0(dm3 dm3Var, LazyItemScope lazyItemScope, int i, Composer composer, int i2) {
   79:         if ((i2 & 6) == 0) {
  120:     /* synthetic */ default void items(int i, nl3 nl3Var, fm3 fm3Var) {
  121:         items(i, nl3Var, new co(4), fm3Var);
  122:     }
  123: 
  124:     @ul2
  125:     /* synthetic */ default void stickyHeader(Object obj, Object obj2, final dm3 dm3Var) {
  126:         stickyHeader(obj, obj2, (fm3<? super LazyItemScope, ? super Integer, ? super Composer, ? super Integer, j59>) ComposableLambdaKt.composableLambdaInstance(-764088514, true, new fm3() { // from class: ln4
  127:             @Override // defpackage.fm3
  128:             public final Object invoke(Object obj3, Object obj4, Object obj5, Object obj6) {
  129:                 int iIntValue = ((Integer) obj6).intValue();
  130:                 return LazyListScope.stickyHeader$lambda$0(dm3Var, (LazyItemScope) obj3, ((Integer) obj4).intValue(), (Composer) obj5, iIntValue);
  131:             }
  142:         public static void items(LazyListScope lazyListScope, int i, nl3<? super Integer, ? extends Object> nl3Var, nl3<? super Integer, ? extends Object> nl3Var2, fm3<? super LazyItemScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var) {
  143:             LazyListScope.super.items(i, nl3Var, nl3Var2, fm3Var);
  144:         }
  145: 
  146:         @Deprecated
  147:         public static void stickyHeader(LazyListScope lazyListScope, Object obj, Object obj2, fm3<? super LazyItemScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var) {
  148:             LazyListScope.super.stickyHeader(obj, obj2, fm3Var);
  149:         }
  150:     }
  151: 
  152:     @ul2
  153:     /* synthetic */ default void item(Object obj, dm3 dm3Var) {
  156: 
  157:     default void items(int i, nl3<? super Integer, ? extends Object> nl3Var, nl3<? super Integer, ? extends Object> nl3Var2, fm3<? super LazyItemScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var) {
  158:         throw new IllegalStateException("The method is not implemented");
  159:     }
  160: 
  161:     default void stickyHeader(Object obj, Object obj2, final fm3<? super LazyItemScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var) {
  162:         item(obj, obj2, ComposableLambdaKt.composableLambdaInstance(1691919627, true, new dm3() { // from class: mn4
  163:             @Override // defpackage.dm3
  164:             public final Object invoke(Object obj3, Object obj4, Object obj5) {
  165:                 int iIntValue = ((Integer) obj5).intValue();
  166:                 return LazyListScope.stickyHeader$lambda$1(fm3Var, (LazyItemScope) obj3, (Composer) obj4, iIntValue);
  199:             obj = null;
  200:         }
  201:         if ((i & 2) != 0) {
  202:             obj2 = null;
  203:         }
  204:         lazyListScope.stickyHeader(obj, obj2, (fm3<? super LazyItemScope, ? super Integer, ? super Composer, ? super Integer, j59>) fm3Var);
  205:     }
  206: }
```


---

## `apk_analysis/jadx/sources/androidx/compose/foundation/lazy/LazyListIntervalContent.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   96:     public void items(int i, nl3<? super Integer, ? extends Object> nl3Var, nl3<? super Integer, ? extends Object> nl3Var2, fm3<? super LazyItemScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var) {
   97:         getIntervals().addInterval(i, new LazyListInterval(nl3Var, nl3Var2, fm3Var));
   98:     }
   99: 
  100:     @Override // androidx.compose.foundation.lazy.LazyListScope
  101:     public void stickyHeader(Object obj, Object obj2, final fm3<? super LazyItemScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var) {
  102:         MutableIntList mutableIntList = this._headerIndexes;
  103:         int i = 1;
  104:         if (mutableIntList == null) {
  105:             mutableIntList = new MutableIntList(0, i, null);
  106:             this._headerIndexes = mutableIntList;
```


---

## `apk_analysis/jadx/sources/androidx/compose/foundation/lazy/grid/LazyGridIntervalContent.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  141:     public final void setHasCustomSpans$foundation(boolean z) {
  142:         this.hasCustomSpans = z;
  143:     }
  144: 
  145:     @Override // androidx.compose.foundation.lazy.grid.LazyGridScope
  146:     public void stickyHeader(Object obj, Object obj2, final fm3<? super LazyGridItemScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var) {
  147:         MutableIntList mutableIntList = this._headerIndexes;
  148:         int i = 1;
  149:         if (mutableIntList == null) {
  150:             mutableIntList = new MutableIntList(0, i, null);
  151:             this._headerIndexes = mutableIntList;
```


---

## `apk_analysis/jadx/sources/androidx/compose/foundation/lazy/grid/LazyGridScope.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   65:             obj = null;
   66:         }
   67:         if ((i & 2) != 0) {
   68:             obj2 = null;
   69:         }
   70:         lazyGridScope.stickyHeader(obj, obj2, fm3Var);
   71:     }
   72: 
   73:     void item(Object obj, nl3<? super LazyGridItemSpanScope, GridItemSpan> nl3Var, Object obj2, dm3<? super LazyGridItemScope, ? super Composer, ? super Integer, j59> dm3Var);
   74: 
   75:     void items(int i, nl3<? super Integer, ? extends Object> nl3Var, bm3<? super LazyGridItemSpanScope, ? super Integer, GridItemSpan> bm3Var, nl3<? super Integer, ? extends Object> nl3Var2, fm3<? super LazyGridItemScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var);
   76: 
   77:     void stickyHeader(Object obj, Object obj2, fm3<? super LazyGridItemScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var);
   78: }
```


---

## `apk_analysis/jadx/sources/androidx/compose/ui/platform/PlatformTextInputModifierNodeKt$LocalChainedPlatformTextInputInterceptor$1.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    2: 
    3: import defpackage.gh4;
    4: import defpackage.ll3;
    5: 
    6: /* JADX INFO: loaded from: classes2.dex */
    7: public final class PlatformTextInputModifierNodeKt$LocalChainedPlatformTextInputInterceptor$1 extends gh4 implements ll3<ChainedPlatformTextInputInterceptor> {
    8:     public static final PlatformTextInputModifierNodeKt$LocalChainedPlatformTextInputInterceptor$1 INSTANCE = new PlatformTextInputModifierNodeKt$LocalChainedPlatformTextInputInterceptor$1();
    9: 
   10:     public PlatformTextInputModifierNodeKt$LocalChainedPlatformTextInputInterceptor$1() {
   11:         super(0);
   12:     }
   13: 
   14:     /* JADX WARN: Can't rename method to resolve collision */
   15:     @Override // defpackage.ll3
   16:     public final ChainedPlatformTextInputInterceptor invoke() {
   17:         return null;
   18:     }
   19: }
```


---

## `apk_analysis/jadx/sources/androidx/compose/ui/platform/ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    3: import defpackage.bd2;
    4: import defpackage.e02;
    5: import defpackage.f02;
    6: 
    7: /* JADX INFO: loaded from: classes2.dex */
    8: @bd2(c = "androidx.compose.ui.platform.ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1", f = "PlatformTextInputModifierNode.kt", l = {230}, m = "startInputMethod", v = 1)
    9: public final class ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1 extends f02 {
   10:     int label;
   11:     /* synthetic */ Object result;
   12:     final /* synthetic */ ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1 this$0;
   13: 
   14:     /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
   15:     public ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1(ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1 chainedPlatformTextInputInterceptor$textInputSession$2$scope$1, e02<? super ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1> e02Var) {
   16:         super(e02Var);
   17:         this.this$0 = chainedPlatformTextInputInterceptor$textInputSession$2$scope$1;
   18:     }
   19: 
   20:     @Override // defpackage.cd0
   21:     public final Object invokeSuspend(Object obj) {
   22:         this.result = obj;
```


---

## `apk_analysis/jadx/sources/androidx/compose/ui/platform/ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$3.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   15: import defpackage.pg8;
   16: import defpackage.px;
   17: import defpackage.r57;
   18: 
   19: /* JADX INFO: loaded from: classes2.dex */
   20: @bd2(c = "androidx.compose.ui.platform.ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$3", f = "PlatformTextInputModifierNode.kt", l = {237}, m = "invokeSuspend", v = 1)
   21: public final class ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$3 extends pg8 implements bm3<j59, e02<?>, Object> {
   22:     final /* synthetic */ PlatformTextInputSessionScope $parentSession;
   23:     final /* synthetic */ PlatformTextInputMethodRequest $request;
   24:     int label;
   25:     final /* synthetic */ ChainedPlatformTextInputInterceptor this$0;
   26: 
   27:     /* JADX INFO: renamed from: androidx.compose.ui.platform.ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$3$1, reason: invalid class name */
   28:     public static final class AnonymousClass1 extends gh4 implements ll3<PlatformTextInputInterceptor> {
   29:         final /* synthetic */ ChainedPlatformTextInputInterceptor this$0;
   30: 
   31:         /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
   32:         public AnonymousClass1(ChainedPlatformTextInputInterceptor chainedPlatformTextInputInterceptor) {
   33:             super(0);
   34:             this.this$0 = chainedPlatformTextInputInterceptor;
   35:         }
   36: 
   37:         /* JADX WARN: Can't rename method to resolve collision */
   38:         @Override // defpackage.ll3
   39:         public final PlatformTextInputInterceptor invoke() {
   40:             return this.this$0.getInterceptor();
   41:         }
   42:     }
   43: 
   44:     /* JADX INFO: renamed from: androidx.compose.ui.platform.ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$3$2, reason: invalid class name */
   45:     @bd2(c = "androidx.compose.ui.platform.ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$3$2", f = "PlatformTextInputModifierNode.kt", l = {WebmConstants.MkvEbmlElement.BLOCK_ADD_ID}, m = "invokeSuspend", v = 1)
   46:     public static final class AnonymousClass2 extends pg8 implements bm3<PlatformTextInputInterceptor, e02<? super j59>, Object> {
   47:         final /* synthetic */ PlatformTextInputSessionScope $parentSession;
   48:         final /* synthetic */ PlatformTextInputMethodRequest $request;
   49:         /* synthetic */ Object L$0;
   50:         int label;
   51: 
   62:             anonymousClass2.L$0 = obj;
   63:             return anonymousClass2;
   64:         }
   65: 
   66:         @Override // defpackage.bm3
   67:         public final Object invoke(PlatformTextInputInterceptor platformTextInputInterceptor, e02<? super j59> e02Var) {
   68:             return ((AnonymousClass2) create(platformTextInputInterceptor, e02Var)).invokeSuspend(j59.a);
   69:         }
   70: 
   71:         @Override // defpackage.cd0
   72:         public final Object invokeSuspend(Object obj) {
   73:             a32 a32Var = a32.COROUTINE_SUSPENDED;
   74:             int i = this.label;
   75:             if (i == 0) {
   76:                 r57.b(obj);
   77:                 PlatformTextInputInterceptor platformTextInputInterceptor = (PlatformTextInputInterceptor) this.L$0;
   78:                 PlatformTextInputMethodRequest platformTextInputMethodRequest = this.$request;
   79:                 PlatformTextInputSessionScope platformTextInputSessionScope = this.$parentSession;
   80:                 this.label = 1;
   81:                 if (platformTextInputInterceptor.interceptStartInputMethod(platformTextInputMethodRequest, platformTextInputSessionScope, this) == a32Var) {
   82:                     return a32Var;
   83:                 }
   84:             } else {
   85:                 if (i != 1) {
   86:                     ah.f("call to 'resume' before 'invoke' with coroutine");
   92:             return null;
   93:         }
   94:     }
   95: 
   96:     /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
   97:     public ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$3(ChainedPlatformTextInputInterceptor chainedPlatformTextInputInterceptor, PlatformTextInputMethodRequest platformTextInputMethodRequest, PlatformTextInputSessionScope platformTextInputSessionScope, e02<? super ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$3> e02Var) {
   98:         super(2, e02Var);
   99:         this.this$0 = chainedPlatformTextInputInterceptor;
  100:         this.$request = platformTextInputMethodRequest;
  101:         this.$parentSession = platformTextInputSessionScope;
  102:     }
  103: 
  104:     @Override // defpackage.cd0
  105:     public final e02<j59> create(Object obj, e02<?> e02Var) {
  106:         return new ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$3(this.this$0, this.$request, this.$parentSession, e02Var);
  107:     }
  108: 
  109:     @Override // defpackage.bm3
  110:     public final Object invoke(j59 j59Var, e02<?> e02Var) {
  111:         return ((ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$3) create(j59Var, e02Var)).invokeSuspend(j59.a);
  112:     }
  113: 
  114:     @Override // defpackage.cd0
  115:     public final Object invokeSuspend(Object obj) {
  116:         a32 a32Var = a32.COROUTINE_SUSPENDED;
  128:                 ah.f("call to 'resume' before 'invoke' with coroutine");
  129:                 return null;
  130:             }
  131:             r57.b(obj);
  132:         }
  133:         ah.f("Interceptors flow should never terminate.");
  134:         return null;
  135:     }
  136: }
```


---

## `apk_analysis/jadx/sources/androidx/compose/ui/platform/AndroidComposeView.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
 2260:     public TextInputService getTextInputService() {
 2261:         TextInputService textInputService = this._textInputService;
 2262:         if (textInputService != null) {
 2263:             return textInputService;
 2264:         }
 2265:         TextInputService textInputService2 = new TextInputService(AndroidComposeView_androidKt.getPlatformTextInputServiceInterceptor().invoke(getLegacyTextInputServiceAndroid()));
 2266:         this._textInputService = textInputService2;
 2267:         return textInputService2;
 2268:     }
 2269: 
 2270:     @Override // androidx.compose.ui.node.Owner
```


---

## `apk_analysis/jadx/sources/androidx/compose/ui/platform/ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   10: import defpackage.o22;
   11: import defpackage.r57;
   12: import java.util.concurrent.atomic.AtomicReference;
   13: 
   14: /* JADX INFO: loaded from: classes2.dex */
   15: public final class ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1 implements PlatformTextInputSessionScope {
   16:     private final /* synthetic */ PlatformTextInputSessionScope $$delegate_0;
   17:     final /* synthetic */ AtomicReference<SessionMutex.Session<j59>> $inputMethodMutex;
   18:     final /* synthetic */ PlatformTextInputSessionScope $parentSession;
   19:     final /* synthetic */ ChainedPlatformTextInputInterceptor this$0;
   20: 
   21:     public ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1(PlatformTextInputSessionScope platformTextInputSessionScope, AtomicReference<SessionMutex.Session<j59>> atomicReference, ChainedPlatformTextInputInterceptor chainedPlatformTextInputInterceptor) {
   22:         this.$parentSession = platformTextInputSessionScope;
   23:         this.$inputMethodMutex = atomicReference;
   24:         this.this$0 = chainedPlatformTextInputInterceptor;
   25:         this.$$delegate_0 = platformTextInputSessionScope;
   26:     }
   27: 
   28:     @Override // androidx.compose.ui.platform.PlatformTextInputSessionScope, defpackage.y22
   29:     public o22 getCoroutineContext() {
   36:     }
   37: 
   38:     /* JADX WARN: Code duplicated, block: B:7:0x0013  */
   39:     @Override // androidx.compose.ui.platform.PlatformTextInputSession
   40:     public Object startInputMethod(PlatformTextInputMethodRequest platformTextInputMethodRequest, e02<?> e02Var) {
   41:         ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1 chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1;
   42:         if (e02Var instanceof ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1) {
   43:             chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1 = (ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1) e02Var;
   44:             int i = chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1.label;
   45:             if ((i & Integer.MIN_VALUE) != 0) {
   46:                 chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1.label = i - Integer.MIN_VALUE;
   47:             } else {
   48:                 chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1 = new ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1(this, e02Var);
   49:             }
   50:         } else {
   51:             chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1 = new ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1(this, e02Var);
   52:         }
   53:         Object obj = chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1.result;
   54:         a32 a32Var = a32.COROUTINE_SUSPENDED;
   55:         int i2 = chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1.label;
   56:         if (i2 == 0) {
   57:             r57.b(obj);
   58:             AtomicReference<SessionMutex.Session<j59>> atomicReference = this.$inputMethodMutex;
   59:             ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$2 chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$2 = ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$2.INSTANCE;
   60:             ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$3 chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$3 = new ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$3(this.this$0, platformTextInputMethodRequest, this.$parentSession, null);
   61:             chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1.label = 1;
   62:             if (SessionMutex.m5676withSessionCancellingPreviousimpl(atomicReference, chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$2, chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$3, chainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$1) == a32Var) {
   63:                 return a32Var;
   64:             }
   65:         } else {
   66:             if (i2 != 1) {
   67:                 ah.f("call to 'resume' before 'invoke' with coroutine");
```


---

## `apk_analysis/jadx/sources/androidx/compose/ui/platform/ChainedPlatformTextInputInterceptor.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   14: import defpackage.j59;
   15: import defpackage.pg8;
   16: import defpackage.r57;
   17: 
   18: /* JADX INFO: loaded from: classes2.dex */
   19: final class ChainedPlatformTextInputInterceptor {
   20:     private final MutableState interceptor$delegate;
   21:     private final ChainedPlatformTextInputInterceptor parent;
   22: 
   23:     /* JADX INFO: renamed from: androidx.compose.ui.platform.ChainedPlatformTextInputInterceptor$textInputSession$1, reason: invalid class name */
   24:     @bd2(c = "androidx.compose.ui.platform.ChainedPlatformTextInputInterceptor", f = "PlatformTextInputModifierNode.kt", l = {219}, m = "textInputSession", v = 1)
   25:     public static final class AnonymousClass1 extends f02 {
   26:         int label;
   27:         /* synthetic */ Object result;
   28: 
   29:         public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
   32: 
   33:         @Override // defpackage.cd0
   34:         public final Object invokeSuspend(Object obj) {
   35:             this.result = obj;
   36:             this.label |= Integer.MIN_VALUE;
   37:             return ChainedPlatformTextInputInterceptor.this.textInputSession(null, null, this);
   38:         }
   39:     }
   40: 
   41:     /* JADX INFO: renamed from: androidx.compose.ui.platform.ChainedPlatformTextInputInterceptor$textInputSession$2, reason: invalid class name */
   42:     @bd2(c = "androidx.compose.ui.platform.ChainedPlatformTextInputInterceptor$textInputSession$2", f = "PlatformTextInputModifierNode.kt", l = {248}, m = "invokeSuspend", v = 1)
   43:     public static final class AnonymousClass2 extends pg8 implements bm3<PlatformTextInputSessionScope, e02<?>, Object> {
   44:         final /* synthetic */ bm3<PlatformTextInputSessionScope, e02<?>, Object> $session;
   45:         private /* synthetic */ Object L$0;
   46:         int label;
   47:         final /* synthetic */ ChainedPlatformTextInputInterceptor this$0;
   48: 
   49:         /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
   50:         /* JADX WARN: Multi-variable type inference failed */
   51:         public AnonymousClass2(bm3<? super PlatformTextInputSessionScope, ? super e02<?>, ? extends Object> bm3Var, ChainedPlatformTextInputInterceptor chainedPlatformTextInputInterceptor, e02<? super AnonymousClass2> e02Var) {
   52:             super(2, e02Var);
   53:             this.$session = bm3Var;
   54:             this.this$0 = chainedPlatformTextInputInterceptor;
   55:         }
   56: 
   57:         @Override // defpackage.cd0
   58:         public final e02<j59> create(Object obj, e02<?> e02Var) {
   59:             AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$session, this.this$0, e02Var);
   70:         public final Object invokeSuspend(Object obj) {
   71:             a32 a32Var = a32.COROUTINE_SUSPENDED;
   72:             int i = this.label;
   73:             if (i == 0) {
   74:                 r57.b(obj);
   75:                 ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1 chainedPlatformTextInputInterceptor$textInputSession$2$scope$1 = new ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1((PlatformTextInputSessionScope) this.L$0, SessionMutex.m5669constructorimpl(), this.this$0);
   76:                 bm3<PlatformTextInputSessionScope, e02<?>, Object> bm3Var = this.$session;
   77:                 this.label = 1;
   78:                 if (bm3Var.invoke(chainedPlatformTextInputInterceptor$textInputSession$2$scope$1, this) == a32Var) {
   79:                     return a32Var;
   80:                 }
   81:             } else {
   82:                 if (i != 1) {
   83:                     ah.f("call to 'resume' before 'invoke' with coroutine");
   88:             h8.d();
   89:             return null;
   90:         }
   91:     }
   92: 
   93:     public ChainedPlatformTextInputInterceptor(PlatformTextInputInterceptor platformTextInputInterceptor, ChainedPlatformTextInputInterceptor chainedPlatformTextInputInterceptor) {
   94:         this.parent = chainedPlatformTextInputInterceptor;
   95:         this.interceptor$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(platformTextInputInterceptor, null, 2, null);
   96:     }
   97: 
   98:     /* JADX INFO: Access modifiers changed from: private */
   99:     public final PlatformTextInputInterceptor getInterceptor() {
  100:         return (PlatformTextInputInterceptor) this.interceptor$delegate.getValue();
  101:     }
  102: 
  103:     private final void setInterceptor(PlatformTextInputInterceptor platformTextInputInterceptor) {
  104:         this.interceptor$delegate.setValue(platformTextInputInterceptor);
  105:     }
  106: 
  107:     /* JADX WARN: Code duplicated, block: B:7:0x0013  */
  108:     public final Object textInputSession(Owner owner, bm3<? super PlatformTextInputSessionScope, ? super e02<?>, ? extends Object> bm3Var, e02<?> e02Var) {
  109:         AnonymousClass1 anonymousClass1;
  121:         Object obj = anonymousClass1.result;
  122:         a32 a32Var = a32.COROUTINE_SUSPENDED;
  123:         int i2 = anonymousClass1.label;
  124:         if (i2 == 0) {
  125:             r57.b(obj);
  126:             ChainedPlatformTextInputInterceptor chainedPlatformTextInputInterceptor = this.parent;
  127:             AnonymousClass2 anonymousClass2 = new AnonymousClass2(bm3Var, this, null);
  128:             anonymousClass1.label = 1;
  129:             if (PlatformTextInputModifierNodeKt.interceptedTextInputSession(owner, chainedPlatformTextInputInterceptor, anonymousClass2, anonymousClass1) == a32Var) {
  130:                 return a32Var;
  131:             }
  132:         } else {
  133:             if (i2 != 1) {
  134:                 ah.f("call to 'resume' before 'invoke' with coroutine");
  138:         }
  139:         h8.d();
  140:         return null;
  141:     }
  142: 
  143:     public final void updateInterceptor(PlatformTextInputInterceptor platformTextInputInterceptor) {
  144:         setInterceptor(platformTextInputInterceptor);
  145:     }
  146: }
```


---

## `apk_analysis/jadx/sources/androidx/compose/ui/platform/PlatformTextInputModifierNodeKt.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   22: import defpackage.j59;
   23: import defpackage.r57;
   24: 
   25: /* JADX INFO: loaded from: classes2.dex */
   26: public final class PlatformTextInputModifierNodeKt {
   27:     private static final ProvidableCompositionLocal<ChainedPlatformTextInputInterceptor> LocalChainedPlatformTextInputInterceptor = CompositionLocalKt.staticCompositionLocalOf(PlatformTextInputModifierNodeKt$LocalChainedPlatformTextInputInterceptor$1.INSTANCE);
   28: 
   29:     /* JADX INFO: renamed from: androidx.compose.ui.platform.PlatformTextInputModifierNodeKt$establishTextInputSession$1, reason: invalid class name and case insensitive filesystem */
   30:     @bd2(c = "androidx.compose.ui.platform.PlatformTextInputModifierNodeKt", f = "PlatformTextInputModifierNode.kt", l = {136}, m = "establishTextInputSession", v = 1)
   31:     public static final class C06501 extends f02 {
   32:         int label;
   60:             this.label |= Integer.MIN_VALUE;
   61:             return PlatformTextInputModifierNodeKt.interceptedTextInputSession(null, null, null, this);
   62:         }
   63:     }
   64: 
   65:     public static final void InterceptPlatformTextInput(PlatformTextInputInterceptor platformTextInputInterceptor, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i) {
   66:         int i2;
   67:         Composer composerStartRestartGroup = composer.startRestartGroup(-1892278287);
   68:         if ((i & 6) == 0) {
   69:             i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(platformTextInputInterceptor) : composerStartRestartGroup.changedInstance(platformTextInputInterceptor) ? 4 : 2) | i;
   70:         } else {
   71:             i2 = i;
   72:         }
   73:         if ((i & 48) == 0) {
   74:             i2 |= composerStartRestartGroup.changedInstance(bm3Var) ? 32 : 16;
   75:         }
   76:         if (composerStartRestartGroup.shouldExecute((i2 & 19) != 18, i2 & 1)) {
   77:             if (ComposerKt.isTraceInProgress()) {
   78:                 ComposerKt.traceEventStart(-1892278287, i2, -1, "androidx.compose.ui.platform.InterceptPlatformTextInput (PlatformTextInputModifierNode.kt:155)");
   79:             }
   80:             ProvidableCompositionLocal<ChainedPlatformTextInputInterceptor> providableCompositionLocal = LocalChainedPlatformTextInputInterceptor;
   81:             ChainedPlatformTextInputInterceptor chainedPlatformTextInputInterceptor = (ChainedPlatformTextInputInterceptor) composerStartRestartGroup.consume(providableCompositionLocal);
   82:             boolean zChanged = composerStartRestartGroup.changed(chainedPlatformTextInputInterceptor);
   83:             Object objRememberedValue = composerStartRestartGroup.rememberedValue();
   84:             if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
   85:                 objRememberedValue = new ChainedPlatformTextInputInterceptor(platformTextInputInterceptor, chainedPlatformTextInputInterceptor);
   86:                 composerStartRestartGroup.updateRememberedValue(objRememberedValue);
   87:             }
   88:             ChainedPlatformTextInputInterceptor chainedPlatformTextInputInterceptor2 = (ChainedPlatformTextInputInterceptor) objRememberedValue;
   89:             chainedPlatformTextInputInterceptor2.updateInterceptor(platformTextInputInterceptor);
   90:             CompositionLocalKt.CompositionLocalProvider(providableCompositionLocal.provides(chainedPlatformTextInputInterceptor2), bm3Var, composerStartRestartGroup, (i2 & 112) | ProvidedValue.$stable);
   91:             if (ComposerKt.isTraceInProgress()) {
   92:                 ComposerKt.traceEventEnd();
   93:             }
   94:         } else {
   95:             composerStartRestartGroup.skipToGroupEnd();
   96:         }
   97:         ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
   98:         if (scopeUpdateScopeEndRestartGroup != null) {
   99:             scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass1(platformTextInputInterceptor, bm3Var, i));
  100:         }
  101:     }
  102: 
  103:     /* JADX WARN: Code duplicated, block: B:7:0x0013  */
  104:     public static final Object establishTextInputSession(PlatformTextInputModifierNode platformTextInputModifierNode, bm3<? super PlatformTextInputSessionScope, ? super e02<?>, ? extends Object> bm3Var, e02<?> e02Var) {
  122:             if (!platformTextInputModifierNode.getNode().isAttached()) {
  123:                 fg.c("establishTextInputSession called from an unattached node");
  124:                 return null;
  125:             }
  126:             Owner ownerRequireOwner = DelegatableNodeKt.requireOwner(platformTextInputModifierNode);
  127:             ChainedPlatformTextInputInterceptor chainedPlatformTextInputInterceptor = (ChainedPlatformTextInputInterceptor) DelegatableNodeKt.requireLayoutNode(platformTextInputModifierNode).getCompositionLocalMap().get(LocalChainedPlatformTextInputInterceptor);
  128:             c06501.label = 1;
  129:             if (interceptedTextInputSession(ownerRequireOwner, chainedPlatformTextInputInterceptor, bm3Var, c06501) == a32Var) {
  130:                 return a32Var;
  131:             }
  132:         } else {
  133:             if (i2 != 1) {
  134:                 ah.f("call to 'resume' before 'invoke' with coroutine");
  152:      */
  153:     /*
  154:         Code decompiled incorrectly, please refer to instructions dump.
  155:         To view partially-correct add '--show-bad-code' argument
  156:     */
  157:     public static final java.lang.Object interceptedTextInputSession(androidx.compose.ui.node.Owner r6, androidx.compose.ui.platform.ChainedPlatformTextInputInterceptor r7, defpackage.bm3<? super androidx.compose.ui.platform.PlatformTextInputSessionScope, ? super defpackage.e02<?>, ? extends java.lang.Object> r8, defpackage.e02<?> r9) {
  158:         /*
  159:             boolean r0 = r9 instanceof androidx.compose.ui.platform.PlatformTextInputModifierNodeKt.C06511
  160:             if (r0 == 0) goto L13
  161:             r0 = r9
  162:             androidx.compose.ui.platform.PlatformTextInputModifierNodeKt$interceptedTextInputSession$1 r0 = (androidx.compose.ui.platform.PlatformTextInputModifierNodeKt.C06511) r0
  207:             return r1
  208:         L50:
  209:             defpackage.h8.d()
  210:             return r3
  211:         */
  212:         throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.PlatformTextInputModifierNodeKt.interceptedTextInputSession(androidx.compose.ui.node.Owner, androidx.compose.ui.platform.ChainedPlatformTextInputInterceptor, bm3, e02):java.lang.Object");
  213:     }
  214: 
  215:     /* JADX INFO: renamed from: androidx.compose.ui.platform.PlatformTextInputModifierNodeKt$InterceptPlatformTextInput$1, reason: invalid class name */
  216:     public static final class AnonymousClass1 extends gh4 implements bm3<Composer, Integer, j59> {
  217:         final /* synthetic */ int $$changed;
  218:         final /* synthetic */ bm3<Composer, Integer, j59> $content;
  219:         final /* synthetic */ PlatformTextInputInterceptor $interceptor;
  220: 
  221:         /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
  222:         /* JADX WARN: Multi-variable type inference failed */
  223:         public AnonymousClass1(PlatformTextInputInterceptor platformTextInputInterceptor, bm3<? super Composer, ? super Integer, j59> bm3Var, int i) {
  224:             super(2);
  225:             this.$interceptor = platformTextInputInterceptor;
  226:             this.$content = bm3Var;
  227:             this.$$changed = i;
  228:         }
  229: 
  230:         public final void invoke(Composer composer, int i) {
  231:             PlatformTextInputModifierNodeKt.InterceptPlatformTextInput(this.$interceptor, this.$content, composer, RecomposeScopeImplKt.updateChangedFlags(this.$$changed | 1));
  232:         }
  233: 
  234:         @Override // defpackage.bm3
  235:         public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
  236:             invoke(composer, num.intValue());
```


---

## `apk_analysis/jadx/sources/androidx/compose/ui/platform/PlatformTextInputInterceptor.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package androidx.compose.ui.platform;
    2: 
    3: import defpackage.e02;
    4: 
    5: /* JADX INFO: loaded from: classes2.dex */
    6: public interface PlatformTextInputInterceptor {
    7:     Object interceptStartInputMethod(PlatformTextInputMethodRequest platformTextInputMethodRequest, PlatformTextInputSession platformTextInputSession, e02<?> e02Var);
    8: }
```


---

## `apk_analysis/jadx/sources/androidx/compose/ui/platform/AndroidComposeView_androidKt$platformTextInputServiceInterceptor$1.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    3: import androidx.compose.ui.text.input.PlatformTextInputService;
    4: import defpackage.gh4;
    5: import defpackage.nl3;
    6: 
    7: /* JADX INFO: loaded from: classes2.dex */
    8: public final class AndroidComposeView_androidKt$platformTextInputServiceInterceptor$1 extends gh4 implements nl3<PlatformTextInputService, PlatformTextInputService> {
    9:     public static final AndroidComposeView_androidKt$platformTextInputServiceInterceptor$1 INSTANCE = new AndroidComposeView_androidKt$platformTextInputServiceInterceptor$1();
   10: 
   11:     public AndroidComposeView_androidKt$platformTextInputServiceInterceptor$1() {
   12:         super(1);
   13:     }
   14: 
   15:     @Override // defpackage.nl3
   16:     public final PlatformTextInputService invoke(PlatformTextInputService platformTextInputService) {
```


---

## `apk_analysis/jadx/sources/androidx/compose/ui/platform/ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$2.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    4: import defpackage.j59;
    5: import defpackage.nl3;
    6: import defpackage.y22;
    7: 
    8: /* JADX INFO: loaded from: classes2.dex */
    9: public final class ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$2 extends gh4 implements nl3<y22, j59> {
   10:     public static final ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$2 INSTANCE = new ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$2();
   11: 
   12:     public ChainedPlatformTextInputInterceptor$textInputSession$2$scope$1$startInputMethod$2() {
   13:         super(1);
   14:     }
   15: 
   16:     @Override // defpackage.nl3
   17:     public /* bridge */ /* synthetic */ j59 invoke(y22 y22Var) {
```


---

## `apk_analysis/jadx/sources/androidx/compose/ui/platform/AndroidComposeView_androidKt.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   12: 
   13: /* JADX INFO: loaded from: classes2.dex */
   14: public final class AndroidComposeView_androidKt {
   15:     private static final long ONE_FRAME_120_HERTZ_IN_MILLISECONDS = 8;
   16:     private static final int maskForNonWindowMetricsChanges = 1342235263;
   17:     private static nl3<? super PlatformTextInputService, ? extends PlatformTextInputService> platformTextInputServiceInterceptor = AndroidComposeView_androidKt$platformTextInputServiceInterceptor$1.INSTANCE;
   18: 
   19:     /* JADX INFO: Access modifiers changed from: private */
   20:     public static final boolean containsDescendant(View view, View view2) {
   21:         if (aa4.e(view2, view)) {
   22:             return false;
   44:     public static final ContentCaptureSessionWrapper getContentCaptureSessionCompat(View view) {
   45:         ViewCompatShims.setImportantForContentCapture(view, 1);
   46:         return ViewCompatShims.getContentCaptureSession(view);
   47:     }
   48: 
   49:     public static final nl3<PlatformTextInputService, PlatformTextInputService> getPlatformTextInputServiceInterceptor() {
   50:         return platformTextInputServiceInterceptor;
   51:     }
   52: 
   53:     /* JADX INFO: Access modifiers changed from: private */
   54:     /* JADX INFO: renamed from: preTransform-JiSxe2E, reason: not valid java name */
   55:     public static final void m8150preTransformJiSxe2E(float[] fArr, float[] fArr2) {
   93:         Matrix.m6485resetimpl(fArr2);
   94:         Matrix.m6498translateimpl$default(fArr2, f, f2, 0.0f, 4, null);
   95:         m8150preTransformJiSxe2E(fArr, fArr2);
   96:     }
   97: 
   98:     public static final void setPlatformTextInputServiceInterceptor(nl3<? super PlatformTextInputService, ? extends PlatformTextInputService> nl3Var) {
   99:         platformTextInputServiceInterceptor = nl3Var;
  100:     }
  101: }
```


---

## `apk_analysis/jadx/sources/androidx/compose/ui/text/font/PlatformResolveInterceptor.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package androidx.compose.ui.text.font;
    2: 
    3: /* JADX INFO: loaded from: classes2.dex */
    4: public interface PlatformResolveInterceptor {
    5:     public static final Companion Companion = Companion.$$INSTANCE;
    6: 
    7:     public static final class Companion {
    8:         static final /* synthetic */ Companion $$INSTANCE = new Companion();
    9:         private static final PlatformResolveInterceptor Default = new PlatformResolveInterceptor() { // from class: androidx.compose.ui.text.font.PlatformResolveInterceptor$Companion$Default$1
   10:         };
   11: 
   12:         private Companion() {
   13:         }
   14: 
   15:         public final PlatformResolveInterceptor getDefault$ui_text() {
   16:             return Default;
   17:         }
   18:     }
   19: 
   20:     default FontFamily interceptFontFamily(FontFamily fontFamily) {
```


---

## `apk_analysis/jadx/sources/androidx/compose/ui/text/font/FontFamilyResolver_androidKt.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    5: import defpackage.o22;
    6: 
    7: /* JADX INFO: loaded from: classes2.dex */
    8: public final class FontFamilyResolver_androidKt {
    9:     public static final FontFamily.Resolver createFontFamilyResolver(Context context, o22 o22Var) {
   10:         return new FontFamilyResolverImpl(new AndroidFontLoader(context), AndroidFontResolveInterceptor_androidKt.AndroidFontResolveInterceptor(context), FontFamilyResolverKt.getGlobalTypefaceRequestCache(), new FontListFontFamilyTypefaceAdapter(FontFamilyResolverKt.getGlobalAsyncTypefaceCache(), o22Var), null, 16, null);
   11:     }
   12: 
   13:     /* JADX WARN: Multi-variable type inference failed */
   14:     public static final FontFamily.Resolver emptyCacheFontFamilyResolver(Context context) {
   15:         PlatformFontFamilyTypefaceAdapter platformFontFamilyTypefaceAdapter = null;
   39:         }
   40:         return m8577resolveAsTypefaceWqqsr6A(resolver, fontFamily, fontWeight, i, i2);
   41:     }
   42: 
   43:     public static final FontFamily.Resolver createFontFamilyResolver(Context context) {
   44:         return new FontFamilyResolverImpl(new AndroidFontLoader(context), AndroidFontResolveInterceptor_androidKt.AndroidFontResolveInterceptor(context), null, null, null, 28, null);
   45:     }
   46: }
```


---

## `apk_analysis/jadx/sources/androidx/compose/ui/text/font/FontFamilyResolverImpl.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   23:     public static final int $stable = 8;
   24:     private final nl3<TypefaceRequest, Object> createDefaultTypeface;
   25:     private final FontListFontFamilyTypefaceAdapter fontListFontFamilyTypefaceAdapter;
   26:     private final PlatformFontFamilyTypefaceAdapter platformFamilyTypefaceAdapter;
   27:     private final PlatformFontLoader platformFontLoader;
   28:     private final PlatformResolveInterceptor platformResolveInterceptor;
   29:     private final TypefaceRequestCache typefaceRequestCache;
   30: 
   31:     /* JADX INFO: renamed from: androidx.compose.ui.text.font.FontFamilyResolverImpl$preload$1, reason: invalid class name */
   32:     @bd2(c = "androidx.compose.ui.text.font.FontFamilyResolverImpl", f = "FontFamilyResolver.kt", l = {43}, m = "preload", v = 1)
   33:     public static final class AnonymousClass1 extends f02 {
   46:             return FontFamilyResolverImpl.this.preload(null, this);
   47:         }
   48:     }
   49: 
   50:     /* JADX WARN: Multi-variable type inference failed */
   51:     public /* synthetic */ FontFamilyResolverImpl(PlatformFontLoader platformFontLoader, PlatformResolveInterceptor platformResolveInterceptor, TypefaceRequestCache typefaceRequestCache, FontListFontFamilyTypefaceAdapter fontListFontFamilyTypefaceAdapter, PlatformFontFamilyTypefaceAdapter platformFontFamilyTypefaceAdapter, int i, jh2 jh2Var) {
   52:         this(platformFontLoader, (i & 2) != 0 ? PlatformResolveInterceptor.Companion.getDefault$ui_text() : platformResolveInterceptor, (i & 4) != 0 ? FontFamilyResolverKt.getGlobalTypefaceRequestCache() : typefaceRequestCache, (i & 8) != 0 ? new FontListFontFamilyTypefaceAdapter(FontFamilyResolverKt.getGlobalAsyncTypefaceCache(), null, 2, 0 == true ? 1 : 0) : fontListFontFamilyTypefaceAdapter, (i & 16) != 0 ? new PlatformFontFamilyTypefaceAdapter() : platformFontFamilyTypefaceAdapter);
   53:     }
   54: 
   55:     /* JADX INFO: Access modifiers changed from: private */
   56:     public static final Object createDefaultTypeface$lambda$0(FontFamilyResolverImpl fontFamilyResolverImpl, TypefaceRequest typefaceRequest) {
   57:         return fontFamilyResolverImpl.resolve(TypefaceRequest.m8645copye1PVR60$default(typefaceRequest, null, null, 0, 0, null, 30, null)).getValue();
  145:         List<Font> fonts = ((FontListFontFamily) fontFamily).getFonts();
  146:         ArrayList arrayList = new ArrayList(fonts.size());
  147:         int size = fonts.size();
  148:         for (int i4 = 0; i4 < size; i4++) {
  149:             Font font = fonts.get(i4);
  150:             arrayList.add(new TypefaceRequest(this.platformResolveInterceptor.interceptFontFamily(fontFamily), this.platformResolveInterceptor.interceptFontWeight(font.getWeight()), this.platformResolveInterceptor.m8629interceptFontStyleT2F_aPo(font.mo8556getStyle_LCdwA()), FontSynthesis.Companion.m8620getAllGVVA2EU(), this.platformFontLoader.getCacheKey(), null));
  151:         }
  152:         this.typefaceRequestCache.preWarmCache(arrayList, new cz0(this, i3));
  153:         return j59.a;
  154:     }
  155: 
  156:     @Override // androidx.compose.ui.text.font.FontFamily.Resolver
  157:     /* JADX INFO: renamed from: resolve-DPcqOEQ */
  158:     public State<Object> mo8576resolveDPcqOEQ(FontFamily fontFamily, FontWeight fontWeight, int i, int i2) {
  159:         return resolve(new TypefaceRequest(this.platformResolveInterceptor.interceptFontFamily(fontFamily), this.platformResolveInterceptor.interceptFontWeight(fontWeight), this.platformResolveInterceptor.m8629interceptFontStyleT2F_aPo(i), this.platformResolveInterceptor.m8630interceptFontSynthesisMscr08Y(i2), this.platformFontLoader.getCacheKey(), null));
  160:     }
  161: 
  162:     public FontFamilyResolverImpl(PlatformFontLoader platformFontLoader, PlatformResolveInterceptor platformResolveInterceptor, TypefaceRequestCache typefaceRequestCache, FontListFontFamilyTypefaceAdapter fontListFontFamilyTypefaceAdapter, PlatformFontFamilyTypefaceAdapter platformFontFamilyTypefaceAdapter) {
  163:         this.platformFontLoader = platformFontLoader;
  164:         this.platformResolveInterceptor = platformResolveInterceptor;
  165:         this.typefaceRequestCache = typefaceRequestCache;
  166:         this.fontListFontFamilyTypefaceAdapter = fontListFontFamilyTypefaceAdapter;
  167:         this.platformFamilyTypefaceAdapter = platformFontFamilyTypefaceAdapter;
  168:         this.createDefaultTypeface = new bz0(this, 1);
  169:     }
```


---

## `apk_analysis/jadx/sources/androidx/compose/ui/text/font/AndroidFontResolveInterceptor_androidKt.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package androidx.compose.ui.text.font;
    2: 
    3: import android.content.Context;
    4: 
    5: /* JADX INFO: loaded from: classes2.dex */
    6: public final class AndroidFontResolveInterceptor_androidKt {
    7:     public static final AndroidFontResolveInterceptor AndroidFontResolveInterceptor(Context context) {
    8:         return new AndroidFontResolveInterceptor(FontWeightAdjustmentHelper.INSTANCE.getFontWeightAdjustment(context));
    9:     }
   10: }
```


---

## `apk_analysis/jadx/sources/androidx/compose/ui/text/font/AndroidFontResolveInterceptor.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    2: 
    3: import defpackage.kx6;
    4: import defpackage.rg;
    5: 
    6: /* JADX INFO: loaded from: classes2.dex */
    7: public final class AndroidFontResolveInterceptor implements PlatformResolveInterceptor {
    8:     public static final int $stable = 0;
    9:     private final int fontWeightAdjustment;
   10: 
   11:     public AndroidFontResolveInterceptor(int i) {
   12:         this.fontWeightAdjustment = i;
   13:     }
   14: 
   15:     private final int component1() {
   16:         return this.fontWeightAdjustment;
   17:     }
   18: 
   19:     public static /* synthetic */ AndroidFontResolveInterceptor copy$default(AndroidFontResolveInterceptor androidFontResolveInterceptor, int i, int i2, Object obj) {
   20:         if ((i2 & 1) != 0) {
   21:             i = androidFontResolveInterceptor.fontWeightAdjustment;
   22:         }
   23:         return androidFontResolveInterceptor.copy(i);
   24:     }
   25: 
   26:     public final AndroidFontResolveInterceptor copy(int i) {
   27:         return new AndroidFontResolveInterceptor(i);
   28:     }
   29: 
   30:     public boolean equals(Object obj) {
   31:         if (this == obj) {
   32:             return true;
   33:         }
   34:         return (obj instanceof AndroidFontResolveInterceptor) && this.fontWeightAdjustment == ((AndroidFontResolveInterceptor) obj).fontWeightAdjustment;
   35:     }
   36: 
   37:     public int hashCode() {
   38:         return Integer.hashCode(this.fontWeightAdjustment);
   39:     }
   40: 
   41:     @Override // androidx.compose.ui.text.font.PlatformResolveInterceptor
   42:     public FontWeight interceptFontWeight(FontWeight fontWeight) {
   43:         int i = this.fontWeightAdjustment;
   44:         return (i == 0 || i == Integer.MAX_VALUE) ? fontWeight : new FontWeight(kx6.f(fontWeight.getWeight() + this.fontWeightAdjustment, 1, 1000));
   45:     }
   46: 
   47:     public String toString() {
   48:         return rg.h(new StringBuilder("AndroidFontResolveInterceptor(fontWeightAdjustment="), this.fontWeightAdjustment, ')');
   49:     }
   50: }
```


---

## `apk_analysis/jadx/sources/androidx/constraintlayout/core/state/ConstraintSetParser.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
 1746:             }
 1747:             pix = toPix(state, cLObject.getFloat(next));
 1748:         }
 1749:     }
 1750: 
 1751:     public static void parseHeader(CoreMotionScene coreMotionScene, CLObject cLObject) {
 1752:         String stringOrNull = cLObject.getStringOrNull("export");
 1753:         if (stringOrNull != null) {
 1754:             coreMotionScene.setDebugName(stringOrNull);
 1755:         }
 1756:     }
 1887:                             }
 1888:                         } else if (str2.equals(TypedValues.TransitionType.NAME)) {
 1889:                             parseTransitions(coreMotionScene, cLObject2);
 1890:                         }
 1891:                     } else if (str2.equals("Header")) {
 1892:                         parseHeader(coreMotionScene, cLObject2);
 1893:                     }
 1894:                 }
 1895:             }
 1896:         } catch (CLParsingException e) {
 1897:             System.err.println("Error parsing JSON " + e);
```


---

## `apk_analysis/jadx/sources/androidx/appcompat/widget/ListPopupWindow.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   70:     private View mPromptView;
   71:     final ResizePopupRunnable mResizePopupRunnable;
   72:     private final PopupScrollListener mScrollListener;
   73:     private Runnable mShowDropDownRunnable;
   74:     private final Rect mTempRect;
   75:     private final PopupTouchInterceptor mTouchInterceptor;
   76: 
   77:     public static class Api24Impl {
   78:         private Api24Impl() {
   79:         }
   80: 
  140:             listPopupWindow.mHandler.removeCallbacks(listPopupWindow.mResizePopupRunnable);
  141:             ListPopupWindow.this.mResizePopupRunnable.run();
  142:         }
  143:     }
  144: 
  145:     public class PopupTouchInterceptor implements View.OnTouchListener {
  146:         public PopupTouchInterceptor() {
  147:         }
  148: 
  149:         @Override // android.view.View.OnTouchListener
  150:         public boolean onTouch(View view, MotionEvent motionEvent) {
  151:             PopupWindow popupWindow;
  208:         this.mDropDownAlwaysVisible = false;
  209:         this.mForceIgnoreOutsideTouch = false;
  210:         this.mListItemExpandMaximum = Integer.MAX_VALUE;
  211:         this.mPromptPosition = 0;
  212:         this.mResizePopupRunnable = new ResizePopupRunnable();
  213:         this.mTouchInterceptor = new PopupTouchInterceptor();
  214:         this.mScrollListener = new PopupScrollListener();
  215:         this.mHideSelector = new ListSelectorHider();
  216:         this.mTempRect = new Rect();
  217:         this.mContext = context;
  218:         this.mHandler = new Handler(context.getMainLooper());
  808:         }
  809:         this.mPopup.setWidth(width2);
  810:         this.mPopup.setHeight(iBuildDropDown);
  811:         setPopupClipToScreenEnabled(true);
  812:         this.mPopup.setOutsideTouchable((this.mForceIgnoreOutsideTouch || this.mDropDownAlwaysVisible) ? false : true);
  813:         this.mPopup.setTouchInterceptor(this.mTouchInterceptor);
  814:         if (this.mOverlapAnchorSet) {
  815:             PopupWindowCompat.setOverlapAnchor(this.mPopup, this.mOverlapAnchor);
  816:         }
  817:         if (Build.VERSION.SDK_INT <= 28) {
  818:             Method method = sSetEpicenterBoundsMethod;
```


---

## `apk_analysis/jadx/sources/androidx/appcompat/view/menu/StandardMenuPopup.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  123:             TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
  124:             if (textView != null) {
  125:                 textView.setText(this.mMenu.getHeaderTitle());
  126:             }
  127:             frameLayout.setEnabled(false);
  128:             listView.addHeaderView(frameLayout, null, false);
  129:         }
  130:         this.mPopup.setAdapter(this.mAdapter);
  131:         this.mPopup.show();
  132:         return true;
  133:     }
```


---

## `apk_analysis/jadx/sources/androidx/appcompat/view/menu/MenuBuilder.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  288:     }
  289: 
  290:     public void clearAll() {
  291:         this.mPreventDispatchingItemsChanged = true;
  292:         clear();
  293:         clearHeader();
  294:         this.mPresenters.clear();
  295:         this.mPreventDispatchingItemsChanged = false;
  296:         this.mItemsChangedWhileDispatchPrevented = false;
  297:         this.mStructureChangedWhileDispatchPrevented = false;
  298:         onItemsChanged(true);
  299:     }
  300: 
  301:     public void clearHeader() {
  302:         this.mHeaderIcon = null;
  303:         this.mHeaderTitle = null;
  304:         this.mHeaderView = null;
  305:         onItemsChanged(false);
  306:     }
```


---

## `apk_analysis/jadx/sources/androidx/appcompat/view/menu/CascadingMenuPopup.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  305:         if (cascadingMenuInfo == null && this.mShowTitle && menuBuilder.getHeaderTitle() != null) {
  306:             FrameLayout frameLayout = (FrameLayout) layoutInflaterFrom.inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) listView, false);
  307:             TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
  308:             frameLayout.setEnabled(false);
  309:             textView.setText(menuBuilder.getHeaderTitle());
  310:             listView.addHeaderView(frameLayout, null, false);
  311:             menuPopupWindowCreatePopupWindow.show();
  312:         }
  313:     }
  314: 
  315:     @Override // androidx.appcompat.view.menu.MenuPopup
```


---

## `apk_analysis/jadx/sources/androidx/appcompat/view/menu/SubMenuWrapperICS.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   15:         super(context, supportSubMenu);
   16:         this.mSubMenu = supportSubMenu;
   17:     }
   18: 
   19:     @Override // android.view.SubMenu
   20:     public void clearHeader() {
   21:         this.mSubMenu.clearHeader();
   22:     }
   23: 
   24:     @Override // android.view.SubMenu
   25:     public MenuItem getItem() {
   26:         return getMenuItemWrapper(this.mSubMenu.getItem());
```


---

## `apk_analysis/jadx/sources/androidx/room/support/QueryInterceptorStatement.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   16: import java.io.IOException;
   17: import java.util.ArrayList;
   18: import java.util.List;
   19: 
   20: /* JADX INFO: loaded from: classes3.dex */
   21: public final class QueryInterceptorStatement implements SupportSQLiteStatement {
   22:     private final List<Object> bindArgsCache;
   23:     private final SupportSQLiteStatement delegate;
   24:     private final RoomDatabase.QueryCallback queryCallback;
   25:     private final y22 queryCallbackScope;
   26:     private final String sqlStatement;
   27: 
   28:     /* JADX INFO: renamed from: androidx.room.support.QueryInterceptorStatement$execute$1, reason: invalid class name */
   29:     @bd2(c = "androidx.room.support.QueryInterceptorStatement$execute$1", f = "QueryInterceptorStatement.android.kt", l = {}, m = "invokeSuspend")
   30:     public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
   31:         final /* synthetic */ List<Object> $argsCopy;
   32:         int label;
   33: 
   34:         /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
   37:             this.$argsCopy = list;
   38:         }
   39: 
   40:         @Override // defpackage.cd0
   41:         public final e02<j59> create(Object obj, e02<?> e02Var) {
   42:             return QueryInterceptorStatement.this.new AnonymousClass1(this.$argsCopy, e02Var);
   43:         }
   44: 
   45:         @Override // defpackage.bm3
   46:         public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
   47:             return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
   53:             if (this.label != 0) {
   54:                 ah.f("call to 'resume' before 'invoke' with coroutine");
   55:                 return null;
   56:             }
   57:             r57.b(obj);
   58:             QueryInterceptorStatement.this.queryCallback.onQuery(QueryInterceptorStatement.this.sqlStatement, this.$argsCopy);
   59:             return j59.a;
   60:         }
   61:     }
   62: 
   63:     /* JADX INFO: renamed from: androidx.room.support.QueryInterceptorStatement$executeInsert$1, reason: invalid class name and case insensitive filesystem */
   64:     @bd2(c = "androidx.room.support.QueryInterceptorStatement$executeInsert$1", f = "QueryInterceptorStatement.android.kt", l = {}, m = "invokeSuspend")
   65:     public static final class C07411 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
   66:         final /* synthetic */ List<Object> $argsCopy;
   67:         int label;
   68: 
   69:         /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
   72:             this.$argsCopy = list;
   73:         }
   74: 
   75:         @Override // defpackage.cd0
   76:         public final e02<j59> create(Object obj, e02<?> e02Var) {
   77:             return QueryInterceptorStatement.this.new C07411(this.$argsCopy, e02Var);
   78:         }
   79: 
   80:         @Override // defpackage.bm3
   81:         public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
   82:             return ((C07411) create(y22Var, e02Var)).invokeSuspend(j59.a);
   88:             if (this.label != 0) {
   89:                 ah.f("call to 'resume' before 'invoke' with coroutine");
   90:                 return null;
   91:             }
   92:             r57.b(obj);
   93:             QueryInterceptorStatement.this.queryCallback.onQuery(QueryInterceptorStatement.this.sqlStatement, this.$argsCopy);
   94:             return j59.a;
   95:         }
   96:     }
   97: 
   98:     /* JADX INFO: renamed from: androidx.room.support.QueryInterceptorStatement$executeUpdateDelete$1, reason: invalid class name and case insensitive filesystem */
   99:     @bd2(c = "androidx.room.support.QueryInterceptorStatement$executeUpdateDelete$1", f = "QueryInterceptorStatement.android.kt", l = {}, m = "invokeSuspend")
  100:     public static final class C07421 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
  101:         final /* synthetic */ List<Object> $argsCopy;
  102:         int label;
  103: 
  104:         /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
  107:             this.$argsCopy = list;
  108:         }
  109: 
  110:         @Override // defpackage.cd0
  111:         public final e02<j59> create(Object obj, e02<?> e02Var) {
  112:             return QueryInterceptorStatement.this.new C07421(this.$argsCopy, e02Var);
  113:         }
  114: 
  115:         @Override // defpackage.bm3
  116:         public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
  117:             return ((C07421) create(y22Var, e02Var)).invokeSuspend(j59.a);
  123:             if (this.label != 0) {
  124:                 ah.f("call to 'resume' before 'invoke' with coroutine");
  125:                 return null;
  126:             }
  127:             r57.b(obj);
  128:             QueryInterceptorStatement.this.queryCallback.onQuery(QueryInterceptorStatement.this.sqlStatement, this.$argsCopy);
  129:             return j59.a;
  130:         }
  131:     }
  132: 
  133:     /* JADX INFO: renamed from: androidx.room.support.QueryInterceptorStatement$simpleQueryForLong$1, reason: invalid class name and case insensitive filesystem */
  134:     @bd2(c = "androidx.room.support.QueryInterceptorStatement$simpleQueryForLong$1", f = "QueryInterceptorStatement.android.kt", l = {}, m = "invokeSuspend")
  135:     public static final class C07431 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
  136:         final /* synthetic */ List<Object> $argsCopy;
  137:         int label;
  138: 
  139:         /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
  142:             this.$argsCopy = list;
  143:         }
  144: 
  145:         @Override // defpackage.cd0
  146:         public final e02<j59> create(Object obj, e02<?> e02Var) {
  147:             return QueryInterceptorStatement.this.new C07431(this.$argsCopy, e02Var);
  148:         }
  149: 
  150:         @Override // defpackage.bm3
  151:         public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
  152:             return ((C07431) create(y22Var, e02Var)).invokeSuspend(j59.a);
  158:             if (this.label != 0) {
  159:                 ah.f("call to 'resume' before 'invoke' with coroutine");
  160:                 return null;
  161:             }
  162:             r57.b(obj);
  163:             QueryInterceptorStatement.this.queryCallback.onQuery(QueryInterceptorStatement.this.sqlStatement, this.$argsCopy);
  164:             return j59.a;
  165:         }
  166:     }
  167: 
  168:     /* JADX INFO: renamed from: androidx.room.support.QueryInterceptorStatement$simpleQueryForString$1, reason: invalid class name and case insensitive filesystem */
  169:     @bd2(c = "androidx.room.support.QueryInterceptorStatement$simpleQueryForString$1", f = "QueryInterceptorStatement.android.kt", l = {}, m = "invokeSuspend")
  170:     public static final class C07441 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
  171:         final /* synthetic */ List<Object> $argsCopy;
  172:         int label;
  173: 
  174:         /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
  177:             this.$argsCopy = list;
  178:         }
  179: 
  180:         @Override // defpackage.cd0
  181:         public final e02<j59> create(Object obj, e02<?> e02Var) {
  182:             return QueryInterceptorStatement.this.new C07441(this.$argsCopy, e02Var);
  183:         }
  184: 
  185:         @Override // defpackage.bm3
  186:         public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
  187:             return ((C07441) create(y22Var, e02Var)).invokeSuspend(j59.a);
  193:             if (this.label != 0) {
  194:                 ah.f("call to 'resume' before 'invoke' with coroutine");
  195:                 return null;
  196:             }
  197:             r57.b(obj);
  198:             QueryInterceptorStatement.this.queryCallback.onQuery(QueryInterceptorStatement.this.sqlStatement, this.$argsCopy);
  199:             return j59.a;
  200:         }
  201:     }
  202: 
  203:     public QueryInterceptorStatement(SupportSQLiteStatement supportSQLiteStatement, String str, y22 y22Var, RoomDatabase.QueryCallback queryCallback) {
  204:         supportSQLiteStatement.getClass();
  205:         str.getClass();
  206:         y22Var.getClass();
  207:         queryCallback.getClass();
  208:         this.delegate = supportSQLiteStatement;
```


---

## `apk_analysis/jadx/sources/androidx/room/support/QueryInterceptorProgram.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    3: import androidx.sqlite.db.SupportSQLiteProgram;
    4: import java.util.ArrayList;
    5: import java.util.List;
    6: 
    7: /* JADX INFO: loaded from: classes3.dex */
    8: public final class QueryInterceptorProgram implements SupportSQLiteProgram {
    9:     private final List<Object> bindArgsCache = new ArrayList();
   10: 
   11:     private final void saveArgsToCache(int i, Object obj) {
   12:         int size;
   13:         int i2 = i - 1;
```


---

## `apk_analysis/jadx/sources/androidx/room/support/QueryInterceptorOpenHelper.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    5: import androidx.sqlite.db.SupportSQLiteDatabase;
    6: import androidx.sqlite.db.SupportSQLiteOpenHelper;
    7: import defpackage.y22;
    8: 
    9: /* JADX INFO: loaded from: classes3.dex */
   10: public final class QueryInterceptorOpenHelper implements SupportSQLiteOpenHelper, DelegatingOpenHelper {
   11:     private final SupportSQLiteOpenHelper delegate;
   12:     private final RoomDatabase.QueryCallback queryCallback;
   13:     private final y22 queryCallbackScope;
   14: 
   15:     public QueryInterceptorOpenHelper(SupportSQLiteOpenHelper supportSQLiteOpenHelper, y22 y22Var, RoomDatabase.QueryCallback queryCallback) {
   16:         supportSQLiteOpenHelper.getClass();
   17:         y22Var.getClass();
   18:         queryCallback.getClass();
   19:         this.delegate = supportSQLiteOpenHelper;
   20:         this.queryCallbackScope = y22Var;
   36:         return this.delegate;
   37:     }
   38: 
   39:     @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
   40:     public SupportSQLiteDatabase getReadableDatabase() {
   41:         return new QueryInterceptorDatabase(getDelegate().getReadableDatabase(), this.queryCallbackScope, this.queryCallback);
   42:     }
   43: 
   44:     @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
   45:     public SupportSQLiteDatabase getWritableDatabase() {
   46:         return new QueryInterceptorDatabase(getDelegate().getWritableDatabase(), this.queryCallbackScope, this.queryCallback);
   47:     }
   48: 
   49:     @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
   50:     public void setWriteAheadLoggingEnabled(boolean z) {
   51:         this.delegate.setWriteAheadLoggingEnabled(z);
```


---

## `apk_analysis/jadx/sources/androidx/room/support/QueryInterceptorOpenHelperFactory.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    3: import androidx.room.RoomDatabase;
    4: import androidx.sqlite.db.SupportSQLiteOpenHelper;
    5: import defpackage.y22;
    6: 
    7: /* JADX INFO: loaded from: classes3.dex */
    8: public final class QueryInterceptorOpenHelperFactory implements SupportSQLiteOpenHelper.Factory {
    9:     private final SupportSQLiteOpenHelper.Factory delegate;
   10:     private final RoomDatabase.QueryCallback queryCallback;
   11:     private final y22 queryCallbackScope;
   12: 
   13:     public QueryInterceptorOpenHelperFactory(SupportSQLiteOpenHelper.Factory factory, y22 y22Var, RoomDatabase.QueryCallback queryCallback) {
   14:         factory.getClass();
   15:         y22Var.getClass();
   16:         queryCallback.getClass();
   17:         this.delegate = factory;
   18:         this.queryCallbackScope = y22Var;
   20:     }
   21: 
   22:     @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Factory
   23:     public SupportSQLiteOpenHelper create(SupportSQLiteOpenHelper.Configuration configuration) {
   24:         configuration.getClass();
   25:         return new QueryInterceptorOpenHelper(this.delegate.create(configuration), this.queryCallbackScope, this.queryCallback);
   26:     }
   27: }
```


---

## `apk_analysis/jadx/sources/androidx/room/support/QueryInterceptorDatabase.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   24: import java.io.IOException;
   25: import java.util.List;
   26: import java.util.Locale;
   27: 
   28: /* JADX INFO: loaded from: classes3.dex */
   29: public final class QueryInterceptorDatabase implements SupportSQLiteDatabase {
   30:     private final SupportSQLiteDatabase delegate;
   31:     private final RoomDatabase.QueryCallback queryCallback;
   32:     private final y22 queryCallbackScope;
   33: 
   34:     /* JADX INFO: renamed from: androidx.room.support.QueryInterceptorDatabase$beginTransaction$1, reason: invalid class name */
   35:     @bd2(c = "androidx.room.support.QueryInterceptorDatabase$beginTransaction$1", f = "QueryInterceptorDatabase.android.kt", l = {}, m = "invokeSuspend")
   36:     public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
   37:         int label;
   38: 
   39:         public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
   40:             super(2, e02Var);
   41:         }
   42: 
   43:         @Override // defpackage.cd0
   44:         public final e02<j59> create(Object obj, e02<?> e02Var) {
   45:             return QueryInterceptorDatabase.this.new AnonymousClass1(e02Var);
   46:         }
   47: 
   48:         @Override // defpackage.bm3
   49:         public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
   50:             return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
   56:             if (this.label != 0) {
   57:                 ah.f("call to 'resume' before 'invoke' with coroutine");
   58:                 return null;
   59:             }
   60:             r57.b(obj);
   61:             QueryInterceptorDatabase.this.queryCallback.onQuery("BEGIN EXCLUSIVE TRANSACTION", kx2.b);
   62:             return j59.a;
   63:         }
   64:     }
   65: 
   66:     /* JADX INFO: renamed from: androidx.room.support.QueryInterceptorDatabase$beginTransactionNonExclusive$1, reason: invalid class name and case insensitive filesystem */
   67:     @bd2(c = "androidx.room.support.QueryInterceptorDatabase$beginTransactionNonExclusive$1", f = "QueryInterceptorDatabase.android.kt", l = {}, m = "invokeSuspend")
   68:     public static final class C07331 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
   69:         int label;
   70: 
   71:         public C07331(e02<? super C07331> e02Var) {
   72:             super(2, e02Var);
   73:         }
   74: 
   75:         @Override // defpackage.cd0
   76:         public final e02<j59> create(Object obj, e02<?> e02Var) {
   77:             return QueryInterceptorDatabase.this.new C07331(e02Var);
   78:         }
   79: 
   80:         @Override // defpackage.bm3
   81:         public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
   82:             return ((C07331) create(y22Var, e02Var)).invokeSuspend(j59.a);
   88:             if (this.label != 0) {
   89:                 ah.f("call to 'resume' before 'invoke' with coroutine");
   90:                 return null;
   91:             }
   92:             r57.b(obj);
   93:             QueryInterceptorDatabase.this.queryCallback.onQuery("BEGIN IMMEDIATE TRANSACTION", kx2.b);
   94:             return j59.a;
   95:         }
   96:     }
   97: 
   98:     /* JADX INFO: renamed from: androidx.room.support.QueryInterceptorDatabase$beginTransactionWithListener$1, reason: invalid class name and case insensitive filesystem */
   99:     @bd2(c = "androidx.room.support.QueryInterceptorDatabase$beginTransactionWithListener$1", f = "QueryInterceptorDatabase.android.kt", l = {}, m = "invokeSuspend")
  100:     public static final class C07341 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
  101:         int label;
  102: 
  103:         public C07341(e02<? super C07341> e02Var) {
  104:             super(2, e02Var);
  105:         }
  106: 
  107:         @Override // defpackage.cd0
  108:         public final e02<j59> create(Object obj, e02<?> e02Var) {
  109:             return QueryInterceptorDatabase.this.new C07341(e02Var);
  110:         }
  111: 
  112:         @Override // defpackage.bm3
  113:         public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
  114:             return ((C07341) create(y22Var, e02Var)).invokeSuspend(j59.a);
  120:             if (this.label != 0) {
  121:                 ah.f("call to 'resume' before 'invoke' with coroutine");
  122:                 return null;
  123:             }
  124:             r57.b(obj);
  125:             QueryInterceptorDatabase.this.queryCallback.onQuery("BEGIN EXCLUSIVE TRANSACTION", kx2.b);
  126:             return j59.a;
  127:         }
  128:     }
  129: 
  130:     /* JADX INFO: renamed from: androidx.room.support.QueryInterceptorDatabase$beginTransactionWithListenerNonExclusive$1, reason: invalid class name and case insensitive filesystem */
  131:     @bd2(c = "androidx.room.support.QueryInterceptorDatabase$beginTransactionWithListenerNonExclusive$1", f = "QueryInterceptorDatabase.android.kt", l = {}, m = "invokeSuspend")
  132:     public static final class C07351 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
  133:         int label;
  134: 
  135:         public C07351(e02<? super C07351> e02Var) {
  136:             super(2, e02Var);
  137:         }
  138: 
  139:         @Override // defpackage.cd0
  140:         public final e02<j59> create(Object obj, e02<?> e02Var) {
  141:             return QueryInterceptorDatabase.this.new C07351(e02Var);
  142:         }
  143: 
  144:         @Override // defpackage.bm3
  145:         public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
  146:             return ((C07351) create(y22Var, e02Var)).invokeSuspend(j59.a);
  152:             if (this.label != 0) {
  153:                 ah.f("call to 'resume' before 'invoke' with coroutine");
  154:                 return null;
  155:             }
  156:             r57.b(obj);
  157:             QueryInterceptorDatabase.this.queryCallback.onQuery("BEGIN IMMEDIATE TRANSACTION", kx2.b);
  158:             return j59.a;
  159:         }
  160:     }
  161: 
  162:     /* JADX INFO: renamed from: androidx.room.support.QueryInterceptorDatabase$endTransaction$1, reason: invalid class name and case insensitive filesystem */
  163:     @bd2(c = "androidx.room.support.QueryInterceptorDatabase$endTransaction$1", f = "QueryInterceptorDatabase.android.kt", l = {}, m = "invokeSuspend")
  164:     public static final class C07361 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
  165:         int label;
  166: 
  167:         public C07361(e02<? super C07361> e02Var) {
  168:             super(2, e02Var);
  169:         }
  170: 
  171:         @Override // defpackage.cd0
  172:         public final e02<j59> create(Object obj, e02<?> e02Var) {
  173:             return QueryInterceptorDatabase.this.new C07361(e02Var);
  174:         }
  175: 
  176:         @Override // defpackage.bm3
  177:         public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
  178:             return ((C07361) create(y22Var, e02Var)).invokeSuspend(j59.a);
  184:             if (this.label != 0) {
  185:                 ah.f("call to 'resume' before 'invoke' with coroutine");
  186:                 return null;
  187:             }
  188:             r57.b(obj);
  189:             QueryInterceptorDatabase.this.queryCallback.onQuery("END TRANSACTION", kx2.b);
  190:             return j59.a;
  191:         }
  192:     }
  193: 
  194:     /* JADX INFO: renamed from: androidx.room.support.QueryInterceptorDatabase$execSQL$1, reason: invalid class name and case insensitive filesystem */
  195:     @bd2(c = "androidx.room.support.QueryInterceptorDatabase$execSQL$1", f = "QueryInterceptorDatabase.android.kt", l = {}, m = "invokeSuspend")
  196:     public static final class C07371 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
  197:         final /* synthetic */ String $sql;
  198:         int label;
  199: 
  200:         /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
  203:             this.$sql = str;
  204:         }
  205: 
  206:         @Override // defpackage.cd0
  207:         public final e02<j59> create(Object obj, e02<?> e02Var) {
  208:             return QueryInterceptorDatabase.this.new C07371(this.$sql, e02Var);
  209:         }
  210: 
  211:         @Override // defpackage.bm3
  212:         public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
  213:             return ((C07371) create(y22Var, e02Var)).invokeSuspend(j59.a);
  219:             if (this.label != 0) {
  220:                 ah.f("call to 'resume' before 'invoke' with coroutine");
  221:                 return null;
  222:             }
  223:             r57.b(obj);
  224:             QueryInterceptorDatabase.this.queryCallback.onQuery(this.$sql, kx2.b);
  225:             return j59.a;
  226:         }
  227:     }
  228: 
  229:     /* JADX INFO: renamed from: androidx.room.support.QueryInterceptorDatabase$execSQL$2, reason: invalid class name */
  230:     @bd2(c = "androidx.room.support.QueryInterceptorDatabase$execSQL$2", f = "QueryInterceptorDatabase.android.kt", l = {}, m = "invokeSuspend")
  231:     public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
  232:         final /* synthetic */ List<Object> $argsCopy;
  233:         final /* synthetic */ String $sql;
  234:         int label;
  235: 
  240:             this.$argsCopy = list;
  241:         }
  242: 
  243:         @Override // defpackage.cd0
  244:         public final e02<j59> create(Object obj, e02<?> e02Var) {
  245:             return QueryInterceptorDatabase.this.new AnonymousClass2(this.$sql, this.$argsCopy, e02Var);
  246:         }
  247: 
  248:         @Override // defpackage.bm3
  249:         public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
  250:             return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
  256:             if (this.label != 0) {
  257:                 ah.f("call to 'resume' before 'invoke' with coroutine");
  258:                 return null;
  259:             }
  260:             r57.b(obj);
  261:             QueryInterceptorDatabase.this.queryCallback.onQuery(this.$sql, this.$argsCopy);
  262:             return j59.a;
  263:         }
  264:     }
  265: 
  266:     /* JADX INFO: renamed from: androidx.room.support.QueryInterceptorDatabase$query$1, reason: invalid class name and case insensitive filesystem */
  267:     @bd2(c = "androidx.room.support.QueryInterceptorDatabase$query$1", f = "QueryInterceptorDatabase.android.kt", l = {}, m = "invokeSuspend")
  268:     public static final class C07381 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
  269:         final /* synthetic */ String $query;
  270:         int label;
  271: 
  272:         /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
  275:             this.$query = str;
  276:         }
  277: 
  278:         @Override // defpackage.cd0
  279:         public final e02<j59> create(Object obj, e02<?> e02Var) {
  280:             return QueryInterceptorDatabase.this.new C07381(this.$query, e02Var);
  281:         }
  282: 
  283:         @Override // defpackage.bm3
  284:         public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
  285:             return ((C07381) create(y22Var, e02Var)).invokeSuspend(j59.a);
  291:             if (this.label != 0) {
  292:                 ah.f("call to 'resume' before 'invoke' with coroutine");
  293:                 return null;
  294:             }
  295:             r57.b(obj);
  296:             QueryInterceptorDatabase.this.queryCallback.onQuery(this.$query, kx2.b);
  297:             return j59.a;
  298:         }
  299:     }
  300: 
  301:     /* JADX INFO: renamed from: androidx.room.support.QueryInterceptorDatabase$query$2, reason: invalid class name and case insensitive filesystem */
  302:     @bd2(c = "androidx.room.support.QueryInterceptorDatabase$query$2", f = "QueryInterceptorDatabase.android.kt", l = {}, m = "invokeSuspend")
  303:     public static final class C07392 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
  304:         final /* synthetic */ List<Object> $argsCopy;
  305:         final /* synthetic */ String $query;
  306:         int label;
  307: 
  312:             this.$argsCopy = list;
  313:         }
  314: 
  315:         @Override // defpackage.cd0
  316:         public final e02<j59> create(Object obj, e02<?> e02Var) {
  317:             return QueryInterceptorDatabase.this.new C07392(this.$query, this.$argsCopy, e02Var);
  318:         }
  319: 
  320:         @Override // defpackage.bm3
  321:         public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
  322:             return ((C07392) create(y22Var, e02Var)).invokeSuspend(j59.a);
  328:             if (this.label != 0) {
  329:                 ah.f("call to 'resume' before 'invoke' with coroutine");
  330:                 return null;
  331:             }
  332:             r57.b(obj);
  333:             QueryInterceptorDatabase.this.queryCallback.onQuery(this.$query, this.$argsCopy);
  334:             return j59.a;
  335:         }
  336:     }
  337: 
  338:     /* JADX INFO: renamed from: androidx.room.support.QueryInterceptorDatabase$query$3, reason: invalid class name */
  339:     @bd2(c = "androidx.room.support.QueryInterceptorDatabase$query$3", f = "QueryInterceptorDatabase.android.kt", l = {}, m = "invokeSuspend")
  340:     public static final class AnonymousClass3 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
  341:         final /* synthetic */ SupportSQLiteQuery $query;
  342:         final /* synthetic */ QueryInterceptorProgram $queryInterceptorProgram;
  343:         int label;
  344: 
  345:         /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
  346:         public AnonymousClass3(SupportSQLiteQuery supportSQLiteQuery, QueryInterceptorProgram queryInterceptorProgram, e02<? super AnonymousClass3> e02Var) {
  347:             super(2, e02Var);
  348:             this.$query = supportSQLiteQuery;
  349:             this.$queryInterceptorProgram = queryInterceptorProgram;
  350:         }
  351: 
  352:         @Override // defpackage.cd0
  353:         public final e02<j59> create(Object obj, e02<?> e02Var) {
  354:             return QueryInterceptorDatabase.this.new AnonymousClass3(this.$query, this.$queryInterceptorProgram, e02Var);
  355:         }
  356: 
  357:         @Override // defpackage.bm3
  358:         public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
  359:             return ((AnonymousClass3) create(y22Var, e02Var)).invokeSuspend(j59.a);
  365:             if (this.label != 0) {
  366:                 ah.f("call to 'resume' before 'invoke' with coroutine");
  367:                 return null;
  368:             }
  369:             r57.b(obj);
  370:             QueryInterceptorDatabase.this.queryCallback.onQuery(this.$query.getSql(), this.$queryInterceptorProgram.getBindArgsCache$room_runtime());
  371:             this.$queryInterceptorProgram.close();
  372:             return j59.a;
  373:         }
  374:     }
  375: 
  376:     /* JADX INFO: renamed from: androidx.room.support.QueryInterceptorDatabase$query$4, reason: invalid class name */
  377:     @bd2(c = "androidx.room.support.QueryInterceptorDatabase$query$4", f = "QueryInterceptorDatabase.android.kt", l = {}, m = "invokeSuspend")
  378:     public static final class AnonymousClass4 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
  379:         final /* synthetic */ SupportSQLiteQuery $query;
  380:         final /* synthetic */ QueryInterceptorProgram $queryInterceptorProgram;
  381:         int label;
  382: 
  383:         /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
  384:         public AnonymousClass4(SupportSQLiteQuery supportSQLiteQuery, QueryInterceptorProgram queryInterceptorProgram, e02<? super AnonymousClass4> e02Var) {
  385:             super(2, e02Var);
  386:             this.$query = supportSQLiteQuery;
  387:             this.$queryInterceptorProgram = queryInterceptorProgram;
  388:         }
  389: 
  390:         @Override // defpackage.cd0
  391:         public final e02<j59> create(Object obj, e02<?> e02Var) {
  392:             return QueryInterceptorDatabase.this.new AnonymousClass4(this.$query, this.$queryInterceptorProgram, e02Var);
  393:         }
  394: 
  395:         @Override // defpackage.bm3
  396:         public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
  397:             return ((AnonymousClass4) create(y22Var, e02Var)).invokeSuspend(j59.a);
  403:             if (this.label != 0) {
  404:                 ah.f("call to 'resume' before 'invoke' with coroutine");
  405:                 return null;
  406:             }
  407:             r57.b(obj);
  408:             QueryInterceptorDatabase.this.queryCallback.onQuery(this.$query.getSql(), this.$queryInterceptorProgram.getBindArgsCache$room_runtime());
  409:             this.$queryInterceptorProgram.close();
  410:             return j59.a;
  411:         }
  412:     }
  413: 
  414:     /* JADX INFO: renamed from: androidx.room.support.QueryInterceptorDatabase$setTransactionSuccessful$1, reason: invalid class name and case insensitive filesystem */
  415:     @bd2(c = "androidx.room.support.QueryInterceptorDatabase$setTransactionSuccessful$1", f = "QueryInterceptorDatabase.android.kt", l = {}, m = "invokeSuspend")
  416:     public static final class C07401 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
  417:         int label;
  418: 
  419:         public C07401(e02<? super C07401> e02Var) {
  420:             super(2, e02Var);
  421:         }
  422: 
  423:         @Override // defpackage.cd0
  424:         public final e02<j59> create(Object obj, e02<?> e02Var) {
  425:             return QueryInterceptorDatabase.this.new C07401(e02Var);
  426:         }
  427: 
  428:         @Override // defpackage.bm3
  429:         public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
  430:             return ((C07401) create(y22Var, e02Var)).invokeSuspend(j59.a);
  436:             if (this.label != 0) {
  437:                 ah.f("call to 'resume' before 'invoke' with coroutine");
  438:                 return null;
  439:             }
  440:             r57.b(obj);
  441:             QueryInterceptorDatabase.this.queryCallback.onQuery("TRANSACTION SUCCESSFUL", kx2.b);
  442:             return j59.a;
  443:         }
  444:     }
  445: 
  446:     public QueryInterceptorDatabase(SupportSQLiteDatabase supportSQLiteDatabase, y22 y22Var, RoomDatabase.QueryCallback queryCallback) {
  447:         supportSQLiteDatabase.getClass();
  448:         y22Var.getClass();
  449:         queryCallback.getClass();
  450:         this.delegate = supportSQLiteDatabase;
  451:         this.queryCallbackScope = y22Var;
  495:     }
  496: 
  497:     @Override // androidx.sqlite.db.SupportSQLiteDatabase
  498:     public SupportSQLiteStatement compileStatement(String str) {
  499:         str.getClass();
  500:         return new QueryInterceptorStatement(this.delegate.compileStatement(str), str, this.queryCallbackScope, this.queryCallback);
  501:     }
  502: 
  503:     @Override // androidx.sqlite.db.SupportSQLiteDatabase
  504:     public int delete(String str, String str2, Object[] objArr) {
  505:         str.getClass();
  609:     }
  610: 
  611:     @Override // androidx.sqlite.db.SupportSQLiteDatabase
  612:     public Cursor query(SupportSQLiteQuery supportSQLiteQuery) {
  613:         supportSQLiteQuery.getClass();
  614:         QueryInterceptorProgram queryInterceptorProgram = new QueryInterceptorProgram();
  615:         supportSQLiteQuery.bindTo(queryInterceptorProgram);
  616:         av0.c(this.queryCallbackScope, null, null, new AnonymousClass3(supportSQLiteQuery, queryInterceptorProgram, null), 3);
  617:         return this.delegate.query(supportSQLiteQuery);
  618:     }
  619: 
  620:     @Override // androidx.sqlite.db.SupportSQLiteDatabase
  621:     public void setForeignKeyConstraintsEnabled(boolean z) {
  694:     }
  695: 
  696:     @Override // androidx.sqlite.db.SupportSQLiteDatabase
  697:     public Cursor query(SupportSQLiteQuery supportSQLiteQuery, CancellationSignal cancellationSignal) {
  698:         supportSQLiteQuery.getClass();
  699:         QueryInterceptorProgram queryInterceptorProgram = new QueryInterceptorProgram();
  700:         supportSQLiteQuery.bindTo(queryInterceptorProgram);
  701:         av0.c(this.queryCallbackScope, null, null, new AnonymousClass4(supportSQLiteQuery, queryInterceptorProgram, null), 3);
  702:         return this.delegate.query(supportSQLiteQuery);
  703:     }
  704: }
```


---

## `apk_analysis/jadx/sources/androidx/webkit/internal/ProfileImpl.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   37:     private Set<CustomHeader> getCustomHeadersInternal(String str, String str2) {
   38:         HashSet hashSet = new HashSet();
   39:         Iterator<InvocationHandler> it = this.mProfileImpl.getOriginMatchedHeaders(str, str2).iterator();
   40:         while (it.hasNext()) {
   41:             OriginMatchedHeaderBoundaryInterface originMatchedHeaderBoundaryInterface = (OriginMatchedHeaderBoundaryInterface) kt0.a(OriginMatchedHeaderBoundaryInterface.class, it.next());
   42:             hashSet.add(new CustomHeader(originMatchedHeaderBoundaryInterface.getName(), originMatchedHeaderBoundaryInterface.getValue(), originMatchedHeaderBoundaryInterface.getRules()));
   43:         }
   44:         return hashSet;
   45:     }
   46: 
   47:     @Override // androidx.webkit.Profile
   48:     public void addCustomHeader(CustomHeader customHeader) {
   49:         if (!WebViewFeatureInternal.CUSTOM_REQUEST_HEADERS.isSupportedByWebView()) {
   50:             throw WebViewFeatureInternal.getUnsupportedOperationException();
   51:         }
   52:         this.mProfileImpl.addOriginMatchedHeader(customHeader.getName(), customHeader.getValue(), customHeader.getRules());
   53:     }
   54: 
   55:     @Override // androidx.webkit.Profile
   56:     public void addQuicHints(Set<String> set) {
   57:         if (!WebViewFeatureInternal.ADD_QUIC_HINTS_V1.isSupportedByWebView()) {
   75:         }
   76:         this.mProfileImpl.clearAllOriginMatchedHeaders();
   77:     }
   78: 
   79:     @Override // androidx.webkit.Profile
   80:     public void clearCustomHeader(String str) {
   81:         if (!WebViewFeatureInternal.CUSTOM_REQUEST_HEADERS.isSupportedByWebView()) {
   82:             throw WebViewFeatureInternal.getUnsupportedOperationException();
   83:         }
   84:         this.mProfileImpl.clearOriginMatchedHeader(str, null);
   85:     }
   86: 
   87:     @Override // androidx.webkit.Profile
   88:     public void clearOriginMatchedHeader(String str) {
   89:         if (!WebViewFeatureInternal.ORIGIN_MATCHED_HEADERS.isSupportedByWebView()) {
   90:             throw WebViewFeatureInternal.getUnsupportedOperationException();
   91:         }
   92:         this.mProfileImpl.clearOriginMatchedHeader(str);
   93:     }
   94: 
   95:     @Override // androidx.webkit.Profile
   96:     public CookieManager getCookieManager() {
   97:         if (WebViewFeatureInternal.MULTI_PROFILE.isSupportedByWebView()) {
  147:         }
  148:         throw WebViewFeatureInternal.getUnsupportedOperationException();
  149:     }
  150: 
  151:     @Override // androidx.webkit.Profile
  152:     public boolean hasCustomHeader(String str) {
  153:         if (WebViewFeatureInternal.CUSTOM_REQUEST_HEADERS.isSupportedByWebView()) {
  154:             return this.mProfileImpl.hasOriginMatchedHeader(str);
  155:         }
  156:         throw WebViewFeatureInternal.getUnsupportedOperationException();
  157:     }
  158: 
  159:     @Override // androidx.webkit.Profile
  160:     public boolean hasOriginMatchedHeader(String str) {
  161:         if (WebViewFeatureInternal.ORIGIN_MATCHED_HEADERS.isSupportedByWebView()) {
  162:             return this.mProfileImpl.hasOriginMatchedHeader(str);
  163:         }
  164:         throw WebViewFeatureInternal.getUnsupportedOperationException();
  165:     }
  166: 
  167:     @Override // androidx.webkit.Profile
  191:             fg.c("maxPrerenders should be greater than or equal to 1");
  192:         }
  193:     }
  194: 
  195:     @Override // androidx.webkit.Profile
  196:     public void setOriginMatchedHeader(String str, String str2, Set<String> set) {
  197:         if (!WebViewFeatureInternal.ORIGIN_MATCHED_HEADERS.isSupportedByWebView()) {
  198:             throw WebViewFeatureInternal.getUnsupportedOperationException();
  199:         }
  200:         this.mProfileImpl.setOriginMatchedHeader(str, str2, set);
  201:     }
  202: 
  203:     @Override // androidx.webkit.Profile
  204:     public void setSpeculativeLoadingConfig(SpeculativeLoadingConfig speculativeLoadingConfig) {
  205:         if (!WebViewFeatureInternal.SPECULATIVE_LOADING_CONFIG.isSupportedByWebView()) {
  223:         }
  224:         throw WebViewFeatureInternal.getUnsupportedOperationException();
  225:     }
  226: 
  227:     @Override // androidx.webkit.Profile
  228:     public void clearCustomHeader(String str, String str2) {
  229:         if (WebViewFeatureInternal.CUSTOM_REQUEST_HEADERS.isSupportedByWebView()) {
  230:             this.mProfileImpl.clearOriginMatchedHeader(str, str2);
  231:             return;
  232:         }
  233:         throw WebViewFeatureInternal.getUnsupportedOperationException();
  234:     }
  235: 
```


---

## `apk_analysis/jadx/sources/org/chromium/support_lib_boundary/StaticsBoundaryInterface.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   10: public interface StaticsBoundaryInterface {
   11:     int getRendererLibraryPrefetchMode();
   12: 
   13:     Uri getSafeBrowsingPrivacyPolicyUrl();
   14: 
   15:     String getVariationsHeader();
   16: 
   17:     void initSafeBrowsing(Context context, ValueCallback<Boolean> valueCallback);
   18: 
   19:     boolean isMultiProcessEnabled();
   20: 
```


---

## `apk_analysis/jadx/sources/org/chromium/support_lib_boundary/ProfileBoundaryInterface.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   10: import java.util.Set;
   11: import java.util.concurrent.Executor;
   12: 
   13: /* JADX INFO: loaded from: classes3.dex */
   14: public interface ProfileBoundaryInterface {
   15:     void addOriginMatchedHeader(String str, String str2, Set<String> set);
   16: 
   17:     void addQuicHints(Set<String> set);
   18: 
   19:     void clearAllOriginMatchedHeaders();
   20: 
   21:     @Deprecated
   22:     void clearOriginMatchedHeader(String str);
   23: 
   24:     void clearOriginMatchedHeader(String str, String str2);
   25: 
   26:     void clearPrefetch(String str, Executor executor, InvocationHandler invocationHandler);
   27: 
   28:     CookieManager getCookieManager();
   29: 
   41: 
   42:     ServiceWorkerController getServiceWorkerController();
   43: 
   44:     WebStorage getWebStorage();
   45: 
   46:     boolean hasOriginMatchedHeader(String str);
   47: 
   48:     void preconnect(String str);
   49: 
   50:     void prefetchUrl(String str, CancellationSignal cancellationSignal, Executor executor, InvocationHandler invocationHandler);
   51: 
   54:     void setMaxPrefetches(Integer num);
   55: 
   56:     void setMaxPrerenders(Integer num);
   57: 
   58:     @Deprecated
   59:     void setOriginMatchedHeader(String str, String str2, Set<String> set);
   60: 
   61:     void setPrefetchTtlSeconds(Integer num);
   62: 
   63:     void setSpeculativeLoadingConfig(InvocationHandler invocationHandler);
   64: 
```


---

## `apk_analysis/jadx/sources/com/tapjoy/TapjoyConnectCore.java`

**Разделы:** API HOST / NETWORK CONFIG

```
  129: 
  130:     public final /* synthetic */ void c() {
  131:         new TJAppSetId().fetch(this.a, new dh1(this, 3));
  132:     }
  133: 
  134:     public Map<String, String> getBaseURLParams() {
  135:         String str;
  136:         String str2;
  137:         e1 e1Var = new e1();
  138:         HashMap map = new HashMap();
  139:         s1 s1Var = e1Var.f;
```


---

## `apk_analysis/jadx/sources/com/tapjoy/b0.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP, API HOST / NETWORK CONFIG

```
   31:         String placementURL = TapjoyConnectCore.getInstance().getPlacementURL();
   32:         String str = s2Var.b;
   33:         if (str == null) {
   34:             str = "";
   35:         }
   36:         tJWebView.loadDataWithBaseURL(placementURL, str, "text/html", "charset=UTF-8", null);
   37:     }
   38: }
```


---

## `apk_analysis/jadx/sources/com/tapjoy/c.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP, API HOST / NETWORK CONFIG

```
   58:                     if (zIsPreloadDisabled) {
   59:                         tJAdUnit2.e.postUrl(this.b.getRedirectURL(), null);
   60:                     } else {
   61:                         tJAdUnit2.e.loadUrl(this.b.getRedirectURL());
   62:                     }
   63:                 } else if (tJPlacementData.getBaseURL() == null || this.b.getHttpResponse() == null) {
   64:                     TapjoyLog.e("Error loading ad unit content");
   65:                     this.d.g = false;
   66:                 } else {
   67:                     this.d.e.loadDataWithBaseURL(this.b.getBaseURL(), this.b.getHttpResponse(), "text/html", "utf-8", null);
   68:                 }
   69:             } catch (Exception unused) {
   70:                 TapjoyLog.e("Error loading ad unit content");
   71:                 this.d.g = false;
   72:             }
```


---

## `apk_analysis/jadx/sources/com/tapjoy/TJUser.java`

**Разделы:** API HOST / NETWORK CONFIG

```
  324:             TapjoyLog.e("Failed to set userID");
  325:             TapjoyUtil.runOnMainThread(new gp(tJSetUserIDListener, 3));
  326:             return;
  327:         }
  328:         setUserId(str);
  329:         TapjoyLog.d("URL parameters: " + TapjoyConnectCore.getInstance().getBaseURLParams());
  330:         TapjoyLog.i("Setting userID to ".concat(str));
  331:         String hostURL = TapjoyConnectCore.getInstance().getHostURL();
  332:         r2 r2Var = (r2) h.getValue();
  333:         String strC = ni0.c(hostURL, TapjoyConstants.TJC_USER_ID_URL_PATH);
  334:         Map<String, String> baseURLParams = TapjoyConnectCore.getInstance().getBaseURLParams();
  335:         r2Var.getClass();
  336:         String str2 = r2.a(strC, r2.a(baseURLParams), null, null, null).b;
  337:         boolean z = false;
  338:         if (str2 != null && (documentBuildDocument = TapjoyUtil.buildDocument(str2)) != null && (nodeTrimValue = TapjoyUtil.getNodeTrimValue(documentBuildDocument.getElementsByTagName("Success"))) != null && nodeTrimValue.equals(TJAdUnitConstants.String.TRUE)) {
  339:             z = true;
  340:         }
  341:         if (!z && !ra8.v(hostURL, TapjoyConnectCore.getInstance().getHostURL(), true)) {
```


---

## `apk_analysis/jadx/sources/com/tapjoy/TJPlacementData.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP, API HOST / NETWORK CONFIG

```
   17:     public boolean j = false;
   18:     public boolean l = false;
   19:     public boolean m = false;
   20: 
   21:     public TJPlacementData(String str, String str2, String str3, String str4, String str5) {
   22:         setBaseURL(str);
   23:         this.a = str2;
   24:         this.e = str3;
   25:         this.b = str4;
   26:         this.i = str5;
   27:     }
   28: 
   29:     public String getBaseURL() {
   30:         String str = this.c;
   31:         if (str == null || str.isEmpty()) {
   32:             return "";
   33:         }
   34:         String str2 = this.c;
   77: 
   78:     public boolean isPrerenderingRequested() {
   79:         return this.h;
   80:     }
   81: 
   82:     public void setBaseURL(String str) {
   83:         this.c = str;
   84:     }
   85: 
   86:     public void setContentViewId(String str) {
   87:         this.i = str;
```


---

## `apk_analysis/jadx/sources/com/tapjoy/TJWebViewActivity.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP, API HOST / NETWORK CONFIG

```
  165:         this.f = tJWebView;
  166:         tJWebView.setWebViewClient(new q0(this));
  167:         this.g = new TJAdUnitJSBridge(new BridgeDelegate());
  168:         TJWebView tJWebView2 = this.f;
  169:         if (zBooleanValue) {
  170:             tJWebView2.loadDataWithBaseURL(str, str2, "text/html", "UTF-8", null);
  171:         } else {
  172:             tJWebView2.loadUrl(str);
  173:         }
  174:         this.a.addView(this.f, -1, -1);
  175:         this.a.addView(this.d);
```


---

## `apk_analysis/jadx/sources/com/google/firebase/FirebaseOptions.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP, API HOST / NETWORK CONFIG

```
   10: 
   11: /* JADX INFO: loaded from: classes4.dex */
   12: public final class FirebaseOptions {
   13:     private static final String API_KEY_RESOURCE_NAME = "google_api_key";
   14:     private static final String APP_ID_RESOURCE_NAME = "google_app_id";
   15:     private static final String DATABASE_URL_RESOURCE_NAME = "firebase_database_url";
   16:     private static final String GA_TRACKING_ID_RESOURCE_NAME = "ga_trackingId";
   17:     private static final String GCM_SENDER_ID_RESOURCE_NAME = "gcm_defaultSenderId";
   18:     private static final String PROJECT_ID_RESOURCE_NAME = "project_id";
   19:     private static final String STORAGE_BUCKET_RESOURCE_NAME = "google_storage_bucket";
   20:     private final String apiKey;
   21:     private final String applicationId;
   22:     private final String databaseUrl;
   23:     private final String gaTrackingId;
   24:     private final String gcmSenderId;
   25:     private final String projectId;
   26:     private final String storageBucket;
   27: 
   28:     private FirebaseOptions(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
   29:         Preconditions.checkState(!Strings.isEmptyOrWhitespace(str), "ApplicationId must be set.");
   30:         this.applicationId = str;
   31:         this.apiKey = str2;
   32:         this.databaseUrl = str3;
   33:         this.gaTrackingId = str4;
   34:         this.gcmSenderId = str5;
   35:         this.storageBucket = str6;
   36:         this.projectId = str7;
   37:     }
   40:         StringResourceValueReader stringResourceValueReader = new StringResourceValueReader(context);
   41:         String string = stringResourceValueReader.getString(APP_ID_RESOURCE_NAME);
   42:         if (TextUtils.isEmpty(string)) {
   43:             return null;
   44:         }
   45:         return new FirebaseOptions(string, stringResourceValueReader.getString(API_KEY_RESOURCE_NAME), stringResourceValueReader.getString(DATABASE_URL_RESOURCE_NAME), stringResourceValueReader.getString(GA_TRACKING_ID_RESOURCE_NAME), stringResourceValueReader.getString(GCM_SENDER_ID_RESOURCE_NAME), stringResourceValueReader.getString(STORAGE_BUCKET_RESOURCE_NAME), stringResourceValueReader.getString(PROJECT_ID_RESOURCE_NAME));
   46:     }
   47: 
   48:     public boolean equals(Object obj) {
   49:         if (!(obj instanceof FirebaseOptions)) {
   50:             return false;
   51:         }
   52:         FirebaseOptions firebaseOptions = (FirebaseOptions) obj;
   53:         return Objects.equal(this.applicationId, firebaseOptions.applicationId) && Objects.equal(this.apiKey, firebaseOptions.apiKey) && Objects.equal(this.databaseUrl, firebaseOptions.databaseUrl) && Objects.equal(this.gaTrackingId, firebaseOptions.gaTrackingId) && Objects.equal(this.gcmSenderId, firebaseOptions.gcmSenderId) && Objects.equal(this.storageBucket, firebaseOptions.storageBucket) && Objects.equal(this.projectId, firebaseOptions.projectId);
   54:     }
   55: 
   56:     public String getApiKey() {
   57:         return this.apiKey;
   58:     }
   59: 
   60:     public String getApplicationId() {
   61:         return this.applicationId;
   62:     }
   63: 
   64:     public String getDatabaseUrl() {
   65:         return this.databaseUrl;
   66:     }
   67: 
   68:     public String getGaTrackingId() {
   69:         return this.gaTrackingId;
   70:     }
   80:     public String getStorageBucket() {
   81:         return this.storageBucket;
   82:     }
   83: 
   84:     public int hashCode() {
   85:         return Objects.hashCode(this.applicationId, this.apiKey, this.databaseUrl, this.gaTrackingId, this.gcmSenderId, this.storageBucket, this.projectId);
   86:     }
   87: 
   88:     public String toString() {
   89:         return Objects.toStringHelper(this).add("applicationId", this.applicationId).add(DynamicLink.Builder.KEY_API_KEY, this.apiKey).add("databaseUrl", this.databaseUrl).add("gcmSenderId", this.gcmSenderId).add("storageBucket", this.storageBucket).add("projectId", this.projectId).toString();
   90:     }
   91: 
   92:     public static final class Builder {
   93:         private String apiKey;
   94:         private String applicationId;
   95:         private String databaseUrl;
   96:         private String gaTrackingId;
   97:         private String gcmSenderId;
   98:         private String projectId;
   99:         private String storageBucket;
  100: 
  101:         public Builder(FirebaseOptions firebaseOptions) {
  102:             this.applicationId = firebaseOptions.applicationId;
  103:             this.apiKey = firebaseOptions.apiKey;
  104:             this.databaseUrl = firebaseOptions.databaseUrl;
  105:             this.gaTrackingId = firebaseOptions.gaTrackingId;
  106:             this.gcmSenderId = firebaseOptions.gcmSenderId;
  107:             this.storageBucket = firebaseOptions.storageBucket;
  108:             this.projectId = firebaseOptions.projectId;
  109:         }
  110: 
  111:         public FirebaseOptions build() {
  112:             return new FirebaseOptions(this.applicationId, this.apiKey, this.databaseUrl, this.gaTrackingId, this.gcmSenderId, this.storageBucket, this.projectId);
  113:         }
  114: 
  115:         public Builder setApiKey(String str) {
  116:             this.apiKey = Preconditions.checkNotEmpty(str, "ApiKey must be set.");
  117:             return this;
  120:         public Builder setApplicationId(String str) {
  121:             this.applicationId = Preconditions.checkNotEmpty(str, "ApplicationId must be set.");
  122:             return this;
  123:         }
  124: 
  125:         public Builder setDatabaseUrl(String str) {
  126:             this.databaseUrl = str;
  127:             return this;
  128:         }
  129: 
  130:         public Builder setGaTrackingId(String str) {
  131:             this.gaTrackingId = str;
```


---

## `apk_analysis/jadx/sources/com/google/firebase/messaging/RemoteMessageCreator.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    9: /* JADX INFO: loaded from: classes4.dex */
   10: public class RemoteMessageCreator implements Parcelable.Creator<RemoteMessage> {
   11:     public static final int CONTENT_DESCRIPTION = 0;
   12: 
   13:     public static void writeToParcel(RemoteMessage remoteMessage, Parcel parcel, int i) {
   14:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   15:         SafeParcelWriter.writeBundle(parcel, 2, remoteMessage.bundle, false);
   16:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   17:     }
   18: 
   19:     /* JADX WARN: Can't rename method to resolve collision */
   20:     @Override // android.os.Parcelable.Creator
   21:     public RemoteMessage createFromParcel(Parcel parcel) {
   22:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   23:         Bundle bundleCreateBundle = null;
   24:         while (parcel.dataPosition() < iValidateObjectHeader) {
   25:             int header = SafeParcelReader.readHeader(parcel);
   26:             if (SafeParcelReader.getFieldId(header) != 2) {
   27:                 SafeParcelReader.skipUnknownField(parcel, header);
   28:             } else {
   29:                 bundleCreateBundle = SafeParcelReader.createBundle(parcel, header);
   30:             }
```


---

## `apk_analysis/jadx/sources/com/google/firebase/heartbeatinfo/DefaultHeartBeatController.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  134:         heartBeatInfoStorage.postHeartBeatCleanUp();
  135:         return HeartBeatInfo.HeartBeat.GLOBAL;
  136:     }
  137: 
  138:     @Override // com.google.firebase.heartbeatinfo.HeartBeatController
  139:     public Task<String> getHeartBeatsHeader() {
  140:         return !UserManagerCompat.isUserUnlocked(this.applicationContext) ? Tasks.forResult("") : Tasks.call(this.backgroundExecutor, new Callable() { // from class: ph2
  141:             @Override // java.util.concurrent.Callable
  142:             public final Object call() {
  143:                 return this.b.lambda$getHeartBeatsHeader$1();
  144:             }
```


---

## `apk_analysis/jadx/sources/com/google/firebase/heartbeatinfo/HeartBeatController.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    2: 
    3: import com.google.android.gms.tasks.Task;
    4: 
    5: /* JADX INFO: loaded from: classes4.dex */
    6: public interface HeartBeatController {
    7:     Task<String> getHeartBeatsHeader();
    8: }
```


---

## `apk_analysis/jadx/sources/com/google/firebase/dynamiclinks/internal/WarningImplCreator.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public class WarningImplCreator implements Parcelable.Creator<ShortDynamicLinkImpl.WarningImpl> {
   10:     public static final int CONTENT_DESCRIPTION = 0;
   11: 
   12:     public static void writeToParcel(ShortDynamicLinkImpl.WarningImpl warningImpl, Parcel parcel, int i) {
   13:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   14:         SafeParcelWriter.writeString(parcel, 2, warningImpl.getMessage(), false);
   15:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   16:     }
   17: 
   18:     /* JADX WARN: Can't rename method to resolve collision */
   19:     @Override // android.os.Parcelable.Creator
   20:     public ShortDynamicLinkImpl.WarningImpl createFromParcel(Parcel parcel) {
   21:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   22:         String strCreateString = null;
   23:         while (parcel.dataPosition() < iValidateObjectHeader) {
   24:             int header = SafeParcelReader.readHeader(parcel);
   25:             if (SafeParcelReader.getFieldId(header) != 2) {
   26:                 SafeParcelReader.skipUnknownField(parcel, header);
   27:             } else {
   28:                 strCreateString = SafeParcelReader.createString(parcel, header);
   29:             }
```


---

## `apk_analysis/jadx/sources/com/google/firebase/dynamiclinks/internal/ShortDynamicLinkImplCreator.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   10: /* JADX INFO: loaded from: classes4.dex */
   11: public class ShortDynamicLinkImplCreator implements Parcelable.Creator<ShortDynamicLinkImpl> {
   12:     public static final int CONTENT_DESCRIPTION = 0;
   13: 
   14:     public static void writeToParcel(ShortDynamicLinkImpl shortDynamicLinkImpl, Parcel parcel, int i) {
   15:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   16:         SafeParcelWriter.writeParcelable(parcel, 1, shortDynamicLinkImpl.getShortLink(), i, false);
   17:         SafeParcelWriter.writeParcelable(parcel, 2, shortDynamicLinkImpl.getPreviewLink(), i, false);
   18:         SafeParcelWriter.writeTypedList(parcel, 3, shortDynamicLinkImpl.getWarnings(), false);
   19:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   20:     }
   21: 
   22:     /* JADX WARN: Can't rename method to resolve collision */
   23:     @Override // android.os.Parcelable.Creator
   24:     public ShortDynamicLinkImpl createFromParcel(Parcel parcel) {
   25:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   26:         Uri uri = null;
   27:         Uri uri2 = null;
   28:         ArrayList arrayListCreateTypedList = null;
   29:         while (parcel.dataPosition() < iValidateObjectHeader) {
   30:             int header = SafeParcelReader.readHeader(parcel);
   31:             int fieldId = SafeParcelReader.getFieldId(header);
   32:             if (fieldId == 1) {
   33:                 uri = (Uri) SafeParcelReader.createParcelable(parcel, header, Uri.CREATOR);
   34:             } else if (fieldId == 2) {
   35:                 uri2 = (Uri) SafeParcelReader.createParcelable(parcel, header, Uri.CREATOR);
```


---

## `apk_analysis/jadx/sources/com/google/firebase/dynamiclinks/internal/DynamicLinkDataCreator.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   10: /* JADX INFO: loaded from: classes4.dex */
   11: public class DynamicLinkDataCreator implements Parcelable.Creator<DynamicLinkData> {
   12:     public static final int CONTENT_DESCRIPTION = 0;
   13: 
   14:     public static void writeToParcel(DynamicLinkData dynamicLinkData, Parcel parcel, int i) {
   15:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   16:         SafeParcelWriter.writeString(parcel, 1, dynamicLinkData.getDynamicLink(), false);
   17:         SafeParcelWriter.writeString(parcel, 2, dynamicLinkData.getDeepLink(), false);
   18:         SafeParcelWriter.writeInt(parcel, 3, dynamicLinkData.getMinVersion());
   19:         SafeParcelWriter.writeLong(parcel, 4, dynamicLinkData.getClickTimestamp());
   20:         SafeParcelWriter.writeBundle(parcel, 5, dynamicLinkData.getExtensionBundle(), false);
   21:         SafeParcelWriter.writeParcelable(parcel, 6, dynamicLinkData.getRedirectUrl(), i, false);
   22:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   23:     }
   24: 
   25:     /* JADX WARN: Can't rename method to resolve collision */
   26:     @Override // android.os.Parcelable.Creator
   27:     public DynamicLinkData createFromParcel(Parcel parcel) {
   28:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   29:         String strCreateString = null;
   30:         String strCreateString2 = null;
   31:         Bundle bundleCreateBundle = null;
   32:         Uri uri = null;
   33:         int i = 0;
   34:         long j = 0;
   35:         while (parcel.dataPosition() < iValidateObjectHeader) {
   36:             int header = SafeParcelReader.readHeader(parcel);
   37:             switch (SafeParcelReader.getFieldId(header)) {
   38:                 case 1:
   39:                     strCreateString = SafeParcelReader.createString(parcel, header);
   40:                     break;
   41:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/firebase/sessions/settings/RemoteSettingsFetcher.java`

**Разделы:** API HOST / NETWORK CONFIG

```
   21: 
   22: /* JADX INFO: loaded from: classes4.dex */
   23: public final class RemoteSettingsFetcher implements CrashlyticsSettingsFetcher {
   24:     public static final Companion Companion = new Companion(null);
   25:     private static final String FIREBASE_PLATFORM = "android";
   26:     private static final String FIREBASE_SESSIONS_BASE_URL_STRING = "firebase-settings.crashlytics.com";
   27:     private final ApplicationInfo appInfo;
   28:     private final o22 blockingDispatcher;
   29: 
   30:     /* JADX INFO: renamed from: com.google.firebase.sessions.settings.RemoteSettingsFetcher$doConfigFetch$2, reason: invalid class name */
   31:     @bd2(c = "com.google.firebase.sessions.settings.RemoteSettingsFetcher$doConfigFetch$2", f = "RemoteSettingsFetcher.kt", l = {73, MdtaMetadataEntry.TYPE_INDICATOR_8_BIT_UNSIGNED_INT, MdtaMetadataEntry.TYPE_INDICATOR_UNSIGNED_INT64}, m = "invokeSuspend")
   85:         this.blockingDispatcher = o22Var;
   86:     }
   87: 
   88:     /* JADX INFO: Access modifiers changed from: private */
   89:     public final URL settingsUrl() {
   90:         return new URL(new Uri.Builder().scheme(ProxyConfig.MATCH_HTTPS).authority(FIREBASE_SESSIONS_BASE_URL_STRING).appendPath("spi").appendPath("v2").appendPath("platforms").appendPath("android").appendPath("gmp").appendPath(this.appInfo.getAppId()).appendPath("settings").appendQueryParameter("build_version", this.appInfo.getAndroidAppInfo().getAppBuildVersion()).appendQueryParameter("display_version", this.appInfo.getAndroidAppInfo().getVersionName()).build().toString());
   91:     }
   92: 
   93:     @Override // com.google.firebase.sessions.settings.CrashlyticsSettingsFetcher
   94:     public Object doConfigFetch(Map<String, String> map, bm3<? super JSONObject, ? super e02<? super j59>, ? extends Object> bm3Var, bm3<? super String, ? super e02<? super j59>, ? extends Object> bm3Var2, e02<? super j59> e02Var) throws Throwable {
   95:         Object objD = av0.d(this.blockingDispatcher, new AnonymousClass2(map, bm3Var, bm3Var2, null), e02Var);
```


---

## `apk_analysis/jadx/sources/com/google/firebase/perf/metrics/NetworkRequestMetricBuilder.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   74:         if (perfSessionArrBuildAndSort != null) {
   75:             this.builder.addAllPerfSessions(Arrays.asList(perfSessionArrBuildAndSort));
   76:         }
   77:         NetworkRequestMetric networkRequestMetricBuild = this.builder.build();
   78:         if (!NetworkRequestMetricBuilderUtil.isAllowedUserAgent(this.userAgent)) {
   79:             logger.debug("Dropping network request from a 'User-Agent' that is not allowed");
   80:             return networkRequestMetricBuild;
   81:         }
   82:         if (this.isReportSent) {
   83:             if (this.isManualNetworkRequestMetric) {
   84:                 logger.debug("This metric has already been queued for transmission.  Please create a new HttpMetric for each request/response");
```


---

## `apk_analysis/jadx/sources/com/google/firebase/perf/network/FirebasePerfOkHttpClient.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   12: import defpackage.z47;
   13: import java.io.IOException;
   14: import okhttp3.a;
   15: 
   16: /* JADX INFO: loaded from: classes4.dex */
   17: public class FirebasePerfOkHttpClient {
   18:     private FirebasePerfOkHttpClient() {
   19:     }
   20: 
   21:     public static void enqueue(a aVar, ty0 ty0Var) {
   22:         Timer timer = new Timer();
   23:         aVar.a(new InstrumentOkHttpEnqueueCallback(ty0Var, TransportManager.getInstance(), timer, timer.getMicros()));
```


---

## `apk_analysis/jadx/sources/com/google/firebase/perf/network/NetworkRequestMetricBuilderUtil.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   14:     private NetworkRequestMetricBuilderUtil() {
   15:     }
   16: 
   17:     public static Long getApacheHttpMessageContentLength(HttpMessage httpMessage) {
   18:         try {
   19:             Header firstHeader = httpMessage.getFirstHeader("content-length");
   20:             if (firstHeader != null) {
   21:                 return Long.valueOf(Long.parseLong(firstHeader.getValue()));
   22:             }
   23:             return null;
   24:         } catch (NumberFormatException unused) {
   27:         }
   28:     }
   29: 
   30:     public static String getApacheHttpResponseContentType(HttpResponse httpResponse) {
   31:         String value;
   32:         Header firstHeader = httpResponse.getFirstHeader("content-type");
   33:         if (firstHeader == null || (value = firstHeader.getValue()) == null) {
   34:             return null;
   35:         }
   36:         return value;
   37:     }
```


---

## `apk_analysis/jadx/sources/com/google/firebase/perf/network/InstrumentOkHttpEnqueueCallback.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   43:         this.callback.onFailure(aVar, iOException);
   44:     }
   45: 
   46:     @Override // defpackage.ty0
   47:     public void onResponse(a aVar, z47 z47Var) {
   48:         FirebasePerfOkHttpClient.sendNetworkMetric(z47Var, this.networkMetricBuilder, this.startTimeMicros, this.timer.getDurationMicros());
   49:         this.callback.onResponse(aVar, z47Var);
   50:     }
   51: }
```


---

## `apk_analysis/jadx/sources/com/google/firebase/perf/network/InstrURLConnectionBase.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   12: import java.util.List;
   13: import java.util.Map;
   14: 
   15: /* JADX INFO: loaded from: classes4.dex */
   16: class InstrURLConnectionBase {
   17:     private static final String USER_AGENT_PROPERTY = "User-Agent";
   18:     private static final AndroidLogger logger = AndroidLogger.getInstance();
   19:     private final HttpURLConnection httpUrlConnection;
   20:     private final NetworkRequestMetricBuilder networkMetricBuilder;
   21:     private long timeRequestedInMicros = -1;
   22:     private long timeToResponseInitiatedInMicros = -1;
```


---

## `apk_analysis/jadx/sources/com/google/firebase/installations/remote/FirebaseInstallationServiceClient.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  166:             httpURLConnection.addRequestProperty(CACHE_CONTROL_HEADER_KEY, CACHE_CONTROL_DIRECTIVE);
  167:             httpURLConnection.addRequestProperty(X_ANDROID_PACKAGE_HEADER_KEY, this.context.getPackageName());
  168:             HeartBeatController heartBeatController = this.heartBeatProvider.get();
  169:             if (heartBeatController != null) {
  170:                 try {
  171:                     httpURLConnection.addRequestProperty(HEART_BEAT_HEADER, (String) Tasks.await(heartBeatController.getHeartBeatsHeader()));
  172:                 } catch (InterruptedException e) {
  173:                     Thread.currentThread().interrupt();
  174:                     Log.w("ContentValues", "Failed to get heartbeats header", e);
  175:                 } catch (ExecutionException e2) {
  176:                     Log.w("ContentValues", "Failed to get heartbeats header", e2);
  368:         while (i <= 1) {
  369:             TrafficStats.setThreadStatsTag(TRAFFIC_STATS_DELETE_INSTALLATION_TAG);
  370:             HttpURLConnection httpURLConnectionOpenHttpURLConnection = openHttpURLConnection(fullyQualifiedRequestUri, str);
  371:             try {
  372:                 httpURLConnectionOpenHttpURLConnection.setRequestMethod(FirebasePerformance.HttpMethod.DELETE);
  373:                 httpURLConnectionOpenHttpURLConnection.addRequestProperty("Authorization", "FIS_v2 " + str4);
  374:                 int responseCode = httpURLConnectionOpenHttpURLConnection.getResponseCode();
  375:                 if (responseCode != 200 && responseCode != 401 && responseCode != 404) {
  376:                     logFisCommunicationError(httpURLConnectionOpenHttpURLConnection, null, str, str3);
  377:                     if (responseCode != 429 && (responseCode < 500 || responseCode >= 600)) {
  378:                         logBadConfigError();
  405:             TrafficStats.setThreadStatsTag(TRAFFIC_STATS_GENERATE_AUTH_TOKEN_TAG);
  406:             HttpURLConnection httpURLConnectionOpenHttpURLConnection = openHttpURLConnection(fullyQualifiedRequestUri, str);
  407:             try {
  408:                 try {
  409:                     httpURLConnectionOpenHttpURLConnection.setRequestMethod("POST");
  410:                     httpURLConnectionOpenHttpURLConnection.addRequestProperty("Authorization", "FIS_v2 " + str4);
  411:                     httpURLConnectionOpenHttpURLConnection.setDoOutput(true);
  412:                     writeGenerateAuthTokenRequestBodyToOutputStream(httpURLConnectionOpenHttpURLConnection);
  413:                     int responseCode = httpURLConnectionOpenHttpURLConnection.getResponseCode();
  414:                     this.requestLimiter.setNextRequestTime(responseCode);
  415:                     if (isSuccessfulResponseCode(responseCode)) {
```


---

## `apk_analysis/jadx/sources/com/google/firebase/inappmessaging/display/internal/Logging.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   10:         if (Log.isLoggable(TAG, 3)) {
   11:             Log.d(TAG, str);
   12:         }
   13:     }
   14: 
   15:     public static void logdHeader(String str) {
   16:         logd("============ " + str + " ============");
   17:     }
   18: 
   19:     public static void logdNumber(String str, float f) {
   20:         logd(str + ": " + f);
```


---

## `apk_analysis/jadx/sources/com/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  144:         Logging.logdPair("\tactual  (w,h)", view.getMeasuredWidth(), view.getMeasuredHeight());
  145:     }
  146: 
  147:     @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
  148:     public void onLayout(boolean z, int i, int i2, int i3, int i4) {
  149:         Logging.logdHeader("BEGIN LAYOUT");
  150:         Logging.logd("onLayout: l: " + i + ", t: " + i2 + ", r: " + i3 + ", b: " + i4);
  151:     }
  152: 
  153:     @Override // android.widget.FrameLayout, android.view.View
  154:     public void onMeasure(int i, int i2) {
  155:         Logging.logdHeader("BEGIN MEASURE");
  156:         Logging.logdPair("Display", getDisplayMetrics().widthPixels, getDisplayMetrics().heightPixels);
  157:         this.mVisibleChildren.clear();
  158:         for (int i3 = 0; i3 < getChildCount(); i3++) {
  159:             View childAt = getChildAt(i3);
  160:             if (childAt.getVisibility() != 8) {
```


---

## `apk_analysis/jadx/sources/com/google/firebase/crashlytics/internal/settings/DefaultSettingsSpiCall.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   27:     static final String HEADER_DEVICE_MODEL = "X-CRASHLYTICS-DEVICE-MODEL";
   28:     static final String HEADER_GOOGLE_APP_ID = "X-CRASHLYTICS-GOOGLE-APP-ID";
   29:     static final String HEADER_INSTALLATION_ID = "X-CRASHLYTICS-INSTALLATION-ID";
   30:     static final String HEADER_OS_BUILD_VERSION = "X-CRASHLYTICS-OS-BUILD-VERSION";
   31:     static final String HEADER_OS_DISPLAY_VERSION = "X-CRASHLYTICS-OS-DISPLAY-VERSION";
   32:     static final String HEADER_USER_AGENT = "User-Agent";
   33:     static final String INSTANCE_PARAM = "instance";
   34:     static final String SOURCE_PARAM = "source";
   35:     private final Logger logger;
   36:     private final HttpRequestFactory requestFactory;
   37:     private final String url;
   45:         this.requestFactory = httpRequestFactory;
   46:         this.url = str;
   47:     }
   48: 
   49:     private HttpGetRequest applyHeadersTo(HttpGetRequest httpGetRequest, SettingsRequest settingsRequest) {
   50:         applyNonNullHeader(httpGetRequest, HEADER_GOOGLE_APP_ID, settingsRequest.googleAppId);
   51:         applyNonNullHeader(httpGetRequest, HEADER_CLIENT_TYPE, "android");
   52:         applyNonNullHeader(httpGetRequest, HEADER_CLIENT_VERSION, CrashlyticsCore.getVersion());
   53:         applyNonNullHeader(httpGetRequest, HEADER_ACCEPT, ACCEPT_JSON_VALUE);
   54:         applyNonNullHeader(httpGetRequest, HEADER_DEVICE_MODEL, settingsRequest.deviceModel);
   55:         applyNonNullHeader(httpGetRequest, HEADER_OS_BUILD_VERSION, settingsRequest.osBuildVersion);
   56:         applyNonNullHeader(httpGetRequest, HEADER_OS_DISPLAY_VERSION, settingsRequest.osDisplayVersion);
   57:         applyNonNullHeader(httpGetRequest, HEADER_INSTALLATION_ID, settingsRequest.installIdProvider.getInstallIds().getCrashlyticsInstallId());
   58:         return httpGetRequest;
   59:     }
   60: 
   61:     private void applyNonNullHeader(HttpGetRequest httpGetRequest, String str, String str2) {
   62:         if (str2 != null) {
   63:             httpGetRequest.header(str, str2);
   64:         }
   65:     }
   66: 
   67:     private JSONObject getJsonObjectFrom(String str) {
   68:         try {
   85:         }
   86:         return map;
   87:     }
   88: 
   89:     public HttpGetRequest createHttpGetRequest(Map<String, String> map) {
   90:         return this.requestFactory.buildHttpGetRequest(this.url, map).header(HEADER_USER_AGENT, CRASHLYTICS_USER_AGENT + CrashlyticsCore.getVersion()).header("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa");
   91:     }
   92: 
   93:     public JSONObject handleResponse(HttpResponse httpResponse) {
   94:         int iCode = httpResponse.code();
   95:         this.logger.v("Settings response code was: " + iCode);
```


---

## `apk_analysis/jadx/sources/com/google/firebase/crashlytics/internal/network/HttpGetRequest.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  119:             th = th3;
  120:             httpsURLConnection = null;
  121:         }
  122:     }
  123: 
  124:     public HttpGetRequest header(Map.Entry<String, String> entry) {
  125:         return header(entry.getKey(), entry.getValue());
  126:     }
  127: 
  128:     public HttpGetRequest header(String str, String str2) {
  129:         this.headers.put(str, str2);
  130:         return this;
  131:     }
  132: }
```


---

## `apk_analysis/jadx/sources/com/google/firebase/crashlytics/internal/metadata/QueueFile.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   54:         this.buffer = new byte[16];
   55:         if (!file.exists()) {
   56:             initialize(file);
   57:         }
   58:         this.raf = open(file);
   59:         readHeader();
   60:     }
   61: 
   62:     private void expandIfNecessary(int i) throws IOException {
   63:         int i2 = i + 4;
   64:         int iRemainingBytes = remainingBytes();
   84:         }
   85:         int i4 = this.last.position;
   86:         int i5 = this.first.position;
   87:         if (i4 < i5) {
   88:             int i6 = (this.fileLength + i4) - 16;
   89:             writeHeader(i3, this.elementCount, i5, i6);
   90:             this.last = new Element(i6, this.last.length);
   91:         } else {
   92:             writeHeader(i3, this.elementCount, i5, i4);
   93:         }
   94:         this.fileLength = i3;
   95:     }
   96: 
   97:     private static void initialize(File file) throws IOException {
  133:         }
  134:         this.raf.seek(i);
  135:         return new Element(i, this.raf.readInt());
  136:     }
  137: 
  138:     private void readHeader() throws IOException {
  139:         this.raf.seek(0L);
  140:         this.raf.readFully(this.buffer);
  141:         int i = readInt(this.buffer, 0);
  142:         this.fileLength = i;
  143:         if (i <= this.raf.length()) {
  203:     public int wrapPosition(int i) {
  204:         int i2 = this.fileLength;
  205:         return i < i2 ? i : (i + 16) - i2;
  206:     }
  207: 
  208:     private void writeHeader(int i, int i2, int i3, int i4) throws IOException {
  209:         writeInts(this.buffer, i, i2, i3, i4);
  210:         this.raf.seek(0L);
  211:         this.raf.write(this.buffer);
  212:     }
  213: 
  243:             }
  244:             Element element2 = new Element(iWrapPosition, i2);
  245:             writeInt(this.buffer, 0, i2);
  246:             ringWrite(element2.position, this.buffer, 0, 4);
  247:             ringWrite(element2.position + 4, bArr, i, i2);
  248:             writeHeader(this.fileLength, this.elementCount + 1, zIsEmpty ? element2.position : this.first.position, element2.position);
  249:             this.last = element2;
  250:             this.elementCount++;
  251:             if (zIsEmpty) {
  252:                 this.first = element2;
  253:             }
  256:         }
  257:     }
  258: 
  259:     public synchronized void clear() {
  260:         try {
  261:             writeHeader(4096, 0, 0, 0);
  262:             this.elementCount = 0;
  263:             Element element = Element.NULL;
  264:             this.first = element;
  265:             this.last = element;
  266:             if (this.fileLength > 4096) {
  315:             } else {
  316:                 Element element = this.first;
  317:                 int iWrapPosition = wrapPosition(element.position + 4 + element.length);
  318:                 ringRead(iWrapPosition, this.buffer, 0, 4);
  319:                 int i = readInt(this.buffer, 0);
  320:                 writeHeader(this.fileLength, this.elementCount - 1, iWrapPosition, this.last.position);
  321:                 this.elementCount--;
  322:                 this.first = new Element(iWrapPosition, i);
  323:             }
  324:         } catch (Throwable th) {
  325:             throw th;
  374:     }
  375: 
  376:     public QueueFile(RandomAccessFile randomAccessFile) throws IOException {
  377:         this.buffer = new byte[16];
  378:         this.raf = randomAccessFile;
  379:         readHeader();
  380:     }
  381: 
  382:     public synchronized void peek(ElementReader elementReader) {
  383:         if (this.elementCount > 0) {
  384:             elementReader.read(new ElementInputStream(this.first), this.first.length);
```


---

## `apk_analysis/jadx/sources/com/google/android/material/navigationrail/NavigationRailView.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   76:         this.scrollingEnabled = tintTypedArrayObtainTintedStyledAttributes.getBoolean(R.styleable.NavigationRailView_scrollingEnabled, false);
   77:         setSubmenuDividersEnabled(tintTypedArrayObtainTintedStyledAttributes.getBoolean(R.styleable.NavigationRailView_submenuDividersEnabled, false));
   78:         addContentContainer();
   79:         int resourceId = tintTypedArrayObtainTintedStyledAttributes.getResourceId(R.styleable.NavigationRailView_headerLayout, 0);
   80:         if (resourceId != 0) {
   81:             addHeaderView(resourceId);
   82:         }
   83:         setMenuGravity(tintTypedArrayObtainTintedStyledAttributes.getInt(R.styleable.NavigationRailView_menuGravity, 49));
   84:         int dimensionPixelSize = tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(R.styleable.NavigationRailView_itemMinHeight, -1);
   85:         int dimensionPixelSize2 = tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(R.styleable.NavigationRailView_itemMinHeight, -1);
   86:         dimensionPixelSize = tintTypedArrayObtainTintedStyledAttributes.hasValue(R.styleable.NavigationRailView_collapsedItemMinHeight) ? tintTypedArrayObtainTintedStyledAttributes.getDimensionPixelSize(R.styleable.NavigationRailView_collapsedItemMinHeight, -1) : dimensionPixelSize;
  267:             transitionSet3.addTransition(transitionSet2).addTransition(transitionSet);
  268:             TransitionManager.beginDelayedTransition((ViewGroup) getParent(), transitionSet3);
  269:         }
  270:     }
  271: 
  272:     public void addHeaderView(View view) {
  273:         removeHeaderView();
  274:         this.headerView = view;
  275:         FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
  276:         layoutParams.gravity = 49;
  277:         layoutParams.bottomMargin = this.headerMarginBottom;
  453:     @Override // com.google.android.material.navigation.NavigationBarView
  454:     public boolean shouldAddMenuView() {
  455:         return true;
  456:     }
  457: 
  458:     public void addHeaderView(int i) {
  459:         addHeaderView(LayoutInflater.from(getContext()).inflate(i, (ViewGroup) this, false));
  460:     }
  461: 
  462:     public NavigationRailView(Context context, AttributeSet attributeSet) {
  463:         this(context, attributeSet, R.attr.navigationRailStyle);
  464:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/material/color/ColorResourcesTableCreator.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   56:     }
   57: 
   58:     public static class PackageChunk {
   59:         private static final short HEADER_SIZE = 288;
   60:         private static final int PACKAGE_NAME_MAX_LENGTH = 128;
   61:         private final ResChunkHeader header = new ResChunkHeader(ColorResourcesTableCreator.HEADER_TYPE_PACKAGE, HEADER_SIZE, getChunkSize());
   62:         private final StringPoolChunk keyStrings;
   63:         private final PackageInfo packageInfo;
   64:         private final TypeSpecChunk typeSpecChunk;
   65:         private final StringPoolChunk typeStrings;
   66: 
  139:     public static class ResChunkHeader {
  140:         private final int chunkSize;
  141:         private final short headerSize;
  142:         private final short type;
  143: 
  144:         public ResChunkHeader(short s, short s2, int i) {
  145:             this.type = s;
  146:             this.headerSize = s2;
  147:             this.chunkSize = i;
  148:         }
  149: 
  190:             for (Map.Entry<PackageInfo, List<ColorResource>> entry : map.entrySet()) {
  191:                 List<ColorResource> value = entry.getValue();
  192:                 Collections.sort(value, ColorResourcesTableCreator.COLOR_RESOURCE_COMPARATOR);
  193:                 this.packageChunks.add(new PackageChunk(entry.getKey(), value));
  194:             }
  195:             this.header = new ResChunkHeader((short) 2, (short) 12, getOverallSize());
  196:         }
  197: 
  198:         private int getOverallSize() {
  199:             Iterator<PackageChunk> it = this.packageChunks.iterator();
  200:             int chunkSize = 0;
  260:                     i3 += 16;
  261:                 } else {
  262:                     iArr[s] = -1;
  263:                 }
  264:             }
  265:             this.header = new ResChunkHeader(ColorResourcesTableCreator.HEADER_TYPE_TYPE, HEADER_SIZE, getChunkSize());
  266:         }
  267: 
  268:         private int getEntryStart() {
  269:             return getOffsetTableSize() + 84;
  270:         }
  311:             for (short s = 0; s < this.entryCount; s = (short) (s + 1)) {
  312:                 if (hashSet.contains(Short.valueOf(s))) {
  313:                     this.entryFlags[s] = 1073741824;
  314:                 }
  315:             }
  316:             this.header = new ResChunkHeader(ColorResourcesTableCreator.HEADER_TYPE_TYPE_SPEC, (short) 16, getChunkSize());
  317:             this.typeChunk = new TypeChunk(list, hashSet, this.entryCount);
  318:         }
  319: 
  320:         private int getChunkSize() {
  321:             return (this.entryCount * 4) + 16;
  498:             this.stringsStart = size3;
  499:             int i3 = length + i2;
  500:             this.styledSpansStart = z2 ? size3 + i3 : 0;
  501:             int i4 = size3 + i3 + (z2 ? size : 0);
  502:             this.chunkSize = i4;
  503:             this.header = new ResChunkHeader((short) 1, HEADER_SIZE, i4);
  504:         }
  505: 
  506:         private Pair<byte[], List<StringStyledSpan>> processString(String str) {
  507:             return new Pair<>(this.utf8Encode ? ColorResourcesTableCreator.stringToByteArrayUtf8(str) : ColorResourcesTableCreator.stringToByteArray(str), Collections.EMPTY_LIST);
  508:         }
```


---

## `apk_analysis/jadx/sources/com/google/android/material/internal/NavigationMenuPresenter.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  503:         public ViewHolder(View view) {
  504:             super(view);
  505:         }
  506:     }
  507: 
  508:     private boolean hasHeader() {
  509:         return getHeaderCount() > 0;
  510:     }
  511: 
  512:     private void updateAllDividerMenuItems() {
  513:         NavigationMenuAdapter navigationMenuAdapter = this.adapter;
  529:             navigationMenuAdapter.updateAllTextMenuItems();
  530:         }
  531:     }
  532: 
  533:     private void updateTopPadding() {
  534:         int i = (hasHeader() || !this.isBehindStatusBar) ? 0 : this.paddingTopDefault;
  535:         NavigationMenuView navigationMenuView = this.menuView;
  536:         navigationMenuView.setPadding(0, i, 0, navigationMenuView.getPaddingBottom());
  537:     }
  538: 
  539:     public void addHeaderView(View view) {
  540:         this.headerLayout.addView(view);
  541:         NavigationMenuView navigationMenuView = this.menuView;
  542:         navigationMenuView.setPadding(0, 0, 0, navigationMenuView.getPaddingBottom());
  543:     }
  544: 
  652:         return this.subheaderInsetStart;
  653:     }
  654: 
  655:     public View inflateHeaderView(int i) {
  656:         View viewInflate = this.layoutInflater.inflate(i, (ViewGroup) this.headerLayout, false);
  657:         addHeaderView(viewInflate);
  658:         return viewInflate;
  659:     }
  660: 
  661:     @Override // androidx.appcompat.view.menu.MenuPresenter
  662:     public void initForMenu(Context context, MenuBuilder menuBuilder) {
  721:         return false;
  722:     }
  723: 
  724:     public void removeHeaderView(View view) {
  725:         this.headerLayout.removeView(view);
  726:         if (hasHeader()) {
  727:             return;
  728:         }
  729:         NavigationMenuView navigationMenuView = this.menuView;
  730:         navigationMenuView.setPadding(0, this.paddingTopDefault, 0, navigationMenuView.getPaddingBottom());
  731:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/material/search/SearchView.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  429:         });
  430:     }
  431: 
  432:     private void setUpHeaderLayout(int i) {
  433:         if (i != -1) {
  434:             addHeaderView(LayoutInflater.from(getContext()).inflate(i, (ViewGroup) this.headerContainer, false));
  435:         }
  436:     }
  437: 
  438:     private void setUpInsetListeners() {
  439:         setUpToolbarInsetListener();
  531:         if (drawableUnwrap instanceof FadeThroughDrawable) {
  532:             ((FadeThroughDrawable) drawableUnwrap).setProgress(i);
  533:         }
  534:     }
  535: 
  536:     public void addHeaderView(View view) {
  537:         this.headerContainer.addView(view);
  538:         this.headerContainer.setVisibility(0);
  539:     }
  540: 
  541:     public void addTransitionListener(TransitionListener transitionListener) {
```


---

## `apk_analysis/jadx/sources/com/google/android/material/navigation/NavigationView.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  440:             }
  441:         };
  442:         getViewTreeObserver().addOnGlobalLayoutListener(this.onGlobalLayoutListener);
  443:     }
  444: 
  445:     public void addHeaderView(View view) {
  446:         this.presenter.addHeaderView(view);
  447:     }
  448: 
  449:     @Override // com.google.android.material.motion.MaterialBackHandler
  450:     public void cancelBackProgress() {
  451:         requireDrawerLayoutParent();
```


---

## `apk_analysis/jadx/sources/com/google/android/material/datepicker/MaterialDatePicker.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  256:             }
  257: 
  258:             @Override // com.google.android.material.datepicker.OnSelectionChangedListener
  259:             public void onSelectionChanged(S s) {
  260:                 MaterialDatePicker materialDatePicker = MaterialDatePicker.this;
  261:                 materialDatePicker.updateHeader(materialDatePicker.getHeaderText());
  262:                 MaterialDatePicker.this.confirmButton.setEnabled(MaterialDatePicker.this.getDateSelector().isSelectionComplete());
  263:             }
  264:         });
  265:         updateTitle();
  266:         updateHeader(getHeaderText());
  267:         getChildFragmentManager().beginTransaction().replace(com.google.android.material.R.id.mtrl_calendar_frame, this.pickerFragment, str).commitNow();
  268:     }
  269: 
  270:     public static long thisMonthInUtcMilliseconds() {
  271:         return Month.current().timeInMillis;
  552: 
  553:     public boolean removeOnPositiveButtonClickListener(MaterialPickerOnPositiveButtonClickListener<? super S> materialPickerOnPositiveButtonClickListener) {
  554:         return this.onPositiveButtonClickListeners.remove(materialPickerOnPositiveButtonClickListener);
  555:     }
  556: 
  557:     public void updateHeader(String str) {
  558:         this.headerSelectionText.setContentDescription(getHeaderContentDescription());
  559:         this.headerSelectionText.setText(str);
  560:     }
  561: 
  562:     public static final class Builder<S> {
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/zzaa.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzaa implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 1000;
   13:         while (parcel.dataPosition() < iValidateObjectHeader) {
   14:             int header = SafeParcelReader.readHeader(parcel);
   15:             int fieldId = SafeParcelReader.getFieldId(header);
   16:             if (fieldId == 4) {
   17:                 i = SafeParcelReader.readInt(parcel, header);
   18:             } else if (fieldId != 6) {
   19:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/zzf.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzf implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         long j = 0;
   13:         int i = 0;
   14:         int i2 = 0;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 1) {
   19:                 i = SafeParcelReader.readInt(parcel, header);
   20:             } else if (fieldId == 2) {
   21:                 i2 = SafeParcelReader.readInt(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/SleepSegmentRequest.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   46:     }
   47: 
   48:     @Override // android.os.Parcelable
   49:     public void writeToParcel(Parcel parcel, int i) {
   50:         Preconditions.checkNotNull(parcel);
   51:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   52:         SafeParcelWriter.writeTypedList(parcel, 1, this.b, false);
   53:         SafeParcelWriter.writeInt(parcel, 2, getRequestedDataType());
   54:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   55:     }
   56: 
   57:     public SleepSegmentRequest(int i) {
   58:         this(null, i);
   59:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/ActivityRecognitionResult.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  175:         return sb.toString();
  176:     }
  177: 
  178:     @Override // android.os.Parcelable
  179:     public void writeToParcel(Parcel parcel, int i) {
  180:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  181:         SafeParcelWriter.writeTypedList(parcel, 1, this.b, false);
  182:         SafeParcelWriter.writeLong(parcel, 2, this.c);
  183:         SafeParcelWriter.writeLong(parcel, 3, this.d);
  184:         SafeParcelWriter.writeInt(parcel, 4, this.e);
  185:         SafeParcelWriter.writeBundle(parcel, 5, this.f, false);
  186:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  187:     }
  188: 
  189:     public ActivityRecognitionResult(List<DetectedActivity> list, long j, long j2) {
  190:         this(list, j, j2, 0, null);
  191:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/zzae.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzae implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         WorkSource workSource = new WorkSource();
   14:         com.google.android.gms.internal.location.zzd zzdVar = null;
   15:         boolean z = false;
   16:         int i = 0;
   17:         int i2 = 0;
   24:         long j4 = 0;
   25:         long j5 = 600000;
   26:         long j6 = 3600000;
   27:         int i4 = 102;
   28:         while (parcel.dataPosition() < iValidateObjectHeader) {
   29:             int header = SafeParcelReader.readHeader(parcel);
   30:             switch (SafeParcelReader.getFieldId(header)) {
   31:                 case 1:
   32:                     i4 = SafeParcelReader.readInt(parcel, header);
   33:                     break;
   34:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/zzb.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   33:     }
   34: 
   35:     @Override // android.os.Parcelable
   36:     public final void writeToParcel(Parcel parcel, int i) {
   37:         Preconditions.checkNotNull(parcel);
   38:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   39:         SafeParcelWriter.writeLong(parcel, 1, this.b);
   40:         SafeParcelWriter.writeBoolean(parcel, 2, this.c);
   41:         SafeParcelWriter.writeParcelable(parcel, 3, this.d, i, false);
   42:         SafeParcelWriter.writeString(parcel, 4, this.e, false);
   43:         SafeParcelWriter.writeIntArray(parcel, 5, this.f, false);
   44:         SafeParcelWriter.writeBoolean(parcel, 6, this.g);
   45:         SafeParcelWriter.writeString(parcel, 7, this.h, false);
   46:         SafeParcelWriter.writeLong(parcel, 8, this.i);
   47:         SafeParcelWriter.writeString(parcel, 9, this.j, false);
   48:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   49:     }
   50: 
   51:     public final zzb zza(String str) {
   52:         this.j = str;
   53:         return this;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/LocationAvailability.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   61:         return sb.toString();
   62:     }
   63: 
   64:     @Override // android.os.Parcelable
   65:     public void writeToParcel(Parcel parcel, int i) {
   66:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   67:         SafeParcelWriter.writeInt(parcel, 4, this.b);
   68:         SafeParcelWriter.writeBoolean(parcel, 6, isLocationAvailable());
   69:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   70:     }
   71: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/zzai.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzai implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         boolean z = false;
   13:         boolean z2 = false;
   14:         boolean z3 = false;
   15:         boolean z4 = false;
   16:         boolean z5 = false;
   17:         boolean z6 = false;
   18:         while (parcel.dataPosition() < iValidateObjectHeader) {
   19:             int header = SafeParcelReader.readHeader(parcel);
   20:             switch (SafeParcelReader.getFieldId(header)) {
   21:                 case 1:
   22:                     z = SafeParcelReader.readBoolean(parcel, header);
   23:                     break;
   24:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/zzj.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzj implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         WorkSource workSource = new WorkSource();
   14:         com.google.android.gms.internal.location.zzd zzdVar = null;
   15:         int i = 0;
   16:         boolean z = false;
   17:         int i2 = 0;
   18:         long j = Long.MAX_VALUE;
   19:         long j2 = Long.MAX_VALUE;
   20:         int i3 = 102;
   21:         while (parcel.dataPosition() < iValidateObjectHeader) {
   22:             int header = SafeParcelReader.readHeader(parcel);
   23:             switch (SafeParcelReader.getFieldId(header)) {
   24:                 case 1:
   25:                     j = SafeParcelReader.readLong(parcel, header);
   26:                     break;
   27:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/zzap.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   64:     }
   65: 
   66:     @Override // android.os.Parcelable
   67:     public final void writeToParcel(Parcel parcel, int i) {
   68:         Preconditions.checkNotNull(parcel);
   69:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   70:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   71:         SafeParcelWriter.writeInt(parcel, 2, this.c);
   72:         SafeParcelWriter.writeInt(parcel, 3, this.d);
   73:         SafeParcelWriter.writeInt(parcel, 4, this.e);
   74:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   75:     }
   76: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/zzam.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzam implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         int i2 = 0;
   14:         int i3 = 0;
   15:         long j = 0;
   16:         long j2 = 0;
   17:         while (parcel.dataPosition() < iValidateObjectHeader) {
   18:             int header = SafeParcelReader.readHeader(parcel);
   19:             int fieldId = SafeParcelReader.getFieldId(header);
   20:             if (fieldId == 1) {
   21:                 j = SafeParcelReader.readLong(parcel, header);
   22:             } else if (fieldId == 2) {
   23:                 j2 = SafeParcelReader.readLong(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/zzo.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8: 
    9: /* JADX INFO: loaded from: classes4.dex */
   10: public final class zzo implements Parcelable.Creator {
   11:     @Override // android.os.Parcelable.Creator
   12:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   13:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   14:         ArrayList arrayListCreateTypedList = null;
   15:         int i = 0;
   16:         String strCreateString = null;
   17:         while (parcel.dataPosition() < iValidateObjectHeader) {
   18:             int header = SafeParcelReader.readHeader(parcel);
   19:             int fieldId = SafeParcelReader.getFieldId(header);
   20:             if (fieldId == 1) {
   21:                 arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, zzej.CREATOR);
   22:             } else if (fieldId == 2) {
   23:                 i = SafeParcelReader.readInt(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/LastLocationRequest.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   71:         return sbC.toString();
   72:     }
   73: 
   74:     @Override // android.os.Parcelable
   75:     public void writeToParcel(Parcel parcel, int i) {
   76:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   77:         SafeParcelWriter.writeLong(parcel, 1, getMaxUpdateAgeMillis());
   78:         SafeParcelWriter.writeInt(parcel, 2, getGranularity());
   79:         SafeParcelWriter.writeBoolean(parcel, 3, this.d);
   80:         SafeParcelWriter.writeParcelable(parcel, 5, this.e, i, false);
   81:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   82:     }
   83: 
   84:     @Pure
   85:     public final boolean zza() {
   86:         return this.d;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/zzah.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzah implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         Status status = null;
   14:         LocationSettingsStates locationSettingsStates = null;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 1) {
   19:                 status = (Status) SafeParcelReader.createParcelable(parcel, header, Status.CREATOR);
   20:             } else if (fieldId != 2) {
   21:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/zzaq.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzaq implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         int i2 = 0;
   14:         int i3 = 0;
   15:         int i4 = 0;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 1) {
   20:                 i = SafeParcelReader.readInt(parcel, header);
   21:             } else if (fieldId == 2) {
   22:                 i2 = SafeParcelReader.readInt(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/zzk.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzk implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         int i2 = 0;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 i = SafeParcelReader.readInt(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/ActivityTransition.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   97:     }
   98: 
   99:     @Override // android.os.Parcelable
  100:     public void writeToParcel(Parcel parcel, int i) {
  101:         Preconditions.checkNotNull(parcel);
  102:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  103:         SafeParcelWriter.writeInt(parcel, 1, getActivityType());
  104:         SafeParcelWriter.writeInt(parcel, 2, getTransitionType());
  105:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  106:     }
  107: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/zzal.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzal implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         int i2 = 0;
   14:         int i3 = 0;
   15:         int i4 = 0;
   16:         int i5 = 0;
   17:         int i6 = 0;
   18:         int i7 = 0;
   19:         boolean z = false;
   20:         int i8 = 0;
   21:         while (parcel.dataPosition() < iValidateObjectHeader) {
   22:             int header = SafeParcelReader.readHeader(parcel);
   23:             switch (SafeParcelReader.getFieldId(header)) {
   24:                 case 1:
   25:                     i = SafeParcelReader.readInt(parcel, header);
   26:                     break;
   27:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/SleepSegmentEvent.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  102:     }
  103: 
  104:     @Override // android.os.Parcelable
  105:     public void writeToParcel(Parcel parcel, int i) {
  106:         Preconditions.checkNotNull(parcel);
  107:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  108:         SafeParcelWriter.writeLong(parcel, 1, getStartTimeMillis());
  109:         SafeParcelWriter.writeLong(parcel, 2, getEndTimeMillis());
  110:         SafeParcelWriter.writeInt(parcel, 3, getStatus());
  111:         SafeParcelWriter.writeInt(parcel, 4, this.e);
  112:         SafeParcelWriter.writeInt(parcel, 5, this.f);
  113:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  114:     }
  115: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/DeviceOrientation.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  106:         return lg.f(sb, this.e, ']');
  107:     }
  108: 
  109:     @Override // android.os.Parcelable
  110:     public void writeToParcel(Parcel parcel, int i) {
  111:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  112:         SafeParcelWriter.writeFloatArray(parcel, 1, getAttitude(), false);
  113:         SafeParcelWriter.writeFloat(parcel, 4, getHeadingDegrees());
  114:         SafeParcelWriter.writeFloat(parcel, 5, getHeadingErrorDegrees());
  115:         SafeParcelWriter.writeLong(parcel, 6, getElapsedRealtimeNs());
  116:         SafeParcelWriter.writeByte(parcel, 7, this.f);
  117:         SafeParcelWriter.writeFloat(parcel, 8, this.g);
  118:         SafeParcelWriter.writeFloat(parcel, 9, getConservativeHeadingErrorDegrees());
  119:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  120:     }
  121: 
  122:     @Pure
  123:     public final boolean zza() {
  124:         return (this.f & 32) != 0;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/zzz.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzz implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         com.google.android.gms.internal.location.zzd zzdVar = null;
   13:         int i = 0;
   14:         boolean z = false;
   15:         long j = Long.MAX_VALUE;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 1) {
   20:                 j = SafeParcelReader.readLong(parcel, header);
   21:             } else if (fieldId == 2) {
   22:                 i = SafeParcelReader.readInt(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/zzad.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzad implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         com.google.android.gms.internal.location.zzd zzdVar = null;
   13:         boolean z = false;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 z = SafeParcelReader.readBoolean(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/SleepClassifyEvent.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  109:     }
  110: 
  111:     @Override // android.os.Parcelable
  112:     public void writeToParcel(Parcel parcel, int i) {
  113:         Preconditions.checkNotNull(parcel);
  114:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  115:         SafeParcelWriter.writeInt(parcel, 1, this.b);
  116:         SafeParcelWriter.writeInt(parcel, 2, getConfidence());
  117:         SafeParcelWriter.writeInt(parcel, 3, getMotion());
  118:         SafeParcelWriter.writeInt(parcel, 4, getLight());
  119:         SafeParcelWriter.writeInt(parcel, 5, this.f);
  120:         SafeParcelWriter.writeInt(parcel, 6, this.g);
  121:         SafeParcelWriter.writeInt(parcel, 7, this.h);
  122:         SafeParcelWriter.writeBoolean(parcel, 8, this.i);
  123:         SafeParcelWriter.writeInt(parcel, 9, this.j);
  124:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  125:     }
  126: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/CurrentLocationRequest.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  107:         return sbC.toString();
  108:     }
  109: 
  110:     @Override // android.os.Parcelable
  111:     public void writeToParcel(Parcel parcel, int i) {
  112:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  113:         SafeParcelWriter.writeLong(parcel, 1, getMaxUpdateAgeMillis());
  114:         SafeParcelWriter.writeInt(parcel, 2, getGranularity());
  115:         SafeParcelWriter.writeInt(parcel, 3, getPriority());
  116:         SafeParcelWriter.writeLong(parcel, 4, getDurationMillis());
  117:         SafeParcelWriter.writeBoolean(parcel, 5, this.f);
  118:         SafeParcelWriter.writeParcelable(parcel, 6, this.h, i, false);
  119:         SafeParcelWriter.writeInt(parcel, 7, this.g);
  120:         SafeParcelWriter.writeParcelable(parcel, 9, this.i, i, false);
  121:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  122:     }
  123: 
  124:     @Pure
  125:     public final boolean zza() {
  126:         return this.f;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/ActivityTransitionEvent.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   68:     }
   69: 
   70:     @Override // android.os.Parcelable
   71:     public void writeToParcel(Parcel parcel, int i) {
   72:         Preconditions.checkNotNull(parcel);
   73:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   74:         SafeParcelWriter.writeInt(parcel, 1, getActivityType());
   75:         SafeParcelWriter.writeInt(parcel, 2, getTransitionType());
   76:         SafeParcelWriter.writeLong(parcel, 3, getElapsedRealTimeNanos());
   77:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   78:     }
   79: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/zzc.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzc implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         WorkSource workSource = null;
   14:         String strCreateString = null;
   15:         int[] iArrCreateIntArray = null;
   16:         String strCreateString2 = null;
   17:         String strCreateString3 = null;
   18:         long j = 0;
   19:         long j2 = 0;
   20:         boolean z = false;
   21:         boolean z2 = false;
   22:         while (parcel.dataPosition() < iValidateObjectHeader) {
   23:             int header = SafeParcelReader.readHeader(parcel);
   24:             switch (SafeParcelReader.getFieldId(header)) {
   25:                 case 1:
   26:                     j = SafeParcelReader.readLong(parcel, header);
   27:                     break;
   28:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/zzm.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzm implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         boolean z = false;
   13:         long j = 0;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 2) {
   18:                 j = SafeParcelReader.readLong(parcel, header);
   19:             } else if (fieldId != 6) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/DeviceOrientationRequest.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   55:         return sb.toString();
   56:     }
   57: 
   58:     @Override // android.os.Parcelable
   59:     public void writeToParcel(Parcel parcel, int i) {
   60:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   61:         SafeParcelWriter.writeLong(parcel, 2, getSamplingPeriodMicros());
   62:         SafeParcelWriter.writeBoolean(parcel, 6, this.c);
   63:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   64:     }
   65: 
   66:     public static final class Builder {
   67:         public long a;
   68:         public final boolean b;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/LocationResult.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  107:         return sb.toString();
  108:     }
  109: 
  110:     @Override // android.os.Parcelable
  111:     public void writeToParcel(Parcel parcel, int i) {
  112:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  113:         SafeParcelWriter.writeTypedList(parcel, 1, getLocations(), false);
  114:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  115:     }
  116: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/zzi.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8: 
    9: /* JADX INFO: loaded from: classes4.dex */
   10: public final class zzi implements Parcelable.Creator {
   11:     @Override // android.os.Parcelable.Creator
   12:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   13:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   14:         ArrayList arrayListCreateTypedList = null;
   15:         Bundle bundleCreateBundle = null;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 1) {
   20:                 arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, ActivityTransitionEvent.CREATOR);
   21:             } else if (fieldId != 2) {
   22:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/ActivityTransitionRequest.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   84:     }
   85: 
   86:     @Override // android.os.Parcelable
   87:     public void writeToParcel(Parcel parcel, int i) {
   88:         Preconditions.checkNotNull(parcel);
   89:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   90:         SafeParcelWriter.writeTypedList(parcel, 1, this.b, false);
   91:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   92:         SafeParcelWriter.writeTypedList(parcel, 3, this.d, false);
   93:         SafeParcelWriter.writeString(parcel, 4, this.e, false);
   94:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   95:     }
   96: 
   97:     public final ActivityTransitionRequest zza(String str) {
   98:         this.e = str;
   99:         return this;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/DetectedActivity.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   88:     }
   89: 
   90:     @Override // android.os.Parcelable
   91:     public void writeToParcel(Parcel parcel, int i) {
   92:         Preconditions.checkNotNull(parcel);
   93:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   94:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   95:         SafeParcelWriter.writeInt(parcel, 2, this.c);
   96:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   97:     }
   98: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/zzan.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzan implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         int i = 0;
   14:         ArrayList arrayListCreateTypedList = null;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 1) {
   19:                 arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, zzap.CREATOR);
   20:             } else if (fieldId != 2) {
   21:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/GeofencingRequest.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   80:         return sb.toString();
   81:     }
   82: 
   83:     @Override // android.os.Parcelable
   84:     public void writeToParcel(Parcel parcel, int i) {
   85:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   86:         SafeParcelWriter.writeTypedList(parcel, 1, this.b, false);
   87:         SafeParcelWriter.writeInt(parcel, 2, getInitialTrigger());
   88:         SafeParcelWriter.writeString(parcel, 4, this.d, false);
   89:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   90:     }
   91: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/zze.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zze implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         int i2 = 0;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 i = SafeParcelReader.readInt(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/LocationRequest.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  346:         return sbC.toString();
  347:     }
  348: 
  349:     @Override // android.os.Parcelable
  350:     public void writeToParcel(Parcel parcel, int i) {
  351:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  352:         SafeParcelWriter.writeInt(parcel, 1, getPriority());
  353:         SafeParcelWriter.writeLong(parcel, 2, getIntervalMillis());
  354:         SafeParcelWriter.writeLong(parcel, 3, getMinUpdateIntervalMillis());
  355:         SafeParcelWriter.writeInt(parcel, 6, getMaxUpdates());
  356:         SafeParcelWriter.writeFloat(parcel, 7, getMinUpdateDistanceMeters());
  361:         SafeParcelWriter.writeInt(parcel, 12, getGranularity());
  362:         SafeParcelWriter.writeInt(parcel, 13, this.l);
  363:         SafeParcelWriter.writeBoolean(parcel, 15, this.m);
  364:         SafeParcelWriter.writeParcelable(parcel, 16, this.n, i, false);
  365:         SafeParcelWriter.writeParcelable(parcel, 17, this.o, i, false);
  366:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  367:     }
  368: 
  369:     @Pure
  370:     public final int zza() {
  371:         return this.l;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/zzaf.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8: 
    9: /* JADX INFO: loaded from: classes4.dex */
   10: public final class zzaf implements Parcelable.Creator {
   11:     @Override // android.os.Parcelable.Creator
   12:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   13:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   14:         List listCreateTypedList = LocationResult.c;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             if (SafeParcelReader.getFieldId(header) != 1) {
   18:                 SafeParcelReader.skipUnknownField(parcel, header);
   19:             } else {
   20:                 listCreateTypedList = SafeParcelReader.createTypedList(parcel, header, Location.CREATOR);
   21:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/zzac.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   46:         return sbC.toString();
   47:     }
   48: 
   49:     @Override // android.os.Parcelable
   50:     public final void writeToParcel(Parcel parcel, int i) {
   51:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   52:         SafeParcelWriter.writeBoolean(parcel, 1, this.b);
   53:         SafeParcelWriter.writeParcelable(parcel, 2, this.c, i, false);
   54:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   55:     }
   56: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/zzd.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8: 
    9: /* JADX INFO: loaded from: classes4.dex */
   10: public final class zzd implements Parcelable.Creator {
   11:     @Override // android.os.Parcelable.Creator
   12:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   13:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   14:         ArrayList arrayListCreateTypedList = null;
   15:         Bundle bundleCreateBundle = null;
   16:         int i = 0;
   17:         long j = 0;
   18:         long j2 = 0;
   19:         while (parcel.dataPosition() < iValidateObjectHeader) {
   20:             int header = SafeParcelReader.readHeader(parcel);
   21:             int fieldId = SafeParcelReader.getFieldId(header);
   22:             if (fieldId == 1) {
   23:                 arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, DetectedActivity.CREATOR);
   24:             } else if (fieldId == 2) {
   25:                 j = SafeParcelReader.readLong(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/zzag.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzag implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         boolean z = false;
   14:         ArrayList arrayListCreateTypedList = null;
   15:         boolean z2 = false;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 1) {
   20:                 arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, LocationRequest.CREATOR);
   21:             } else if (fieldId == 2) {
   22:                 z = SafeParcelReader.readBoolean(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/zzl.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzl implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         float f = 0.0f;
   13:         float f2 = 0.0f;
   14:         float f3 = 0.0f;
   15:         float f4 = 0.0f;
   16:         byte b = 0;
   17:         long j = 0;
   18:         float[] fArrCreateFloatArray = null;
   19:         while (parcel.dataPosition() < iValidateObjectHeader) {
   20:             int header = SafeParcelReader.readHeader(parcel);
   21:             int fieldId = SafeParcelReader.getFieldId(header);
   22:             if (fieldId != 1) {
   23:                 switch (fieldId) {
   24:                     case 4:
   25:                         f = SafeParcelReader.readFloat(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/LocationSettingsResult.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   27:         return this.b;
   28:     }
   29: 
   30:     @Override // android.os.Parcelable
   31:     public void writeToParcel(Parcel parcel, int i) {
   32:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   33:         SafeParcelWriter.writeParcelable(parcel, 1, getStatus(), i, false);
   34:         SafeParcelWriter.writeParcelable(parcel, 2, getLocationSettingsStates(), i, false);
   35:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   36:     }
   37: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/LocationSettingsRequest.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   58:         this.d = z2;
   59:     }
   60: 
   61:     @Override // android.os.Parcelable
   62:     public void writeToParcel(Parcel parcel, int i) {
   63:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   64:         SafeParcelWriter.writeTypedList(parcel, 1, Collections.unmodifiableList(this.b), false);
   65:         SafeParcelWriter.writeBoolean(parcel, 2, this.c);
   66:         SafeParcelWriter.writeBoolean(parcel, 3, this.d);
   67:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   68:     }
   69: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/LocationSettingsStates.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   62:         return this.c;
   63:     }
   64: 
   65:     @Override // android.os.Parcelable
   66:     public void writeToParcel(Parcel parcel, int i) {
   67:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   68:         SafeParcelWriter.writeBoolean(parcel, 1, isGpsUsable());
   69:         SafeParcelWriter.writeBoolean(parcel, 2, isNetworkLocationUsable());
   70:         SafeParcelWriter.writeBoolean(parcel, 3, isBleUsable());
   71:         SafeParcelWriter.writeBoolean(parcel, 4, isGpsPresent());
   72:         SafeParcelWriter.writeBoolean(parcel, 5, isNetworkLocationPresent());
   73:         SafeParcelWriter.writeBoolean(parcel, 6, isBlePresent());
   74:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   75:     }
   76: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/zzh.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8: 
    9: /* JADX INFO: loaded from: classes4.dex */
   10: public final class zzh implements Parcelable.Creator {
   11:     @Override // android.os.Parcelable.Creator
   12:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   13:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   14:         ArrayList arrayListCreateTypedList = null;
   15:         String strCreateString = null;
   16:         ArrayList arrayListCreateTypedList2 = null;
   17:         String strCreateString2 = null;
   18:         while (parcel.dataPosition() < iValidateObjectHeader) {
   19:             int header = SafeParcelReader.readHeader(parcel);
   20:             int fieldId = SafeParcelReader.getFieldId(header);
   21:             if (fieldId == 1) {
   22:                 arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, ActivityTransition.CREATOR);
   23:             } else if (fieldId == 2) {
   24:                 strCreateString = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/location/ActivityTransitionResult.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   62:     }
   63: 
   64:     @Override // android.os.Parcelable
   65:     public void writeToParcel(Parcel parcel, int i) {
   66:         Preconditions.checkNotNull(parcel);
   67:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   68:         SafeParcelWriter.writeTypedList(parcel, 1, getTransitionEvents(), false);
   69:         SafeParcelWriter.writeBundle(parcel, 2, this.c, false);
   70:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   71:     }
   72: 
   73:     public ActivityTransitionResult(List list, Bundle bundle) {
   74:         this(list);
   75:         this.c = bundle;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/cloudmessaging/RegisterRequest.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   26:         this.h = str6;
   27:     }
   28: 
   29:     @Override // android.os.Parcelable
   30:     public final void writeToParcel(Parcel parcel, int i) {
   31:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   32:         SafeParcelWriter.writeString(parcel, 1, this.b, false);
   33:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   34:         SafeParcelWriter.writeString(parcel, 3, this.d, false);
   35:         SafeParcelWriter.writeString(parcel, 4, this.e, false);
   36:         SafeParcelWriter.writeString(parcel, 5, this.f, false);
   37:         SafeParcelWriter.writeInt(parcel, 6, this.g);
   38:         SafeParcelWriter.writeString(parcel, 7, this.h, false);
   39:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   40:     }
   41: 
   42:     public final void zza(int i) {
   43:         this.g = i;
   44:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/cloudmessaging/zza.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zza implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         Intent intent = null;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             if (SafeParcelReader.getFieldId(header) != 1) {
   17:                 SafeParcelReader.skipUnknownField(parcel, header);
   18:             } else {
   19:                 intent = (Intent) SafeParcelReader.createParcelable(parcel, header, Intent.CREATOR);
   20:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/cloudmessaging/UnregisterRequest.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   20:         this.e = str4;
   21:     }
   22: 
   23:     @Override // android.os.Parcelable
   24:     public final void writeToParcel(Parcel parcel, int i) {
   25:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   26:         SafeParcelWriter.writeString(parcel, 1, this.b, false);
   27:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   28:         SafeParcelWriter.writeString(parcel, 3, this.d, false);
   29:         SafeParcelWriter.writeString(parcel, 4, this.e, false);
   30:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   31:     }
   32: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/cloudmessaging/zzx.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzx implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         String strCreateString3 = null;
   15:         String strCreateString4 = null;
   16:         String strCreateString5 = null;
   17:         String strCreateString6 = null;
   18:         int i = 0;
   19:         while (parcel.dataPosition() < iValidateObjectHeader) {
   20:             int header = SafeParcelReader.readHeader(parcel);
   21:             switch (SafeParcelReader.getFieldId(header)) {
   22:                 case 1:
   23:                     strCreateString = SafeParcelReader.createString(parcel, header);
   24:                     break;
   25:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/cloudmessaging/zzag.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzag implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         String strCreateString3 = null;
   15:         String strCreateString4 = null;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 1) {
   20:                 strCreateString = SafeParcelReader.createString(parcel, header);
   21:             } else if (fieldId == 2) {
   22:                 strCreateString2 = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/cloudmessaging/CloudMessage.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  156:         }
  157:     }
  158: 
  159:     @Override // android.os.Parcelable
  160:     public void writeToParcel(Parcel parcel, int i) {
  161:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  162:         SafeParcelWriter.writeParcelable(parcel, 1, this.b, i, false);
  163:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  164:     }
  165: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/measurement/AppMeasurement.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   27:     public static final String FCM_ORIGIN = "fcm";
   28:     public static final String FIAM_ORIGIN = "fiam";
   29:     public static volatile AppMeasurement b;
   30:     public final iza a;
   31: 
   32:     public interface EventInterceptor extends zzjp {
   33:         @Override // com.google.android.gms.measurement.internal.zzjp
   34:         void interceptEvent(String str, String str2, Bundle bundle, long j);
   35:     }
   36: 
   37:     public interface OnEventListener extends zzjq {
  150: 
  151:     public void logEventInternal(String str, String str2, Bundle bundle) {
  152:         this.a.zza(str, str2, bundle);
  153:     }
  154: 
  155:     public void logEventInternalNoInterceptor(String str, String str2, Bundle bundle, long j) {
  156:         this.a.zzb(str, str2, bundle, j, 0L);
  157:     }
  158: 
  159:     public void registerOnMeasurementEventListener(OnEventListener onEventListener) {
  160:         this.a.zzf(onEventListener);
  213:         bundle.putBoolean(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, conditionalUserProperty.mActive);
  214:         bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, conditionalUserProperty.mTriggeredTimestamp);
  215:         this.a.zzo(bundle);
  216:     }
  217: 
  218:     public void setEventInterceptor(EventInterceptor eventInterceptor) {
  219:         this.a.zze(eventInterceptor);
  220:     }
  221: 
  222:     public void unregisterOnMeasurementEventListener(OnEventListener onEventListener) {
  223:         this.a.zzg(onEventListener);
  224:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/zza.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zza implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         PendingIntent pendingIntent = null;
   14:         String strCreateString = null;
   15:         Integer integerObject = null;
   16:         int i = 0;
   17:         int i2 = 0;
   18:         while (parcel.dataPosition() < iValidateObjectHeader) {
   19:             int header = SafeParcelReader.readHeader(parcel);
   20:             int fieldId = SafeParcelReader.getFieldId(header);
   21:             if (fieldId == 1) {
   22:                 i = SafeParcelReader.readInt(parcel, header);
   23:             } else if (fieldId == 2) {
   24:                 i2 = SafeParcelReader.readInt(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/zzt.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   41:         this.e = z2;
   42:     }
   43: 
   44:     @Override // android.os.Parcelable
   45:     public final void writeToParcel(Parcel parcel, int i) {
   46:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   47:         SafeParcelWriter.writeString(parcel, 1, this.b, false);
   48:         yxb yxbVar = this.c;
   49:         if (yxbVar == null) {
   50:             Log.w("GoogleCertificatesQuery", "certificate binder is null");
   51:             yxbVar = null;
   52:         }
   53:         SafeParcelWriter.writeIBinder(parcel, 2, yxbVar, false);
   54:         SafeParcelWriter.writeBoolean(parcel, 3, this.d);
   55:         SafeParcelWriter.writeBoolean(parcel, 4, this.e);
   56:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   57:     }
   58: 
   59:     public zzt(String str, yxb yxbVar, boolean z, boolean z2) {
   60:         this.b = str;
   61:         this.c = yxbVar;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/zzp.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   31:     }
   32: 
   33:     /* JADX WARN: Type inference failed for: r0v4, types: [android.os.IBinder, com.google.android.gms.dynamic.IObjectWrapper] */
   34:     @Override // android.os.Parcelable
   35:     public final void writeToParcel(Parcel parcel, int i) {
   36:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   37:         SafeParcelWriter.writeString(parcel, 1, this.b, false);
   38:         SafeParcelWriter.writeBoolean(parcel, 2, this.c);
   39:         SafeParcelWriter.writeBoolean(parcel, 3, this.d);
   40:         SafeParcelWriter.writeIBinder(parcel, 4, ObjectWrapper.wrap(this.e), false);
   41:         SafeParcelWriter.writeBoolean(parcel, 5, this.f);
   42:         SafeParcelWriter.writeBoolean(parcel, 6, this.g);
   43:         SafeParcelWriter.writeBoolean(parcel, 8, this.h);
   44:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   45:     }
   46: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/zzu.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzu implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         boolean z = false;
   14:         String strCreateString = null;
   15:         IBinder iBinder = null;
   16:         boolean z2 = false;
   17:         while (parcel.dataPosition() < iValidateObjectHeader) {
   18:             int header = SafeParcelReader.readHeader(parcel);
   19:             int fieldId = SafeParcelReader.getFieldId(header);
   20:             if (fieldId == 1) {
   21:                 strCreateString = SafeParcelReader.createString(parcel, header);
   22:             } else if (fieldId == 2) {
   23:                 iBinder = SafeParcelReader.readIBinder(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/zzq.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzq implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         boolean z = false;
   14:         boolean z2 = false;
   15:         boolean z3 = false;
   16:         boolean z4 = false;
   17:         boolean z5 = false;
   18:         String strCreateString = null;
   19:         IBinder iBinder = null;
   20:         while (parcel.dataPosition() < iValidateObjectHeader) {
   21:             int header = SafeParcelReader.readHeader(parcel);
   22:             switch (SafeParcelReader.getFieldId(header)) {
   23:                 case 1:
   24:                     strCreateString = SafeParcelReader.createString(parcel, header);
   25:                     break;
   26:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/zzs.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzs implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         long j = -1;
   13:         int i = 0;
   14:         int i2 = 0;
   15:         boolean z = false;
   16:         String strCreateString = null;
   17:         while (parcel.dataPosition() < iValidateObjectHeader) {
   18:             int header = SafeParcelReader.readHeader(parcel);
   19:             int fieldId = SafeParcelReader.getFieldId(header);
   20:             if (fieldId == 1) {
   21:                 z = SafeParcelReader.readBoolean(parcel, header);
   22:             } else if (fieldId == 2) {
   23:                 strCreateString = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/zzb.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzb implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         boolean z = false;
   14:         long j = -1;
   15:         String strCreateString = null;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 1) {
   20:                 strCreateString = SafeParcelReader.createString(parcel, header);
   21:             } else if (fieldId == 2) {
   22:                 i = SafeParcelReader.readInt(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/ConnectionResult.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  184:         return stringHelper.toString();
  185:     }
  186: 
  187:     @Override // android.os.Parcelable
  188:     public void writeToParcel(Parcel parcel, int i) {
  189:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  190:         SafeParcelWriter.writeInt(parcel, 1, this.b);
  191:         SafeParcelWriter.writeInt(parcel, 2, getErrorCode());
  192:         SafeParcelWriter.writeParcelable(parcel, 3, getResolution(), i, false);
  193:         SafeParcelWriter.writeString(parcel, 4, getErrorMessage(), false);
  194:         SafeParcelWriter.writeIntegerObject(parcel, 5, getClientMethodKey(), false);
  195:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  196:     }
  197: 
  198:     public ConnectionResult(int i) {
  199:         this(i, null, null);
  200:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/zzr.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   36:         this.f = j;
   37:     }
   38: 
   39:     @Override // android.os.Parcelable
   40:     public final void writeToParcel(Parcel parcel, int i) {
   41:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   42:         SafeParcelWriter.writeBoolean(parcel, 1, this.b);
   43:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   44:         SafeParcelWriter.writeInt(parcel, 3, this.d);
   45:         SafeParcelWriter.writeInt(parcel, 4, this.e);
   46:         SafeParcelWriter.writeLong(parcel, 5, this.f);
   47:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   48:     }
   49: 
   50:     public final boolean zza() {
   51:         return this.b;
   52:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/Feature.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   62:         return stringHelper.toString();
   63:     }
   64: 
   65:     @Override // android.os.Parcelable
   66:     public final void writeToParcel(Parcel parcel, int i) {
   67:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   68:         SafeParcelWriter.writeString(parcel, 1, getName(), false);
   69:         SafeParcelWriter.writeInt(parcel, 2, this.c);
   70:         SafeParcelWriter.writeLong(parcel, 3, getVersion());
   71:         SafeParcelWriter.writeBoolean(parcel, 4, getIsFullyRolledOut());
   72:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   73:     }
   74: 
   75:     public Feature(String str, int i, long j) {
   76:         this(str, i, j, false);
   77:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/appset/zzd.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzd implements Parcelable.Creator<zzc> {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ zzc createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         int i = 0;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 strCreateString = SafeParcelReader.createString(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/appset/zza.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   16:         this.c = str2;
   17:     }
   18: 
   19:     @Override // android.os.Parcelable
   20:     public final void writeToParcel(Parcel parcel, int i) {
   21:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   22:         SafeParcelWriter.writeString(parcel, 1, this.b, false);
   23:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   24:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   25:     }
   26: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/appset/zzc.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   16:         this.c = i;
   17:     }
   18: 
   19:     @Override // android.os.Parcelable
   20:     public final void writeToParcel(Parcel parcel, int i) {
   21:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   22:         SafeParcelWriter.writeString(parcel, 1, this.b, false);
   23:         SafeParcelWriter.writeInt(parcel, 2, this.c);
   24:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   25:     }
   26: 
   27:     public final int zza() {
   28:         return this.c;
   29:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/appset/zzb.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzb implements Parcelable.Creator<zza> {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ zza createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 strCreateString = SafeParcelReader.createString(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/zza.java`

**Разделы:** API HOST / NETWORK CONFIG

```
   36:         zzd = feature4;
   37:         Feature feature5 = new Feature("get_passkeys", 1L);
   38:         zze = feature5;
   39:         Feature feature6 = new Feature("update_passkey", 1L);
   40:         zzf = feature6;
   41:         Feature feature7 = new Feature("is_user_verifying_platform_authenticator_available_for_credential", 1L);
   42:         zzg = feature7;
   43:         Feature feature8 = new Feature("is_user_verifying_platform_authenticator_available", 1L);
   44:         zzh = feature8;
   45:         Feature feature9 = new Feature("privileged_api_list_credentials", 2L);
   46:         zzi = feature9;
   47:         Feature feature10 = new Feature("start_target_direct_transfer", 1L);
   48:         zzj = feature10;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/zzm.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzm implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         String strCreateString = null;
   14:         Long longObject = null;
   15:         ArrayList<String> arrayListCreateStringList = null;
   16:         String strCreateString2 = null;
   17:         int i = 0;
   18:         boolean z = false;
   19:         boolean z2 = false;
   20:         while (parcel.dataPosition() < iValidateObjectHeader) {
   21:             int header = SafeParcelReader.readHeader(parcel);
   22:             switch (SafeParcelReader.getFieldId(header)) {
   23:                 case 1:
   24:                     i = SafeParcelReader.readInt(parcel, header);
   25:                     break;
   26:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/AccountChangeEvent.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   78:         return sbD.toString();
   79:     }
   80: 
   81:     @Override // android.os.Parcelable
   82:     public void writeToParcel(Parcel parcel, int i) {
   83:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   84:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   85:         SafeParcelWriter.writeLong(parcel, 2, this.c);
   86:         SafeParcelWriter.writeString(parcel, 3, this.d, false);
   87:         SafeParcelWriter.writeInt(parcel, 4, this.e);
   88:         SafeParcelWriter.writeInt(parcel, 5, this.f);
   89:         SafeParcelWriter.writeString(parcel, 6, this.g, false);
   90:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   91:     }
   92: 
   93:     public AccountChangeEvent(int i, int i2, int i3, long j, String str, String str2) {
   94:         this.b = i;
   95:         this.c = j;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/zza.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zza implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         int i = 0;
   15:         int i2 = 0;
   16:         int i3 = 0;
   17:         long j = 0;
   18:         while (parcel.dataPosition() < iValidateObjectHeader) {
   19:             int header = SafeParcelReader.readHeader(parcel);
   20:             switch (SafeParcelReader.getFieldId(header)) {
   21:                 case 1:
   22:                     i = SafeParcelReader.readInt(parcel, header);
   23:                     break;
   24:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/TokenData.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   44:         return Objects.hashCode(this.c, this.d, Boolean.valueOf(this.e), Boolean.valueOf(this.f), this.g, this.h);
   45:     }
   46: 
   47:     @Override // android.os.Parcelable
   48:     public final void writeToParcel(Parcel parcel, int i) {
   49:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   50:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   51:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   52:         SafeParcelWriter.writeLongObject(parcel, 3, this.d, false);
   53:         SafeParcelWriter.writeBoolean(parcel, 4, this.e);
   54:         SafeParcelWriter.writeBoolean(parcel, 5, this.f);
   55:         SafeParcelWriter.writeStringList(parcel, 6, this.g, false);
   56:         SafeParcelWriter.writeString(parcel, 7, this.h, false);
   57:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   58:     }
   59: 
   60:     public final String zza() {
   61:         return this.c;
   62:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/AccountChangeEventsResponse.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   23:         return this.c;
   24:     }
   25: 
   26:     @Override // android.os.Parcelable
   27:     public void writeToParcel(Parcel parcel, int i) {
   28:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   29:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   30:         SafeParcelWriter.writeTypedList(parcel, 2, this.c, false);
   31:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   32:     }
   33: 
   34:     public AccountChangeEventsResponse(int i, ArrayList arrayList) {
   35:         this.b = i;
   36:         this.c = (List) Preconditions.checkNotNull(arrayList);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/zzb.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzb implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         String strCreateString = null;
   14:         int i = 0;
   15:         int i2 = 0;
   16:         Account account = null;
   17:         while (parcel.dataPosition() < iValidateObjectHeader) {
   18:             int header = SafeParcelReader.readHeader(parcel);
   19:             int fieldId = SafeParcelReader.getFieldId(header);
   20:             if (fieldId == 1) {
   21:                 i = SafeParcelReader.readInt(parcel, header);
   22:             } else if (fieldId == 2) {
   23:                 i2 = SafeParcelReader.readInt(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/AccountChangeEventsRequest.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   57:         return this;
   58:     }
   59: 
   60:     @Override // android.os.Parcelable
   61:     public void writeToParcel(Parcel parcel, int i) {
   62:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   63:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   64:         SafeParcelWriter.writeInt(parcel, 2, this.c);
   65:         SafeParcelWriter.writeString(parcel, 3, this.d, false);
   66:         SafeParcelWriter.writeParcelable(parcel, 4, this.e, i, false);
   67:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   68:     }
   69: 
   70:     public AccountChangeEventsRequest() {
   71:         this.b = 1;
   72:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/zzc.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzc implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         ArrayList arrayListCreateTypedList = null;
   14:         int i = 0;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 1) {
   19:                 i = SafeParcelReader.readInt(parcel, header);
   20:             } else if (fieldId != 2) {
   21:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/zaa.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   26:         return this.c == 0 ? Status.RESULT_SUCCESS : Status.RESULT_CANCELED;
   27:     }
   28: 
   29:     @Override // android.os.Parcelable
   30:     public final void writeToParcel(Parcel parcel, int i) {
   31:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   32:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   33:         SafeParcelWriter.writeInt(parcel, 2, this.c);
   34:         SafeParcelWriter.writeParcelable(parcel, 3, this.d, i, false);
   35:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   36:     }
   37: 
   38:     public zaa() {
   39:         this(2, 0, null);
   40:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/zai.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   17:         this.c = zayVar;
   18:     }
   19: 
   20:     @Override // android.os.Parcelable
   21:     public final void writeToParcel(Parcel parcel, int i) {
   22:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   23:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   24:         SafeParcelWriter.writeParcelable(parcel, 2, this.c, i, false);
   25:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   26:     }
   27: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/zal.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8: 
    9: /* JADX INFO: loaded from: classes4.dex */
   10: public final class zal implements Parcelable.Creator {
   11:     @Override // android.os.Parcelable.Creator
   12:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   13:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   14:         ConnectionResult connectionResult = null;
   15:         int i = 0;
   16:         zaaa zaaaVar = null;
   17:         while (parcel.dataPosition() < iValidateObjectHeader) {
   18:             int header = SafeParcelReader.readHeader(parcel);
   19:             int fieldId = SafeParcelReader.getFieldId(header);
   20:             if (fieldId == 1) {
   21:                 i = SafeParcelReader.readInt(parcel, header);
   22:             } else if (fieldId == 2) {
   23:                 connectionResult = (ConnectionResult) SafeParcelReader.createParcelable(parcel, header, ConnectionResult.CREATOR);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/zah.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zah implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         ArrayList<String> arrayListCreateStringList = null;
   14:         String strCreateString = null;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 1) {
   19:                 arrayListCreateStringList = SafeParcelReader.createStringList(parcel, header);
   20:             } else if (fieldId != 2) {
   21:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/zaj.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zaj implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         zay zayVar = null;
   14:         int i = 0;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 1) {
   19:                 i = SafeParcelReader.readInt(parcel, header);
   20:             } else if (fieldId != 2) {
   21:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/zab.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zab implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         Intent intent = null;
   14:         int i = 0;
   15:         int i2 = 0;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 1) {
   20:                 i = SafeParcelReader.readInt(parcel, header);
   21:             } else if (fieldId == 2) {
   22:                 i2 = SafeParcelReader.readInt(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/zag.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   24:         return this.c != null ? Status.RESULT_SUCCESS : Status.RESULT_CANCELED;
   25:     }
   26: 
   27:     @Override // android.os.Parcelable
   28:     public final void writeToParcel(Parcel parcel, int i) {
   29:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   30:         SafeParcelWriter.writeStringList(parcel, 1, this.b, false);
   31:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   32:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   33:     }
   34: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/signin/internal/zak.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   20:         this.d = zaaaVar;
   21:     }
   22: 
   23:     @Override // android.os.Parcelable
   24:     public final void writeToParcel(Parcel parcel, int i) {
   25:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   26:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   27:         SafeParcelWriter.writeParcelable(parcel, 2, this.c, i, false);
   28:         SafeParcelWriter.writeParcelable(parcel, 3, this.d, i, false);
   29:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   30:     }
   31: 
   32:     public final ConnectionResult zaa() {
   33:         return this.c;
   34:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/measurement/api/AppMeasurementSdk.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   30:         public static final String TRIGGER_EVENT_NAME = "trigger_event_name";
   31:         public static final String TRIGGER_TIMEOUT = "trigger_timeout";
   32:         public static final String VALUE = "value";
   33:     }
   34: 
   35:     public interface EventInterceptor extends zzjp {
   36:         @Override // com.google.android.gms.measurement.internal.zzjp
   37:         void interceptEvent(String str, String str2, Bundle bundle, long j);
   38:     }
   39: 
   40:     public interface OnEventListener extends zzjq {
  100: 
  101:     public void logEvent(String str, String str2, Bundle bundle) {
  102:         this.a.zzi(str, str2, bundle);
  103:     }
  104: 
  105:     public void logEventNoInterceptor(String str, String str2, Bundle bundle, long j) {
  106:         this.a.zzj(str, str2, bundle, j, 0L);
  107:     }
  108: 
  109:     public void performAction(Bundle bundle) {
  110:         this.a.zzE(bundle, false);
  128: 
  129:     public void setCurrentScreen(Activity activity, String str, String str2) {
  130:         this.a.zzp(zzdd.zza(activity), str, str2);
  131:     }
  132: 
  133:     public void setEventInterceptor(EventInterceptor eventInterceptor) {
  134:         this.a.zzd(eventInterceptor);
  135:     }
  136: 
  137:     @Deprecated
  138:     public void setMeasurementEnabled(Boolean bool) {
  139:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/measurement/internal/AppMeasurementDynamiteService.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  570:         zzlj zzljVarZzj = this.a.zzj();
  571:         zzljVarZzj.a.zzaX().zzj(new ug4(1, zzljVarZzj, bundle == null ? new Bundle() : new Bundle(bundle)));
  572:     }
  573: 
  574:     @Override // com.google.android.gms.internal.measurement.zzcp
  575:     public void setEventInterceptor(zzcy zzcyVar) {
  576:         g();
  577:         dbc dbcVar = new dbc(this, zzcyVar);
  578:         boolean zZze = this.a.zzaX().zze();
  579:         zzic zzicVar = this.a;
  580:         if (zZze) {
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/measurement/internal/zzoq.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   17:     }
   18: 
   19:     @Override // android.os.Parcelable
   20:     public final void writeToParcel(Parcel parcel, int i) {
   21:         List list = this.zza;
   22:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   23:         SafeParcelWriter.writeTypedList(parcel, 1, list, false);
   24:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   25:     }
   26: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/measurement/internal/zzoh.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   19:     }
   20: 
   21:     @Override // android.os.Parcelable
   22:     public final void writeToParcel(Parcel parcel, int i) {
   23:         String str = this.zza;
   24:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   25:         SafeParcelWriter.writeString(parcel, 1, str, false);
   26:         SafeParcelWriter.writeLong(parcel, 2, this.zzb);
   27:         SafeParcelWriter.writeInt(parcel, 3, this.zzc);
   28:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   29:     }
   30: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/measurement/internal/zzap.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzap implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         Bundle bundleCreateBundle = null;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             if (SafeParcelReader.getFieldId(header) != 1) {
   17:                 SafeParcelReader.skipUnknownField(parcel, header);
   18:             } else {
   19:                 bundleCreateBundle = SafeParcelReader.createBundle(parcel, header);
   20:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/measurement/internal/zzai.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzai implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         zzpl zzplVar = null;
   15:         String strCreateString3 = null;
   16:         zzbh zzbhVar = null;
   19:         long j = 0;
   20:         long j2 = 0;
   21:         long j3 = 0;
   22:         boolean z = false;
   23:         while (parcel.dataPosition() < iValidateObjectHeader) {
   24:             int header = SafeParcelReader.readHeader(parcel);
   25:             switch (SafeParcelReader.getFieldId(header)) {
   26:                 case 2:
   27:                     strCreateString = SafeParcelReader.createString(parcel, header);
   28:                     break;
   29:                 case 3:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/measurement/internal/zzah.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   36:         this.zzk = zzahVar.zzk;
   37:     }
   38: 
   39:     @Override // android.os.Parcelable
   40:     public final void writeToParcel(Parcel parcel, int i) {
   41:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   42:         SafeParcelWriter.writeString(parcel, 2, this.zza, false);
   43:         SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
   44:         SafeParcelWriter.writeParcelable(parcel, 4, this.zzc, i, false);
   45:         SafeParcelWriter.writeLong(parcel, 5, this.zzd);
   46:         SafeParcelWriter.writeBoolean(parcel, 6, this.zze);
   48:         SafeParcelWriter.writeParcelable(parcel, 8, this.zzg, i, false);
   49:         SafeParcelWriter.writeLong(parcel, 9, this.zzh);
   50:         SafeParcelWriter.writeParcelable(parcel, 10, this.zzi, i, false);
   51:         SafeParcelWriter.writeLong(parcel, 11, this.zzj);
   52:         SafeParcelWriter.writeParcelable(parcel, 12, this.zzk, i, false);
   53:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   54:     }
   55: 
   56:     public zzah(String str, String str2, zzpl zzplVar, long j, boolean z, String str3, zzbh zzbhVar, long j2, zzbh zzbhVar2, long j3, zzbh zzbhVar3) {
   57:         this.zza = str;
   58:         this.zzb = str2;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/measurement/internal/zzbi.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzbi implements Parcelable.Creator {
   10:     public static void a(zzbh zzbhVar, Parcel parcel, int i) {
   11:         String str = zzbhVar.zza;
   12:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   13:         SafeParcelWriter.writeString(parcel, 2, str, false);
   14:         SafeParcelWriter.writeParcelable(parcel, 3, zzbhVar.zzb, i, false);
   15:         SafeParcelWriter.writeString(parcel, 4, zzbhVar.zzc, false);
   16:         SafeParcelWriter.writeLong(parcel, 5, zzbhVar.zzd);
   17:         SafeParcelWriter.writeLong(parcel, 6, zzbhVar.zze);
   18:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   19:     }
   20: 
   21:     @Override // android.os.Parcelable.Creator
   22:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   23:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   24:         long j = 0;
   25:         long j2 = 0;
   26:         String strCreateString = null;
   27:         zzbf zzbfVar = null;
   28:         String strCreateString2 = null;
   29:         while (parcel.dataPosition() < iValidateObjectHeader) {
   30:             int header = SafeParcelReader.readHeader(parcel);
   31:             int fieldId = SafeParcelReader.getFieldId(header);
   32:             if (fieldId == 2) {
   33:                 strCreateString = SafeParcelReader.createString(parcel, header);
   34:             } else if (fieldId == 3) {
   35:                 zzbfVar = (zzbf) SafeParcelReader.createParcelable(parcel, header, zzbf.CREATOR);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/measurement/internal/zzom.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   28:     }
   29: 
   30:     @Override // android.os.Parcelable
   31:     public final void writeToParcel(Parcel parcel, int i) {
   32:         long j = this.zza;
   33:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   34:         SafeParcelWriter.writeLong(parcel, 1, j);
   35:         SafeParcelWriter.writeByteArray(parcel, 2, this.zzb, false);
   36:         SafeParcelWriter.writeString(parcel, 3, this.zzc, false);
   37:         SafeParcelWriter.writeBundle(parcel, 4, this.zzd, false);
   38:         SafeParcelWriter.writeInt(parcel, 5, this.zze);
   39:         SafeParcelWriter.writeLong(parcel, 6, this.zzf);
   40:         SafeParcelWriter.writeString(parcel, 7, this.zzg, false);
   41:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   42:     }
   43: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/measurement/internal/zzop.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzop implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         ArrayList<Integer> arrayListCreateIntegerList = null;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             if (SafeParcelReader.getFieldId(header) != 1) {
   17:                 SafeParcelReader.skipUnknownField(parcel, header);
   18:             } else {
   19:                 arrayListCreateIntegerList = SafeParcelReader.createIntegerList(parcel, header);
   20:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/measurement/internal/zzoi.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzoi implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         long j = 0;
   14:         String strCreateString = null;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 1) {
   19:                 strCreateString = SafeParcelReader.createString(parcel, header);
   20:             } else if (fieldId == 2) {
   21:                 j = SafeParcelReader.readLong(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/measurement/internal/zzpm.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzpm implements Parcelable.Creator {
   10:     public static void a(zzpl zzplVar, Parcel parcel) {
   11:         int i = zzplVar.zza;
   12:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   13:         SafeParcelWriter.writeInt(parcel, 1, i);
   14:         SafeParcelWriter.writeString(parcel, 2, zzplVar.zzb, false);
   15:         SafeParcelWriter.writeLong(parcel, 3, zzplVar.zzc);
   16:         SafeParcelWriter.writeLongObject(parcel, 4, zzplVar.zzd, false);
   17:         SafeParcelWriter.writeFloatObject(parcel, 5, null, false);
   18:         SafeParcelWriter.writeString(parcel, 6, zzplVar.zze, false);
   19:         SafeParcelWriter.writeString(parcel, 7, zzplVar.zzf, false);
   20:         SafeParcelWriter.writeDoubleObject(parcel, 8, zzplVar.zzg, false);
   21:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   22:     }
   23: 
   24:     @Override // android.os.Parcelable.Creator
   25:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   26:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   27:         String strCreateString = null;
   28:         Long longObject = null;
   29:         Float floatObject = null;
   30:         String strCreateString2 = null;
   31:         String strCreateString3 = null;
   32:         Double doubleObject = null;
   33:         long j = 0;
   34:         int i = 0;
   35:         while (parcel.dataPosition() < iValidateObjectHeader) {
   36:             int header = SafeParcelReader.readHeader(parcel);
   37:             switch (SafeParcelReader.getFieldId(header)) {
   38:                 case 1:
   39:                     i = SafeParcelReader.readInt(parcel, header);
   40:                     break;
   41:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/measurement/internal/zzbg.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzbg implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         Bundle bundleCreateBundle = null;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             if (SafeParcelReader.getFieldId(header) != 2) {
   17:                 SafeParcelReader.skipUnknownField(parcel, header);
   18:             } else {
   19:                 bundleCreateBundle = SafeParcelReader.createBundle(parcel, header);
   20:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/measurement/internal/zzaf.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   19:     }
   20: 
   21:     @Override // android.os.Parcelable
   22:     public final void writeToParcel(Parcel parcel, int i) {
   23:         long j = this.zza;
   24:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   25:         SafeParcelWriter.writeLong(parcel, 1, j);
   26:         SafeParcelWriter.writeInt(parcel, 2, this.zzb);
   27:         SafeParcelWriter.writeLong(parcel, 3, this.zzc);
   28:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   29:     }
   30: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/measurement/internal/zzoo.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   23:     }
   24: 
   25:     @Override // android.os.Parcelable
   26:     public final void writeToParcel(Parcel parcel, int i) {
   27:         List list = this.zza;
   28:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   29:         SafeParcelWriter.writeIntegerList(parcel, 1, list, false);
   30:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   31:     }
   32: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/measurement/internal/zzor.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzor implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         ArrayList arrayListCreateTypedList = null;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             if (SafeParcelReader.getFieldId(header) != 1) {
   17:                 SafeParcelReader.skipUnknownField(parcel, header);
   18:             } else {
   19:                 arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, zzom.CREATOR);
   20:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/measurement/internal/zzlj.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
 1245:     public final void zzU(zzjp zzjpVar) {
 1246:         zzjp zzjpVar2;
 1247:         zzg();
 1248:         a();
 1249:         if (zzjpVar != null && zzjpVar != (zzjpVar2 = this.d)) {
 1250:             Preconditions.checkState(zzjpVar2 == null, "EventInterceptor already set.");
 1251:         }
 1252:         this.d = zzjpVar;
 1253:     }
 1254: 
 1255:     public final void zzV(zzjq zzjqVar) {
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/measurement/internal/zzs.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzs implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         long j = 0;
   14:         long j2 = 0;
   15:         long j3 = 0;
   16:         long j4 = 0;
   17:         long j5 = 0;
   41:         int i4 = 100;
   42:         boolean z4 = true;
   43:         boolean z5 = true;
   44:         long j9 = -2147483648L;
   45:         while (parcel.dataPosition() < iValidateObjectHeader) {
   46:             int header = SafeParcelReader.readHeader(parcel);
   47:             switch (SafeParcelReader.getFieldId(header)) {
   48:                 case 2:
   49:                     strCreateString5 = SafeParcelReader.createString(parcel, header);
   50:                     break;
   51:                 case 3:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/measurement/internal/zzbf.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   39:         return this.b.toString();
   40:     }
   41: 
   42:     @Override // android.os.Parcelable
   43:     public final void writeToParcel(Parcel parcel, int i) {
   44:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   45:         SafeParcelWriter.writeBundle(parcel, 2, zzf(), false);
   46:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   47:     }
   48: 
   49:     public final int zze() {
   50:         return this.b.size();
   51:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/measurement/internal/zzag.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzag implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         long j = 0;
   13:         long j2 = 0;
   14:         int i = 0;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 1) {
   19:                 j = SafeParcelReader.readLong(parcel, header);
   20:             } else if (fieldId == 2) {
   21:                 i = SafeParcelReader.readInt(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/measurement/internal/zzon.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzon implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         byte[] bArrCreateByteArray = null;
   14:         String strCreateString = null;
   15:         Bundle bundleCreateBundle = null;
   16:         String strCreateString2 = null;
   17:         long j = 0;
   18:         long j2 = 0;
   19:         int i = 0;
   20:         while (parcel.dataPosition() < iValidateObjectHeader) {
   21:             int header = SafeParcelReader.readHeader(parcel);
   22:             switch (SafeParcelReader.getFieldId(header)) {
   23:                 case 1:
   24:                     j = SafeParcelReader.readLong(parcel, header);
   25:                     break;
   26:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/measurement/internal/zzr.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   82:     }
   83: 
   84:     @Override // android.os.Parcelable
   85:     public final void writeToParcel(Parcel parcel, int i) {
   86:         String str = this.zza;
   87:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   88:         SafeParcelWriter.writeString(parcel, 2, str, false);
   89:         SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
   90:         SafeParcelWriter.writeString(parcel, 4, this.zzc, false);
   91:         SafeParcelWriter.writeString(parcel, 5, this.zzd, false);
   92:         SafeParcelWriter.writeLong(parcel, 6, this.zze);
  115:         SafeParcelWriter.writeString(parcel, 35, this.zzB, false);
  116:         SafeParcelWriter.writeString(parcel, 36, this.zzC, false);
  117:         SafeParcelWriter.writeLong(parcel, 37, this.zzD);
  118:         SafeParcelWriter.writeInt(parcel, 38, this.zzE);
  119:         SafeParcelWriter.writeLong(parcel, 39, this.zzF);
  120:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  121:     }
  122: 
  123:     public zzr(String str, String str2, String str3, String str4, long j, long j2, String str5, boolean z, boolean z2, long j3, String str6, long j4, int i, boolean z3, boolean z4, Boolean bool, long j5, ArrayList arrayList, String str7, String str8, String str9, boolean z5, long j6, int i2, String str10, int i3, long j7, String str11, String str12, long j8, int i4, long j9) {
  124:         this.zza = str;
  125:         this.zzb = str2;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/measurement/internal/zzao.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   16:     }
   17: 
   18:     @Override // android.os.Parcelable
   19:     public final void writeToParcel(Parcel parcel, int i) {
   20:         Bundle bundle = this.zza;
   21:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   22:         SafeParcelWriter.writeBundle(parcel, 1, bundle, false);
   23:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   24:     }
   25: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbb.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzbb implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         boolean z = false;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 i = SafeParcelReader.readInt(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaz.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzaz implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         String strCreateString = null;
   14:         String strCreateString2 = null;
   15:         byte[] bArrCreateByteArray = null;
   16:         Point[] pointArr = null;
   17:         zzar zzarVar = null;
   24:         zzap zzapVar = null;
   25:         zzaq zzaqVar = null;
   26:         int i = 0;
   27:         int i2 = 0;
   28:         while (parcel.dataPosition() < iValidateObjectHeader) {
   29:             int header = SafeParcelReader.readHeader(parcel);
   30:             switch (SafeParcelReader.getFieldId(header)) {
   31:                 case 1:
   32:                     i = SafeParcelReader.readInt(parcel, header);
   33:                     break;
   34:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbf.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzbf implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         zzbr zzbrVar = null;
   13:         while (parcel.dataPosition() < iValidateObjectHeader) {
   14:             int header = SafeParcelReader.readHeader(parcel);
   15:             if (SafeParcelReader.getFieldId(header) != 1) {
   16:                 SafeParcelReader.skipUnknownField(parcel, header);
   17:             } else {
   18:                 zzbrVar = (zzbr) SafeParcelReader.createParcelable(parcel, header, zzbr.CREATOR);
   19:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbj.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzbj implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         String strCreateString3 = null;
   15:         String strCreateString4 = null;
   16:         String strCreateString5 = null;
   22:         String strCreateString11 = null;
   23:         String strCreateString12 = null;
   24:         String strCreateString13 = null;
   25:         String strCreateString14 = null;
   26:         while (parcel.dataPosition() < iValidateObjectHeader) {
   27:             int header = SafeParcelReader.readHeader(parcel);
   28:             switch (SafeParcelReader.getFieldId(header)) {
   29:                 case 1:
   30:                     strCreateString = SafeParcelReader.createString(parcel, header);
   31:                     break;
   32:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcb.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzcb implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         String strCreateString = null;
   14:         String strCreateString2 = null;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 1) {
   19:                 strCreateString = SafeParcelReader.createString(parcel, header);
   20:             } else if (fieldId == 2) {
   21:                 strCreateString2 = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzav.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   16:         this.c = str2;
   17:     }
   18: 
   19:     @Override // android.os.Parcelable
   20:     public final void writeToParcel(Parcel parcel, int i) {
   21:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   22:         SafeParcelWriter.writeString(parcel, 1, this.b, false);
   23:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   24:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   25:     }
   26: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbw.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzbw implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         float[] fArrCreateFloatArray = null;
   13:         while (parcel.dataPosition() < iValidateObjectHeader) {
   14:             int header = SafeParcelReader.readHeader(parcel);
   15:             if (SafeParcelReader.getFieldId(header) != 1) {
   16:                 SafeParcelReader.skipUnknownField(parcel, header);
   17:             } else {
   18:                 fArrCreateFloatArray = SafeParcelReader.createFloatArray(parcel, header);
   19:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   26:         this.h = zzanVar2;
   27:     }
   28: 
   29:     @Override // android.os.Parcelable
   30:     public final void writeToParcel(Parcel parcel, int i) {
   31:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   32:         SafeParcelWriter.writeString(parcel, 1, this.b, false);
   33:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   34:         SafeParcelWriter.writeString(parcel, 3, this.d, false);
   35:         SafeParcelWriter.writeString(parcel, 4, this.e, false);
   36:         SafeParcelWriter.writeString(parcel, 5, this.f, false);
   37:         SafeParcelWriter.writeParcelable(parcel, 6, this.g, i, false);
   38:         SafeParcelWriter.writeParcelable(parcel, 7, this.h, i, false);
   39:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   40:     }
   41: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbs.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzbs implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         boolean z = false;
   13:         boolean z2 = false;
   14:         boolean z3 = false;
   15:         float f = 0.0f;
   16:         byte[] bArrCreateByteArray = null;
   17:         while (parcel.dataPosition() < iValidateObjectHeader) {
   18:             int header = SafeParcelReader.readHeader(parcel);
   19:             int fieldId = SafeParcelReader.getFieldId(header);
   20:             if (fieldId == 1) {
   21:                 z = SafeParcelReader.readBoolean(parcel, header);
   22:             } else if (fieldId == 2) {
   23:                 bArrCreateByteArray = SafeParcelReader.createByteArray(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   20:         this.e = str3;
   21:     }
   22: 
   23:     @Override // android.os.Parcelable
   24:     public final void writeToParcel(Parcel parcel, int i) {
   25:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   26:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   27:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   28:         SafeParcelWriter.writeString(parcel, 3, this.d, false);
   29:         SafeParcelWriter.writeString(parcel, 4, this.e, false);
   30:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   31:     }
   32: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbk.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzbk implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         int i = 0;
   15:         String strCreateString3 = null;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 1) {
   20:                 i = SafeParcelReader.readInt(parcel, header);
   21:             } else if (fieldId == 2) {
   22:                 strCreateString = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcc.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   22:         this.f = j;
   23:     }
   24: 
   25:     @Override // android.os.Parcelable
   26:     public final void writeToParcel(Parcel parcel, int i) {
   27:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   28:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   29:         SafeParcelWriter.writeInt(parcel, 2, this.c);
   30:         SafeParcelWriter.writeInt(parcel, 3, this.d);
   31:         SafeParcelWriter.writeInt(parcel, 4, this.e);
   32:         SafeParcelWriter.writeLong(parcel, 5, this.f);
   33:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   34:     }
   35: 
   36:     public final int zza() {
   37:         return this.d;
   38:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   16:         this.c = str2;
   17:     }
   18: 
   19:     @Override // android.os.Parcelable
   20:     public final void writeToParcel(Parcel parcel, int i) {
   21:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   22:         SafeParcelWriter.writeString(parcel, 1, this.b, false);
   23:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   24:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   25:     }
   26: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbv.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   14:         this.b = fArr;
   15:     }
   16: 
   17:     @Override // android.os.Parcelable
   18:     public final void writeToParcel(Parcel parcel, int i) {
   19:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   20:         SafeParcelWriter.writeFloatArray(parcel, 1, this.b, false);
   21:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   22:     }
   23: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzan.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   28:         this.i = str;
   29:     }
   30: 
   31:     @Override // android.os.Parcelable
   32:     public final void writeToParcel(Parcel parcel, int i) {
   33:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   34:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   35:         SafeParcelWriter.writeInt(parcel, 2, this.c);
   36:         SafeParcelWriter.writeInt(parcel, 3, this.d);
   37:         SafeParcelWriter.writeInt(parcel, 4, this.e);
   38:         SafeParcelWriter.writeInt(parcel, 5, this.f);
   39:         SafeParcelWriter.writeInt(parcel, 6, this.g);
   40:         SafeParcelWriter.writeBoolean(parcel, 7, this.h);
   41:         SafeParcelWriter.writeString(parcel, 8, this.i, false);
   42:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   43:     }
   44: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbr.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   22:         this.f = z3;
   23:     }
   24: 
   25:     @Override // android.os.Parcelable
   26:     public final void writeToParcel(Parcel parcel, int i) {
   27:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   28:         SafeParcelWriter.writeBoolean(parcel, 1, this.b);
   29:         SafeParcelWriter.writeByteArray(parcel, 2, this.c, false);
   30:         SafeParcelWriter.writeBoolean(parcel, 3, this.d);
   31:         SafeParcelWriter.writeFloat(parcel, 4, this.e);
   32:         SafeParcelWriter.writeBoolean(parcel, 5, this.f);
   33:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   34:     }
   35: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   16:         this.c = d2;
   17:     }
   18: 
   19:     @Override // android.os.Parcelable
   20:     public final void writeToParcel(Parcel parcel, int i) {
   21:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   22:         SafeParcelWriter.writeDouble(parcel, 1, this.b);
   23:         SafeParcelWriter.writeDouble(parcel, 2, this.c);
   24:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   25:     }
   26: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbc.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   19:         this.e = z2;
   20:     }
   21: 
   22:     @Override // android.os.Parcelable
   23:     public final void writeToParcel(Parcel parcel, int i) {
   24:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   25:         SafeParcelWriter.writeParcelable(parcel, 1, this.b, i, false);
   26:         SafeParcelWriter.writeParcelable(parcel, 2, this.c, i, false);
   27:         SafeParcelWriter.writeBoolean(parcel, 3, this.d);
   28:         SafeParcelWriter.writeBoolean(parcel, 4, this.e);
   29:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   30:     }
   31: 
   32:     public final zzbt zza() {
   33:         return this.b;
   34:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbz.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzbz implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 strCreateString = SafeParcelReader.createString(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbg.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzbg implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         int i = 0;
   14:         int i2 = 0;
   15:         int i3 = 0;
   16:         int i4 = 0;
   17:         int i5 = 0;
   18:         int i6 = 0;
   19:         boolean z = false;
   20:         while (parcel.dataPosition() < iValidateObjectHeader) {
   21:             int header = SafeParcelReader.readHeader(parcel);
   22:             switch (SafeParcelReader.getFieldId(header)) {
   23:                 case 1:
   24:                     i = SafeParcelReader.readInt(parcel, header);
   25:                     break;
   26:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbi.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzbi implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         zzat zzatVar = null;
   13:         String strCreateString = null;
   14:         String strCreateString2 = null;
   15:         zzau[] zzauVarArr = null;
   16:         zzar[] zzarVarArr = null;
   17:         String[] strArrCreateStringArray = null;
   18:         zzam[] zzamVarArr = null;
   19:         while (parcel.dataPosition() < iValidateObjectHeader) {
   20:             int header = SafeParcelReader.readHeader(parcel);
   21:             switch (SafeParcelReader.getFieldId(header)) {
   22:                 case 1:
   23:                     zzatVar = (zzat) SafeParcelReader.createParcelable(parcel, header, zzat.CREATOR);
   24:                     break;
   25:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   16:         this.c = str;
   17:     }
   18: 
   19:     @Override // android.os.Parcelable
   20:     public final void writeToParcel(Parcel parcel, int i) {
   21:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   22:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   23:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   24:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   25:     }
   26: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzca.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzca implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 strCreateString = SafeParcelReader.createString(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbt.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   18:         this.d = z;
   19:     }
   20: 
   21:     @Override // android.os.Parcelable
   22:     public final void writeToParcel(Parcel parcel, int i) {
   23:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   24:         SafeParcelWriter.writeFloatArray(parcel, 1, this.b, false);
   25:         SafeParcelWriter.writeInt(parcel, 2, this.c);
   26:         SafeParcelWriter.writeBoolean(parcel, 3, this.d);
   27:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   28:     }
   29: 
   30:     public final int zza() {
   31:         return this.c;
   32:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzal.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzal implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String[] strArrCreateStringArray = null;
   13:         int i = 0;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 i = SafeParcelReader.readInt(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   40:         this.o = str14;
   41:     }
   42: 
   43:     @Override // android.os.Parcelable
   44:     public final void writeToParcel(Parcel parcel, int i) {
   45:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   46:         SafeParcelWriter.writeString(parcel, 1, this.b, false);
   47:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   48:         SafeParcelWriter.writeString(parcel, 3, this.d, false);
   49:         SafeParcelWriter.writeString(parcel, 4, this.e, false);
   50:         SafeParcelWriter.writeString(parcel, 5, this.f, false);
   55:         SafeParcelWriter.writeString(parcel, 10, this.k, false);
   56:         SafeParcelWriter.writeString(parcel, 11, this.l, false);
   57:         SafeParcelWriter.writeString(parcel, 12, this.m, false);
   58:         SafeParcelWriter.writeString(parcel, 13, this.n, false);
   59:         SafeParcelWriter.writeString(parcel, 14, this.o, false);
   60:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   61:     }
   62: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   16:         this.c = z;
   17:     }
   18: 
   19:     @Override // android.os.Parcelable
   20:     public final void writeToParcel(Parcel parcel, int i) {
   21:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   22:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   23:         SafeParcelWriter.writeBoolean(parcel, 2, this.c);
   24:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   25:     }
   26: 
   27:     public final int zza() {
   28:         return this.b;
   29:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbx.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzbx implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         String strCreateString3 = null;
   15:         String strCreateString4 = null;
   16:         String strCreateString5 = null;
   17:         String strCreateString6 = null;
   18:         String strCreateString7 = null;
   19:         while (parcel.dataPosition() < iValidateObjectHeader) {
   20:             int header = SafeParcelReader.readHeader(parcel);
   21:             switch (SafeParcelReader.getFieldId(header)) {
   22:                 case 1:
   23:                     strCreateString = SafeParcelReader.createString(parcel, header);
   24:                     break;
   25:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   43:         this.p = zzaqVar;
   44:     }
   45: 
   46:     @Override // android.os.Parcelable
   47:     public final void writeToParcel(Parcel parcel, int i) {
   48:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   49:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   50:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   51:         SafeParcelWriter.writeString(parcel, 3, this.d, false);
   52:         SafeParcelWriter.writeByteArray(parcel, 4, this.e, false);
   53:         SafeParcelWriter.writeTypedArray(parcel, 5, this.f, i, false);
   59:         SafeParcelWriter.writeParcelable(parcel, 11, this.l, i, false);
   60:         SafeParcelWriter.writeParcelable(parcel, 12, this.m, i, false);
   61:         SafeParcelWriter.writeParcelable(parcel, 13, this.n, i, false);
   62:         SafeParcelWriter.writeParcelable(parcel, 14, this.o, i, false);
   63:         SafeParcelWriter.writeParcelable(parcel, 15, this.p, i, false);
   64:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   65:     }
   66: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbe.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   14:         this.b = zzbrVar;
   15:     }
   16: 
   17:     @Override // android.os.Parcelable
   18:     public final void writeToParcel(Parcel parcel, int i) {
   19:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   20:         SafeParcelWriter.writeParcelable(parcel, 1, this.b, i, false);
   21:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   22:     }
   23: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzby.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzby implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         int i = 0;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 i = SafeParcelReader.readInt(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   18:         this.d = i;
   19:     }
   20: 
   21:     @Override // android.os.Parcelable
   22:     public final void writeToParcel(Parcel parcel, int i) {
   23:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   24:         SafeParcelWriter.writeString(parcel, 1, this.b, false);
   25:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   26:         SafeParcelWriter.writeInt(parcel, 3, this.d);
   27:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   28:     }
   29: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbd.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzbd implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         boolean z = false;
   13:         zzbt zzbtVar = null;
   14:         zzbv zzbvVar = null;
   15:         boolean z2 = false;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 1) {
   20:                 zzbtVar = (zzbt) SafeParcelReader.createParcelable(parcel, header, zzbt.CREATOR);
   21:             } else if (fieldId == 2) {
   22:                 zzbvVar = (zzbv) SafeParcelReader.createParcelable(parcel, header, zzbv.CREATOR);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbh.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzbh implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         String strCreateString3 = null;
   15:         String strCreateString4 = null;
   16:         String strCreateString5 = null;
   17:         zzan zzanVar = null;
   18:         zzan zzanVar2 = null;
   19:         while (parcel.dataPosition() < iValidateObjectHeader) {
   20:             int header = SafeParcelReader.readHeader(parcel);
   21:             switch (SafeParcelReader.getFieldId(header)) {
   22:                 case 1:
   23:                     strCreateString = SafeParcelReader.createString(parcel, header);
   24:                     break;
   25:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   26:         this.h = str7;
   27:     }
   28: 
   29:     @Override // android.os.Parcelable
   30:     public final void writeToParcel(Parcel parcel, int i) {
   31:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   32:         SafeParcelWriter.writeString(parcel, 1, this.b, false);
   33:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   34:         SafeParcelWriter.writeString(parcel, 3, this.d, false);
   35:         SafeParcelWriter.writeString(parcel, 4, this.e, false);
   36:         SafeParcelWriter.writeString(parcel, 5, this.f, false);
   37:         SafeParcelWriter.writeString(parcel, 6, this.g, false);
   38:         SafeParcelWriter.writeString(parcel, 7, this.h, false);
   39:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   40:     }
   41: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbu.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzbu implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         float[] fArrCreateFloatArray = null;
   14:         boolean z = false;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 1) {
   19:                 fArrCreateFloatArray = SafeParcelReader.createFloatArray(parcel, header);
   20:             } else if (fieldId == 2) {
   21:                 i = SafeParcelReader.readInt(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzam.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   16:         this.c = strArr;
   17:     }
   18: 
   19:     @Override // android.os.Parcelable
   20:     public final void writeToParcel(Parcel parcel, int i) {
   21:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   22:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   23:         SafeParcelWriter.writeStringArray(parcel, 2, this.c, false);
   24:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   25:     }
   26: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbl.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzbl implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         double d = 0.0d;
   13:         double d2 = 0.0d;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 d = SafeParcelReader.readDouble(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   26:         this.h = zzamVarArr;
   27:     }
   28: 
   29:     @Override // android.os.Parcelable
   30:     public final void writeToParcel(Parcel parcel, int i) {
   31:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   32:         SafeParcelWriter.writeParcelable(parcel, 1, this.b, i, false);
   33:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   34:         SafeParcelWriter.writeString(parcel, 3, this.d, false);
   35:         SafeParcelWriter.writeTypedArray(parcel, 4, this.e, i, false);
   36:         SafeParcelWriter.writeTypedArray(parcel, 5, this.f, i, false);
   37:         SafeParcelWriter.writeStringArray(parcel, 6, this.g, false);
   38:         SafeParcelWriter.writeTypedArray(parcel, 7, this.h, i, false);
   39:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   40:     }
   41: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcd.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzcd implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         long j = 0;
   13:         int i = 0;
   14:         int i2 = 0;
   15:         int i3 = 0;
   16:         int i4 = 0;
   17:         while (parcel.dataPosition() < iValidateObjectHeader) {
   18:             int header = SafeParcelReader.readHeader(parcel);
   19:             int fieldId = SafeParcelReader.getFieldId(header);
   20:             if (fieldId == 1) {
   21:                 i = SafeParcelReader.readInt(parcel, header);
   22:             } else if (fieldId == 2) {
   23:                 i2 = SafeParcelReader.readInt(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbh.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package com.google.android.gms.internal.p000authapi;
    2: 
    3: import android.os.Parcel;
    4: import com.google.android.gms.auth.api.identity.AuthorizationResult;
    5: import com.google.android.gms.common.api.Status;
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public abstract class zbh extends zbb implements zbi {
    9:     public zbh() {
   10:         super("com.google.android.gms.auth.api.identity.internal.IAuthorizationCallback");
   11:     }
   12: 
   13:     @Override // com.google.android.gms.internal.p000authapi.zbb
   14:     public final boolean f(int i, Parcel parcel, Parcel parcel2) {
   15:         if (i != 1) {
   16:             return false;
   17:         }
   18:         Status status = (Status) zbc.zba(parcel, Status.CREATOR);
   19:         AuthorizationResult authorizationResult = (AuthorizationResult) zbc.zba(parcel, AuthorizationResult.CREATOR);
   20:         zbc.zbd(parcel);
   21:         zbb(status, authorizationResult);
   22:         return true;
   23:     }
   24: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbi.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package com.google.android.gms.internal.p000authapi;
    2: 
    3: import android.os.IInterface;
    4: import com.google.android.gms.auth.api.identity.AuthorizationResult;
    5: import com.google.android.gms.common.api.Status;
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public interface zbi extends IInterface {
    9:     void zbb(Status status, AuthorizationResult authorizationResult);
   10: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbj.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package com.google.android.gms.internal.p000authapi;
    2: 
    3: import android.os.IInterface;
    4: import android.os.Parcel;
    5: import com.google.android.gms.auth.api.identity.AuthorizationRequest;
    6: import com.google.android.gms.auth.api.identity.ClearTokenRequest;
    7: import com.google.android.gms.auth.api.identity.RevokeAccessRequest;
    8: import com.google.android.gms.common.api.ApiMetadata;
    9: import com.google.android.gms.common.api.internal.IStatusCallback;
   10: 
   11: /* JADX INFO: loaded from: classes4.dex */
   12: public final class zbj extends zba implements IInterface {
   13:     public final void zbc(zbi zbiVar, AuthorizationRequest authorizationRequest, ApiMetadata apiMetadata) {
   14:         Parcel parcelF = f();
   15:         zbc.zbc(parcelF, zbiVar);
   16:         zbc.zbb(parcelF, authorizationRequest);
   17:         zbc.zbb(parcelF, apiMetadata);
   18:         g(parcelF, 1);
   19:     }
   20: 
   21:     public final void zbd(IStatusCallback iStatusCallback, RevokeAccessRequest revokeAccessRequest, ApiMetadata apiMetadata) {
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbad.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    2: 
    3: import android.app.Activity;
    4: import android.content.Context;
    5: import android.content.Intent;
    6: import androidx.core.app.NotificationCompat;
    7: import com.google.android.gms.auth.api.identity.AuthorizationClient;
    8: import com.google.android.gms.auth.api.identity.AuthorizationRequest;
    9: import com.google.android.gms.auth.api.identity.AuthorizationResult;
   10: import com.google.android.gms.auth.api.identity.ClearTokenRequest;
   11: import com.google.android.gms.auth.api.identity.RevokeAccessRequest;
   12: import com.google.android.gms.auth.api.identity.zba;
   13: import com.google.android.gms.common.api.Api;
   14: import com.google.android.gms.common.api.ApiException;
   24: import com.google.android.gms.tasks.Task;
   25: import com.google.android.gms.tasks.TaskCompletionSource;
   26: import defpackage.ona;
   27: 
   28: /* JADX INFO: loaded from: classes4.dex */
   29: public final class zbad extends GoogleApi implements AuthorizationClient {
   30:     public static final Api b = new Api("Auth.Api.Identity.Authorization.API", new ona(), new Api.ClientKey());
   31:     public final String a;
   32: 
   33:     public zbad(Activity activity, zba zbaVar) {
   34:         super(activity, (Api<zba>) b, zbaVar, GoogleApi.Settings.DEFAULT_SETTINGS);
   35:         this.a = zbaw.zba();
   36:     }
   37: 
   38:     @Override // com.google.android.gms.auth.api.identity.AuthorizationClient
   39:     public final Task<AuthorizationResult> authorize(AuthorizationRequest authorizationRequest) {
   40:         Preconditions.checkNotNull(authorizationRequest);
   41:         AuthorizationRequest.Builder builderZba = AuthorizationRequest.zba(authorizationRequest);
   42:         builderZba.zbb(this.a);
   43:         final AuthorizationRequest authorizationRequestBuild = builderZba.build();
   44:         return doRead(TaskApiCall.builder().setFeatures(zbav.zbc).run(new RemoteCall() { // from class: qma
   45:             /* JADX WARN: Multi-variable type inference failed */
   46:             @Override // com.google.android.gms.common.api.internal.RemoteCall
   47:             public final /* synthetic */ void accept(Object obj, Object obj2) {
   48:                 zbf zbfVar = (zbf) obj;
   49:                 ((zbj) zbfVar.getService()).zbc(new pna(this.b, (TaskCompletionSource) obj2), (AuthorizationRequest) Preconditions.checkNotNull(authorizationRequestBuild), zbba.zba(zbfVar.getContext()));
   50:             }
   51:         }).setAutoResolveMissingFeatures(false).setMethodKey(1534).build());
   52:     }
   53: 
   54:     @Override // com.google.android.gms.auth.api.identity.AuthorizationClient
   55:     public final Task<Void> clearToken(ClearTokenRequest clearTokenRequest) {
   56:         Preconditions.checkNotNull(clearTokenRequest);
   57:         ClearTokenRequest.Builder builderZba = clearTokenRequest.zba();
   58:         builderZba.zba(this.a);
   59:         final ClearTokenRequest clearTokenRequestBuild = builderZba.build();
   65:                 ((zbj) zbfVar.getService()).zbe(new rna(this.b, (TaskCompletionSource) obj2), (ClearTokenRequest) Preconditions.checkNotNull(clearTokenRequestBuild), zbba.zba(zbfVar.getContext()));
   66:             }
   67:         }).setMethodKey(1721).build());
   68:     }
   69: 
   70:     @Override // com.google.android.gms.auth.api.identity.AuthorizationClient
   71:     public final AuthorizationResult getAuthorizationResultFromIntent(Intent intent) throws ApiException {
   72:         if (intent == null) {
   73:             throw new ApiException(Status.RESULT_INTERNAL_ERROR);
   74:         }
   75:         Status status = (Status) SafeParcelableSerializer.deserializeFromIntentExtra(intent, NotificationCompat.CATEGORY_STATUS, Status.CREATOR);
   76:         if (status == null) {
   77:             throw new ApiException(Status.RESULT_CANCELED);
   78:         }
   79:         if (!status.isSuccess()) {
   80:             throw new ApiException(status);
   81:         }
   82:         AuthorizationResult authorizationResult = (AuthorizationResult) SafeParcelableSerializer.deserializeFromIntentExtra(intent, "authorization_result", AuthorizationResult.CREATOR);
   83:         if (authorizationResult != null) {
   84:             return authorizationResult;
   85:         }
   86:         throw new ApiException(Status.RESULT_INTERNAL_ERROR);
   87:     }
   88: 
   89:     @Override // com.google.android.gms.auth.api.identity.AuthorizationClient
   90:     public final Task<Void> revokeAccess(RevokeAccessRequest revokeAccessRequest) {
   91:         Preconditions.checkNotNull(revokeAccessRequest);
   92:         RevokeAccessRequest.Builder builderZba = revokeAccessRequest.zba();
   93:         builderZba.zba(this.a);
   94:         final RevokeAccessRequest revokeAccessRequestBuild = builderZba.build();
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/p000authapi/zbf.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   26:     @Override // com.google.android.gms.common.internal.BaseGmsClient
   27:     public final IInterface createServiceInterface(IBinder iBinder) {
   28:         if (iBinder == null) {
   29:             return null;
   30:         }
   31:         IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.identity.internal.IAuthorizationService");
   32:         return iInterfaceQueryLocalInterface instanceof zbj ? (zbj) iInterfaceQueryLocalInterface : new zbj(iBinder, "com.google.android.gms.auth.api.identity.internal.IAuthorizationService");
   33:     }
   34: 
   35:     @Override // com.google.android.gms.common.internal.BaseGmsClient
   36:     public final Feature[] getApiFeatures() {
   37:         return zbav.zby;
   47:         return 17895000;
   48:     }
   49: 
   50:     @Override // com.google.android.gms.common.internal.BaseGmsClient
   51:     public final String getServiceDescriptor() {
   52:         return "com.google.android.gms.auth.api.identity.internal.IAuthorizationService";
   53:     }
   54: 
   55:     @Override // com.google.android.gms.common.internal.BaseGmsClient
   56:     public final String getStartServiceAction() {
   57:         return "com.google.android.gms.auth.api.identity.service.authorization.START";
   58:     }
   59: 
   60:     @Override // com.google.android.gms.common.internal.BaseGmsClient
   61:     public final boolean getUseDynamicLookup() {
   62:         return true;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/auth/zzax.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   17:         this.zzb = (String) Preconditions.checkNotNull(str);
   18:     }
   19: 
   20:     @Override // android.os.Parcelable
   21:     public final void writeToParcel(Parcel parcel, int i) {
   22:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   23:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   24:         SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
   25:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   26:     }
   27: 
   28:     public zzax(String str) {
   29:         this(str, 0);
   30:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/auth/zzaq.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   17:         this.zzb = (String) Preconditions.checkNotNull(str);
   18:     }
   19: 
   20:     @Override // android.os.Parcelable
   21:     public final void writeToParcel(Parcel parcel, int i) {
   22:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   23:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   24:         SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
   25:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   26:     }
   27: 
   28:     public zzaq(String str) {
   29:         this(str, 0);
   30:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/auth/zzal.java`

**Разделы:** API HOST / NETWORK CONFIG

```
   24:     public final PendingResult<Result> removeWorkAccount(GoogleApiClient googleApiClient, Account account) {
   25:         return googleApiClient.execute(new zsa(WorkAccount.API, googleApiClient, account));
   26:     }
   27: 
   28:     @Override // com.google.android.gms.auth.account.WorkAccountApi
   29:     public final void setWorkAuthenticatorEnabled(GoogleApiClient googleApiClient, boolean z) {
   30:         setWorkAuthenticatorEnabledWithResult(googleApiClient, z);
   31:     }
   32: 
   33:     @Override // com.google.android.gms.auth.account.WorkAccountApi
   34:     public final PendingResult<Result> setWorkAuthenticatorEnabledWithResult(GoogleApiClient googleApiClient, boolean z) {
   35:         return googleApiClient.execute(new xpa(WorkAccount.API, googleApiClient, z));
   36:     }
   37: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/auth/zzbt.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   10: import defpackage.xxa;
   11: 
   12: /* JADX INFO: loaded from: classes4.dex */
   13: public final class zzbt implements ProxyApi {
   14:     @Override // com.google.android.gms.auth.api.proxy.ProxyApi
   15:     public final PendingResult<ProxyApi.SpatulaHeaderResult> getSpatulaHeader(GoogleApiClient googleApiClient) {
   16:         Preconditions.checkNotNull(googleApiClient);
   17:         return googleApiClient.execute(new bya(AuthProxy.API, googleApiClient));
   18:     }
   19: 
   20:     @Override // com.google.android.gms.auth.api.proxy.ProxyApi
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/auth/zzay.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzay implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         while (parcel.dataPosition() < iValidateObjectHeader) {
   14:             int header = SafeParcelReader.readHeader(parcel);
   15:             int fieldId = SafeParcelReader.getFieldId(header);
   16:             if (fieldId == 1) {
   17:                 SafeParcelReader.readInt(parcel, header);
   18:             } else if (fieldId != 2) {
   19:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/auth/zzhz.java`

**Разделы:** API HOST / NETWORK CONFIG

```
   31:             zzg = zzczVarZza.zzd("getTokenRefactor__clear_token_timeout_seconds", 20L);
   32:             zzh = zzczVarZza.zzd("getTokenRefactor__default_task_timeout_seconds", 20L);
   33:             zzi = zzczVarZza.zze("getTokenRefactor__gaul_accounts_api_evolved", false);
   34:             zzj = zzczVarZza.zze("getTokenRefactor__gaul_token_api_evolved", false);
   35:             zzk = zzczVarZza.zzd("getTokenRefactor__get_token_timeout_seconds", 120L);
   36:             zzl = zzczVarZza.zze("getTokenRefactor__gms_account_authenticator_evolved", true);
   37:             zzm = zzczVarZza.zzc("getTokenRefactor__gms_account_authenticator_sample_percentage", 0.0d);
   38:         } catch (Exception e) {
   39:             xg.d(e);
   40:         }
   41:     }
   42: 
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/auth/zzbx.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzbx implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         int i = 0;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 i = SafeParcelReader.readInt(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/auth/zzba.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzba implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         byte[] bArrCreateByteArray = null;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 SafeParcelReader.readInt(parcel, header);
   19:             } else if (fieldId == 2) {
   20:                 strCreateString = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/auth/zzbo.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   20:     public zzbo(Activity activity, AuthProxyOptions authProxyOptions) {
   21:         super(activity, AuthProxy.API, authProxyOptions == null ? AuthProxyOptions.zza : authProxyOptions, GoogleApi.Settings.DEFAULT_SETTINGS);
   22:     }
   23: 
   24:     @Override // com.google.android.gms.auth.api.proxy.ProxyClient
   25:     public final Task<String> getSpatulaHeader() {
   26:         return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.internal.auth.zzbk
   27:             /* JADX WARN: Multi-variable type inference failed */
   28:             @Override // com.google.android.gms.common.api.internal.RemoteCall
   29:             public final void accept(Object obj, Object obj2) {
   30:                 ((zzbh) ((zzbe) obj).getService()).zzd(new qxa((TaskCompletionSource) obj2));
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/auth/zzbv.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   13:         this.b = (Status) Preconditions.checkNotNull(status);
   14:         this.c = "";
   15:     }
   16: 
   17:     @Override // com.google.android.gms.auth.api.proxy.ProxyApi.SpatulaHeaderResult
   18:     public final String getSpatulaHeader() {
   19:         return this.c;
   20:     }
   21: 
   22:     @Override // com.google.android.gms.common.api.Result
   23:     public final Status getStatus() {
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/auth/zzaw.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzaw implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         int i = 0;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 SafeParcelReader.readInt(parcel, header);
   19:             } else if (fieldId == 2) {
   20:                 strCreateString = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/auth/zzbc.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzbc implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         String strCreateString = null;
   14:         PendingIntent pendingIntent = null;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 1) {
   19:                 SafeParcelReader.readInt(parcel, header);
   20:             } else if (fieldId == 2) {
   21:                 strCreateString = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/auth/zzaz.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   19:         this.zzc = (byte[]) Preconditions.checkNotNull(bArr);
   20:     }
   21: 
   22:     @Override // android.os.Parcelable
   23:     public final void writeToParcel(Parcel parcel, int i) {
   24:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   25:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   26:         SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
   27:         SafeParcelWriter.writeByteArray(parcel, 3, this.zzc, false);
   28:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   29:     }
   30: 
   31:     public zzaz(String str, byte[] bArr) {
   32:         this(str, bArr, 0);
   33:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/auth/zzbb.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   20:         this.zzc = (PendingIntent) Preconditions.checkNotNull(pendingIntent);
   21:     }
   22: 
   23:     @Override // android.os.Parcelable
   24:     public final void writeToParcel(Parcel parcel, int i) {
   25:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   26:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   27:         SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
   28:         SafeParcelWriter.writeParcelable(parcel, 3, this.zzc, i, false);
   29:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   30:     }
   31: 
   32:     public zzbb(String str, PendingIntent pendingIntent) {
   33:         this(str, pendingIntent, 0);
   34:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/auth/zzar.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzar implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         while (parcel.dataPosition() < iValidateObjectHeader) {
   14:             int header = SafeParcelReader.readHeader(parcel);
   15:             int fieldId = SafeParcelReader.getFieldId(header);
   16:             if (fieldId == 1) {
   17:                 SafeParcelReader.readInt(parcel, header);
   18:             } else if (fieldId != 2) {
   19:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/auth/zzbw.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   16:         this.c = str;
   17:     }
   18: 
   19:     @Override // android.os.Parcelable
   20:     public final void writeToParcel(Parcel parcel, int i) {
   21:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   22:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   23:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   24:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   25:     }
   26: 
   27:     public final zzbw zza(String str) {
   28:         this.c = str;
   29:         return this;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/auth/zzav.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   19:         this.zzc = i;
   20:     }
   21: 
   22:     @Override // android.os.Parcelable
   23:     public final void writeToParcel(Parcel parcel, int i) {
   24:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   25:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   26:         SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
   27:         SafeParcelWriter.writeInt(parcel, 3, this.zzc);
   28:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   29:     }
   30: 
   31:     public zzav(String str, int i) {
   32:         this(str, i, 0);
   33:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/play_billing/zzav.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: import android.os.Parcel;
    8: import defpackage.jh;
    9: 
   10: /* JADX INFO: loaded from: classes4.dex */
   11: public class zzav extends Binder implements IInterface {
   12:     private static zzax globalInterceptor;
   13: 
   14:     public zzav(String str) {
   15:         attachInterface(this, str);
   16:     }
   17: 
   18:     public static synchronized void installTransactionInterceptorPackagePrivate(zzax zzaxVar) {
   19:         try {
   20:             if (zzaxVar == null) {
   21:                 throw new IllegalArgumentException("null interceptor");
   22:             }
   23:             if (globalInterceptor != null) {
   24:                 throw new IllegalStateException("Duplicate TransactionInterceptor installation.");
   25:             }
   26:             globalInterceptor = zzaxVar;
   27:         } catch (Throwable th) {
   28:             throw th;
   29:         }
   30:     }
   31: 
   45:     public boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) {
   46:         return false;
   47:     }
   48: 
   49:     public void enforceNoDataAvail(Parcel parcel) {
   50:         zzax zzaxVar = globalInterceptor;
   51:         if (zzaxVar != null) {
   52:             zzaxVar.zza();
   53:             return;
   54:         }
   55:         int i = zzaw.zza;
   62:     @Override // android.os.Binder
   63:     public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
   64:         if (routeToSuperOrEnforceInterface(i, parcel, parcel2, i2)) {
   65:             return true;
   66:         }
   67:         zzax zzaxVar = globalInterceptor;
   68:         return zzaxVar == null ? dispatchTransaction(i, parcel, parcel2, i2) : zzaxVar.zzb();
   69:     }
   70: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/location/zzeg.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    9: 
   10: /* JADX INFO: loaded from: classes4.dex */
   11: public final class zzeg implements Parcelable.Creator {
   12:     @Override // android.os.Parcelable.Creator
   13:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   14:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   15:         long j = Long.MAX_VALUE;
   16:         LocationRequest locationRequest = null;
   17:         ArrayList arrayListCreateTypedList = null;
   18:         boolean z = false;
   19:         boolean z2 = false;
   20:         boolean z3 = false;
   21:         boolean z4 = false;
   22:         while (parcel.dataPosition() < iValidateObjectHeader) {
   23:             int header = SafeParcelReader.readHeader(parcel);
   24:             int fieldId = SafeParcelReader.getFieldId(header);
   25:             if (fieldId == 1) {
   26:                 locationRequest = (LocationRequest) SafeParcelReader.createParcelable(parcel, header, LocationRequest.CREATOR);
   27:             } else if (fieldId == 5) {
   28:                 arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, ClientIdentity.CREATOR);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/location/zzj.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzj implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         zzg zzgVar = null;
   14:         IBinder iBinder = null;
   15:         IBinder iBinder2 = null;
   16:         int i = 1;
   17:         while (parcel.dataPosition() < iValidateObjectHeader) {
   18:             int header = SafeParcelReader.readHeader(parcel);
   19:             int fieldId = SafeParcelReader.getFieldId(header);
   20:             if (fieldId == 1) {
   21:                 i = SafeParcelReader.readInt(parcel, header);
   22:             } else if (fieldId == 2) {
   23:                 zzgVar = (zzg) SafeParcelReader.createParcelable(parcel, header, zzg.CREATOR);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/location/zzek.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzek implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = -1;
   13:         int i2 = 0;
   14:         short s = 0;
   15:         int i3 = 0;
   16:         long j = 0;
   17:         float f = 0.0f;
   18:         double d = 0.0d;
   19:         double d2 = 0.0d;
   20:         String strCreateString = null;
   21:         while (parcel.dataPosition() < iValidateObjectHeader) {
   22:             int header = SafeParcelReader.readHeader(parcel);
   23:             switch (SafeParcelReader.getFieldId(header)) {
   24:                 case 1:
   25:                     strCreateString = SafeParcelReader.createString(parcel, header);
   26:                     break;
   27:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/location/zzk.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   26:         return this.b;
   27:     }
   28: 
   29:     @Override // android.os.Parcelable
   30:     public final void writeToParcel(Parcel parcel, int i) {
   31:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   32:         SafeParcelWriter.writeParcelable(parcel, 1, this.b, i, false);
   33:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   34:     }
   35: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/location/zzej.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  132:         return String.format(locale, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]", str, this.b.replaceAll("\\p{C}", "?"), Integer.valueOf(this.h), Double.valueOf(this.e), Double.valueOf(this.f), Float.valueOf(this.g), Integer.valueOf(this.i / 1000), Integer.valueOf(this.j), Long.valueOf(this.c));
  133:     }
  134: 
  135:     @Override // android.os.Parcelable
  136:     public final void writeToParcel(Parcel parcel, int i) {
  137:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  138:         SafeParcelWriter.writeString(parcel, 1, this.b, false);
  139:         SafeParcelWriter.writeLong(parcel, 2, this.c);
  140:         SafeParcelWriter.writeShort(parcel, 3, this.d);
  141:         SafeParcelWriter.writeDouble(parcel, 4, this.e);
  142:         SafeParcelWriter.writeDouble(parcel, 5, this.f);
  143:         SafeParcelWriter.writeFloat(parcel, 6, this.g);
  144:         SafeParcelWriter.writeInt(parcel, 7, this.h);
  145:         SafeParcelWriter.writeInt(parcel, 8, this.i);
  146:         SafeParcelWriter.writeInt(parcel, 9, this.j);
  147:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  148:     }
  149: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/location/zzef.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   67:         return this.b.toString();
   68:     }
   69: 
   70:     @Override // android.os.Parcelable
   71:     public final void writeToParcel(Parcel parcel, int i) {
   72:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   73:         SafeParcelWriter.writeParcelable(parcel, 1, this.b, i, false);
   74:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   75:     }
   76: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/location/zzg.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   33:         return this.b.toString();
   34:     }
   35: 
   36:     @Override // android.os.Parcelable
   37:     public final void writeToParcel(Parcel parcel, int i) {
   38:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   39:         SafeParcelWriter.writeParcelable(parcel, 1, this.b, i, false);
   40:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   41:     }
   42: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/location/zzi.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   27:         this.e = zzoVar;
   28:     }
   29: 
   30:     @Override // android.os.Parcelable
   31:     public final void writeToParcel(Parcel parcel, int i) {
   32:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   33:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   34:         SafeParcelWriter.writeParcelable(parcel, 2, this.c, i, false);
   35:         com.google.android.gms.location.zzs zzsVar = this.d;
   36:         SafeParcelWriter.writeIBinder(parcel, 3, zzsVar == null ? null : zzsVar.asBinder(), false);
   37:         zzq zzqVar = this.e;
   38:         SafeParcelWriter.writeIBinder(parcel, 4, zzqVar != null ? zzqVar.asBinder() : null, false);
   39:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   40:     }
   41: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/location/zzeh.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   35:         this.h = str;
   36:     }
   37: 
   38:     @Override // android.os.Parcelable
   39:     public final void writeToParcel(Parcel parcel, int i) {
   40:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   41:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   42:         SafeParcelWriter.writeParcelable(parcel, 2, this.c, i, false);
   43:         com.google.android.gms.location.zzy zzyVar = this.d;
   44:         SafeParcelWriter.writeIBinder(parcel, 3, zzyVar == null ? null : zzyVar.asBinder(), false);
   45:         SafeParcelWriter.writeParcelable(parcel, 4, this.f, i, false);
   46:         com.google.android.gms.location.zzv zzvVar = this.e;
   47:         SafeParcelWriter.writeIBinder(parcel, 5, zzvVar == null ? null : zzvVar.asBinder(), false);
   48:         zzq zzqVar = this.g;
   49:         SafeParcelWriter.writeIBinder(parcel, 6, zzqVar != null ? zzqVar.asBinder() : null, false);
   50:         SafeParcelWriter.writeString(parcel, 8, this.h, false);
   51:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   52:     }
   53: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/location/zzel.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   32:         return new zzel(null, pendingIntent, "");
   33:     }
   34: 
   35:     @Override // android.os.Parcelable
   36:     public final void writeToParcel(Parcel parcel, int i) {
   37:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   38:         SafeParcelWriter.writeStringList(parcel, 1, this.b, false);
   39:         SafeParcelWriter.writeParcelable(parcel, 2, this.c, i, false);
   40:         SafeParcelWriter.writeString(parcel, 3, this.d, false);
   41:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   42:     }
   43: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/location/zzed.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   51:         return new zzed(3, null, null, pendingIntent, ag.d(new StringBuilder(String.valueOf(iHashCode).length() + 14), "PendingIntent@", iHashCode));
   52:     }
   53: 
   54:     @Override // android.os.Parcelable
   55:     public final void writeToParcel(Parcel parcel, int i) {
   56:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   57:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   58:         SafeParcelWriter.writeIBinder(parcel, 2, this.c, false);
   59:         SafeParcelWriter.writeIBinder(parcel, 3, this.d, false);
   60:         SafeParcelWriter.writeParcelable(parcel, 4, this.e, i, false);
   61:         SafeParcelWriter.writeString(parcel, 6, this.f, false);
   62:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   63:     }
   64: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/location/zze.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8: 
    9: /* JADX INFO: loaded from: classes4.dex */
   10: public final class zze implements Parcelable.Creator {
   11:     @Override // android.os.Parcelable.Creator
   12:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   13:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   14:         String strCreateString = null;
   15:         String strCreateString2 = null;
   16:         String strCreateString3 = null;
   17:         ArrayList arrayListCreateTypedList = null;
   18:         zzd zzdVar = null;
   19:         int i = 0;
   20:         while (parcel.dataPosition() < iValidateObjectHeader) {
   21:             int header = SafeParcelReader.readHeader(parcel);
   22:             int fieldId = SafeParcelReader.getFieldId(header);
   23:             if (fieldId == 1) {
   24:                 i = SafeParcelReader.readInt(parcel, header);
   25:             } else if (fieldId == 3) {
   26:                 strCreateString = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/location/zzee.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8: 
    9: /* JADX INFO: loaded from: classes4.dex */
   10: public final class zzee implements Parcelable.Creator {
   11:     @Override // android.os.Parcelable.Creator
   12:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   13:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   14:         IBinder iBinder = null;
   15:         IBinder iBinder2 = null;
   16:         PendingIntent pendingIntent = null;
   17:         String strCreateString = null;
   18:         int i = 0;
   19:         while (parcel.dataPosition() < iValidateObjectHeader) {
   20:             int header = SafeParcelReader.readHeader(parcel);
   21:             int fieldId = SafeParcelReader.getFieldId(header);
   22:             if (fieldId == 1) {
   23:                 i = SafeParcelReader.readInt(parcel, header);
   24:             } else if (fieldId == 2) {
   25:                 iBinder = SafeParcelReader.readIBinder(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/location/zzd.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  106:     }
  107: 
  108:     @Override // android.os.Parcelable
  109:     public final void writeToParcel(Parcel parcel, int i) {
  110:         parcel.getClass();
  111:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  112:         SafeParcelWriter.writeInt(parcel, 1, this.b);
  113:         SafeParcelWriter.writeString(parcel, 3, this.c, false);
  114:         SafeParcelWriter.writeString(parcel, 4, this.d, false);
  115:         SafeParcelWriter.writeString(parcel, 6, this.e, false);
  116:         SafeParcelWriter.writeParcelable(parcel, 7, this.g, i, false);
  117:         SafeParcelWriter.writeTypedList(parcel, 8, this.f, false);
  118:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  119:     }
  120: 
  121:     @Pure
  122:     public final boolean zza() {
  123:         return this.g != null;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/location/zzh.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzh implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         DeviceOrientationRequest deviceOrientationRequest = zzg.c;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             if (SafeParcelReader.getFieldId(header) != 1) {
   17:                 SafeParcelReader.skipUnknownField(parcel, header);
   18:             } else {
   19:                 deviceOrientationRequest = (DeviceOrientationRequest) SafeParcelReader.createParcelable(parcel, header, DeviceOrientationRequest.CREATOR);
   20:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/location/zzei.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8: 
    9: /* JADX INFO: loaded from: classes4.dex */
   10: public final class zzei implements Parcelable.Creator {
   11:     @Override // android.os.Parcelable.Creator
   12:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   13:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   14:         zzef zzefVar = null;
   15:         IBinder iBinder = null;
   16:         IBinder iBinder2 = null;
   17:         PendingIntent pendingIntent = null;
   18:         IBinder iBinder3 = null;
   19:         String strCreateString = null;
   20:         int i = 1;
   21:         while (parcel.dataPosition() < iValidateObjectHeader) {
   22:             int header = SafeParcelReader.readHeader(parcel);
   23:             switch (SafeParcelReader.getFieldId(header)) {
   24:                 case 1:
   25:                     i = SafeParcelReader.readInt(parcel, header);
   26:                     break;
   27:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/location/zzl.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzl implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         Status status = null;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             if (SafeParcelReader.getFieldId(header) != 1) {
   17:                 SafeParcelReader.skipUnknownField(parcel, header);
   18:             } else {
   19:                 status = (Status) SafeParcelReader.createParcelable(parcel, header, Status.CREATOR);
   20:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/location/zzem.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8: 
    9: /* JADX INFO: loaded from: classes4.dex */
   10: public final class zzem implements Parcelable.Creator {
   11:     @Override // android.os.Parcelable.Creator
   12:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   13:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   14:         String strCreateString = "";
   15:         ArrayList<String> arrayListCreateStringList = null;
   16:         PendingIntent pendingIntent = null;
   17:         while (parcel.dataPosition() < iValidateObjectHeader) {
   18:             int header = SafeParcelReader.readHeader(parcel);
   19:             int fieldId = SafeParcelReader.getFieldId(header);
   20:             if (fieldId == 1) {
   21:                 arrayListCreateStringList = SafeParcelReader.createStringList(parcel, header);
   22:             } else if (fieldId == 2) {
   23:                 pendingIntent = (PendingIntent) SafeParcelReader.createParcelable(parcel, header, PendingIntent.CREATOR);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/measurement/zzjf.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   68:     }
   69: 
   70:     @Override // android.os.Parcelable
   71:     public final void writeToParcel(Parcel parcel, int i) {
   72:         int i2 = this.zza;
   73:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   74:         SafeParcelWriter.writeInt(parcel, 2, i2);
   75:         SafeParcelWriter.writeTypedArray(parcel, 3, this.zzb, i, false);
   76:         SafeParcelWriter.writeStringArray(parcel, 4, this.zzc, false);
   77:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   78:     }
   79: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/measurement/zzez.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  232: 
  233:     public final void zzd(com.google.android.gms.measurement.internal.zzjp zzjpVar) {
  234:         jbb jbbVar = new jbb(zzjpVar);
  235:         if (this.h != null) {
  236:             try {
  237:                 this.h.setEventInterceptor(jbbVar);
  238:                 return;
  239:             } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
  240:                 Log.w("FA", "Failed to set event interceptor on calling thread. Trying again on the dynamite thread.");
  241:             }
  242:         }
  243:         a(new mab(this, jbbVar));
  244:     }
  245: 
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/measurement/zzjj.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   15:     }
   16: 
   17:     @Override // android.os.Parcelable
   18:     public final void writeToParcel(Parcel parcel, int i) {
   19:         byte[] bArr = this.zza;
   20:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   21:         SafeParcelWriter.writeByteArray(parcel, 2, bArr, false);
   22:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   23:     }
   24: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/measurement/zzdc.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzdc implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         Bundle bundleCreateBundle = null;
   14:         String strCreateString = null;
   15:         boolean z = false;
   16:         long j = 0;
   17:         long j2 = 0;
   18:         while (parcel.dataPosition() < iValidateObjectHeader) {
   19:             int header = SafeParcelReader.readHeader(parcel);
   20:             int fieldId = SafeParcelReader.getFieldId(header);
   21:             if (fieldId == 1) {
   22:                 j = SafeParcelReader.readLong(parcel, header);
   23:             } else if (fieldId == 2) {
   24:                 j2 = SafeParcelReader.readLong(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/measurement/zzcp.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  104: 
  105:     void setDataCollectionEnabled(boolean z);
  106: 
  107:     void setDefaultEventParameters(Bundle bundle);
  108: 
  109:     void setEventInterceptor(zzcy zzcyVar);
  110: 
  111:     void setInstanceIdProvider(zzda zzdaVar);
  112: 
  113:     void setMeasurementEnabled(boolean z, long j);
  114: 
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/measurement/zzjs.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   40:     }
   41: 
   42:     @Override // android.os.Parcelable
   43:     public final void writeToParcel(Parcel parcel, int i) {
   44:         List list = this.zza;
   45:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   46:         SafeParcelWriter.writeTypedList(parcel, 2, list, false);
   47:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   48:     }
   49: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/measurement/zzjk.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzjk implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         byte[] bArrCreateByteArray = null;
   13:         while (parcel.dataPosition() < iValidateObjectHeader) {
   14:             int header = SafeParcelReader.readHeader(parcel);
   15:             if (SafeParcelReader.getFieldId(header) != 2) {
   16:                 SafeParcelReader.skipUnknownField(parcel, header);
   17:             } else {
   18:                 bArrCreateByteArray = SafeParcelReader.createByteArray(parcel, header);
   19:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/measurement/zzdb.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   24:     }
   25: 
   26:     @Override // android.os.Parcelable
   27:     public final void writeToParcel(Parcel parcel, int i) {
   28:         long j = this.zza;
   29:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   30:         SafeParcelWriter.writeLong(parcel, 1, j);
   31:         SafeParcelWriter.writeLong(parcel, 2, this.zzb);
   32:         SafeParcelWriter.writeBoolean(parcel, 3, this.zzc);
   33:         SafeParcelWriter.writeBundle(parcel, 7, this.zzd, false);
   34:         SafeParcelWriter.writeString(parcel, 8, this.zze, false);
   35:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   36:     }
   37: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/measurement/zzjv.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzjv implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         int i2 = 0;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 i = SafeParcelReader.readInt(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/measurement/zzjo.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  200: 
  201:     @Override // android.os.Parcelable
  202:     public final void writeToParcel(Parcel parcel, int i) {
  203:         String str = this.zza;
  204:         boolean zZzb = zzjp.zzb(str);
  205:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  206:         if (!zZzb) {
  207:             SafeParcelWriter.writeString(parcel, 2, str, false);
  208:         }
  209:         long j = this.b;
  210:         if (j != 0) {
  235:         }
  236:         int i4 = this.g;
  237:         if (!zzjp.zza(i4)) {
  238:             SafeParcelWriter.writeInt(parcel, 10, i4);
  239:         }
  240:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  241:     }
  242: 
  243:     public final long zza() {
  244:         if (this.zzg == 1) {
  245:             return this.b;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/measurement/zzjr.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzjr implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         boolean z = false;
   13:         String strCreateString = null;
   14:         String strCreateString2 = null;
   15:         zzjo zzjoVar = null;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 2) {
   20:                 strCreateString = SafeParcelReader.createString(parcel, header);
   21:             } else if (fieldId == 3) {
   22:                 strCreateString2 = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/measurement/zzjg.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzjg implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         zzjo[] zzjoVarArr = null;
   13:         int i = 0;
   14:         String[] strArrCreateStringArray = null;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 2) {
   19:                 i = SafeParcelReader.readInt(parcel, header);
   20:             } else if (fieldId == 3) {
   21:                 zzjoVarArr = (zzjo[]) SafeParcelReader.createTypedArray(parcel, header, zzjo.CREATOR);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/measurement/zzji.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzji implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         long j = 0;
   13:         String strCreateString = null;
   14:         String strCreateString2 = null;
   15:         zzjf[] zzjfVarArr = null;
   16:         byte[] bArrCreateByteArray = null;
   17:         boolean z = false;
   18:         while (parcel.dataPosition() < iValidateObjectHeader) {
   19:             int header = SafeParcelReader.readHeader(parcel);
   20:             switch (SafeParcelReader.getFieldId(header)) {
   21:                 case 2:
   22:                     strCreateString = SafeParcelReader.createString(parcel, header);
   23:                     break;
   24:                 case 3:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/measurement/zzjt.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzjt implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         ArrayList arrayListCreateTypedList = null;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             if (SafeParcelReader.getFieldId(header) != 2) {
   17:                 SafeParcelReader.skipUnknownField(parcel, header);
   18:             } else {
   19:                 arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, zzjq.CREATOR);
   20:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/measurement/zzdd.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   41:     }
   42: 
   43:     @Override // android.os.Parcelable
   44:     public final void writeToParcel(Parcel parcel, int i) {
   45:         int i2 = this.zza;
   46:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   47:         SafeParcelWriter.writeInt(parcel, 1, i2);
   48:         SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
   49:         SafeParcelWriter.writeParcelable(parcel, 3, this.zzc, i, false);
   50:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   51:     }
   52: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/measurement/zzjm.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzjm implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         byte[] bArrCreateByteArray = null;
   14:         byte[][] bArrCreateByteArrayArray = null;
   15:         byte[][] bArrCreateByteArrayArray2 = null;
   16:         byte[][] bArrCreateByteArrayArray3 = null;
   18:         int[] iArrCreateIntArray = null;
   19:         byte[][] bArrCreateByteArrayArray5 = null;
   20:         int[] iArrCreateIntArray2 = null;
   21:         byte[][] bArrCreateByteArrayArray6 = null;
   22:         while (parcel.dataPosition() < iValidateObjectHeader) {
   23:             int header = SafeParcelReader.readHeader(parcel);
   24:             switch (SafeParcelReader.getFieldId(header)) {
   25:                 case 2:
   26:                     strCreateString = SafeParcelReader.createString(parcel, header);
   27:                     break;
   28:                 case 3:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/measurement/zzcn.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  367:         zzbn.zzc(parcelG, bundle);
  368:         h(parcelG, 42);
  369:     }
  370: 
  371:     @Override // com.google.android.gms.internal.measurement.zzcp
  372:     public final void setEventInterceptor(zzcy zzcyVar) {
  373:         Parcel parcelG = g();
  374:         zzbn.zzd(parcelG, zzcyVar);
  375:         h(parcelG, 34);
  376:     }
  377: 
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/measurement/zzjp.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   14:         return obj == null;
   15:     }
   16: 
   17:     @Override // android.os.Parcelable.Creator
   18:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   19:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   20:         boolean z = false;
   21:         int i = 0;
   22:         int i2 = 0;
   23:         int i3 = 0;
   24:         String strCreateString = null;
   25:         String strCreateString2 = null;
   26:         byte[] bArrCreateByteArray = null;
   27:         double d = 0.0d;
   28:         long j = 0;
   29:         while (parcel.dataPosition() < iValidateObjectHeader) {
   30:             int header = SafeParcelReader.readHeader(parcel);
   31:             switch (SafeParcelReader.getFieldId(header)) {
   32:                 case 2:
   33:                     strCreateString = SafeParcelReader.createString(parcel, header);
   34:                     break;
   35:                 case 3:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/measurement/zzjh.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   69:     }
   70: 
   71:     @Override // android.os.Parcelable
   72:     public final void writeToParcel(Parcel parcel, int i) {
   73:         String str = this.zza;
   74:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   75:         SafeParcelWriter.writeString(parcel, 2, str, false);
   76:         SafeParcelWriter.writeString(parcel, 3, this.zzc, false);
   77:         SafeParcelWriter.writeTypedArray(parcel, 4, this.zzd, i, false);
   78:         SafeParcelWriter.writeBoolean(parcel, 5, this.zzf);
   79:         SafeParcelWriter.writeByteArray(parcel, 6, this.zzb, false);
   80:         SafeParcelWriter.writeLong(parcel, 7, this.zzg);
   81:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   82:     }
   83: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/measurement/zzju.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   38:     }
   39: 
   40:     @Override // android.os.Parcelable
   41:     public final void writeToParcel(Parcel parcel, int i) {
   42:         int i2 = this.zza;
   43:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   44:         SafeParcelWriter.writeInt(parcel, 1, i2);
   45:         SafeParcelWriter.writeInt(parcel, 2, this.zzb);
   46:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   47:     }
   48: 
   49:     @Override // java.lang.Comparable
   50:     /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
   51:     public final int compareTo(zzju zzjuVar) {
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/measurement/zzde.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzde implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         String strCreateString = null;
   14:         int i = 0;
   15:         Intent intent = null;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 1) {
   20:                 i = SafeParcelReader.readInt(parcel, header);
   21:             } else if (fieldId == 2) {
   22:                 strCreateString = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/measurement/zzjl.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  186:     }
  187: 
  188:     @Override // android.os.Parcelable
  189:     public final void writeToParcel(Parcel parcel, int i) {
  190:         String str = this.zzb;
  191:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  192:         SafeParcelWriter.writeString(parcel, 2, str, false);
  193:         SafeParcelWriter.writeByteArray(parcel, 3, this.zzc, false);
  194:         SafeParcelWriter.writeByteArrayArray(parcel, 4, this.zzd, false);
  195:         SafeParcelWriter.writeByteArrayArray(parcel, 5, this.zze, false);
  196:         SafeParcelWriter.writeByteArrayArray(parcel, 6, this.zzf, false);
  197:         SafeParcelWriter.writeByteArrayArray(parcel, 7, this.zzg, false);
  198:         SafeParcelWriter.writeIntArray(parcel, 8, this.zzh, false);
  199:         SafeParcelWriter.writeByteArrayArray(parcel, 9, this.zzi, false);
  200:         SafeParcelWriter.writeIntArray(parcel, 10, this.zzj, false);
  201:         SafeParcelWriter.writeByteArrayArray(parcel, 11, this.b, false);
  202:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  203:     }
  204: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/measurement/zzco.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  316:                 if (strongBinder14 != null) {
  317:                     IInterface iInterfaceQueryLocalInterface14 = strongBinder14.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
  318:                     zzcwVar3 = iInterfaceQueryLocalInterface14 instanceof zzcy ? (zzcy) iInterfaceQueryLocalInterface14 : new zzcw(strongBinder14);
  319:                 }
  320:                 zzbn.zzf(parcel);
  321:                 setEventInterceptor(zzcwVar3);
  322:                 break;
  323:             case 35:
  324:                 IBinder strongBinder15 = parcel.readStrongBinder();
  325:                 if (strongBinder15 != null) {
  326:                     IInterface iInterfaceQueryLocalInterface15 = strongBinder15.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/measurement/zzjq.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   50:     }
   51: 
   52:     @Override // android.os.Parcelable
   53:     public final void writeToParcel(Parcel parcel, int i) {
   54:         String str = this.zza;
   55:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   56:         SafeParcelWriter.writeString(parcel, 2, str, false);
   57:         SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
   58:         SafeParcelWriter.writeParcelable(parcel, 4, this.zzc, i, false);
   59:         SafeParcelWriter.writeBoolean(parcel, 5, this.zzd);
   60:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   61:     }
   62: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzaa.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzaa implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         int i = 0;
   15:         String strCreateString3 = null;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 2) {
   20:                 i = SafeParcelReader.readInt(parcel, header);
   21:             } else if (fieldId == 3) {
   22:                 strCreateString = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzye.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzye implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         boolean z = false;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 i = SafeParcelReader.readInt(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzxp.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   16:         this.c = strArr;
   17:     }
   18: 
   19:     @Override // android.os.Parcelable
   20:     public final void writeToParcel(Parcel parcel, int i) {
   21:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   22:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   23:         SafeParcelWriter.writeStringArray(parcel, 2, this.c, false);
   24:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   25:     }
   26: 
   27:     public final int zza() {
   28:         return this.b;
   29:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzae.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzae implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 2) {
   18:                 strCreateString = SafeParcelReader.createString(parcel, header);
   19:             } else if (fieldId != 3) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzxt.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   40:         this.o = str14;
   41:     }
   42: 
   43:     @Override // android.os.Parcelable
   44:     public final void writeToParcel(Parcel parcel, int i) {
   45:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   46:         SafeParcelWriter.writeString(parcel, 1, this.b, false);
   47:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   48:         SafeParcelWriter.writeString(parcel, 3, this.d, false);
   49:         SafeParcelWriter.writeString(parcel, 4, this.e, false);
   50:         SafeParcelWriter.writeString(parcel, 5, this.f, false);
   55:         SafeParcelWriter.writeString(parcel, 10, this.k, false);
   56:         SafeParcelWriter.writeString(parcel, 11, this.l, false);
   57:         SafeParcelWriter.writeString(parcel, 12, this.m, false);
   58:         SafeParcelWriter.writeString(parcel, 13, this.n, false);
   59:         SafeParcelWriter.writeString(parcel, 14, this.o, false);
   60:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   61:     }
   62: 
   63:     public final String zza() {
   64:         return this.h;
   65:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzya.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   18:         this.d = i;
   19:     }
   20: 
   21:     @Override // android.os.Parcelable
   22:     public final void writeToParcel(Parcel parcel, int i) {
   23:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   24:         SafeParcelWriter.writeString(parcel, 1, this.b, false);
   25:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   26:         SafeParcelWriter.writeInt(parcel, 3, this.d);
   27:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   28:     }
   29: 
   30:     public final int zza() {
   31:         return this.d;
   32:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzx.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzx implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         String strCreateString3 = null;
   15:         String strCreateString4 = null;
   16:         String strCreateString5 = null;
   17:         zzj zzjVar = null;
   18:         zzj zzjVar2 = null;
   19:         while (parcel.dataPosition() < iValidateObjectHeader) {
   20:             int header = SafeParcelReader.readHeader(parcel);
   21:             switch (SafeParcelReader.getFieldId(header)) {
   22:                 case 2:
   23:                     strCreateString = SafeParcelReader.createString(parcel, header);
   24:                     break;
   25:                 case 3:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzt.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   18:         this.zzc = i;
   19:     }
   20: 
   21:     @Override // android.os.Parcelable
   22:     public final void writeToParcel(Parcel parcel, int i) {
   23:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   24:         SafeParcelWriter.writeString(parcel, 2, this.zza, false);
   25:         SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
   26:         SafeParcelWriter.writeInt(parcel, 4, this.zzc);
   27:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   28:     }
   29: 
   30:     public zzt() {
   31:     }
   32: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzxx.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   16:         this.c = str;
   17:     }
   18: 
   19:     @Override // android.os.Parcelable
   20:     public final void writeToParcel(Parcel parcel, int i) {
   21:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   22:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   23:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   24:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   25:     }
   26: 
   27:     public final int zza() {
   28:         return this.b;
   29:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzai.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzai implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         boolean z = false;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 2) {
   18:                 i = SafeParcelReader.readInt(parcel, header);
   19:             } else if (fieldId != 3) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzi.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   16:         this.zzb = strArr;
   17:     }
   18: 
   19:     @Override // android.os.Parcelable
   20:     public final void writeToParcel(Parcel parcel, int i) {
   21:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   22:         SafeParcelWriter.writeInt(parcel, 2, this.zza);
   23:         SafeParcelWriter.writeStringArray(parcel, 3, this.zzb, false);
   24:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   25:     }
   26: 
   27:     public zzi() {
   28:     }
   29: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzyp.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzyp implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         String strCreateString3 = null;
   15:         String strCreateString4 = null;
   16:         String strCreateString5 = null;
   17:         String strCreateString6 = null;
   18:         String strCreateString7 = null;
   19:         while (parcel.dataPosition() < iValidateObjectHeader) {
   20:             int header = SafeParcelReader.readHeader(parcel);
   21:             switch (SafeParcelReader.getFieldId(header)) {
   22:                 case 1:
   23:                     strCreateString = SafeParcelReader.createString(parcel, header);
   24:                     break;
   25:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzyi.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzyi implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         String strCreateString3 = null;
   15:         String strCreateString4 = null;
   16:         String strCreateString5 = null;
   22:         String strCreateString11 = null;
   23:         String strCreateString12 = null;
   24:         String strCreateString13 = null;
   25:         String strCreateString14 = null;
   26:         while (parcel.dataPosition() < iValidateObjectHeader) {
   27:             int header = SafeParcelReader.readHeader(parcel);
   28:             switch (SafeParcelReader.getFieldId(header)) {
   29:                 case 1:
   30:                     strCreateString = SafeParcelReader.createString(parcel, header);
   31:                     break;
   32:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzp.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   26:         this.zzg = str7;
   27:     }
   28: 
   29:     @Override // android.os.Parcelable
   30:     public final void writeToParcel(Parcel parcel, int i) {
   31:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   32:         SafeParcelWriter.writeString(parcel, 2, this.zza, false);
   33:         SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
   34:         SafeParcelWriter.writeString(parcel, 4, this.zzc, false);
   35:         SafeParcelWriter.writeString(parcel, 5, this.zzd, false);
   36:         SafeParcelWriter.writeString(parcel, 6, this.zze, false);
   37:         SafeParcelWriter.writeString(parcel, 7, this.zzf, false);
   38:         SafeParcelWriter.writeString(parcel, 8, this.zzg, false);
   39:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   40:     }
   41: 
   42:     public zzp() {
   43:     }
   44: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzm.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   40:         this.zzn = str14;
   41:     }
   42: 
   43:     @Override // android.os.Parcelable
   44:     public final void writeToParcel(Parcel parcel, int i) {
   45:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   46:         SafeParcelWriter.writeString(parcel, 2, this.zza, false);
   47:         SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
   48:         SafeParcelWriter.writeString(parcel, 4, this.zzc, false);
   49:         SafeParcelWriter.writeString(parcel, 5, this.zzd, false);
   50:         SafeParcelWriter.writeString(parcel, 6, this.zze, false);
   55:         SafeParcelWriter.writeString(parcel, 11, this.zzj, false);
   56:         SafeParcelWriter.writeString(parcel, 12, this.zzk, false);
   57:         SafeParcelWriter.writeString(parcel, 13, this.zzl, false);
   58:         SafeParcelWriter.writeString(parcel, 14, this.zzm, false);
   59:         SafeParcelWriter.writeString(parcel, 15, this.zzn, false);
   60:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   61:     }
   62: 
   63:     public zzm() {
   64:     }
   65: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzyt.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzyt implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         String strCreateString = null;
   14:         String strCreateString2 = null;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 1) {
   19:                 strCreateString = SafeParcelReader.createString(parcel, header);
   20:             } else if (fieldId == 2) {
   21:                 strCreateString2 = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzu.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   47:         this.zzn = zzmVar;
   48:     }
   49: 
   50:     @Override // android.os.Parcelable
   51:     public final void writeToParcel(Parcel parcel, int i) {
   52:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   53:         SafeParcelWriter.writeInt(parcel, 2, this.zza);
   54:         SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
   55:         SafeParcelWriter.writeString(parcel, 4, this.zzc, false);
   56:         SafeParcelWriter.writeInt(parcel, 5, this.zzd);
   57:         SafeParcelWriter.writeTypedArray(parcel, 6, this.zze, i, false);
   65:         SafeParcelWriter.writeParcelable(parcel, 14, this.zzm, i, false);
   66:         SafeParcelWriter.writeParcelable(parcel, 15, this.zzn, i, false);
   67:         SafeParcelWriter.writeByteArray(parcel, 16, this.zzo, false);
   68:         SafeParcelWriter.writeBoolean(parcel, 17, this.zzp);
   69:         SafeParcelWriter.writeDouble(parcel, 18, this.zzq);
   70:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   71:     }
   72: 
   73:     public zzu() {
   74:     }
   75: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzxy.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   16:         this.c = str2;
   17:     }
   18: 
   19:     @Override // android.os.Parcelable
   20:     public final void writeToParcel(Parcel parcel, int i) {
   21:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   22:         SafeParcelWriter.writeString(parcel, 1, this.b, false);
   23:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   24:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   25:     }
   26: 
   27:     public final String zza() {
   28:         return this.b;
   29:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzah.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   32:         return Objects.hashCode(Integer.valueOf(this.zza), Boolean.valueOf(this.zzb));
   33:     }
   34: 
   35:     @Override // android.os.Parcelable
   36:     public final void writeToParcel(Parcel parcel, int i) {
   37:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   38:         SafeParcelWriter.writeInt(parcel, 2, this.zza);
   39:         SafeParcelWriter.writeBoolean(parcel, 3, this.zzb);
   40:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   41:     }
   42: 
   43:     public zzah() {
   44:     }
   45: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzh.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzh implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String[] strArrCreateStringArray = null;
   13:         int i = 0;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 2) {
   18:                 i = SafeParcelReader.readInt(parcel, header);
   19:             } else if (fieldId != 3) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzyq.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzyq implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         int i = 0;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 i = SafeParcelReader.readInt(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzyh.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzyh implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         zzxw zzxwVar = null;
   13:         String strCreateString = null;
   14:         String strCreateString2 = null;
   15:         zzxx[] zzxxVarArr = null;
   16:         zzxu[] zzxuVarArr = null;
   17:         String[] strArrCreateStringArray = null;
   18:         zzxp[] zzxpVarArr = null;
   19:         while (parcel.dataPosition() < iValidateObjectHeader) {
   20:             int header = SafeParcelReader.readHeader(parcel);
   21:             switch (SafeParcelReader.getFieldId(header)) {
   22:                 case 1:
   23:                     zzxwVar = (zzxw) SafeParcelReader.createParcelable(parcel, header, zzxw.CREATOR);
   24:                     break;
   25:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzq.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   16:         this.zzb = str;
   17:     }
   18: 
   19:     @Override // android.os.Parcelable
   20:     public final void writeToParcel(Parcel parcel, int i) {
   21:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   22:         SafeParcelWriter.writeInt(parcel, 2, this.zza);
   23:         SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
   24:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   25:     }
   26: 
   27:     public zzq() {
   28:     }
   29: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzl.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   26:         this.zzg = zziVarArr;
   27:     }
   28: 
   29:     @Override // android.os.Parcelable
   30:     public final void writeToParcel(Parcel parcel, int i) {
   31:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   32:         SafeParcelWriter.writeParcelable(parcel, 2, this.zza, i, false);
   33:         SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
   34:         SafeParcelWriter.writeString(parcel, 4, this.zzc, false);
   35:         SafeParcelWriter.writeTypedArray(parcel, 5, this.zzd, i, false);
   36:         SafeParcelWriter.writeTypedArray(parcel, 6, this.zze, i, false);
   37:         SafeParcelWriter.writeStringArray(parcel, 7, this.zzf, false);
   38:         SafeParcelWriter.writeTypedArray(parcel, 8, this.zzg, i, false);
   39:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   40:     }
   41: 
   42:     public zzl() {
   43:     }
   44: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzyu.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   22:         this.f = j;
   23:     }
   24: 
   25:     @Override // android.os.Parcelable
   26:     public final void writeToParcel(Parcel parcel, int i) {
   27:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   28:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   29:         SafeParcelWriter.writeInt(parcel, 2, this.c);
   30:         SafeParcelWriter.writeInt(parcel, 3, this.d);
   31:         SafeParcelWriter.writeInt(parcel, 4, this.e);
   32:         SafeParcelWriter.writeLong(parcel, 5, this.f);
   33:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   34:     }
   35: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzyd.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   16:         this.c = z;
   17:     }
   18: 
   19:     @Override // android.os.Parcelable
   20:     public final void writeToParcel(Parcel parcel, int i) {
   21:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   22:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   23:         SafeParcelWriter.writeBoolean(parcel, 2, this.c);
   24:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   25:     }
   26: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzxq.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   28:         this.i = str;
   29:     }
   30: 
   31:     @Override // android.os.Parcelable
   32:     public final void writeToParcel(Parcel parcel, int i) {
   33:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   34:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   35:         SafeParcelWriter.writeInt(parcel, 2, this.c);
   36:         SafeParcelWriter.writeInt(parcel, 3, this.d);
   37:         SafeParcelWriter.writeInt(parcel, 4, this.e);
   38:         SafeParcelWriter.writeInt(parcel, 5, this.f);
   39:         SafeParcelWriter.writeInt(parcel, 6, this.g);
   40:         SafeParcelWriter.writeBoolean(parcel, 7, this.h);
   41:         SafeParcelWriter.writeString(parcel, 8, this.i, false);
   42:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   43:     }
   44: 
   45:     public final int zza() {
   46:         return this.d;
   47:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzad.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzad implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         int i = 0;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 2) {
   18:                 i = SafeParcelReader.readInt(parcel, header);
   19:             } else if (fieldId != 3) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzxu.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   20:         this.e = str3;
   21:     }
   22: 
   23:     @Override // android.os.Parcelable
   24:     public final void writeToParcel(Parcel parcel, int i) {
   25:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   26:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   27:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   28:         SafeParcelWriter.writeString(parcel, 3, this.d, false);
   29:         SafeParcelWriter.writeString(parcel, 4, this.e, false);
   30:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   31:     }
   32: 
   33:     public final int zza() {
   34:         return this.b;
   35:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzy.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzy implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         zzp zzpVar = null;
   13:         String strCreateString = null;
   14:         String strCreateString2 = null;
   15:         zzq[] zzqVarArr = null;
   16:         zzn[] zznVarArr = null;
   17:         String[] strArrCreateStringArray = null;
   18:         zzi[] zziVarArr = null;
   19:         while (parcel.dataPosition() < iValidateObjectHeader) {
   20:             int header = SafeParcelReader.readHeader(parcel);
   21:             switch (SafeParcelReader.getFieldId(header)) {
   22:                 case 2:
   23:                     zzpVar = (zzp) SafeParcelReader.createParcelable(parcel, header, zzp.CREATOR);
   24:                     break;
   25:                 case 3:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzw.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzw implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         int i = 0;
   14:         int i2 = 0;
   15:         int i3 = 0;
   16:         int i4 = 0;
   17:         int i5 = 0;
   18:         int i6 = 0;
   19:         boolean z = false;
   20:         while (parcel.dataPosition() < iValidateObjectHeader) {
   21:             int header = SafeParcelReader.readHeader(parcel);
   22:             switch (SafeParcelReader.getFieldId(header)) {
   23:                 case 2:
   24:                     i = SafeParcelReader.readInt(parcel, header);
   25:                     break;
   26:                 case 3:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzys.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzys implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 strCreateString = SafeParcelReader.createString(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzj.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   28:         this.zzh = str;
   29:     }
   30: 
   31:     @Override // android.os.Parcelable
   32:     public final void writeToParcel(Parcel parcel, int i) {
   33:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   34:         SafeParcelWriter.writeInt(parcel, 2, this.zza);
   35:         SafeParcelWriter.writeInt(parcel, 3, this.zzb);
   36:         SafeParcelWriter.writeInt(parcel, 4, this.zzc);
   37:         SafeParcelWriter.writeInt(parcel, 5, this.zzd);
   38:         SafeParcelWriter.writeInt(parcel, 6, this.zze);
   39:         SafeParcelWriter.writeInt(parcel, 7, this.zzf);
   40:         SafeParcelWriter.writeBoolean(parcel, 8, this.zzg);
   41:         SafeParcelWriter.writeString(parcel, 9, this.zzh, false);
   42:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   43:     }
   44: 
   45:     public zzj() {
   46:     }
   47: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzs.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   16:         this.zzb = str2;
   17:     }
   18: 
   19:     @Override // android.os.Parcelable
   20:     public final void writeToParcel(Parcel parcel, int i) {
   21:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   22:         SafeParcelWriter.writeString(parcel, 2, this.zza, false);
   23:         SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
   24:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   25:     }
   26: 
   27:     public zzs() {
   28:     }
   29: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzyj.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzyj implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         int i = 0;
   15:         String strCreateString3 = null;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 1) {
   20:                 i = SafeParcelReader.readInt(parcel, header);
   21:             } else if (fieldId == 2) {
   22:                 strCreateString = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzn.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   20:         this.zzd = str3;
   21:     }
   22: 
   23:     @Override // android.os.Parcelable
   24:     public final void writeToParcel(Parcel parcel, int i) {
   25:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   26:         SafeParcelWriter.writeInt(parcel, 2, this.zza);
   27:         SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
   28:         SafeParcelWriter.writeString(parcel, 4, this.zzc, false);
   29:         SafeParcelWriter.writeString(parcel, 5, this.zzd, false);
   30:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   31:     }
   32: 
   33:     public zzn() {
   34:     }
   35: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzan.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   22:         this.zze = i4;
   23:     }
   24: 
   25:     @Override // android.os.Parcelable
   26:     public final void writeToParcel(Parcel parcel, int i) {
   27:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   28:         SafeParcelWriter.writeInt(parcel, 2, this.zza);
   29:         SafeParcelWriter.writeInt(parcel, 3, this.zzb);
   30:         SafeParcelWriter.writeInt(parcel, 4, this.zzc);
   31:         SafeParcelWriter.writeLong(parcel, 5, this.zzd);
   32:         SafeParcelWriter.writeInt(parcel, 6, this.zze);
   33:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   34:     }
   35: 
   36:     public zzan() {
   37:     }
   38: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzab.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzab implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         double d = 0.0d;
   13:         double d2 = 0.0d;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 2) {
   18:                 d = SafeParcelReader.readDouble(parcel, header);
   19:             } else if (fieldId != 3) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzyf.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzyf implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         int i = 0;
   14:         int i2 = 0;
   15:         int i3 = 0;
   16:         int i4 = 0;
   17:         int i5 = 0;
   18:         int i6 = 0;
   19:         boolean z = false;
   20:         while (parcel.dataPosition() < iValidateObjectHeader) {
   21:             int header = SafeParcelReader.readHeader(parcel);
   22:             switch (SafeParcelReader.getFieldId(header)) {
   23:                 case 1:
   24:                     i = SafeParcelReader.readInt(parcel, header);
   25:                     break;
   26:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzxs.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   26:         this.h = zzxpVarArr;
   27:     }
   28: 
   29:     @Override // android.os.Parcelable
   30:     public final void writeToParcel(Parcel parcel, int i) {
   31:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   32:         SafeParcelWriter.writeParcelable(parcel, 1, this.b, i, false);
   33:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   34:         SafeParcelWriter.writeString(parcel, 3, this.d, false);
   35:         SafeParcelWriter.writeTypedArray(parcel, 4, this.e, i, false);
   36:         SafeParcelWriter.writeTypedArray(parcel, 5, this.f, i, false);
   37:         SafeParcelWriter.writeStringArray(parcel, 6, this.g, false);
   38:         SafeParcelWriter.writeTypedArray(parcel, 7, this.h, i, false);
   39:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   40:     }
   41: 
   42:     public final zzxw zza() {
   43:         return this.b;
   44:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzaf.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzaf implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 2) {
   18:                 strCreateString = SafeParcelReader.createString(parcel, header);
   19:             } else if (fieldId != 3) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzxw.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   26:         this.h = str7;
   27:     }
   28: 
   29:     @Override // android.os.Parcelable
   30:     public final void writeToParcel(Parcel parcel, int i) {
   31:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   32:         SafeParcelWriter.writeString(parcel, 1, this.b, false);
   33:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   34:         SafeParcelWriter.writeString(parcel, 3, this.d, false);
   35:         SafeParcelWriter.writeString(parcel, 4, this.e, false);
   36:         SafeParcelWriter.writeString(parcel, 5, this.f, false);
   37:         SafeParcelWriter.writeString(parcel, 6, this.g, false);
   38:         SafeParcelWriter.writeString(parcel, 7, this.h, false);
   39:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   40:     }
   41: 
   42:     public final String zza() {
   43:         return this.e;
   44:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzyb.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   43:         this.p = zzxtVar;
   44:     }
   45: 
   46:     @Override // android.os.Parcelable
   47:     public final void writeToParcel(Parcel parcel, int i) {
   48:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   49:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   50:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   51:         SafeParcelWriter.writeString(parcel, 3, this.d, false);
   52:         SafeParcelWriter.writeByteArray(parcel, 4, this.e, false);
   53:         SafeParcelWriter.writeTypedArray(parcel, 5, this.f, i, false);
   59:         SafeParcelWriter.writeParcelable(parcel, 11, this.l, i, false);
   60:         SafeParcelWriter.writeParcelable(parcel, 12, this.m, i, false);
   61:         SafeParcelWriter.writeParcelable(parcel, 13, this.n, i, false);
   62:         SafeParcelWriter.writeParcelable(parcel, 14, this.o, i, false);
   63:         SafeParcelWriter.writeParcelable(parcel, 15, this.p, i, false);
   64:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   65:     }
   66: 
   67:     public final int zza() {
   68:         return this.b;
   69:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzxo.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzxo implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String[] strArrCreateStringArray = null;
   13:         int i = 0;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 i = SafeParcelReader.readInt(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzac.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzac implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         String strCreateString3 = null;
   15:         String strCreateString4 = null;
   16:         String strCreateString5 = null;
   17:         String strCreateString6 = null;
   18:         String strCreateString7 = null;
   19:         while (parcel.dataPosition() < iValidateObjectHeader) {
   20:             int header = SafeParcelReader.readHeader(parcel);
   21:             switch (SafeParcelReader.getFieldId(header)) {
   22:                 case 2:
   23:                     strCreateString = SafeParcelReader.createString(parcel, header);
   24:                     break;
   25:                 case 3:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzyg.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzyg implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         String strCreateString3 = null;
   15:         String strCreateString4 = null;
   16:         String strCreateString5 = null;
   17:         zzxq zzxqVar = null;
   18:         zzxq zzxqVar2 = null;
   19:         while (parcel.dataPosition() < iValidateObjectHeader) {
   20:             int header = SafeParcelReader.readHeader(parcel);
   21:             switch (SafeParcelReader.getFieldId(header)) {
   22:                 case 1:
   23:                     strCreateString = SafeParcelReader.createString(parcel, header);
   24:                     break;
   25:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzxr.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   26:         this.h = zzxqVar2;
   27:     }
   28: 
   29:     @Override // android.os.Parcelable
   30:     public final void writeToParcel(Parcel parcel, int i) {
   31:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   32:         SafeParcelWriter.writeString(parcel, 1, this.b, false);
   33:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   34:         SafeParcelWriter.writeString(parcel, 3, this.d, false);
   35:         SafeParcelWriter.writeString(parcel, 4, this.e, false);
   36:         SafeParcelWriter.writeString(parcel, 5, this.f, false);
   37:         SafeParcelWriter.writeParcelable(parcel, 6, this.g, i, false);
   38:         SafeParcelWriter.writeParcelable(parcel, 7, this.h, i, false);
   39:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   40:     }
   41: 
   42:     public final zzxq zza() {
   43:         return this.h;
   44:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzag.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzag implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         String strCreateString = null;
   14:         String strCreateString2 = null;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 2) {
   19:                 strCreateString = SafeParcelReader.createString(parcel, header);
   20:             } else if (fieldId == 3) {
   21:                 strCreateString2 = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzxv.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   16:         this.c = d2;
   17:     }
   18: 
   19:     @Override // android.os.Parcelable
   20:     public final void writeToParcel(Parcel parcel, int i) {
   21:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   22:         SafeParcelWriter.writeDouble(parcel, 1, this.b);
   23:         SafeParcelWriter.writeDouble(parcel, 2, this.c);
   24:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   25:     }
   26: 
   27:     public final double zza() {
   28:         return this.b;
   29:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzz.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzz implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         String strCreateString3 = null;
   15:         String strCreateString4 = null;
   16:         String strCreateString5 = null;
   22:         String strCreateString11 = null;
   23:         String strCreateString12 = null;
   24:         String strCreateString13 = null;
   25:         String strCreateString14 = null;
   26:         while (parcel.dataPosition() < iValidateObjectHeader) {
   27:             int header = SafeParcelReader.readHeader(parcel);
   28:             switch (SafeParcelReader.getFieldId(header)) {
   29:                 case 2:
   30:                     strCreateString = SafeParcelReader.createString(parcel, header);
   31:                     break;
   32:                 case 3:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzyc.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzyc implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         String strCreateString = null;
   14:         String strCreateString2 = null;
   15:         byte[] bArrCreateByteArray = null;
   16:         Point[] pointArr = null;
   17:         zzxu zzxuVar = null;
   24:         zzxs zzxsVar = null;
   25:         zzxt zzxtVar = null;
   26:         int i = 0;
   27:         int i2 = 0;
   28:         while (parcel.dataPosition() < iValidateObjectHeader) {
   29:             int header = SafeParcelReader.readHeader(parcel);
   30:             switch (SafeParcelReader.getFieldId(header)) {
   31:                 case 1:
   32:                     i = SafeParcelReader.readInt(parcel, header);
   33:                     break;
   34:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzv.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzv implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         double d = 0.0d;
   14:         int i = 0;
   15:         int i2 = 0;
   16:         boolean z = false;
   17:         String strCreateString = null;
   26:         zzk zzkVar = null;
   27:         zzl zzlVar = null;
   28:         zzm zzmVar = null;
   29:         byte[] bArrCreateByteArray = null;
   30:         while (parcel.dataPosition() < iValidateObjectHeader) {
   31:             int header = SafeParcelReader.readHeader(parcel);
   32:             switch (SafeParcelReader.getFieldId(header)) {
   33:                 case 2:
   34:                     i = SafeParcelReader.readInt(parcel, header);
   35:                     break;
   36:                 case 3:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzxz.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   16:         this.c = str2;
   17:     }
   18: 
   19:     @Override // android.os.Parcelable
   20:     public final void writeToParcel(Parcel parcel, int i) {
   21:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   22:         SafeParcelWriter.writeString(parcel, 1, this.b, false);
   23:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   24:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   25:     }
   26: 
   27:     public final String zza() {
   28:         return this.b;
   29:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzyr.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzyr implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 strCreateString = SafeParcelReader.createString(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzk.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   26:         this.zzg = zzjVar2;
   27:     }
   28: 
   29:     @Override // android.os.Parcelable
   30:     public final void writeToParcel(Parcel parcel, int i) {
   31:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   32:         SafeParcelWriter.writeString(parcel, 2, this.zza, false);
   33:         SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
   34:         SafeParcelWriter.writeString(parcel, 4, this.zzc, false);
   35:         SafeParcelWriter.writeString(parcel, 5, this.zzd, false);
   36:         SafeParcelWriter.writeString(parcel, 6, this.zze, false);
   37:         SafeParcelWriter.writeParcelable(parcel, 7, this.zzf, i, false);
   38:         SafeParcelWriter.writeParcelable(parcel, 8, this.zzg, i, false);
   39:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   40:     }
   41: 
   42:     public zzk() {
   43:     }
   44: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzr.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   16:         this.zzb = str2;
   17:     }
   18: 
   19:     @Override // android.os.Parcelable
   20:     public final void writeToParcel(Parcel parcel, int i) {
   21:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   22:         SafeParcelWriter.writeString(parcel, 2, this.zza, false);
   23:         SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
   24:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   25:     }
   26: 
   27:     public zzr() {
   28:     }
   29: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzyk.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzyk implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         double d = 0.0d;
   13:         double d2 = 0.0d;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 d = SafeParcelReader.readDouble(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzyv.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzyv implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         long j = 0;
   13:         int i = 0;
   14:         int i2 = 0;
   15:         int i3 = 0;
   16:         int i4 = 0;
   17:         while (parcel.dataPosition() < iValidateObjectHeader) {
   18:             int header = SafeParcelReader.readHeader(parcel);
   19:             int fieldId = SafeParcelReader.getFieldId(header);
   20:             if (fieldId == 1) {
   21:                 i = SafeParcelReader.readInt(parcel, header);
   22:             } else if (fieldId == 2) {
   23:                 i2 = SafeParcelReader.readInt(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzo.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   16:         this.zzb = d2;
   17:     }
   18: 
   19:     @Override // android.os.Parcelable
   20:     public final void writeToParcel(Parcel parcel, int i) {
   21:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   22:         SafeParcelWriter.writeDouble(parcel, 2, this.zza);
   23:         SafeParcelWriter.writeDouble(parcel, 3, this.zzb);
   24:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   25:     }
   26: 
   27:     public zzo() {
   28:     }
   29: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/internal/mlkit_vision_barcode/zzao.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzao implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         int i2 = 0;
   14:         int i3 = 0;
   15:         int i4 = 0;
   16:         long j = 0;
   17:         while (parcel.dataPosition() < iValidateObjectHeader) {
   18:             int header = SafeParcelReader.readHeader(parcel);
   19:             int fieldId = SafeParcelReader.getFieldId(header);
   20:             if (fieldId == 2) {
   21:                 i = SafeParcelReader.readInt(parcel, header);
   22:             } else if (fieldId == 3) {
   23:                 i2 = SafeParcelReader.readInt(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/api/zze.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8: 
    9: /* JADX INFO: loaded from: classes4.dex */
   10: public final class zze implements Parcelable.Creator {
   11:     @Override // android.os.Parcelable.Creator
   12:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   13:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   14:         String strCreateString = null;
   15:         ConnectionResult connectionResult = null;
   16:         int i = 0;
   17:         PendingIntent pendingIntent = null;
   18:         while (parcel.dataPosition() < iValidateObjectHeader) {
   19:             int header = SafeParcelReader.readHeader(parcel);
   20:             int fieldId = SafeParcelReader.getFieldId(header);
   21:             if (fieldId == 1) {
   22:                 i = SafeParcelReader.readInt(parcel, header);
   23:             } else if (fieldId == 2) {
   24:                 strCreateString = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/api/ComplianceOptions.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  110:         return sb.toString();
  111:     }
  112: 
  113:     @Override // android.os.Parcelable
  114:     public final void writeToParcel(Parcel parcel, int i) {
  115:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  116:         SafeParcelWriter.writeInt(parcel, 1, this.b);
  117:         SafeParcelWriter.writeInt(parcel, 2, this.c);
  118:         SafeParcelWriter.writeInt(parcel, 3, this.d);
  119:         SafeParcelWriter.writeBoolean(parcel, 4, this.e);
  120:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  121:     }
  122: 
  123:     public static final Builder newBuilder(Context context) {
  124:         return newBuilder();
  125:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/api/Scope.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   41:         return this.c;
   42:     }
   43: 
   44:     @Override // android.os.Parcelable
   45:     public void writeToParcel(Parcel parcel, int i) {
   46:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   47:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   48:         SafeParcelWriter.writeString(parcel, 2, getScopeUri(), false);
   49:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   50:     }
   51: 
   52:     public Scope(String str) {
   53:         this(1, str);
   54:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/api/ApiMetadata.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   95:             parcel.setDataPosition(parcel.dataPosition() - 4);
   96:             parcel.setDataSize(parcel.dataSize() - 4);
   97:             return;
   98:         }
   99:         parcel.writeInt(-204102970);
  100:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  101:         SafeParcelWriter.writeParcelable(parcel, 1, this.b, i, false);
  102:         SafeParcelWriter.writeBoolean(parcel, 2, this.c);
  103:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  104:     }
  105: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/api/zzd.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzd implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         int i = 0;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 i = SafeParcelReader.readInt(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/api/zzb.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    5: import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzb implements Parcelable.Creator {
    9:     public static final ApiMetadata zza(Parcel parcel) {
   10:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   11:         boolean z = false;
   12:         ComplianceOptions complianceOptions = null;
   13:         while (parcel.dataPosition() < iValidateObjectHeader) {
   14:             int header = SafeParcelReader.readHeader(parcel);
   15:             int fieldId = SafeParcelReader.getFieldId(header);
   16:             if (fieldId == 1) {
   17:                 complianceOptions = (ComplianceOptions) SafeParcelReader.createParcelable(parcel, header, ComplianceOptions.CREATOR);
   18:             } else if (fieldId != 2) {
   19:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/api/Status.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  105:         return stringHelper.toString();
  106:     }
  107: 
  108:     @Override // android.os.Parcelable
  109:     public void writeToParcel(Parcel parcel, int i) {
  110:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  111:         SafeParcelWriter.writeInt(parcel, 1, getStatusCode());
  112:         SafeParcelWriter.writeString(parcel, 2, getStatusMessage(), false);
  113:         SafeParcelWriter.writeParcelable(parcel, 3, this.d, i, false);
  114:         SafeParcelWriter.writeParcelable(parcel, 4, getConnectionResult(), i, false);
  115:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  116:     }
  117: 
  118:     public final String zza() {
  119:         String str = this.c;
  120:         return str != null ? str : CommonStatusCodes.getStatusCodeString(this.b);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/api/zzc.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzc implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         boolean z = true;
   14:         int i2 = 0;
   15:         int i3 = 0;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 1) {
   20:                 i = SafeParcelReader.readInt(parcel, header);
   21:             } else if (fieldId == 2) {
   22:                 i2 = SafeParcelReader.readInt(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/data/DataHolder.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  433:         }
  434:     }
  435: 
  436:     @Override // android.os.Parcelable
  437:     public final void writeToParcel(Parcel parcel, int i) {
  438:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  439:         SafeParcelWriter.writeStringArray(parcel, 1, this.c, false);
  440:         SafeParcelWriter.writeTypedArray(parcel, 2, this.e, i, false);
  441:         SafeParcelWriter.writeInt(parcel, 3, getStatusCode());
  442:         SafeParcelWriter.writeBundle(parcel, 4, getMetadata(), false);
  443:         SafeParcelWriter.writeInt(parcel, 1000, this.b);
  444:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  445:         if ((i & 1) != 0) {
  446:             releaseReference();
  447:         }
  448:     }
  449: 
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/data/zaa.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zaa implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         int i = 0;
   14:         ParcelFileDescriptor parcelFileDescriptor = null;
   15:         int i2 = 0;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 1) {
   20:                 i = SafeParcelReader.readInt(parcel, header);
   21:             } else if (fieldId == 2) {
   22:                 parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.createParcelable(parcel, header, ParcelFileDescriptor.CREATOR);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/data/BitmapTeleporter.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  135:             } catch (IOException e2) {
  136:                 h2.e("Could not create temporary file", e2);
  137:                 return;
  138:             }
  139:         }
  140:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  141:         SafeParcelWriter.writeInt(parcel, 1, this.b);
  142:         SafeParcelWriter.writeParcelable(parcel, 2, this.c, i | 1, false);
  143:         SafeParcelWriter.writeInt(parcel, 3, this.d);
  144:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  145:         this.c = null;
  146:     }
  147: 
  148:     public BitmapTeleporter(int i, ParcelFileDescriptor parcelFileDescriptor, int i2) {
  149:         this.b = i;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/data/zad.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8: 
    9: /* JADX INFO: loaded from: classes4.dex */
   10: public final class zad implements Parcelable.Creator {
   11:     @Override // android.os.Parcelable.Creator
   12:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   13:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   14:         String[] strArrCreateStringArray = null;
   15:         CursorWindow[] cursorWindowArr = null;
   16:         Bundle bundleCreateBundle = null;
   17:         int i = 0;
   18:         int i2 = 0;
   19:         while (parcel.dataPosition() < iValidateObjectHeader) {
   20:             int header = SafeParcelReader.readHeader(parcel);
   21:             int fieldId = SafeParcelReader.getFieldId(header);
   22:             if (fieldId == 1) {
   23:                 strArrCreateStringArray = SafeParcelReader.createStringArray(parcel, header);
   24:             } else if (fieldId == 2) {
   25:                 cursorWindowArr = (CursorWindow[]) SafeParcelReader.createTypedArray(parcel, header, CursorWindow.CREATOR);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/server/FavaDiagnosticsEntity.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   19:         this.zac = i;
   20:     }
   21: 
   22:     @Override // android.os.Parcelable
   23:     public final void writeToParcel(Parcel parcel, int i) {
   24:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   25:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   26:         SafeParcelWriter.writeString(parcel, 2, this.zab, false);
   27:         SafeParcelWriter.writeInt(parcel, 3, this.zac);
   28:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   29:     }
   30: 
   31:     public FavaDiagnosticsEntity(int i, String str, int i2) {
   32:         this.b = i;
   33:         this.zab = str;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/server/zaa.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zaa implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         String strCreateString = null;
   14:         int i2 = 0;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 1) {
   19:                 i = SafeParcelReader.readInt(parcel, header);
   20:             } else if (fieldId == 2) {
   21:                 strCreateString = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/stats/zza.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zza implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         int i = 0;
   14:         int i2 = 0;
   15:         int i3 = 0;
   16:         int i4 = 0;
   17:         boolean z = false;
   24:         long j = 0;
   25:         long j2 = 0;
   26:         long j3 = 0;
   27:         float f = 0.0f;
   28:         while (parcel.dataPosition() < iValidateObjectHeader) {
   29:             int header = SafeParcelReader.readHeader(parcel);
   30:             switch (SafeParcelReader.getFieldId(header)) {
   31:                 case 1:
   32:                     i = SafeParcelReader.readInt(parcel, header);
   33:                     break;
   34:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/stats/WakeLockEvent.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   47:         this.p = z;
   48:     }
   49: 
   50:     @Override // android.os.Parcelable
   51:     public final void writeToParcel(Parcel parcel, int i) {
   52:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   53:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   54:         SafeParcelWriter.writeLong(parcel, 2, this.c);
   55:         SafeParcelWriter.writeString(parcel, 4, this.e, false);
   56:         SafeParcelWriter.writeInt(parcel, 5, this.h);
   57:         SafeParcelWriter.writeStringList(parcel, 6, this.i, false);
   63:         SafeParcelWriter.writeInt(parcel, 14, this.l);
   64:         SafeParcelWriter.writeFloat(parcel, 15, this.n);
   65:         SafeParcelWriter.writeLong(parcel, 16, this.o);
   66:         SafeParcelWriter.writeString(parcel, 17, this.g, false);
   67:         SafeParcelWriter.writeBoolean(parcel, 18, this.p);
   68:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   69:     }
   70: 
   71:     @Override // com.google.android.gms.common.stats.StatsEvent
   72:     public final long zza() {
   73:         return this.c;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/internal/ClientIdentity.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   44:     }
   45: 
   46:     @Override // android.os.Parcelable
   47:     public final void writeToParcel(Parcel parcel, int i) {
   48:         int i2 = this.uid;
   49:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   50:         SafeParcelWriter.writeInt(parcel, 1, i2);
   51:         SafeParcelWriter.writeString(parcel, 2, this.packageName, false);
   52:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   53:     }
   54: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zaa.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zaa implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         int i = 0;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 i = SafeParcelReader.readInt(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/internal/ConnectionTelemetryConfiguration.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   44:         return this.d;
   45:     }
   46: 
   47:     @Override // android.os.Parcelable
   48:     public final void writeToParcel(Parcel parcel, int i) {
   49:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   50:         SafeParcelWriter.writeParcelable(parcel, 1, this.b, i, false);
   51:         SafeParcelWriter.writeBoolean(parcel, 2, getMethodInvocationTelemetryEnabled());
   52:         SafeParcelWriter.writeBoolean(parcel, 3, getMethodTimingTelemetryEnabled());
   53:         SafeParcelWriter.writeIntArray(parcel, 4, getMethodInvocationMethodKeyAllowlist(), false);
   54:         SafeParcelWriter.writeInt(parcel, 5, getMaxMethodInvocationsLogged());
   55:         SafeParcelWriter.writeIntArray(parcel, 6, getMethodInvocationMethodKeyDisallowlist(), false);
   56:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   57:     }
   58: 
   59:     public final RootTelemetryConfiguration zza() {
   60:         return this.b;
   61:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zaaa.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   38:         return this.d.equals(zaaaVar.d) && Objects.equal(zaa(), zaaaVar.zaa());
   39:     }
   40: 
   41:     @Override // android.os.Parcelable
   42:     public final void writeToParcel(Parcel parcel, int i) {
   43:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   44:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   45:         SafeParcelWriter.writeIBinder(parcel, 2, this.c, false);
   46:         SafeParcelWriter.writeParcelable(parcel, 3, this.d, i, false);
   47:         SafeParcelWriter.writeBoolean(parcel, 4, this.e);
   48:         SafeParcelWriter.writeBoolean(parcel, 5, this.f);
   49:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   50:     }
   51: 
   52:     public final IAccountAccessor zaa() {
   53:         IBinder iBinder = this.c;
   54:         if (iBinder == null) {
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zzag.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzag implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         boolean z = false;
   14:         boolean z2 = false;
   15:         int i2 = 0;
   16:         int i3 = 0;
   17:         while (parcel.dataPosition() < iValidateObjectHeader) {
   18:             int header = SafeParcelReader.readHeader(parcel);
   19:             int fieldId = SafeParcelReader.getFieldId(header);
   20:             if (fieldId == 1) {
   21:                 i = SafeParcelReader.readInt(parcel, header);
   22:             } else if (fieldId == 2) {
   23:                 z = SafeParcelReader.readBoolean(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zzl.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzl implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         RootTelemetryConfiguration rootTelemetryConfiguration = null;
   13:         int[] iArrCreateIntArray = null;
   14:         int[] iArrCreateIntArray2 = null;
   15:         boolean z = false;
   16:         boolean z2 = false;
   17:         int i = 0;
   18:         while (parcel.dataPosition() < iValidateObjectHeader) {
   19:             int header = SafeParcelReader.readHeader(parcel);
   20:             switch (SafeParcelReader.getFieldId(header)) {
   21:                 case 1:
   22:                     rootTelemetryConfiguration = (RootTelemetryConfiguration) SafeParcelReader.createParcelable(parcel, header, RootTelemetryConfiguration.CREATOR);
   23:                     break;
   24:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/internal/TelemetryData.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   18:         this.c = list;
   19:     }
   20: 
   21:     @Override // android.os.Parcelable
   22:     public final void writeToParcel(Parcel parcel, int i) {
   23:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   24:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   25:         SafeParcelWriter.writeTypedList(parcel, 2, this.c, false);
   26:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   27:     }
   28: 
   29:     public final int zaa() {
   30:         return this.b;
   31:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zzm.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   11: import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
   12: 
   13: /* JADX INFO: loaded from: classes4.dex */
   14: public final class zzm implements Parcelable.Creator {
   15:     public static void a(GetServiceRequest getServiceRequest, Parcel parcel, int i) {
   16:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   17:         SafeParcelWriter.writeInt(parcel, 1, getServiceRequest.b);
   18:         SafeParcelWriter.writeInt(parcel, 2, getServiceRequest.c);
   19:         SafeParcelWriter.writeInt(parcel, 3, getServiceRequest.d);
   20:         SafeParcelWriter.writeString(parcel, 4, getServiceRequest.e, false);
   21:         SafeParcelWriter.writeIBinder(parcel, 5, getServiceRequest.f, false);
   26:         SafeParcelWriter.writeTypedArray(parcel, 11, getServiceRequest.k, i, false);
   27:         SafeParcelWriter.writeBoolean(parcel, 12, getServiceRequest.l);
   28:         SafeParcelWriter.writeInt(parcel, 13, getServiceRequest.m);
   29:         SafeParcelWriter.writeBoolean(parcel, 14, getServiceRequest.n);
   30:         SafeParcelWriter.writeString(parcel, 15, getServiceRequest.getAttributionTag(), false);
   31:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   32:     }
   33: 
   34:     @Override // android.os.Parcelable.Creator
   35:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   36:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   37:         Scope[] scopeArr = GetServiceRequest.p;
   38:         Bundle bundle = new Bundle();
   39:         Feature[] featureArr = GetServiceRequest.q;
   40:         Feature[] featureArr2 = featureArr;
   41:         String strCreateString = null;
   47:         int i3 = 0;
   48:         boolean z = false;
   49:         int i4 = 0;
   50:         boolean z2 = false;
   51:         while (parcel.dataPosition() < iValidateObjectHeader) {
   52:             int header = SafeParcelReader.readHeader(parcel);
   53:             switch (SafeParcelReader.getFieldId(header)) {
   54:                 case 1:
   55:                     i = SafeParcelReader.readInt(parcel, header);
   56:                     break;
   57:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zaad.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zaad implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         Scope[] scopeArr = null;
   14:         int i = 0;
   15:         int i2 = 0;
   16:         int i3 = 0;
   17:         while (parcel.dataPosition() < iValidateObjectHeader) {
   18:             int header = SafeParcelReader.readHeader(parcel);
   19:             int fieldId = SafeParcelReader.getFieldId(header);
   20:             if (fieldId == 1) {
   21:                 i = SafeParcelReader.readInt(parcel, header);
   22:             } else if (fieldId == 2) {
   23:                 i2 = SafeParcelReader.readInt(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zay.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   22:         this.e = googleSignInAccount;
   23:     }
   24: 
   25:     @Override // android.os.Parcelable
   26:     public final void writeToParcel(Parcel parcel, int i) {
   27:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   28:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   29:         SafeParcelWriter.writeParcelable(parcel, 2, this.c, i, false);
   30:         SafeParcelWriter.writeInt(parcel, 3, this.d);
   31:         SafeParcelWriter.writeParcelable(parcel, 4, this.e, i, false);
   32:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   33:     }
   34: 
   35:     public zay(Account account, int i, GoogleSignInAccount googleSignInAccount) {
   36:         this(2, account, i, googleSignInAccount);
   37:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zzaj.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzaj implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         while (parcel.dataPosition() < iValidateObjectHeader) {
   14:             int header = SafeParcelReader.readHeader(parcel);
   15:             if (SafeParcelReader.getFieldId(header) != 1) {
   16:                 SafeParcelReader.skipUnknownField(parcel, header);
   17:             } else {
   18:                 i = SafeParcelReader.readInt(parcel, header);
   19:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/internal/MethodInvocation.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   30:         this.j = i5;
   31:     }
   32: 
   33:     @Override // android.os.Parcelable
   34:     public final void writeToParcel(Parcel parcel, int i) {
   35:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   36:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   37:         SafeParcelWriter.writeInt(parcel, 2, this.c);
   38:         SafeParcelWriter.writeInt(parcel, 3, this.d);
   39:         SafeParcelWriter.writeLong(parcel, 4, this.e);
   40:         SafeParcelWriter.writeLong(parcel, 5, this.f);
   41:         SafeParcelWriter.writeString(parcel, 6, this.g, false);
   42:         SafeParcelWriter.writeString(parcel, 7, this.h, false);
   43:         SafeParcelWriter.writeInt(parcel, 8, this.i);
   44:         SafeParcelWriter.writeInt(parcel, 9, this.j);
   45:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   46:     }
   47: 
   48:     @Deprecated
   49:     public MethodInvocation(int i, int i2, int i3, long j, long j2, String str, String str2, int i4) {
   50:         this(i, i2, i3, j, j2, str, str2, i4, -1);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zaab.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8: 
    9: /* JADX INFO: loaded from: classes4.dex */
   10: public final class zaab implements Parcelable.Creator {
   11:     @Override // android.os.Parcelable.Creator
   12:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   13:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   14:         int i = 0;
   15:         boolean z = false;
   16:         boolean z2 = false;
   17:         IBinder iBinder = null;
   18:         ConnectionResult connectionResult = null;
   19:         while (parcel.dataPosition() < iValidateObjectHeader) {
   20:             int header = SafeParcelReader.readHeader(parcel);
   21:             int fieldId = SafeParcelReader.getFieldId(header);
   22:             if (fieldId == 1) {
   23:                 i = SafeParcelReader.readInt(parcel, header);
   24:             } else if (fieldId == 2) {
   25:                 iBinder = SafeParcelReader.readIBinder(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zzk.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8: 
    9: /* JADX INFO: loaded from: classes4.dex */
   10: public final class zzk implements Parcelable.Creator {
   11:     @Override // android.os.Parcelable.Creator
   12:     public final Object createFromParcel(Parcel parcel) {
   13:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   14:         Bundle bundleCreateBundle = null;
   15:         ConnectionTelemetryConfiguration connectionTelemetryConfiguration = null;
   16:         int i = 0;
   17:         Feature[] featureArr = null;
   18:         while (parcel.dataPosition() < iValidateObjectHeader) {
   19:             int header = SafeParcelReader.readHeader(parcel);
   20:             int fieldId = SafeParcelReader.getFieldId(header);
   21:             if (fieldId == 1) {
   22:                 bundleCreateBundle = SafeParcelReader.createBundle(parcel, header);
   23:             } else if (fieldId == 2) {
   24:                 featureArr = (Feature[]) SafeParcelReader.createTypedArray(parcel, header, Feature.CREATOR);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zas.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zas implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = -1;
   13:         int i2 = 0;
   14:         int i3 = 0;
   15:         int i4 = 0;
   16:         int i5 = 0;
   17:         String strCreateString = null;
   18:         String strCreateString2 = null;
   19:         long j = 0;
   20:         long j2 = 0;
   21:         while (parcel.dataPosition() < iValidateObjectHeader) {
   22:             int header = SafeParcelReader.readHeader(parcel);
   23:             switch (SafeParcelReader.getFieldId(header)) {
   24:                 case 1:
   25:                     i2 = SafeParcelReader.readInt(parcel, header);
   26:                     break;
   27:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/internal/RootTelemetryConfiguration.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   42:         return this.b;
   43:     }
   44: 
   45:     @Override // android.os.Parcelable
   46:     public final void writeToParcel(Parcel parcel, int i) {
   47:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   48:         SafeParcelWriter.writeInt(parcel, 1, getVersion());
   49:         SafeParcelWriter.writeBoolean(parcel, 2, getMethodInvocationTelemetryEnabled());
   50:         SafeParcelWriter.writeBoolean(parcel, 3, getMethodTimingTelemetryEnabled());
   51:         SafeParcelWriter.writeInt(parcel, 4, getBatchPeriodMillis());
   52:         SafeParcelWriter.writeInt(parcel, 5, getMaxMethodInvocationsInBatch());
   53:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   54:     }
   55: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zab.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   22:         this.f = z;
   23:     }
   24: 
   25:     @Override // android.os.Parcelable
   26:     public final void writeToParcel(Parcel parcel, int i) {
   27:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   28:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   29:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   30:         SafeParcelWriter.writeLong(parcel, 3, this.d);
   31:         SafeParcelWriter.writeInt(parcel, 4, this.e);
   32:         SafeParcelWriter.writeBoolean(parcel, 5, this.f);
   33:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   34:     }
   35: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zaz.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8: 
    9: /* JADX INFO: loaded from: classes4.dex */
   10: public final class zaz implements Parcelable.Creator {
   11:     @Override // android.os.Parcelable.Creator
   12:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   13:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   14:         Account account = null;
   15:         int i = 0;
   16:         int i2 = 0;
   17:         GoogleSignInAccount googleSignInAccount = null;
   18:         while (parcel.dataPosition() < iValidateObjectHeader) {
   19:             int header = SafeParcelReader.readHeader(parcel);
   20:             int fieldId = SafeParcelReader.getFieldId(header);
   21:             if (fieldId == 1) {
   22:                 i = SafeParcelReader.readInt(parcel, header);
   23:             } else if (fieldId == 2) {
   24:                 account = (Account) SafeParcelReader.createParcelable(parcel, header, Account.CREATOR);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zzai.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   15:         this.b = i;
   16:     }
   17: 
   18:     @Override // android.os.Parcelable
   19:     public final void writeToParcel(Parcel parcel, int i) {
   20:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   21:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   22:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   23:     }
   24: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zac.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zac implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         int i2 = 0;
   14:         boolean z = false;
   15:         long j = 0;
   16:         String strCreateString = null;
   17:         while (parcel.dataPosition() < iValidateObjectHeader) {
   18:             int header = SafeParcelReader.readHeader(parcel);
   19:             int fieldId = SafeParcelReader.getFieldId(header);
   20:             if (fieldId == 1) {
   21:                 i = SafeParcelReader.readInt(parcel, header);
   22:             } else if (fieldId == 2) {
   23:                 strCreateString = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zaac.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   23:         this.e = scopeArr;
   24:     }
   25: 
   26:     @Override // android.os.Parcelable
   27:     public final void writeToParcel(Parcel parcel, int i) {
   28:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   29:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   30:         SafeParcelWriter.writeInt(parcel, 2, this.c);
   31:         SafeParcelWriter.writeInt(parcel, 3, this.d);
   32:         SafeParcelWriter.writeTypedArray(parcel, 4, this.e, i, false);
   33:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   34:     }
   35: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zzj.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   15:     public int d;
   16:     public ConnectionTelemetryConfiguration e;
   17: 
   18:     @Override // android.os.Parcelable
   19:     public final void writeToParcel(Parcel parcel, int i) {
   20:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   21:         SafeParcelWriter.writeBundle(parcel, 1, this.b, false);
   22:         SafeParcelWriter.writeTypedArray(parcel, 2, this.c, i, false);
   23:         SafeParcelWriter.writeInt(parcel, 3, this.d);
   24:         SafeParcelWriter.writeParcelable(parcel, 4, this.e, i, false);
   25:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   26:     }
   27: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/internal/zaag.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zaag implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         ArrayList arrayListCreateTypedList = null;
   14:         int i = 0;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 1) {
   19:                 i = SafeParcelReader.readInt(parcel, header);
   20:             } else if (fieldId != 2) {
   21:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/moduleinstall/zac.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zac implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         boolean z = false;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 i = SafeParcelReader.readInt(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   33:         return this.c;
   34:     }
   35: 
   36:     @Override // android.os.Parcelable
   37:     public void writeToParcel(Parcel parcel, int i) {
   38:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   39:         SafeParcelWriter.writeBoolean(parcel, 1, areModulesAvailable());
   40:         SafeParcelWriter.writeInt(parcel, 2, getAvailabilityStatus());
   41:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   42:     }
   43: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/moduleinstall/zab.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zab implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         PendingIntent pendingIntent = null;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             if (SafeParcelReader.getFieldId(header) != 1) {
   17:                 SafeParcelReader.skipUnknownField(parcel, header);
   18:             } else {
   19:                 pendingIntent = (PendingIntent) SafeParcelReader.createParcelable(parcel, header, PendingIntent.CREATOR);
   20:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   74:         return this.b;
   75:     }
   76: 
   77:     @Override // android.os.Parcelable
   78:     public void writeToParcel(Parcel parcel, int i) {
   79:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   80:         SafeParcelWriter.writeInt(parcel, 1, getSessionId());
   81:         SafeParcelWriter.writeInt(parcel, 2, getInstallState());
   82:         SafeParcelWriter.writeLongObject(parcel, 3, this.d, false);
   83:         SafeParcelWriter.writeLongObject(parcel, 4, this.e, false);
   84:         SafeParcelWriter.writeInt(parcel, 5, getErrorCode());
   85:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   86:     }
   87: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/moduleinstall/zad.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zad implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         int i2 = 0;
   14:         int i3 = 0;
   15:         Long longObject = null;
   16:         Long longObject2 = null;
   17:         while (parcel.dataPosition() < iValidateObjectHeader) {
   18:             int header = SafeParcelReader.readHeader(parcel);
   19:             int fieldId = SafeParcelReader.getFieldId(header);
   20:             if (fieldId == 1) {
   21:                 i = SafeParcelReader.readInt(parcel, header);
   22:             } else if (fieldId == 2) {
   23:                 i2 = SafeParcelReader.readInt(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/moduleinstall/ModuleInstallResponse.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   24:         return this.b;
   25:     }
   26: 
   27:     @Override // android.os.Parcelable
   28:     public void writeToParcel(Parcel parcel, int i) {
   29:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   30:         SafeParcelWriter.writeInt(parcel, 1, getSessionId());
   31:         SafeParcelWriter.writeBoolean(parcel, 2, this.c);
   32:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   33:     }
   34: 
   35:     public final boolean zaa() {
   36:         return this.c;
   37:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/moduleinstall/ModuleInstallIntentResponse.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   19:         return this.b;
   20:     }
   21: 
   22:     @Override // android.os.Parcelable
   23:     public void writeToParcel(Parcel parcel, int i) {
   24:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   25:         SafeParcelWriter.writeParcelable(parcel, 1, getPendingIntent(), i, false);
   26:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   27:     }
   28: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/moduleinstall/zaa.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zaa implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         boolean z = false;
   13:         int i = 0;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 z = SafeParcelReader.readBoolean(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/images/zah.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zah implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         int i = 0;
   14:         int i2 = 0;
   15:         Uri uri = null;
   16:         int i3 = 0;
   17:         while (parcel.dataPosition() < iValidateObjectHeader) {
   18:             int header = SafeParcelReader.readHeader(parcel);
   19:             int fieldId = SafeParcelReader.getFieldId(header);
   20:             if (fieldId == 1) {
   21:                 i = SafeParcelReader.readInt(parcel, header);
   22:             } else if (fieldId == 2) {
   23:                 uri = (Uri) SafeParcelReader.createParcelable(parcel, header, Uri.CREATOR);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/images/WebImage.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   81:         return sbF.toString();
   82:     }
   83: 
   84:     @Override // android.os.Parcelable
   85:     public void writeToParcel(Parcel parcel, int i) {
   86:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   87:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   88:         SafeParcelWriter.writeParcelable(parcel, 2, getUrl(), i, false);
   89:         SafeParcelWriter.writeInt(parcel, 3, getWidth());
   90:         SafeParcelWriter.writeInt(parcel, 4, getHeight());
   91:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   92:     }
   93: 
   94:     public WebImage(Uri uri) {
   95:         this(uri, 0, 0);
   96:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/server/converter/StringToIntConverter.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   33:         return this;
   34:     }
   35: 
   36:     @Override // android.os.Parcelable
   37:     public final void writeToParcel(Parcel parcel, int i) {
   38:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   39:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   40:         ArrayList arrayList = new ArrayList();
   41:         HashMap map = this.c;
   42:         for (String str : map.keySet()) {
   43:             arrayList.add(new zac(str, ((Integer) map.get(str)).intValue()));
   44:         }
   45:         SafeParcelWriter.writeTypedList(parcel, 2, arrayList, false);
   46:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   47:     }
   48: 
   49:     @Override // com.google.android.gms.common.server.response.FastJsonResponse.FieldConverter
   50:     public final int zaa() {
   51:         return 7;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/server/converter/zac.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   18:         this.d = i;
   19:     }
   20: 
   21:     @Override // android.os.Parcelable
   22:     public final void writeToParcel(Parcel parcel, int i) {
   23:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   24:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   25:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   26:         SafeParcelWriter.writeInt(parcel, 3, this.d);
   27:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   28:     }
   29: 
   30:     public zac(int i, String str, int i2) {
   31:         this.b = i;
   32:         this.c = str;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/server/converter/zab.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zab implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         StringToIntConverter stringToIntConverter = null;
   13:         int i = 0;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 i = SafeParcelReader.readInt(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/server/converter/zad.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zad implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         ArrayList arrayListCreateTypedList = null;
   14:         int i = 0;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 1) {
   19:                 i = SafeParcelReader.readInt(parcel, header);
   20:             } else if (fieldId != 2) {
   21:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/server/converter/zae.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zae implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         String strCreateString = null;
   14:         int i2 = 0;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 1) {
   19:                 i = SafeParcelReader.readInt(parcel, header);
   20:             } else if (fieldId == 2) {
   21:                 strCreateString = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/server/converter/zaa.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   27:         return null;
   28:     }
   29: 
   30:     @Override // android.os.Parcelable
   31:     public final void writeToParcel(Parcel parcel, int i) {
   32:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   33:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   34:         SafeParcelWriter.writeParcelable(parcel, 2, this.c, i, false);
   35:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   36:     }
   37: 
   38:     public final FastJsonResponse.FieldConverter zab() {
   39:         StringToIntConverter stringToIntConverter = this.c;
   40:         if (stringToIntConverter != null) {
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/server/response/SafeParcelResponse.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   79:         SparseArray sparseArray = new SparseArray();
   80:         for (Map.Entry entry : map.entrySet()) {
   81:             sparseArray.put(((FastJsonResponse.Field) entry.getValue()).getSafeParcelableFieldId(), entry);
   82:         }
   83:         sb.append('{');
   84:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   85:         boolean z = false;
   86:         while (parcel.dataPosition() < iValidateObjectHeader) {
   87:             int header = SafeParcelReader.readHeader(parcel);
   88:             Map.Entry entry2 = (Map.Entry) sparseArray.get(SafeParcelReader.getFieldId(header));
   89:             if (entry2 != null) {
   90:                 if (z) {
   91:                     sb.append(StringUtils.COMMA);
   92:                 }
  393:             ah.f("Internal Parcel object is null.");
  394:             return;
  395:         }
  396:         int i = this.g;
  397:         if (i == 0) {
  398:             this.h = SafeParcelWriter.beginObjectHeader(parcel);
  399:             this.g = 1;
  400:         } else {
  401:             if (i == 1) {
  402:                 return;
  403:             }
  578:         SafeParcelWriter.writeFloat(this.c, field.getSafeParcelableFieldId(), f);
  579:     }
  580: 
  581:     @Override // android.os.Parcelable
  582:     public final void writeToParcel(Parcel parcel, int i) {
  583:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  584:         SafeParcelWriter.writeInt(parcel, 1, this.b);
  585:         SafeParcelWriter.writeParcel(parcel, 2, zaE(), false);
  586:         SafeParcelWriter.writeParcelable(parcel, 3, this.d != 0 ? this.e : null, i, false);
  587:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  588:     }
  589: 
  590:     @Override // com.google.android.gms.common.server.response.FastJsonResponse
  591:     public final void x(FastJsonResponse.Field field, ArrayList arrayList) {
  592:         C(field);
  609:         Parcel parcel = this.c;
  610:         if (i != 0) {
  611:             if (i != 1) {
  612:                 return parcel;
  613:             }
  614:             SafeParcelWriter.finishObjectHeader(parcel, this.h);
  615:             this.g = 2;
  616:             return parcel;
  617:         }
  618:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  619:         this.h = iBeginObjectHeader;
  620:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  621:         this.g = 2;
  622:         return parcel;
  623:     }
  624: 
  625:     public SafeParcelResponse(int i, Parcel parcel, zan zanVar) {
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/server/response/zaj.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zaj implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         String strCreateString = null;
   14:         String strCreateString2 = null;
   15:         zaa zaaVar = null;
   16:         int i = 0;
   17:         int i2 = 0;
   18:         boolean z = false;
   19:         int i3 = 0;
   20:         boolean z2 = false;
   21:         int i4 = 0;
   22:         while (parcel.dataPosition() < iValidateObjectHeader) {
   23:             int header = SafeParcelReader.readHeader(parcel);
   24:             switch (SafeParcelReader.getFieldId(header)) {
   25:                 case 1:
   26:                     i = SafeParcelReader.readInt(parcel, header);
   27:                     break;
   28:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/server/response/zan.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   54:         return sb.toString();
   55:     }
   56: 
   57:     @Override // android.os.Parcelable
   58:     public final void writeToParcel(Parcel parcel, int i) {
   59:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   60:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   61:         ArrayList arrayList = new ArrayList();
   62:         HashMap map = this.c;
   63:         for (String str : map.keySet()) {
   64:             arrayList.add(new zal(str, (Map) map.get(str)));
   65:         }
   66:         SafeParcelWriter.writeTypedList(parcel, 2, arrayList, false);
   67:         SafeParcelWriter.writeString(parcel, 3, this.d, false);
   68:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   69:     }
   70: 
   71:     public final void zaa() {
   72:         HashMap map = this.c;
   73:         Iterator it = map.keySet().iterator();
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/server/response/zak.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zak implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         int i = 0;
   14:         FastJsonResponse.Field field = null;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 1) {
   19:                 i = SafeParcelReader.readInt(parcel, header);
   20:             } else if (fieldId == 2) {
   21:                 strCreateString = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/server/response/zao.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zao implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         ArrayList arrayListCreateTypedList = null;
   14:         int i = 0;
   15:         String strCreateString = null;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 1) {
   20:                 i = SafeParcelReader.readInt(parcel, header);
   21:             } else if (fieldId == 2) {
   22:                 arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, zal.CREATOR);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/server/response/FastJsonResponse.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  552:             return toStringHelperAdd2.toString();
  553:         }
  554: 
  555:         @Override // android.os.Parcelable
  556:         public final void writeToParcel(Parcel parcel, int i) {
  557:             int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  558:             SafeParcelWriter.writeInt(parcel, 1, this.b);
  559:             SafeParcelWriter.writeInt(parcel, 2, this.c);
  560:             SafeParcelWriter.writeBoolean(parcel, 3, this.d);
  561:             SafeParcelWriter.writeInt(parcel, 4, this.e);
  562:             SafeParcelWriter.writeBoolean(parcel, 5, this.f);
  567:                 str = null;
  568:             }
  569:             SafeParcelWriter.writeString(parcel, 8, str, false);
  570:             FieldConverter fieldConverter = this.l;
  571:             SafeParcelWriter.writeParcelable(parcel, 9, fieldConverter != null ? zaa.zaa(fieldConverter) : null, i, false);
  572:             SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  573:         }
  574: 
  575:         public final Field zaa() {
  576:             FieldConverter fieldConverter = this.l;
  577:             return new Field(this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.j, fieldConverter == null ? null : zaa.zaa(fieldConverter));
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/server/response/zam.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   18:         this.d = field;
   19:     }
   20: 
   21:     @Override // android.os.Parcelable
   22:     public final void writeToParcel(Parcel parcel, int i) {
   23:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   24:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   25:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   26:         SafeParcelWriter.writeParcelable(parcel, 3, this.d, i, false);
   27:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   28:     }
   29: 
   30:     public zam(int i, String str, FastJsonResponse.Field field) {
   31:         this.b = i;
   32:         this.c = str;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/server/response/zap.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zap implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         String strCreateString = null;
   14:         int i = 0;
   15:         ArrayList arrayListCreateTypedList = null;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 1) {
   20:                 i = SafeParcelReader.readInt(parcel, header);
   21:             } else if (fieldId == 2) {
   22:                 strCreateString = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/server/response/zal.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   29:         this.d = arrayList;
   30:     }
   31: 
   32:     @Override // android.os.Parcelable
   33:     public final void writeToParcel(Parcel parcel, int i) {
   34:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   35:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   36:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   37:         SafeParcelWriter.writeTypedList(parcel, 3, this.d, false);
   38:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   39:     }
   40: 
   41:     public zal(int i, String str, ArrayList arrayList) {
   42:         this.b = i;
   43:         this.c = str;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/server/response/zaq.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zaq implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         Parcel parcelCreateParcel = null;
   13:         int i = 0;
   14:         zan zanVar = null;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 1) {
   19:                 i = SafeParcelReader.readInt(parcel, header);
   20:             } else if (fieldId == 2) {
   21:                 parcelCreateParcel = SafeParcelReader.createParcel(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/internal/safeparcel/SafeParcelWriter.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   24:         parcel.writeInt(i | SupportMenu.CATEGORY_MASK);
   25:         parcel.writeInt(0);
   26:         return parcel.dataPosition();
   27:     }
   28: 
   29:     public static int beginObjectHeader(Parcel parcel) {
   30:         return b(parcel, 20293);
   31:     }
   32: 
   33:     public static void c(Parcel parcel, int i) {
   34:         int iDataPosition = parcel.dataPosition();
   46:         parcel.setDataPosition(iDataPosition);
   47:         parcel.writeInt(iDataPosition3 - iDataPosition2);
   48:         parcel.setDataPosition(iDataPosition3);
   49:     }
   50: 
   51:     public static void finishObjectHeader(Parcel parcel, int i) {
   52:         c(parcel, i);
   53:     }
   54: 
   55:     public static void writeBigDecimal(Parcel parcel, int i, BigDecimal bigDecimal, boolean z) {
   56:         if (bigDecimal == null) {
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/internal/safeparcel/SafeParcelReader.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  658:         }
  659:         b(parcel, size, 4);
  660:         return Float.valueOf(parcel.readFloat());
  661:     }
  662: 
  663:     public static int readHeader(Parcel parcel) {
  664:         return parcel.readInt();
  665:     }
  666: 
  667:     public static IBinder readIBinder(Parcel parcel, int i) {
  668:         int size = readSize(parcel, i);
  735: 
  736:     public static void skipUnknownField(Parcel parcel, int i) {
  737:         parcel.setDataPosition(parcel.dataPosition() + readSize(parcel, i));
  738:     }
  739: 
  740:     public static int validateObjectHeader(Parcel parcel) {
  741:         int header = readHeader(parcel);
  742:         int size = readSize(parcel, header);
  743:         int fieldId = getFieldId(header);
  744:         int iDataPosition = parcel.dataPosition();
  745:         if (fieldId != 20293) {
  746:             throw new ParseException("Expected object header. Got 0x".concat(String.valueOf(Integer.toHexString(header))), parcel);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/moduleinstall/internal/zac.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8: 
    9: /* JADX INFO: loaded from: classes4.dex */
   10: public final class zac implements Parcelable.Creator {
   11:     @Override // android.os.Parcelable.Creator
   12:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   13:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   14:         ArrayList arrayListCreateTypedList = null;
   15:         String strCreateString = null;
   16:         boolean z = false;
   17:         String strCreateString2 = null;
   18:         while (parcel.dataPosition() < iValidateObjectHeader) {
   19:             int header = SafeParcelReader.readHeader(parcel);
   20:             int fieldId = SafeParcelReader.getFieldId(header);
   21:             if (fieldId == 1) {
   22:                 arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, Feature.CREATOR);
   23:             } else if (fieldId == 2) {
   24:                 z = SafeParcelReader.readBoolean(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   62:         return Objects.hashCode(Boolean.valueOf(this.c), this.b, this.d, this.e);
   63:     }
   64: 
   65:     @Override // android.os.Parcelable
   66:     public final void writeToParcel(Parcel parcel, int i) {
   67:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   68:         SafeParcelWriter.writeTypedList(parcel, 1, getApiFeatures(), false);
   69:         SafeParcelWriter.writeBoolean(parcel, 2, this.c);
   70:         SafeParcelWriter.writeString(parcel, 3, this.d, false);
   71:         SafeParcelWriter.writeString(parcel, 4, this.e, false);
   72:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   73:     }
   74: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/Fido2ApiClient.java`

**Разделы:** API HOST / NETWORK CONFIG

```
   73:                 ((zzs) ((com.google.android.gms.internal.fido.zzp) obj).getService()).zzd(new nhb((TaskCompletionSource) obj2), publicKeyCredentialRequestOptions2);
   74:             }
   75:         }).setMethodKey(5408).build());
   76:     }
   77: 
   78:     public Task<Boolean> isUserVerifyingPlatformAuthenticatorAvailable() {
   79:         return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.fido.fido2.zzb
   80:             /* JADX WARN: Multi-variable type inference failed */
   81:             @Override // com.google.android.gms.common.api.internal.RemoteCall
   82:             public final void accept(Object obj, Object obj2) {
   83:                 ((zzs) ((com.google.android.gms.internal.fido.zzp) obj).getService()).zze(new nub((TaskCompletionSource) obj2));
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/Fido2PrivilegedApiClient.java`

**Разделы:** API HOST / NETWORK CONFIG

```
   87:                 ((com.google.android.gms.internal.fido.zzn) ((com.google.android.gms.internal.fido.zzk) obj).getService()).zze(new vcc((TaskCompletionSource) obj2), browserPublicKeyCredentialRequestOptions2);
   88:             }
   89:         }).setMethodKey(5413).build());
   90:     }
   91: 
   92:     public Task<Boolean> isUserVerifyingPlatformAuthenticatorAvailable() {
   93:         return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.fido.fido2.zzp
   94:             /* JADX WARN: Multi-variable type inference failed */
   95:             @Override // com.google.android.gms.common.api.internal.RemoteCall
   96:             public final void accept(Object obj, Object obj2) {
   97:                 ((com.google.android.gms.internal.fido.zzn) ((com.google.android.gms.internal.fido.zzk) obj).getService()).zzf(new oec((TaskCompletionSource) obj2));
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzk.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP, API HOST / NETWORK CONFIG

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzk implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         byte[] bArrCreateByteArray = null;
   13:         byte[] bArrCreateByteArray2 = null;
   14:         byte[] bArrCreateByteArray3 = null;
   15:         String[] strArrCreateStringArray = null;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 2) {
   20:                 bArrCreateByteArray = SafeParcelReader.createByteArray(parcel, header);
   21:             } else if (fieldId == 3) {
   22:                 bArrCreateByteArray2 = SafeParcelReader.createByteArray(parcel, header);
   27:             } else {
   28:                 strArrCreateStringArray = SafeParcelReader.createStringArray(parcel, header);
   29:             }
   30:         }
   31:         SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
   32:         return new AuthenticatorAttestationResponse(bArrCreateByteArray, bArrCreateByteArray2, bArrCreateByteArray3, strArrCreateStringArray);
   33:     }
   34: 
   35:     @Override // android.os.Parcelable.Creator
   36:     public final /* synthetic */ Object[] newArray(int i) {
   37:         return new AuthenticatorAttestationResponse[i];
   38:     }
   39: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzal.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP, API HOST / NETWORK CONFIG

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzal implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         byte[] bArrCreateByteArray = null;
   15:         AuthenticatorAttestationResponse authenticatorAttestationResponse = null;
   16:         AuthenticatorAssertionResponse authenticatorAssertionResponse = null;
   17:         AuthenticatorErrorResponse authenticatorErrorResponse = null;
   18:         AuthenticationExtensionsClientOutputs authenticationExtensionsClientOutputs = null;
   19:         String strCreateString3 = null;
   20:         while (parcel.dataPosition() < iValidateObjectHeader) {
   21:             int header = SafeParcelReader.readHeader(parcel);
   22:             switch (SafeParcelReader.getFieldId(header)) {
   23:                 case 1:
   24:                     strCreateString = SafeParcelReader.createString(parcel, header);
   25:                     break;
   26:                 case 2:
   28:                     break;
   29:                 case 3:
   30:                     bArrCreateByteArray = SafeParcelReader.createByteArray(parcel, header);
   31:                     break;
   32:                 case 4:
   33:                     authenticatorAttestationResponse = (AuthenticatorAttestationResponse) SafeParcelReader.createParcelable(parcel, header, AuthenticatorAttestationResponse.CREATOR);
   34:                     break;
   35:                 case 5:
   36:                     authenticatorAssertionResponse = (AuthenticatorAssertionResponse) SafeParcelReader.createParcelable(parcel, header, AuthenticatorAssertionResponse.CREATOR);
   37:                     break;
   38:                 case 6:
   39:                     authenticatorErrorResponse = (AuthenticatorErrorResponse) SafeParcelReader.createParcelable(parcel, header, AuthenticatorErrorResponse.CREATOR);
   40:                     break;
   41:                 case 7:
   42:                     authenticationExtensionsClientOutputs = (AuthenticationExtensionsClientOutputs) SafeParcelReader.createParcelable(parcel, header, AuthenticationExtensionsClientOutputs.CREATOR);
   43:                     break;
   44:                 case 8:
   48:                     SafeParcelReader.skipUnknownField(parcel, header);
   49:                     break;
   50:             }
   51:         }
   52:         SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
   53:         return new PublicKeyCredential(strCreateString, strCreateString2, bArrCreateByteArray, authenticatorAttestationResponse, authenticatorAssertionResponse, authenticatorErrorResponse, authenticationExtensionsClientOutputs, strCreateString3);
   54:     }
   55: 
   56:     @Override // android.os.Parcelable.Creator
   57:     public final /* synthetic */ Object[] newArray(int i) {
   58:         return new PublicKeyCredential[i];
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzv.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzv implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         boolean z = false;
   13:         while (parcel.dataPosition() < iValidateObjectHeader) {
   14:             int header = SafeParcelReader.readHeader(parcel);
   15:             if (SafeParcelReader.getFieldId(header) != 1) {
   16:                 SafeParcelReader.skipUnknownField(parcel, header);
   17:             } else {
   18:                 z = SafeParcelReader.readBoolean(parcel, header);
   19:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP, API HOST / NETWORK CONFIG

```
    6: import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
    7: import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
    8: import defpackage.cg;
    9: 
   10: /* JADX INFO: loaded from: classes4.dex */
   11: public class AuthenticatorErrorResponse extends AuthenticatorResponse {
   12:     public static final Parcelable.Creator<AuthenticatorErrorResponse> CREATOR = new zzl();
   13:     public final ErrorCode b;
   14:     public final String c;
   15:     public final int d;
   16: 
   17:     public AuthenticatorErrorResponse(int i, String str, int i2) {
   18:         try {
   19:             this.b = ErrorCode.toErrorCode(i);
   20:             this.c = str;
   21:             this.d = i2;
   22:         } catch (ErrorCode.UnsupportedErrorCodeException e) {
   23:             cg.h(e);
   24:             throw null;
   25:         }
   26:     }
   27: 
   28:     public static AuthenticatorErrorResponse deserializeFromBytes(byte[] bArr) {
   29:         return (AuthenticatorErrorResponse) SafeParcelableSerializer.deserializeFromBytes(bArr, CREATOR);
   30:     }
   31: 
   32:     public boolean equals(Object obj) {
   33:         if (!(obj instanceof AuthenticatorErrorResponse)) {
   34:             return false;
   35:         }
   36:         AuthenticatorErrorResponse authenticatorErrorResponse = (AuthenticatorErrorResponse) obj;
   37:         return Objects.equal(this.b, authenticatorErrorResponse.b) && Objects.equal(this.c, authenticatorErrorResponse.c) && Objects.equal(Integer.valueOf(this.d), Integer.valueOf(authenticatorErrorResponse.d));
   38:     }
   39: 
   40:     @Override // com.google.android.gms.fido.fido2.api.common.AuthenticatorResponse
   41:     public byte[] getClientDataJSON() {
   42:         throw new UnsupportedOperationException();
   43:     }
   44: 
   45:     public ErrorCode getErrorCode() {
   56: 
   57:     public int hashCode() {
   58:         return Objects.hashCode(this.b, this.c, Integer.valueOf(this.d));
   59:     }
   60: 
   61:     @Override // com.google.android.gms.fido.fido2.api.common.AuthenticatorResponse
   62:     public byte[] serializeToBytes() {
   63:         return SafeParcelableSerializer.serializeToBytes(this);
   64:     }
   65: 
   66:     public String toString() {
   73:         return zzajVarZza.toString();
   74:     }
   75: 
   76:     @Override // android.os.Parcelable
   77:     public void writeToParcel(Parcel parcel, int i) {
   78:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   79:         SafeParcelWriter.writeInt(parcel, 2, getErrorCodeAsInt());
   80:         SafeParcelWriter.writeString(parcel, 3, getErrorMessage(), false);
   81:         SafeParcelWriter.writeInt(parcel, 4, this.d);
   82:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   83:     }
   84: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzah.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzah implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         while (parcel.dataPosition() < iValidateObjectHeader) {
   14:             int header = SafeParcelReader.readHeader(parcel);
   15:             if (SafeParcelReader.getFieldId(header) != 1) {
   16:                 SafeParcelReader.skipUnknownField(parcel, header);
   17:             } else {
   18:                 strCreateString = SafeParcelReader.createString(parcel, header);
   19:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzo.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzo implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         PublicKeyCredentialRequestOptions publicKeyCredentialRequestOptions = null;
   14:         Uri uri = null;
   15:         byte[] bArrCreateByteArray = null;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 2) {
   20:                 publicKeyCredentialRequestOptions = (PublicKeyCredentialRequestOptions) SafeParcelReader.createParcelable(parcel, header, PublicKeyCredentialRequestOptions.CREATOR);
   21:             } else if (fieldId == 3) {
   22:                 uri = (Uri) SafeParcelReader.createParcelable(parcel, header, Uri.CREATOR);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzr.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzr implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         byte[] bArrCreateByteArray = null;
   13:         byte[] bArrCreateByteArray2 = null;
   14:         byte[] bArrCreateByteArray3 = null;
   15:         long j = 0;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 1) {
   20:                 j = SafeParcelReader.readLong(parcel, header);
   21:             } else if (fieldId == 2) {
   22:                 bArrCreateByteArray = SafeParcelReader.createByteArray(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzau.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzau implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 2) {
   18:                 strCreateString = SafeParcelReader.createString(parcel, header);
   19:             } else if (fieldId != 3) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzc.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzc implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         UvmEntries uvmEntries = null;
   13:         zzf zzfVar = null;
   14:         AuthenticationExtensionsCredPropsOutputs authenticationExtensionsCredPropsOutputs = null;
   15:         zzh zzhVar = null;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 1) {
   20:                 uvmEntries = (UvmEntries) SafeParcelReader.createParcelable(parcel, header, UvmEntries.CREATOR);
   21:             } else if (fieldId == 2) {
   22:                 zzfVar = (zzf) SafeParcelReader.createParcelable(parcel, header, zzf.CREATOR);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzad.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   24:         return Objects.hashCode(Boolean.valueOf(this.b));
   25:     }
   26: 
   27:     @Override // android.os.Parcelable
   28:     public final void writeToParcel(Parcel parcel, int i) {
   29:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   30:         SafeParcelWriter.writeBoolean(parcel, 1, this.b);
   31:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   32:     }
   33: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzz.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   24:         return Objects.hashCode(Boolean.valueOf(this.b));
   25:     }
   26: 
   27:     @Override // android.os.Parcelable
   28:     public final void writeToParcel(Parcel parcel, int i) {
   29:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   30:         SafeParcelWriter.writeBoolean(parcel, 1, this.b);
   31:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   32:     }
   33: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/AuthenticatorResponse.java`

**Разделы:** API HOST / NETWORK CONFIG

```
    1: package com.google.android.gms.fido.fido2.api.common;
    2: 
    3: import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
    4: 
    5: /* JADX INFO: loaded from: classes4.dex */
    6: public abstract class AuthenticatorResponse extends AbstractSafeParcelable {
    7:     public abstract byte[] getClientDataJSON();
    8: 
    9:     public abstract byte[] serializeToBytes();
   10: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   27:         return Objects.hashCode(Boolean.valueOf(this.b));
   28:     }
   29: 
   30:     @Override // android.os.Parcelable
   31:     public void writeToParcel(Parcel parcel, int i) {
   32:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   33:         SafeParcelWriter.writeBoolean(parcel, 1, getThirdPartyPayment());
   34:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   35:     }
   36: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzg.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzg implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         byte[] bArrCreateByteArray = null;
   13:         byte[] bArrCreateByteArray2 = null;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 bArrCreateByteArray = SafeParcelReader.createByteArray(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzba.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzba implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         short s = 0;
   14:         short s2 = 0;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 1) {
   19:                 i = SafeParcelReader.readInt(parcel, header);
   20:             } else if (fieldId == 2) {
   21:                 s = SafeParcelReader.readShort(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/FidoCredentialDetails.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   71:         return SafeParcelableSerializer.serializeToBytes(this);
   72:     }
   73: 
   74:     @Override // android.os.Parcelable
   75:     public void writeToParcel(Parcel parcel, int i) {
   76:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   77:         SafeParcelWriter.writeString(parcel, 1, getUserName(), false);
   78:         SafeParcelWriter.writeString(parcel, 2, getUserDisplayName(), false);
   79:         SafeParcelWriter.writeByteArray(parcel, 3, getUserId(), false);
   80:         SafeParcelWriter.writeByteArray(parcel, 4, getCredentialId(), false);
   81:         SafeParcelWriter.writeBoolean(parcel, 5, getIsDiscoverable());
   82:         SafeParcelWriter.writeBoolean(parcel, 6, getIsPaymentCredential());
   83:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   84:     }
   85: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/AuthenticationExtensionsClientOutputs.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   69:         return SafeParcelableSerializer.serializeToBytes(this);
   70:     }
   71: 
   72:     @Override // android.os.Parcelable
   73:     public void writeToParcel(Parcel parcel, int i) {
   74:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   75:         SafeParcelWriter.writeParcelable(parcel, 1, getUvmEntries(), i, false);
   76:         SafeParcelWriter.writeParcelable(parcel, 2, this.c, i, false);
   77:         SafeParcelWriter.writeParcelable(parcel, 3, getCredProps(), i, false);
   78:         SafeParcelWriter.writeParcelable(parcel, 4, this.e, i, false);
   79:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   80:     }
   81: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/TokenBinding.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  105:         }
  106:     }
  107: 
  108:     @Override // android.os.Parcelable
  109:     public void writeToParcel(Parcel parcel, int i) {
  110:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  111:         SafeParcelWriter.writeString(parcel, 2, getTokenBindingStatusAsString(), false);
  112:         SafeParcelWriter.writeString(parcel, 3, getTokenBindingId(), false);
  113:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  114:     }
  115: 
  116:     public TokenBinding(String str) {
  117:         this(TokenBindingStatus.PRESENT.toString(), (String) Preconditions.checkNotNull(str));
  118:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzae.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzae implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         boolean z = false;
   13:         while (parcel.dataPosition() < iValidateObjectHeader) {
   14:             int header = SafeParcelReader.readHeader(parcel);
   15:             if (SafeParcelReader.getFieldId(header) != 1) {
   16:                 SafeParcelReader.skipUnknownField(parcel, header);
   17:             } else {
   18:                 z = SafeParcelReader.readBoolean(parcel, header);
   19:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP, API HOST / NETWORK CONFIG

```
    9: import com.google.android.gms.fido.u2f.api.common.SignResponseData;
   10: import com.google.android.gms.internal.fido.zzbf;
   11: import java.util.Arrays;
   12: 
   13: /* JADX INFO: loaded from: classes4.dex */
   14: public class AuthenticatorAssertionResponse extends AuthenticatorResponse {
   15:     public static final Parcelable.Creator<AuthenticatorAssertionResponse> CREATOR = new zzj();
   16:     public final byte[] b;
   17:     public final byte[] c;
   18:     public final byte[] d;
   19:     public final byte[] e;
   20:     public final byte[] f;
   21: 
   22:     public AuthenticatorAssertionResponse(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
   23:         this.b = (byte[]) Preconditions.checkNotNull(bArr);
   24:         this.c = (byte[]) Preconditions.checkNotNull(bArr2);
   25:         this.d = (byte[]) Preconditions.checkNotNull(bArr3);
   26:         this.e = (byte[]) Preconditions.checkNotNull(bArr4);
   27:         this.f = bArr5;
   28:     }
   29: 
   30:     public static AuthenticatorAssertionResponse deserializeFromBytes(byte[] bArr) {
   31:         return (AuthenticatorAssertionResponse) SafeParcelableSerializer.deserializeFromBytes(bArr, CREATOR);
   32:     }
   33: 
   34:     public boolean equals(Object obj) {
   35:         if (!(obj instanceof AuthenticatorAssertionResponse)) {
   36:             return false;
   37:         }
   38:         AuthenticatorAssertionResponse authenticatorAssertionResponse = (AuthenticatorAssertionResponse) obj;
   39:         return Arrays.equals(this.b, authenticatorAssertionResponse.b) && Arrays.equals(this.c, authenticatorAssertionResponse.c) && Arrays.equals(this.d, authenticatorAssertionResponse.d) && Arrays.equals(this.e, authenticatorAssertionResponse.e) && Arrays.equals(this.f, authenticatorAssertionResponse.f);
   40:     }
   41: 
   42:     public byte[] getAuthenticatorData() {
   43:         return this.d;
   44:     }
   45: 
   46:     @Override // com.google.android.gms.fido.fido2.api.common.AuthenticatorResponse
   47:     public byte[] getClientDataJSON() {
   48:         return this.c;
   49:     }
   50: 
   51:     @Deprecated
   63: 
   64:     public int hashCode() {
   65:         return Objects.hashCode(Integer.valueOf(Arrays.hashCode(this.b)), Integer.valueOf(Arrays.hashCode(this.c)), Integer.valueOf(Arrays.hashCode(this.d)), Integer.valueOf(Arrays.hashCode(this.e)), Integer.valueOf(Arrays.hashCode(this.f)));
   66:     }
   67: 
   68:     @Override // com.google.android.gms.fido.fido2.api.common.AuthenticatorResponse
   69:     public byte[] serializeToBytes() {
   70:         return SafeParcelableSerializer.serializeToBytes(this);
   71:     }
   72: 
   73:     public String toString() {
   78:         zzbf zzbfVarZzd2 = zzbf.zzd();
   79:         byte[] bArr2 = this.c;
   80:         zzajVarZza.zzb("clientDataJSON", zzbfVarZzd2.zze(bArr2, 0, bArr2.length));
   81:         zzbf zzbfVarZzd3 = zzbf.zzd();
   82:         byte[] bArr3 = this.d;
   83:         zzajVarZza.zzb("authenticatorData", zzbfVarZzd3.zze(bArr3, 0, bArr3.length));
   84:         zzbf zzbfVarZzd4 = zzbf.zzd();
   85:         byte[] bArr4 = this.e;
   86:         zzajVarZza.zzb("signature", zzbfVarZzd4.zze(bArr4, 0, bArr4.length));
   87:         byte[] bArr5 = this.f;
   88:         if (bArr5 != null) {
   91:         return zzajVarZza.toString();
   92:     }
   93: 
   94:     @Override // android.os.Parcelable
   95:     public void writeToParcel(Parcel parcel, int i) {
   96:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   97:         SafeParcelWriter.writeByteArray(parcel, 2, getKeyHandle(), false);
   98:         SafeParcelWriter.writeByteArray(parcel, 3, getClientDataJSON(), false);
   99:         SafeParcelWriter.writeByteArray(parcel, 4, getAuthenticatorData(), false);
  100:         SafeParcelWriter.writeByteArray(parcel, 5, getSignature(), false);
  101:         SafeParcelWriter.writeByteArray(parcel, 6, getUserHandle(), false);
  102:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  103:     }
  104: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzaa.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzaa implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         boolean z = false;
   13:         while (parcel.dataPosition() < iValidateObjectHeader) {
   14:             int header = SafeParcelReader.readHeader(parcel);
   15:             if (SafeParcelReader.getFieldId(header) != 1) {
   16:                 SafeParcelReader.skipUnknownField(parcel, header);
   17:             } else {
   18:                 z = SafeParcelReader.readBoolean(parcel, header);
   19:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzf.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   30:         return Objects.hashCode(this.b, this.c);
   31:     }
   32: 
   33:     @Override // android.os.Parcelable
   34:     public final void writeToParcel(Parcel parcel, int i) {
   35:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   36:         SafeParcelWriter.writeByteArray(parcel, 1, this.b, false);
   37:         SafeParcelWriter.writeByteArray(parcel, 2, this.c, false);
   38:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   39:     }
   40: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   27:         return Objects.hashCode(Boolean.valueOf(this.b));
   28:     }
   29: 
   30:     @Override // android.os.Parcelable
   31:     public void writeToParcel(Parcel parcel, int i) {
   32:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   33:         SafeParcelWriter.writeBoolean(parcel, 1, getUvm());
   34:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   35:     }
   36: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRpEntity.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   44:         return Objects.hashCode(this.b, this.c, this.d);
   45:     }
   46: 
   47:     @Override // android.os.Parcelable
   48:     public void writeToParcel(Parcel parcel, int i) {
   49:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   50:         SafeParcelWriter.writeString(parcel, 2, getId(), false);
   51:         SafeParcelWriter.writeString(parcel, 3, getName(), false);
   52:         SafeParcelWriter.writeString(parcel, 4, getIcon(), false);
   53:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   54:     }
   55: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzj.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP, API HOST / NETWORK CONFIG

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzj implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         byte[] bArrCreateByteArray = null;
   13:         byte[] bArrCreateByteArray2 = null;
   14:         byte[] bArrCreateByteArray3 = null;
   15:         byte[] bArrCreateByteArray4 = null;
   16:         byte[] bArrCreateByteArray5 = null;
   17:         while (parcel.dataPosition() < iValidateObjectHeader) {
   18:             int header = SafeParcelReader.readHeader(parcel);
   19:             int fieldId = SafeParcelReader.getFieldId(header);
   20:             if (fieldId == 2) {
   21:                 bArrCreateByteArray = SafeParcelReader.createByteArray(parcel, header);
   22:             } else if (fieldId == 3) {
   23:                 bArrCreateByteArray2 = SafeParcelReader.createByteArray(parcel, header);
   30:             } else {
   31:                 bArrCreateByteArray5 = SafeParcelReader.createByteArray(parcel, header);
   32:             }
   33:         }
   34:         SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
   35:         return new AuthenticatorAssertionResponse(bArrCreateByteArray, bArrCreateByteArray2, bArrCreateByteArray3, bArrCreateByteArray4, bArrCreateByteArray5);
   36:     }
   37: 
   38:     @Override // android.os.Parcelable.Creator
   39:     public final /* synthetic */ Object[] newArray(int i) {
   40:         return new AuthenticatorAssertionResponse[i];
   41:     }
   42: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialCreationOptions.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  120:         return SafeParcelableSerializer.serializeToBytes(this);
  121:     }
  122: 
  123:     @Override // android.os.Parcelable
  124:     public void writeToParcel(Parcel parcel, int i) {
  125:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  126:         SafeParcelWriter.writeParcelable(parcel, 2, getPublicKeyCredentialCreationOptions(), i, false);
  127:         SafeParcelWriter.writeParcelable(parcel, 3, getOrigin(), i, false);
  128:         SafeParcelWriter.writeByteArray(parcel, 4, getClientDataHash(), false);
  129:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  130:     }
  131: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzam.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8: 
    9: /* JADX INFO: loaded from: classes4.dex */
   10: public final class zzam implements Parcelable.Creator {
   11:     @Override // android.os.Parcelable.Creator
   12:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   13:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   14:         String strCreateString = null;
   15:         byte[] bArrCreateByteArray = null;
   16:         ArrayList arrayListCreateTypedList = null;
   17:         while (parcel.dataPosition() < iValidateObjectHeader) {
   18:             int header = SafeParcelReader.readHeader(parcel);
   19:             int fieldId = SafeParcelReader.getFieldId(header);
   20:             if (fieldId == 2) {
   21:                 strCreateString = SafeParcelReader.createString(parcel, header);
   22:             } else if (fieldId == 3) {
   23:                 bArrCreateByteArray = SafeParcelReader.createByteArray(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzap.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzap implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         String strCreateString3 = null;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 2) {
   19:                 strCreateString = SafeParcelReader.createString(parcel, header);
   20:             } else if (fieldId == 3) {
   21:                 strCreateString2 = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzai.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   43:         return iHashCode;
   44:     }
   45: 
   46:     @Override // android.os.Parcelable
   47:     public final void writeToParcel(Parcel parcel, int i) {
   48:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   49:         SafeParcelWriter.writeByteArrayArray(parcel, 1, this.b, false);
   50:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   51:     }
   52: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP, API HOST / NETWORK CONFIG

```
    6: import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
    7: import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
    8: import defpackage.cg;
    9: 
   10: /* JADX INFO: loaded from: classes4.dex */
   11: public class AuthenticatorSelectionCriteria extends AbstractSafeParcelable {
   12:     public static final Parcelable.Creator<AuthenticatorSelectionCriteria> CREATOR = new zzm();
   13:     public final Attachment b;
   14:     public final Boolean c;
   15:     public final zzay d;
   16:     public final ResidentKeyRequirement e;
   17: 
   18:     public static class Builder {
   19:         public Attachment a;
   20:         public Boolean b;
   21:         public ResidentKeyRequirement c;
   22: 
   23:         public AuthenticatorSelectionCriteria build() {
   24:             Attachment attachment = this.a;
   25:             String string = attachment == null ? null : attachment.toString();
   26:             Boolean bool = this.b;
   27:             ResidentKeyRequirement residentKeyRequirement = this.c;
   28:             return new AuthenticatorSelectionCriteria(string, bool, null, residentKeyRequirement == null ? null : residentKeyRequirement.toString());
   29:         }
   30: 
   31:         public Builder setAttachment(Attachment attachment) {
   32:             this.a = attachment;
   33:             return this;
   42:             this.c = residentKeyRequirement;
   43:             return this;
   44:         }
   45:     }
   46: 
   47:     public AuthenticatorSelectionCriteria(String str, Boolean bool, String str2, String str3) {
   48:         Attachment attachmentFromString;
   49:         if (str == null) {
   50:             attachmentFromString = null;
   51:         } else {
   52:             try {
   61:         this.d = str2 == null ? null : zzay.zza(str2);
   62:         this.e = str3 == null ? null : ResidentKeyRequirement.fromString(str3);
   63:     }
   64: 
   65:     public boolean equals(Object obj) {
   66:         if (!(obj instanceof AuthenticatorSelectionCriteria)) {
   67:             return false;
   68:         }
   69:         AuthenticatorSelectionCriteria authenticatorSelectionCriteria = (AuthenticatorSelectionCriteria) obj;
   70:         return Objects.equal(this.b, authenticatorSelectionCriteria.b) && Objects.equal(this.c, authenticatorSelectionCriteria.c) && Objects.equal(this.d, authenticatorSelectionCriteria.d) && Objects.equal(this.e, authenticatorSelectionCriteria.e);
   71:     }
   72: 
   73:     public Attachment getAttachment() {
   74:         return this.b;
   75:     }
  102:         return Objects.hashCode(this.b, this.c, this.d, this.e);
  103:     }
  104: 
  105:     @Override // android.os.Parcelable
  106:     public void writeToParcel(Parcel parcel, int i) {
  107:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  108:         SafeParcelWriter.writeString(parcel, 2, getAttachmentAsString(), false);
  109:         SafeParcelWriter.writeBooleanObject(parcel, 3, getRequireResidentKey(), false);
  110:         zzay zzayVar = this.d;
  111:         SafeParcelWriter.writeString(parcel, 4, zzayVar == null ? null : zzayVar.toString(), false);
  112:         SafeParcelWriter.writeString(parcel, 5, getResidentKeyRequirementAsString(), false);
  113:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  114:     }
  115: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzn.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzn implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptions = null;
   14:         Uri uri = null;
   15:         byte[] bArrCreateByteArray = null;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 2) {
   20:                 publicKeyCredentialCreationOptions = (PublicKeyCredentialCreationOptions) SafeParcelReader.createParcelable(parcel, header, PublicKeyCredentialCreationOptions.CREATOR);
   21:             } else if (fieldId == 3) {
   22:                 uri = (Uri) SafeParcelReader.createParcelable(parcel, header, Uri.CREATOR);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzs.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   31:         return Objects.hashCode(new HashSet(this.b));
   32:     }
   33: 
   34:     @Override // android.os.Parcelable
   35:     public final void writeToParcel(Parcel parcel, int i) {
   36:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   37:         SafeParcelWriter.writeTypedList(parcel, 1, this.b, false);
   38:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   39:     }
   40: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzaz.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzaz implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         ArrayList arrayListCreateTypedList = null;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             if (SafeParcelReader.getFieldId(header) != 1) {
   17:                 SafeParcelReader.skipUnknownField(parcel, header);
   18:             } else {
   19:                 arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, UvmEntry.CREATOR);
   20:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/PublicKeyCredentialUserEntity.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   51:         return Objects.hashCode(this.b, this.c, this.d, this.e);
   52:     }
   53: 
   54:     @Override // android.os.Parcelable
   55:     public void writeToParcel(Parcel parcel, int i) {
   56:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   57:         SafeParcelWriter.writeByteArray(parcel, 2, getId(), false);
   58:         SafeParcelWriter.writeString(parcel, 3, getName(), false);
   59:         SafeParcelWriter.writeString(parcel, 4, getIcon(), false);
   60:         SafeParcelWriter.writeString(parcel, 5, getDisplayName(), false);
   61:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   62:     }
   63: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzag.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   27:         return Objects.hashCode(this.b);
   28:     }
   29: 
   30:     @Override // android.os.Parcelable
   31:     public final void writeToParcel(Parcel parcel, int i) {
   32:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   33:         SafeParcelWriter.writeString(parcel, 1, this.b, false);
   34:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   35:     }
   36: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzy.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzy implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         boolean z = false;
   13:         boolean z2 = false;
   14:         String strCreateString = null;
   15:         String strCreateString2 = null;
   16:         byte[] bArrCreateByteArray = null;
   17:         byte[] bArrCreateByteArray2 = null;
   18:         while (parcel.dataPosition() < iValidateObjectHeader) {
   19:             int header = SafeParcelReader.readHeader(parcel);
   20:             switch (SafeParcelReader.getFieldId(header)) {
   21:                 case 1:
   22:                     strCreateString = SafeParcelReader.createString(parcel, header);
   23:                     break;
   24:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzac.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzac implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         long j = 0;
   13:         while (parcel.dataPosition() < iValidateObjectHeader) {
   14:             int header = SafeParcelReader.readHeader(parcel);
   15:             if (SafeParcelReader.getFieldId(header) != 1) {
   16:                 SafeParcelReader.skipUnknownField(parcel, header);
   17:             } else {
   18:                 j = SafeParcelReader.readLong(parcel, header);
   19:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzd.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzd implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         FidoAppIdExtension fidoAppIdExtension = null;
   13:         zzs zzsVar = null;
   14:         UserVerificationMethodExtension userVerificationMethodExtension = null;
   15:         zzz zzzVar = null;
   16:         zzab zzabVar = null;
   18:         zzu zzuVar = null;
   19:         zzag zzagVar = null;
   20:         GoogleThirdPartyPaymentExtension googleThirdPartyPaymentExtension = null;
   21:         zzai zzaiVar = null;
   22:         while (parcel.dataPosition() < iValidateObjectHeader) {
   23:             int header = SafeParcelReader.readHeader(parcel);
   24:             switch (SafeParcelReader.getFieldId(header)) {
   25:                 case 2:
   26:                     fidoAppIdExtension = (FidoAppIdExtension) SafeParcelReader.createParcelable(parcel, header, FidoAppIdExtension.CREATOR);
   27:                     break;
   28:                 case 3:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzh.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   30:         return Objects.hashCode(Boolean.valueOf(this.b), this.c);
   31:     }
   32: 
   33:     @Override // android.os.Parcelable
   34:     public final void writeToParcel(Parcel parcel, int i) {
   35:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   36:         SafeParcelWriter.writeBoolean(parcel, 1, this.b);
   37:         SafeParcelWriter.writeByteArray(parcel, 2, this.c, false);
   38:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   39:     }
   40: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzao.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzao implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         byte[] bArrCreateByteArray = null;
   14:         Double doubleObject = null;
   15:         String strCreateString = null;
   16:         ArrayList arrayListCreateTypedList = null;
   17:         Integer integerObject = null;
   18:         TokenBinding tokenBinding = null;
   19:         String strCreateString2 = null;
   20:         AuthenticationExtensions authenticationExtensions = null;
   21:         Long longObject = null;
   22:         while (parcel.dataPosition() < iValidateObjectHeader) {
   23:             int header = SafeParcelReader.readHeader(parcel);
   24:             switch (SafeParcelReader.getFieldId(header)) {
   25:                 case 2:
   26:                     bArrCreateByteArray = SafeParcelReader.createByteArray(parcel, header);
   27:                     break;
   28:                 case 3:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/FidoAppIdExtension.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   31:         return Objects.hashCode(this.b);
   32:     }
   33: 
   34:     @Override // android.os.Parcelable
   35:     public void writeToParcel(Parcel parcel, int i) {
   36:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   37:         SafeParcelWriter.writeString(parcel, 2, getAppId(), false);
   38:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   39:     }
   40: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzar.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzar implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         byte[] bArrCreateByteArray = null;
   13:         String strCreateString = null;
   14:         String strCreateString2 = null;
   15:         String strCreateString3 = null;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 2) {
   20:                 bArrCreateByteArray = SafeParcelReader.createByteArray(parcel, header);
   21:             } else if (fieldId == 3) {
   22:                 strCreateString = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/PublicKeyCredentialParameters.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   59:         return Objects.hashCode(this.b, this.c);
   60:     }
   61: 
   62:     @Override // android.os.Parcelable
   63:     public void writeToParcel(Parcel parcel, int i) {
   64:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   65:         SafeParcelWriter.writeString(parcel, 2, getTypeAsString(), false);
   66:         SafeParcelWriter.writeIntegerObject(parcel, 3, Integer.valueOf(getAlgorithmIdAsInteger()), false);
   67:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   68:     }
   69: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzu.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   24:         return Objects.hashCode(Boolean.valueOf(this.b));
   25:     }
   26: 
   27:     @Override // android.os.Parcelable
   28:     public final void writeToParcel(Parcel parcel, int i) {
   29:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   30:         SafeParcelWriter.writeBoolean(parcel, 1, this.b);
   31:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   32:     }
   33: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzak.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP, API HOST / NETWORK CONFIG

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzak implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         PublicKeyCredentialRpEntity publicKeyCredentialRpEntity = null;
   14:         PublicKeyCredentialUserEntity publicKeyCredentialUserEntity = null;
   15:         byte[] bArrCreateByteArray = null;
   16:         ArrayList arrayListCreateTypedList = null;
   17:         Double doubleObject = null;
   18:         ArrayList arrayListCreateTypedList2 = null;
   19:         AuthenticatorSelectionCriteria authenticatorSelectionCriteria = null;
   20:         Integer integerObject = null;
   21:         TokenBinding tokenBinding = null;
   22:         String strCreateString = null;
   23:         AuthenticationExtensions authenticationExtensions = null;
   24:         while (parcel.dataPosition() < iValidateObjectHeader) {
   25:             int header = SafeParcelReader.readHeader(parcel);
   26:             switch (SafeParcelReader.getFieldId(header)) {
   27:                 case 2:
   28:                     publicKeyCredentialRpEntity = (PublicKeyCredentialRpEntity) SafeParcelReader.createParcelable(parcel, header, PublicKeyCredentialRpEntity.CREATOR);
   29:                     break;
   30:                 case 3:
   41:                     break;
   42:                 case 7:
   43:                     arrayListCreateTypedList2 = SafeParcelReader.createTypedList(parcel, header, PublicKeyCredentialDescriptor.CREATOR);
   44:                     break;
   45:                 case 8:
   46:                     authenticatorSelectionCriteria = (AuthenticatorSelectionCriteria) SafeParcelReader.createParcelable(parcel, header, AuthenticatorSelectionCriteria.CREATOR);
   47:                     break;
   48:                 case 9:
   49:                     integerObject = SafeParcelReader.readIntegerObject(parcel, header);
   50:                     break;
   51:                 case 10:
   61:                     SafeParcelReader.skipUnknownField(parcel, header);
   62:                     break;
   63:             }
   64:         }
   65:         SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
   66:         return new PublicKeyCredentialCreationOptions(publicKeyCredentialRpEntity, publicKeyCredentialUserEntity, bArrCreateByteArray, arrayListCreateTypedList, doubleObject, arrayListCreateTypedList2, authenticatorSelectionCriteria, integerObject, tokenBinding, strCreateString, authenticationExtensions);
   67:     }
   68: 
   69:     @Override // android.os.Parcelable.Creator
   70:     public final /* synthetic */ Object[] newArray(int i) {
   71:         return new PublicKeyCredentialCreationOptions[i];
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzl.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP, API HOST / NETWORK CONFIG

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzl implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         String strCreateString = null;
   14:         int i2 = 0;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 2) {
   19:                 i = SafeParcelReader.readInt(parcel, header);
   20:             } else if (fieldId == 3) {
   21:                 strCreateString = SafeParcelReader.createString(parcel, header);
   24:             } else {
   25:                 i2 = SafeParcelReader.readInt(parcel, header);
   26:             }
   27:         }
   28:         SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
   29:         return new AuthenticatorErrorResponse(i, strCreateString, i2);
   30:     }
   31: 
   32:     @Override // android.os.Parcelable.Creator
   33:     public final /* synthetic */ Object[] newArray(int i) {
   34:         return new AuthenticatorErrorResponse[i];
   35:     }
   36: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzq.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   35:         return Objects.hashCode(Long.valueOf(this.b), this.c, this.d, this.e);
   36:     }
   37: 
   38:     @Override // android.os.Parcelable
   39:     public final void writeToParcel(Parcel parcel, int i) {
   40:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   41:         SafeParcelWriter.writeLong(parcel, 1, this.b);
   42:         SafeParcelWriter.writeByteArray(parcel, 2, this.c, false);
   43:         SafeParcelWriter.writeByteArray(parcel, 3, this.d, false);
   44:         SafeParcelWriter.writeByteArray(parcel, 4, this.e, false);
   45:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   46:     }
   47: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzav.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzav implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         boolean z = false;
   13:         while (parcel.dataPosition() < iValidateObjectHeader) {
   14:             int header = SafeParcelReader.readHeader(parcel);
   15:             if (SafeParcelReader.getFieldId(header) != 1) {
   16:                 SafeParcelReader.skipUnknownField(parcel, header);
   17:             } else {
   18:                 z = SafeParcelReader.readBoolean(parcel, header);
   19:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzi.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzi implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         byte[] bArrCreateByteArray = null;
   13:         boolean z = false;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 z = SafeParcelReader.readBoolean(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP, API HOST / NETWORK CONFIG

```
   17:     public final PublicKeyCredentialUserEntity c;
   18:     public final byte[] d;
   19:     public final List e;
   20:     public final Double f;
   21:     public final List g;
   22:     public final AuthenticatorSelectionCriteria h;
   23:     public final Integer i;
   24:     public final TokenBinding j;
   25:     public final AttestationConveyancePreference k;
   26:     public final AuthenticationExtensions l;
   27: 
   30:         public PublicKeyCredentialUserEntity b;
   31:         public byte[] c;
   32:         public List d;
   33:         public Double e;
   34:         public List f;
   35:         public AuthenticatorSelectionCriteria g;
   36:         public Integer h;
   37:         public TokenBinding i;
   38:         public AttestationConveyancePreference j;
   39:         public AuthenticationExtensions k;
   40: 
   43:             PublicKeyCredentialUserEntity publicKeyCredentialUserEntity = this.b;
   44:             byte[] bArr = this.c;
   45:             List list = this.d;
   46:             Double d = this.e;
   47:             List list2 = this.f;
   48:             AuthenticatorSelectionCriteria authenticatorSelectionCriteria = this.g;
   49:             Integer num = this.h;
   50:             TokenBinding tokenBinding = this.i;
   51:             AttestationConveyancePreference attestationConveyancePreference = this.j;
   52:             return new PublicKeyCredentialCreationOptions(publicKeyCredentialRpEntity, publicKeyCredentialUserEntity, bArr, list, d, list2, authenticatorSelectionCriteria, num, tokenBinding, attestationConveyancePreference == null ? null : attestationConveyancePreference.toString(), this.k);
   53:         }
   54: 
   55:         public Builder setAttestationConveyancePreference(AttestationConveyancePreference attestationConveyancePreference) {
   56:             this.j = attestationConveyancePreference;
   57:             return this;
   60:         public Builder setAuthenticationExtensions(AuthenticationExtensions authenticationExtensions) {
   61:             this.k = authenticationExtensions;
   62:             return this;
   63:         }
   64: 
   65:         public Builder setAuthenticatorSelection(AuthenticatorSelectionCriteria authenticatorSelectionCriteria) {
   66:             this.g = authenticatorSelectionCriteria;
   67:             return this;
   68:         }
   69: 
   70:         public Builder setChallenge(byte[] bArr) {
   71:             this.c = (byte[]) Preconditions.checkNotNull(bArr);
  106:             this.b = (PublicKeyCredentialUserEntity) Preconditions.checkNotNull(publicKeyCredentialUserEntity);
  107:             return this;
  108:         }
  109:     }
  110: 
  111:     public PublicKeyCredentialCreationOptions(PublicKeyCredentialRpEntity publicKeyCredentialRpEntity, PublicKeyCredentialUserEntity publicKeyCredentialUserEntity, byte[] bArr, List list, Double d, List list2, AuthenticatorSelectionCriteria authenticatorSelectionCriteria, Integer num, TokenBinding tokenBinding, String str, AuthenticationExtensions authenticationExtensions) {
  112:         this.b = (PublicKeyCredentialRpEntity) Preconditions.checkNotNull(publicKeyCredentialRpEntity);
  113:         this.c = (PublicKeyCredentialUserEntity) Preconditions.checkNotNull(publicKeyCredentialUserEntity);
  114:         this.d = (byte[]) Preconditions.checkNotNull(bArr);
  115:         this.e = (List) Preconditions.checkNotNull(list);
  116:         this.f = d;
  117:         this.g = list2;
  118:         this.h = authenticatorSelectionCriteria;
  119:         this.i = num;
  120:         this.j = tokenBinding;
  121:         if (str != null) {
  122:             try {
  123:                 this.k = AttestationConveyancePreference.fromString(str);
  167:     @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
  168:     public AuthenticationExtensions getAuthenticationExtensions() {
  169:         return this.l;
  170:     }
  171: 
  172:     public AuthenticatorSelectionCriteria getAuthenticatorSelection() {
  173:         return this.h;
  174:     }
  175: 
  176:     @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
  177:     public byte[] getChallenge() {
  218:         return SafeParcelableSerializer.serializeToBytes(this);
  219:     }
  220: 
  221:     @Override // android.os.Parcelable
  222:     public void writeToParcel(Parcel parcel, int i) {
  223:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  224:         SafeParcelWriter.writeParcelable(parcel, 2, getRp(), i, false);
  225:         SafeParcelWriter.writeParcelable(parcel, 3, getUser(), i, false);
  226:         SafeParcelWriter.writeByteArray(parcel, 4, getChallenge(), false);
  227:         SafeParcelWriter.writeTypedList(parcel, 5, getParameters(), false);
  228:         SafeParcelWriter.writeDoubleObject(parcel, 6, getTimeoutSeconds(), false);
  229:         SafeParcelWriter.writeTypedList(parcel, 7, getExcludeList(), false);
  230:         SafeParcelWriter.writeParcelable(parcel, 8, getAuthenticatorSelection(), i, false);
  231:         SafeParcelWriter.writeIntegerObject(parcel, 9, getRequestId(), false);
  232:         SafeParcelWriter.writeParcelable(parcel, 10, getTokenBinding(), i, false);
  233:         SafeParcelWriter.writeString(parcel, 11, getAttestationConveyancePreferenceAsString(), false);
  234:         SafeParcelWriter.writeParcelable(parcel, 12, getAuthenticationExtensions(), i, false);
  235:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  236:     }
  237: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzan.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzan implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         Integer integerObject = null;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 2) {
   18:                 strCreateString = SafeParcelReader.createString(parcel, header);
   19:             } else if (fieldId != 3) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/AuthenticationExtensions.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   53:         return Objects.hashCode(this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k);
   54:     }
   55: 
   56:     @Override // android.os.Parcelable
   57:     public void writeToParcel(Parcel parcel, int i) {
   58:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   59:         SafeParcelWriter.writeParcelable(parcel, 2, getFidoAppIdExtension(), i, false);
   60:         SafeParcelWriter.writeParcelable(parcel, 3, this.c, i, false);
   61:         SafeParcelWriter.writeParcelable(parcel, 4, getUserVerificationMethodExtension(), i, false);
   62:         SafeParcelWriter.writeParcelable(parcel, 5, this.e, i, false);
   63:         SafeParcelWriter.writeParcelable(parcel, 6, this.f, i, false);
   64:         SafeParcelWriter.writeParcelable(parcel, 7, this.g, i, false);
   65:         SafeParcelWriter.writeParcelable(parcel, 8, this.h, i, false);
   66:         SafeParcelWriter.writeParcelable(parcel, 9, this.i, i, false);
   67:         SafeParcelWriter.writeParcelable(parcel, 10, this.j, i, false);
   68:         SafeParcelWriter.writeParcelable(parcel, 11, this.k, i, false);
   69:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   70:     }
   71: 
   72:     public final zzs zza() {
   73:         return this.c;
   74:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzt.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzt implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         ArrayList arrayListCreateTypedList = null;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             if (SafeParcelReader.getFieldId(header) != 1) {
   17:                 SafeParcelReader.skipUnknownField(parcel, header);
   18:             } else {
   19:                 arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, zzq.CREATOR);
   20:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzaj.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzaj implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         byte[][] bArrCreateByteArrayArray = null;
   13:         while (parcel.dataPosition() < iValidateObjectHeader) {
   14:             int header = SafeParcelReader.readHeader(parcel);
   15:             if (SafeParcelReader.getFieldId(header) != 1) {
   16:                 SafeParcelReader.skipUnknownField(parcel, header);
   17:             } else {
   18:                 bArrCreateByteArrayArray = SafeParcelReader.createByteArrayArray(parcel, header);
   19:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzm.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP, API HOST / NETWORK CONFIG

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzm implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         Boolean booleanObject = null;
   14:         String strCreateString2 = null;
   15:         String strCreateString3 = null;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 2) {
   20:                 strCreateString = SafeParcelReader.createString(parcel, header);
   21:             } else if (fieldId == 3) {
   22:                 booleanObject = SafeParcelReader.readBooleanObject(parcel, header);
   27:             } else {
   28:                 strCreateString3 = SafeParcelReader.createString(parcel, header);
   29:             }
   30:         }
   31:         SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
   32:         return new AuthenticatorSelectionCriteria(strCreateString, booleanObject, strCreateString2, strCreateString3);
   33:     }
   34: 
   35:     @Override // android.os.Parcelable.Creator
   36:     public final /* synthetic */ Object[] newArray(int i) {
   37:         return new AuthenticatorSelectionCriteria[i];
   38:     }
   39: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/AuthenticationExtensionsCredPropsOutputs.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   27:         return Objects.hashCode(Boolean.valueOf(this.b));
   28:     }
   29: 
   30:     @Override // android.os.Parcelable
   31:     public void writeToParcel(Parcel parcel, int i) {
   32:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   33:         SafeParcelWriter.writeBoolean(parcel, 1, getIsDiscoverableCredential());
   34:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   35:     }
   36: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/PublicKeyCredential.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP, API HOST / NETWORK CONFIG

```
   14: public class PublicKeyCredential extends AbstractSafeParcelable {
   15:     public static final Parcelable.Creator<PublicKeyCredential> CREATOR = new zzal();
   16:     public final String b;
   17:     public final String c;
   18:     public final byte[] d;
   19:     public final AuthenticatorAttestationResponse e;
   20:     public final AuthenticatorAssertionResponse f;
   21:     public final AuthenticatorErrorResponse g;
   22:     public final AuthenticationExtensionsClientOutputs h;
   23:     public final String i;
   24: 
   25:     public static class Builder {
   26:         public String a;
   27:         public byte[] b;
   28:         public AuthenticatorResponse c;
   29:         public AuthenticationExtensionsClientOutputs d;
   30:         public String e;
   31: 
   32:         public PublicKeyCredential build() {
   33:             AuthenticatorResponse authenticatorResponse = this.c;
   34:             return new PublicKeyCredential(this.a, PublicKeyCredentialType.PUBLIC_KEY.toString(), this.b, authenticatorResponse instanceof AuthenticatorAttestationResponse ? (AuthenticatorAttestationResponse) authenticatorResponse : null, authenticatorResponse instanceof AuthenticatorAssertionResponse ? (AuthenticatorAssertionResponse) authenticatorResponse : null, authenticatorResponse instanceof AuthenticatorErrorResponse ? (AuthenticatorErrorResponse) authenticatorResponse : null, this.d, this.e);
   35:         }
   36: 
   37:         public Builder setAuthenticationExtensionsClientOutputs(AuthenticationExtensionsClientOutputs authenticationExtensionsClientOutputs) {
   38:             this.d = authenticationExtensionsClientOutputs;
   39:             return this;
   40:         }
   41: 
   42:         public Builder setAuthenticatorAttachment(String str) {
   43:             this.e = str;
   44:             return this;
   45:         }
   46: 
   47:         public Builder setId(String str) {
   52:         public Builder setRawId(byte[] bArr) {
   53:             this.b = bArr;
   54:             return this;
   55:         }
   56: 
   57:         public Builder setResponse(AuthenticatorResponse authenticatorResponse) {
   58:             this.c = authenticatorResponse;
   59:             return this;
   60:         }
   61:     }
   62: 
   63:     public PublicKeyCredential(String str, String str2, byte[] bArr, AuthenticatorAttestationResponse authenticatorAttestationResponse, AuthenticatorAssertionResponse authenticatorAssertionResponse, AuthenticatorErrorResponse authenticatorErrorResponse, AuthenticationExtensionsClientOutputs authenticationExtensionsClientOutputs, String str3) {
   64:         boolean z = true;
   65:         if ((authenticatorAttestationResponse == null || authenticatorAssertionResponse != null || authenticatorErrorResponse != null) && ((authenticatorAttestationResponse != null || authenticatorAssertionResponse == null || authenticatorErrorResponse != null) && (authenticatorAttestationResponse != null || authenticatorAssertionResponse != null || authenticatorErrorResponse == null))) {
   66:             z = false;
   67:         }
   68:         Preconditions.checkArgument(z);
   69:         this.b = str;
   70:         this.c = str2;
   71:         this.d = bArr;
   72:         this.e = authenticatorAttestationResponse;
   73:         this.f = authenticatorAssertionResponse;
   74:         this.g = authenticatorErrorResponse;
   75:         this.h = authenticationExtensionsClientOutputs;
   76:         this.i = str3;
   77:     }
   78: 
   79:     public static PublicKeyCredential deserializeFromBytes(byte[] bArr) {
   86:         }
   87:         PublicKeyCredential publicKeyCredential = (PublicKeyCredential) obj;
   88:         return Objects.equal(this.b, publicKeyCredential.b) && Objects.equal(this.c, publicKeyCredential.c) && Arrays.equals(this.d, publicKeyCredential.d) && Objects.equal(this.e, publicKeyCredential.e) && Objects.equal(this.f, publicKeyCredential.f) && Objects.equal(this.g, publicKeyCredential.g) && Objects.equal(this.h, publicKeyCredential.h) && Objects.equal(this.i, publicKeyCredential.i);
   89:     }
   90: 
   91:     public String getAuthenticatorAttachment() {
   92:         return this.i;
   93:     }
   94: 
   95:     public AuthenticationExtensionsClientOutputs getClientExtensionResults() {
   96:         return this.h;
  102: 
  103:     public byte[] getRawId() {
  104:         return this.d;
  105:     }
  106: 
  107:     public AuthenticatorResponse getResponse() {
  108:         AuthenticatorAttestationResponse authenticatorAttestationResponse = this.e;
  109:         if (authenticatorAttestationResponse != null) {
  110:             return authenticatorAttestationResponse;
  111:         }
  112:         AuthenticatorAssertionResponse authenticatorAssertionResponse = this.f;
  113:         if (authenticatorAssertionResponse != null) {
  114:             return authenticatorAssertionResponse;
  115:         }
  116:         AuthenticatorErrorResponse authenticatorErrorResponse = this.g;
  117:         if (authenticatorErrorResponse != null) {
  118:             return authenticatorErrorResponse;
  119:         }
  120:         ah.f("No response set.");
  121:         return null;
  122:     }
  123: 
  133:         return SafeParcelableSerializer.serializeToBytes(this);
  134:     }
  135: 
  136:     @Override // android.os.Parcelable
  137:     public void writeToParcel(Parcel parcel, int i) {
  138:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  139:         SafeParcelWriter.writeString(parcel, 1, getId(), false);
  140:         SafeParcelWriter.writeString(parcel, 2, getType(), false);
  141:         SafeParcelWriter.writeByteArray(parcel, 3, getRawId(), false);
  142:         SafeParcelWriter.writeParcelable(parcel, 4, this.e, i, false);
  143:         SafeParcelWriter.writeParcelable(parcel, 5, this.f, i, false);
  144:         SafeParcelWriter.writeParcelable(parcel, 6, this.g, i, false);
  145:         SafeParcelWriter.writeParcelable(parcel, 7, getClientExtensionResults(), i, false);
  146:         SafeParcelWriter.writeString(parcel, 8, getAuthenticatorAttachment(), false);
  147:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  148:     }
  149: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/PublicKeyCredentialDescriptor.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   71:         return Objects.hashCode(this.b, Integer.valueOf(Arrays.hashCode(this.c)), this.d);
   72:     }
   73: 
   74:     @Override // android.os.Parcelable
   75:     public void writeToParcel(Parcel parcel, int i) {
   76:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   77:         SafeParcelWriter.writeString(parcel, 2, getTypeAsString(), false);
   78:         SafeParcelWriter.writeByteArray(parcel, 3, getId(), false);
   79:         SafeParcelWriter.writeTypedList(parcel, 4, getTransports(), false);
   80:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   81:     }
   82: 
   83:     public static class UnsupportedPubKeyCredDescriptorException extends Exception {
   84:         public UnsupportedPubKeyCredDescriptorException(String str) {
   85:             super(str);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  100:         return SafeParcelableSerializer.serializeToBytes(this);
  101:     }
  102: 
  103:     @Override // android.os.Parcelable
  104:     public void writeToParcel(Parcel parcel, int i) {
  105:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  106:         SafeParcelWriter.writeByteArray(parcel, 2, getChallenge(), false);
  107:         SafeParcelWriter.writeDoubleObject(parcel, 3, getTimeoutSeconds(), false);
  108:         SafeParcelWriter.writeString(parcel, 4, getRpId(), false);
  109:         SafeParcelWriter.writeTypedList(parcel, 5, getAllowList(), false);
  110:         SafeParcelWriter.writeIntegerObject(parcel, 6, getRequestId(), false);
  111:         SafeParcelWriter.writeParcelable(parcel, 7, getTokenBinding(), i, false);
  112:         zzay zzayVar = this.h;
  113:         SafeParcelWriter.writeString(parcel, 8, zzayVar == null ? null : zzayVar.toString(), false);
  114:         SafeParcelWriter.writeParcelable(parcel, 9, getAuthenticationExtensions(), i, false);
  115:         SafeParcelWriter.writeLongObject(parcel, 10, this.j, false);
  116:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  117:     }
  118: 
  119:     public final zzay zza() {
  120:         return this.h;
  121:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzaf.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzaf implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         boolean z = false;
   13:         while (parcel.dataPosition() < iValidateObjectHeader) {
   14:             int header = SafeParcelReader.readHeader(parcel);
   15:             if (SafeParcelReader.getFieldId(header) != 1) {
   16:                 SafeParcelReader.skipUnknownField(parcel, header);
   17:             } else {
   18:                 z = SafeParcelReader.readBoolean(parcel, header);
   19:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/UvmEntry.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   68:         return Objects.hashCode(Integer.valueOf(this.b), Short.valueOf(this.c), Short.valueOf(this.d));
   69:     }
   70: 
   71:     @Override // android.os.Parcelable
   72:     public void writeToParcel(Parcel parcel, int i) {
   73:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   74:         SafeParcelWriter.writeInt(parcel, 1, getUserVerificationMethod());
   75:         SafeParcelWriter.writeShort(parcel, 2, getKeyProtectionType());
   76:         SafeParcelWriter.writeShort(parcel, 3, getMatcherProtectionType());
   77:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   78:     }
   79: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialRequestOptions.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  120:         return SafeParcelableSerializer.serializeToBytes(this);
  121:     }
  122: 
  123:     @Override // android.os.Parcelable
  124:     public void writeToParcel(Parcel parcel, int i) {
  125:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  126:         SafeParcelWriter.writeParcelable(parcel, 2, getPublicKeyCredentialRequestOptions(), i, false);
  127:         SafeParcelWriter.writeParcelable(parcel, 3, getOrigin(), i, false);
  128:         SafeParcelWriter.writeByteArray(parcel, 4, getClientDataHash(), false);
  129:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  130:     }
  131: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzx.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzx implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         while (parcel.dataPosition() < iValidateObjectHeader) {
   14:             int header = SafeParcelReader.readHeader(parcel);
   15:             if (SafeParcelReader.getFieldId(header) != 2) {
   16:                 SafeParcelReader.skipUnknownField(parcel, header);
   17:             } else {
   18:                 strCreateString = SafeParcelReader.createString(parcel, header);
   19:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/UvmEntries.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   64:         return Objects.hashCode(new HashSet(this.b));
   65:     }
   66: 
   67:     @Override // android.os.Parcelable
   68:     public void writeToParcel(Parcel parcel, int i) {
   69:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   70:         SafeParcelWriter.writeTypedList(parcel, 1, getUvmEntryList(), false);
   71:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   72:     }
   73: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP, API HOST / NETWORK CONFIG

```
    9: import com.google.android.gms.fido.u2f.api.common.SignResponseData;
   10: import com.google.android.gms.internal.fido.zzbf;
   11: import java.util.Arrays;
   12: 
   13: /* JADX INFO: loaded from: classes4.dex */
   14: public class AuthenticatorAttestationResponse extends AuthenticatorResponse {
   15:     public static final Parcelable.Creator<AuthenticatorAttestationResponse> CREATOR = new zzk();
   16:     public final byte[] b;
   17:     public final byte[] c;
   18:     public final byte[] d;
   19:     public final String[] e;
   20: 
   21:     public AuthenticatorAttestationResponse(byte[] bArr, byte[] bArr2, byte[] bArr3, String[] strArr) {
   22:         this.b = (byte[]) Preconditions.checkNotNull(bArr);
   23:         this.c = (byte[]) Preconditions.checkNotNull(bArr2);
   24:         this.d = (byte[]) Preconditions.checkNotNull(bArr3);
   25:         this.e = (String[]) Preconditions.checkNotNull(strArr);
   26:     }
   27: 
   28:     public static AuthenticatorAttestationResponse deserializeFromBytes(byte[] bArr) {
   29:         return (AuthenticatorAttestationResponse) SafeParcelableSerializer.deserializeFromBytes(bArr, CREATOR);
   30:     }
   31: 
   32:     public boolean equals(Object obj) {
   33:         if (!(obj instanceof AuthenticatorAttestationResponse)) {
   34:             return false;
   35:         }
   36:         AuthenticatorAttestationResponse authenticatorAttestationResponse = (AuthenticatorAttestationResponse) obj;
   37:         return Arrays.equals(this.b, authenticatorAttestationResponse.b) && Arrays.equals(this.c, authenticatorAttestationResponse.c) && Arrays.equals(this.d, authenticatorAttestationResponse.d);
   38:     }
   39: 
   40:     public byte[] getAttestationObject() {
   41:         return this.d;
   42:     }
   43: 
   44:     @Override // com.google.android.gms.fido.fido2.api.common.AuthenticatorResponse
   45:     public byte[] getClientDataJSON() {
   46:         return this.c;
   47:     }
   48: 
   49:     @Deprecated
   57: 
   58:     public int hashCode() {
   59:         return Objects.hashCode(Integer.valueOf(Arrays.hashCode(this.b)), Integer.valueOf(Arrays.hashCode(this.c)), Integer.valueOf(Arrays.hashCode(this.d)));
   60:     }
   61: 
   62:     @Override // com.google.android.gms.fido.fido2.api.common.AuthenticatorResponse
   63:     public byte[] serializeToBytes() {
   64:         return SafeParcelableSerializer.serializeToBytes(this);
   65:     }
   66: 
   67:     public String toString() {
   79:         return zzajVarZza.toString();
   80:     }
   81: 
   82:     @Override // android.os.Parcelable
   83:     public void writeToParcel(Parcel parcel, int i) {
   84:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   85:         SafeParcelWriter.writeByteArray(parcel, 2, getKeyHandle(), false);
   86:         SafeParcelWriter.writeByteArray(parcel, 3, getClientDataJSON(), false);
   87:         SafeParcelWriter.writeByteArray(parcel, 4, getAttestationObject(), false);
   88:         SafeParcelWriter.writeStringArray(parcel, 5, getTransports(), false);
   89:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   90:     }
   91: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zzab.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   24:         return Objects.hashCode(Long.valueOf(this.b));
   25:     }
   26: 
   27:     @Override // android.os.Parcelable
   28:     public final void writeToParcel(Parcel parcel, int i) {
   29:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   30:         SafeParcelWriter.writeLong(parcel, 1, this.b);
   31:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   32:     }
   33: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/fido2/api/common/zze.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zze implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         boolean z = false;
   13:         while (parcel.dataPosition() < iValidateObjectHeader) {
   14:             int header = SafeParcelReader.readHeader(parcel);
   15:             if (SafeParcelReader.getFieldId(header) != 1) {
   16:                 SafeParcelReader.skipUnknownField(parcel, header);
   17:             } else {
   18:                 z = SafeParcelReader.readBoolean(parcel, header);
   19:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/u2f/api/common/zzi.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzi implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         byte[] bArrCreateByteArray = null;
   13:         String strCreateString = null;
   14:         String strCreateString2 = null;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 2) {
   19:                 bArrCreateByteArray = SafeParcelReader.createByteArray(parcel, header);
   20:             } else if (fieldId == 3) {
   21:                 strCreateString = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/u2f/api/common/zze.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8: 
    9: /* JADX INFO: loaded from: classes4.dex */
   10: public final class zze implements Parcelable.Creator {
   11:     @Override // android.os.Parcelable.Creator
   12:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   13:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   14:         byte[] bArrCreateByteArray = null;
   15:         ArrayList arrayListCreateTypedList = null;
   16:         int i = 0;
   17:         String strCreateString = null;
   18:         while (parcel.dataPosition() < iValidateObjectHeader) {
   19:             int header = SafeParcelReader.readHeader(parcel);
   20:             int fieldId = SafeParcelReader.getFieldId(header);
   21:             if (fieldId == 1) {
   22:                 i = SafeParcelReader.readInt(parcel, header);
   23:             } else if (fieldId == 2) {
   24:                 bArrCreateByteArray = SafeParcelReader.createByteArray(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/u2f/api/common/RegisterResponseData.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  101:         return zzajVarZza.toString();
  102:     }
  103: 
  104:     @Override // android.os.Parcelable
  105:     public void writeToParcel(Parcel parcel, int i) {
  106:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  107:         SafeParcelWriter.writeByteArray(parcel, 2, getRegisterData(), false);
  108:         SafeParcelWriter.writeString(parcel, 3, this.c.toString(), false);
  109:         SafeParcelWriter.writeString(parcel, 4, getClientDataString(), false);
  110:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  111:     }
  112: 
  113:     public RegisterResponseData(byte[] bArr) {
  114:         this.b = (byte[]) Preconditions.checkNotNull(bArr);
  115:         this.c = ProtocolVersion.V1;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/u2f/api/common/KeyHandle.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  107:         return me0.d(sb, string, "}");
  108:     }
  109: 
  110:     @Override // android.os.Parcelable
  111:     public void writeToParcel(Parcel parcel, int i) {
  112:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  113:         SafeParcelWriter.writeInt(parcel, 1, getVersionCode());
  114:         SafeParcelWriter.writeByteArray(parcel, 2, getBytes(), false);
  115:         SafeParcelWriter.writeString(parcel, 3, this.d.toString(), false);
  116:         SafeParcelWriter.writeTypedList(parcel, 4, getTransports(), false);
  117:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  118:     }
  119: 
  120:     public final JSONObject zza() {
  121:         JSONObject jSONObject = new JSONObject();
  122:         try {
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/u2f/api/common/zzd.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzd implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         int i = 0;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 2) {
   18:                 i = SafeParcelReader.readInt(parcel, header);
   19:             } else if (fieldId != 3) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/u2f/api/common/SignResponseData.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   87:         return zzajVarZza.toString();
   88:     }
   89: 
   90:     @Override // android.os.Parcelable
   91:     public void writeToParcel(Parcel parcel, int i) {
   92:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   93:         SafeParcelWriter.writeByteArray(parcel, 2, getKeyHandle(), false);
   94:         SafeParcelWriter.writeString(parcel, 3, getClientDataString(), false);
   95:         SafeParcelWriter.writeByteArray(parcel, 4, getSignatureData(), false);
   96:         SafeParcelWriter.writeByteArray(parcel, 5, this.e, false);
   97:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   98:     }
   99: 
  100:     @Deprecated
  101:     public SignResponseData(byte[] bArr, String str, byte[] bArr2) {
  102:         this(bArr, str, bArr2, new byte[0]);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/u2f/api/common/zzl.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzl implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         byte[] bArrCreateByteArray = null;
   13:         String strCreateString = null;
   14:         byte[] bArrCreateByteArray2 = null;
   15:         byte[] bArrCreateByteArray3 = null;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 2) {
   20:                 bArrCreateByteArray = SafeParcelReader.createByteArray(parcel, header);
   21:             } else if (fieldId == 3) {
   22:                 strCreateString = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/u2f/api/common/zzh.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8: 
    9: /* JADX INFO: loaded from: classes4.dex */
   10: public final class zzh implements Parcelable.Creator {
   11:     @Override // android.os.Parcelable.Creator
   12:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   13:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   14:         Integer integerObject = null;
   15:         Double doubleObject = null;
   16:         Uri uri = null;
   17:         ArrayList arrayListCreateTypedList = null;
   18:         ArrayList arrayListCreateTypedList2 = null;
   19:         ChannelIdValue channelIdValue = null;
   20:         String strCreateString = null;
   21:         while (parcel.dataPosition() < iValidateObjectHeader) {
   22:             int header = SafeParcelReader.readHeader(parcel);
   23:             switch (SafeParcelReader.getFieldId(header)) {
   24:                 case 2:
   25:                     integerObject = SafeParcelReader.readIntegerObject(parcel, header);
   26:                     break;
   27:                 case 3:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/u2f/api/common/ErrorResponseData.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   75:         return zzajVarZza.toString();
   76:     }
   77: 
   78:     @Override // android.os.Parcelable
   79:     public void writeToParcel(Parcel parcel, int i) {
   80:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   81:         SafeParcelWriter.writeInt(parcel, 2, getErrorCodeAsInt());
   82:         SafeParcelWriter.writeString(parcel, 3, getErrorMessage(), false);
   83:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   84:     }
   85: 
   86:     public ErrorResponseData(int i, String str) {
   87:         this.b = ErrorCode.toErrorCode(i);
   88:         this.c = str;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/u2f/api/common/SignRequestParams.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  163:         return Objects.hashCode(this.b, this.d, this.c, this.f, this.g, this.h, Integer.valueOf(Arrays.hashCode(this.e)));
  164:     }
  165: 
  166:     @Override // android.os.Parcelable
  167:     public void writeToParcel(Parcel parcel, int i) {
  168:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  169:         SafeParcelWriter.writeIntegerObject(parcel, 2, getRequestId(), false);
  170:         SafeParcelWriter.writeDoubleObject(parcel, 3, getTimeoutSeconds(), false);
  171:         SafeParcelWriter.writeParcelable(parcel, 4, getAppId(), i, false);
  172:         SafeParcelWriter.writeByteArray(parcel, 5, getDefaultSignChallenge(), false);
  173:         SafeParcelWriter.writeTypedList(parcel, 6, getRegisteredKeys(), false);
  174:         SafeParcelWriter.writeParcelable(parcel, 7, getChannelIdValue(), i, false);
  175:         SafeParcelWriter.writeString(parcel, 8, getDisplayHint(), false);
  176:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  177:     }
  178: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/u2f/api/common/zzb.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzb implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         int i = 0;
   14:         String strCreateString2 = null;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 2) {
   19:                 i = SafeParcelReader.readInt(parcel, header);
   20:             } else if (fieldId == 3) {
   21:                 strCreateString = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/u2f/api/common/RegisteredKey.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  131:         }
  132:     }
  133: 
  134:     @Override // android.os.Parcelable
  135:     public void writeToParcel(Parcel parcel, int i) {
  136:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  137:         SafeParcelWriter.writeParcelable(parcel, 2, getKeyHandle(), i, false);
  138:         SafeParcelWriter.writeString(parcel, 3, getChallengeValue(), false);
  139:         SafeParcelWriter.writeString(parcel, 4, getAppId(), false);
  140:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  141:     }
  142: 
  143:     public RegisteredKey(KeyHandle keyHandle) {
  144:         this(keyHandle, null, null);
  145:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/u2f/api/common/ChannelIdValue.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  140:         return iHashCode + i;
  141:     }
  142: 
  143:     @Override // android.os.Parcelable
  144:     public void writeToParcel(Parcel parcel, int i) {
  145:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  146:         SafeParcelWriter.writeInt(parcel, 2, getTypeAsInt());
  147:         SafeParcelWriter.writeString(parcel, 3, getStringValue(), false);
  148:         SafeParcelWriter.writeString(parcel, 4, getObjectValueAsString(), false);
  149:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  150:     }
  151: 
  152:     public ChannelIdValue(int i, String str, String str2) {
  153:         try {
  154:             this.b = toChannelIdValueType(i);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/u2f/api/common/RegisterRequest.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  110:         }
  111:     }
  112: 
  113:     @Override // android.os.Parcelable
  114:     public void writeToParcel(Parcel parcel, int i) {
  115:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  116:         SafeParcelWriter.writeInt(parcel, 1, getVersionCode());
  117:         SafeParcelWriter.writeString(parcel, 2, this.c.toString(), false);
  118:         SafeParcelWriter.writeByteArray(parcel, 3, getChallengeValue(), false);
  119:         SafeParcelWriter.writeString(parcel, 4, getAppId(), false);
  120:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  121:     }
  122: 
  123:     public RegisterRequest(String str, String str2, int i, byte[] bArr) {
  124:         this.b = i;
  125:         try {
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/u2f/api/common/RegisterRequestParams.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  163:         return Objects.hashCode(this.b, this.d, this.c, this.e, this.f, this.g, this.h);
  164:     }
  165: 
  166:     @Override // android.os.Parcelable
  167:     public void writeToParcel(Parcel parcel, int i) {
  168:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  169:         SafeParcelWriter.writeIntegerObject(parcel, 2, getRequestId(), false);
  170:         SafeParcelWriter.writeDoubleObject(parcel, 3, getTimeoutSeconds(), false);
  171:         SafeParcelWriter.writeParcelable(parcel, 4, getAppId(), i, false);
  172:         SafeParcelWriter.writeTypedList(parcel, 5, getRegisterRequests(), false);
  173:         SafeParcelWriter.writeTypedList(parcel, 6, getRegisteredKeys(), false);
  174:         SafeParcelWriter.writeParcelable(parcel, 7, getChannelIdValue(), i, false);
  175:         SafeParcelWriter.writeString(parcel, 8, getDisplayHint(), false);
  176:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  177:     }
  178: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/u2f/api/common/zzj.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzj implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         KeyHandle keyHandle = null;
   13:         String strCreateString = null;
   14:         String strCreateString2 = null;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 2) {
   19:                 keyHandle = (KeyHandle) SafeParcelReader.createParcelable(parcel, header, KeyHandle.CREATOR);
   20:             } else if (fieldId == 3) {
   21:                 strCreateString = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/u2f/api/common/zzk.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8: 
    9: /* JADX INFO: loaded from: classes4.dex */
   10: public final class zzk implements Parcelable.Creator {
   11:     @Override // android.os.Parcelable.Creator
   12:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   13:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   14:         Integer integerObject = null;
   15:         Double doubleObject = null;
   16:         Uri uri = null;
   17:         byte[] bArrCreateByteArray = null;
   18:         ArrayList arrayListCreateTypedList = null;
   19:         ChannelIdValue channelIdValue = null;
   20:         String strCreateString = null;
   21:         while (parcel.dataPosition() < iValidateObjectHeader) {
   22:             int header = SafeParcelReader.readHeader(parcel);
   23:             switch (SafeParcelReader.getFieldId(header)) {
   24:                 case 2:
   25:                     integerObject = SafeParcelReader.readIntegerObject(parcel, header);
   26:                     break;
   27:                 case 3:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/fido/u2f/api/common/zzg.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzg implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         int i = 0;
   15:         byte[] bArrCreateByteArray = null;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 1) {
   20:                 i = SafeParcelReader.readInt(parcel, header);
   21:             } else if (fieldId == 2) {
   22:                 strCreateString = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/account/WorkAccountApi.java`

**Разделы:** API HOST / NETWORK CONFIG

```
   19: 
   20:     @Deprecated
   21:     PendingResult<Result> removeWorkAccount(GoogleApiClient googleApiClient, Account account);
   22: 
   23:     @Deprecated
   24:     void setWorkAuthenticatorEnabled(GoogleApiClient googleApiClient, boolean z);
   25: 
   26:     @Deprecated
   27:     PendingResult<Result> setWorkAuthenticatorEnabledWithResult(GoogleApiClient googleApiClient, boolean z);
   28: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/account/WorkAccountClient.java`

**Разделы:** API HOST / NETWORK CONFIG

```
   24: 
   25:     public Task<Void> removeWorkAccount(Account account) {
   26:         return PendingResultUtil.toVoidTask(this.a.removeWorkAccount(asGoogleApiClient(), account));
   27:     }
   28: 
   29:     public Task<Void> setWorkAuthenticatorEnabled(boolean z) {
   30:         return PendingResultUtil.toVoidTask(this.a.setWorkAuthenticatorEnabledWithResult(asGoogleApiClient(), z));
   31:     }
   32: 
   33:     public WorkAccountClient(Context context) {
   34:         super(context, WorkAccount.API, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
   35:         this.a = new zzal();
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/accounttransfer/zzy.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzy implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         boolean z = false;
   13:         boolean z2 = false;
   14:         int i = 0;
   15:         long j = 0;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 1) {
   20:                 i = SafeParcelReader.readInt(parcel, header);
   21:             } else if (fieldId == 2) {
   22:                 z = SafeParcelReader.readBoolean(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/accounttransfer/zzu.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP, API HOST / NETWORK CONFIG

```
   24:     public final String g;
   25: 
   26:     static {
   27:         HashMap map = new HashMap();
   28:         h = map;
   29:         map.put("authenticatorInfo", FastJsonResponse.Field.forConcreteType("authenticatorInfo", 2, zzw.class));
   30:         map.put("signature", FastJsonResponse.Field.forString("signature", 3));
   31:         map.put("package", FastJsonResponse.Field.forString("package", 4));
   32:     }
   33: 
   34:     public zzu(HashSet hashSet, int i, zzw zzwVar, String str, String str2, String str3) {
   95:         this.b.add(Integer.valueOf(safeParcelableFieldId));
   96:     }
   97: 
   98:     @Override // android.os.Parcelable
   99:     public final void writeToParcel(Parcel parcel, int i) {
  100:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  101:         HashSet hashSet = this.b;
  102:         if (hashSet.contains(1)) {
  103:             SafeParcelWriter.writeInt(parcel, 1, this.c);
  104:         }
  105:         if (hashSet.contains(2)) {
  112:             SafeParcelWriter.writeString(parcel, 4, this.f, true);
  113:         }
  114:         if (hashSet.contains(5)) {
  115:             SafeParcelWriter.writeString(parcel, 5, this.g, true);
  116:         }
  117:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  118:     }
  119: 
  120:     public zzu() {
  121:         this.b = new HashSet(3);
  122:         this.c = 1;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/accounttransfer/zzt.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zzt implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         ArrayList<String> arrayListCreateStringList = null;
   14:         ArrayList<String> arrayListCreateStringList2 = null;
   15:         ArrayList<String> arrayListCreateStringList3 = null;
   16:         ArrayList<String> arrayListCreateStringList4 = null;
   17:         ArrayList<String> arrayListCreateStringList5 = null;
   18:         int i = 0;
   19:         while (parcel.dataPosition() < iValidateObjectHeader) {
   20:             int header = SafeParcelReader.readHeader(parcel);
   21:             switch (SafeParcelReader.getFieldId(header)) {
   22:                 case 1:
   23:                     i = SafeParcelReader.readInt(parcel, header);
   24:                     break;
   25:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/accounttransfer/zzp.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    9: 
   10: /* JADX INFO: loaded from: classes4.dex */
   11: public final class zzp implements Parcelable.Creator {
   12:     @Override // android.os.Parcelable.Creator
   13:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   14:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   15:         HashSet hashSet = new HashSet();
   16:         int i = 0;
   17:         ArrayList arrayListCreateTypedList = null;
   18:         zzs zzsVar = null;
   19:         int i2 = 0;
   20:         while (parcel.dataPosition() < iValidateObjectHeader) {
   21:             int header = SafeParcelReader.readHeader(parcel);
   22:             int fieldId = SafeParcelReader.getFieldId(header);
   23:             if (fieldId == 1) {
   24:                 i = SafeParcelReader.readInt(parcel, header);
   25:                 hashSet.add(1);
   26:             } else if (fieldId == 2) {
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/accounttransfer/zzx.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    9: 
   10: /* JADX INFO: loaded from: classes4.dex */
   11: public final class zzx implements Parcelable.Creator {
   12:     @Override // android.os.Parcelable.Creator
   13:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   14:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   15:         HashSet hashSet = new HashSet();
   16:         int i = 0;
   17:         String strCreateString = null;
   18:         byte[] bArrCreateByteArray = null;
   19:         PendingIntent pendingIntent = null;
   20:         DeviceMetaData deviceMetaData = null;
   21:         int i2 = 0;
   22:         while (parcel.dataPosition() < iValidateObjectHeader) {
   23:             int header = SafeParcelReader.readHeader(parcel);
   24:             switch (SafeParcelReader.getFieldId(header)) {
   25:                 case 1:
   26:                     i = SafeParcelReader.readInt(parcel, header);
   27:                     hashSet.add(1);
   28:                     break;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/accounttransfer/zzv.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8: 
    9: /* JADX INFO: loaded from: classes4.dex */
   10: public final class zzv implements Parcelable.Creator {
   11:     @Override // android.os.Parcelable.Creator
   12:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   13:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   14:         HashSet hashSet = new HashSet();
   15:         int i = 0;
   16:         zzw zzwVar = null;
   17:         String strCreateString = null;
   18:         String strCreateString2 = null;
   19:         String strCreateString3 = null;
   20:         while (parcel.dataPosition() < iValidateObjectHeader) {
   21:             int header = SafeParcelReader.readHeader(parcel);
   22:             int fieldId = SafeParcelReader.getFieldId(header);
   23:             if (fieldId == 1) {
   24:                 i = SafeParcelReader.readInt(parcel, header);
   25:                 hashSet.add(1);
   26:             } else if (fieldId == 2) {
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/accounttransfer/zzo.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP, API HOST / NETWORK CONFIG

```
   24:     public zzs f;
   25: 
   26:     static {
   27:         HashMap map = new HashMap();
   28:         g = map;
   29:         map.put("authenticatorData", FastJsonResponse.Field.forConcreteTypeArray("authenticatorData", 2, zzu.class));
   30:         map.put("progress", FastJsonResponse.Field.forConcreteType("progress", 4, zzs.class));
   31:     }
   32: 
   33:     public zzo() {
   34:         this.b = new HashSet(1);
   83:         return g;
   84:     }
   85: 
   86:     @Override // android.os.Parcelable
   87:     public final void writeToParcel(Parcel parcel, int i) {
   88:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   89:         HashSet hashSet = this.b;
   90:         if (hashSet.contains(1)) {
   91:             SafeParcelWriter.writeInt(parcel, 1, this.c);
   92:         }
   93:         if (hashSet.contains(2)) {
   97:             SafeParcelWriter.writeInt(parcel, 3, this.e);
   98:         }
   99:         if (hashSet.contains(4)) {
  100:             SafeParcelWriter.writeParcelable(parcel, 4, this.f, i, true);
  101:         }
  102:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  103:     }
  104: 
  105:     public zzo(HashSet hashSet, int i, ArrayList arrayList, int i2, zzs zzsVar) {
  106:         this.b = hashSet;
  107:         this.c = i;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/accounttransfer/AuthenticatorTransferCompletionStatus.java`

**Разделы:** API HOST / NETWORK CONFIG

```
    3: import java.lang.annotation.Retention;
    4: import java.lang.annotation.RetentionPolicy;
    5: 
    6: /* JADX INFO: loaded from: classes4.dex */
    7: @Retention(RetentionPolicy.SOURCE)
    8: public @interface AuthenticatorTransferCompletionStatus {
    9:     public static final int COMPLETED_FAILURE = 2;
   10:     public static final int COMPLETED_SUCCESS = 1;
   11: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/accounttransfer/DeviceMetaData.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   32:         return this.c;
   33:     }
   34: 
   35:     @Override // android.os.Parcelable
   36:     public final void writeToParcel(Parcel parcel, int i) {
   37:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   38:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   39:         SafeParcelWriter.writeBoolean(parcel, 2, isLockScreenSolved());
   40:         SafeParcelWriter.writeLong(parcel, 3, getMinAgeOfLockScreen());
   41:         SafeParcelWriter.writeBoolean(parcel, 4, isChallengeAllowed());
   42:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   43:     }
   44: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/accounttransfer/zzw.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  110:         }
  111:     }
  112: 
  113:     @Override // android.os.Parcelable
  114:     public final void writeToParcel(Parcel parcel, int i2) {
  115:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  116:         Set set = this.b;
  117:         if (set.contains(1)) {
  118:             SafeParcelWriter.writeInt(parcel, 1, this.c);
  119:         }
  120:         if (set.contains(2)) {
  130:             SafeParcelWriter.writeParcelable(parcel, 5, this.g, i2, true);
  131:         }
  132:         if (set.contains(6)) {
  133:             SafeParcelWriter.writeParcelable(parcel, 6, this.h, i2, true);
  134:         }
  135:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  136:     }
  137: 
  138:     public zzw() {
  139:         this.b = new ArraySet(3);
  140:         this.c = 1;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/accounttransfer/zzs.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   99:         }
  100:     }
  101: 
  102:     @Override // android.os.Parcelable
  103:     public final void writeToParcel(Parcel parcel, int i) {
  104:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  105:         SafeParcelWriter.writeInt(parcel, 1, this.b);
  106:         SafeParcelWriter.writeStringList(parcel, 2, this.c, false);
  107:         SafeParcelWriter.writeStringList(parcel, 3, this.d, false);
  108:         SafeParcelWriter.writeStringList(parcel, 4, this.e, false);
  109:         SafeParcelWriter.writeStringList(parcel, 5, this.f, false);
  110:         SafeParcelWriter.writeStringList(parcel, 6, this.g, false);
  111:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  112:     }
  113: 
  114:     public zzs() {
  115:         this.b = 1;
  116:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/proxy/ProxyClient.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    4: import com.google.android.gms.common.api.HasApiKey;
    5: import com.google.android.gms.tasks.Task;
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public interface ProxyClient extends HasApiKey<AuthProxyOptions> {
    9:     Task<String> getSpatulaHeader();
   10: 
   11:     Task<ProxyResponse> performProxyRequest(ProxyRequest proxyRequest);
   12: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/proxy/ProxyResponse.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   56:         return map;
   57:     }
   58: 
   59:     @Override // android.os.Parcelable
   60:     public void writeToParcel(Parcel parcel, int i) {
   61:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   62:         SafeParcelWriter.writeInt(parcel, 1, this.googlePlayServicesStatusCode);
   63:         SafeParcelWriter.writeParcelable(parcel, 2, this.recoveryAction, i, false);
   64:         SafeParcelWriter.writeInt(parcel, 3, this.statusCode);
   65:         SafeParcelWriter.writeBundle(parcel, 4, this.c, false);
   66:         SafeParcelWriter.writeByteArray(parcel, 5, this.body, false);
   67:         SafeParcelWriter.writeInt(parcel, 1000, this.b);
   68:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   69:     }
   70: 
   71:     public ProxyResponse(int i, PendingIntent pendingIntent, int i2, Bundle bundle, byte[] bArr) {
   72:         this(1, i, pendingIntent, i2, bundle, bArr);
   73:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/proxy/zzb.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8: 
    9: /* JADX INFO: loaded from: classes4.dex */
   10: public final class zzb implements Parcelable.Creator {
   11:     @Override // android.os.Parcelable.Creator
   12:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   13:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   14:         PendingIntent pendingIntent = null;
   15:         Bundle bundleCreateBundle = null;
   16:         byte[] bArrCreateByteArray = null;
   17:         int i = 0;
   18:         int i2 = 0;
   19:         int i3 = 0;
   20:         while (parcel.dataPosition() < iValidateObjectHeader) {
   21:             int header = SafeParcelReader.readHeader(parcel);
   22:             int fieldId = SafeParcelReader.getFieldId(header);
   23:             if (fieldId == 1) {
   24:                 i2 = SafeParcelReader.readInt(parcel, header);
   25:             } else if (fieldId == 2) {
   26:                 pendingIntent = (PendingIntent) SafeParcelReader.createParcelable(parcel, header, PendingIntent.CREATOR);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/proxy/ProxyApi.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   10:     public interface ProxyResult extends Result {
   11:         ProxyResponse getResponse();
   12:     }
   13: 
   14:     public interface SpatulaHeaderResult extends Result {
   15:         String getSpatulaHeader();
   16:     }
   17: 
   18:     @Deprecated
   19:     PendingResult<SpatulaHeaderResult> getSpatulaHeader(GoogleApiClient googleApiClient);
   20: 
   21:     @Deprecated
   22:     PendingResult<ProxyResult> performProxyRequest(GoogleApiClient googleApiClient, ProxyRequest proxyRequest);
   23: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/proxy/ProxyRequest.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   56:                 this.d = new byte[0];
   57:             }
   58:             return new ProxyRequest(2, this.a, this.b, this.c, this.d, this.e);
   59:         }
   60: 
   61:         public Builder putHeader(String str, String str2) {
   62:             Preconditions.checkNotEmpty(str, "Header name cannot be null or empty!");
   63:             if (str2 == null) {
   64:                 str2 = "";
   65:             }
   66:             this.e.putString(str, str2);
  115:         return hg.d(this.httpMethod, "ProxyRequest[ url: ", this.url, ", method: ", " ]");
  116:     }
  117: 
  118:     @Override // android.os.Parcelable
  119:     public void writeToParcel(Parcel parcel, int i) {
  120:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  121:         SafeParcelWriter.writeString(parcel, 1, this.url, false);
  122:         SafeParcelWriter.writeInt(parcel, 2, this.httpMethod);
  123:         SafeParcelWriter.writeLong(parcel, 3, this.timeoutMillis);
  124:         SafeParcelWriter.writeByteArray(parcel, 4, this.body, false);
  125:         SafeParcelWriter.writeBundle(parcel, 5, this.c, false);
  126:         SafeParcelWriter.writeInt(parcel, 1000, this.b);
  127:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  128:     }
  129: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/proxy/zza.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zza implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         String strCreateString = null;
   14:         byte[] bArrCreateByteArray = null;
   15:         Bundle bundleCreateBundle = null;
   16:         long j = 0;
   17:         int i = 0;
   18:         int i2 = 0;
   19:         while (parcel.dataPosition() < iValidateObjectHeader) {
   20:             int header = SafeParcelReader.readHeader(parcel);
   21:             int fieldId = SafeParcelReader.getFieldId(header);
   22:             if (fieldId == 1) {
   23:                 strCreateString = SafeParcelReader.createString(parcel, header);
   24:             } else if (fieldId == 2) {
   25:                 i2 = SafeParcelReader.readInt(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/phone/zza.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zza implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         String strCreateString3 = null;
   15:         String strCreateString4 = null;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 1) {
   20:                 strCreateString = SafeParcelReader.createString(parcel, header);
   21:             } else if (fieldId == 2) {
   22:                 strCreateString2 = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/phone/IncomingCallRetrieverResponse.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   54:     }
   55: 
   56:     @Override // android.os.Parcelable
   57:     public void writeToParcel(Parcel parcel, int i) {
   58:         parcel.getClass();
   59:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   60:         SafeParcelWriter.writeString(parcel, 1, getPhoneNumber(), false);
   61:         SafeParcelWriter.writeString(parcel, 2, getIncomingCallVerificationStatusCode(), false);
   62:         SafeParcelWriter.writeString(parcel, 3, getErrorDetails(), false);
   63:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   64:     }
   65: 
   66:     public static final class Companion {
   67:         public /* synthetic */ Companion(jh2 jh2Var) {
   68:         }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/phone/IncomingCallRetrieverRequest.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   53:     }
   54: 
   55:     @Override // android.os.Parcelable
   56:     public void writeToParcel(Parcel parcel, int i) {
   57:         parcel.getClass();
   58:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   59:         SafeParcelWriter.writeString(parcel, 1, getCountryCode(), false);
   60:         SafeParcelWriter.writeString(parcel, 2, getPrefix(), false);
   61:         SafeParcelWriter.writeString(parcel, 3, getStartRange(), false);
   62:         SafeParcelWriter.writeString(parcel, 4, getEndRange(), false);
   63:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   64:     }
   65: 
   66:     public static final class Companion {
   67:         public /* synthetic */ Companion(jh2 jh2Var) {
   68:         }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/phone/zzb.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zzb implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         String strCreateString3 = null;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 1) {
   19:                 strCreateString = SafeParcelReader.createString(parcel, header);
   20:             } else if (fieldId == 2) {
   21:                 strCreateString2 = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbd.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zbd implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         boolean z = false;
   13:         int i = 0;
   14:         boolean z2 = false;
   15:         BeginSignInRequest.PasswordRequestOptions passwordRequestOptions = null;
   16:         BeginSignInRequest.GoogleIdTokenRequestOptions googleIdTokenRequestOptions = null;
   17:         String strCreateString = null;
   18:         BeginSignInRequest.PasskeysRequestOptions passkeysRequestOptions = null;
   19:         BeginSignInRequest.PasskeyJsonRequestOptions passkeyJsonRequestOptions = null;
   20:         while (parcel.dataPosition() < iValidateObjectHeader) {
   21:             int header = SafeParcelReader.readHeader(parcel);
   22:             switch (SafeParcelReader.getFieldId(header)) {
   23:                 case 1:
   24:                     passwordRequestOptions = (BeginSignInRequest.PasswordRequestOptions) SafeParcelReader.createParcelable(parcel, header, BeginSignInRequest.PasswordRequestOptions.CREATOR);
   25:                     break;
   26:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbl.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zbl implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         String strCreateString = null;
   14:         String strCreateString2 = null;
   15:         String strCreateString3 = null;
   16:         ArrayList<String> arrayListCreateStringList = null;
   17:         ArrayList arrayListCreateTypedList = null;
   18:         String strCreateString4 = null;
   19:         boolean z = false;
   20:         boolean z2 = false;
   21:         boolean z3 = false;
   22:         while (parcel.dataPosition() < iValidateObjectHeader) {
   23:             int header = SafeParcelReader.readHeader(parcel);
   24:             switch (SafeParcelReader.getFieldId(header)) {
   25:                 case 1:
   26:                     z = SafeParcelReader.readBoolean(parcel, header);
   27:                     break;
   28:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbq.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8: 
    9: /* JADX INFO: loaded from: classes4.dex */
   10: public final class zbq implements Parcelable.Creator {
   11:     @Override // android.os.Parcelable.Creator
   12:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   13:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   14:         int i = 0;
   15:         PendingIntent pendingIntent = null;
   16:         String strCreateString = null;
   17:         String strCreateString2 = null;
   18:         ArrayList<String> arrayListCreateStringList = null;
   19:         String strCreateString3 = null;
   20:         while (parcel.dataPosition() < iValidateObjectHeader) {
   21:             int header = SafeParcelReader.readHeader(parcel);
   22:             switch (SafeParcelReader.getFieldId(header)) {
   23:                 case 1:
   24:                     pendingIntent = (PendingIntent) SafeParcelReader.createParcelable(parcel, header, PendingIntent.CREATOR);
   25:                     break;
   26:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/BeginSignInResult.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   21:         return this.b;
   22:     }
   23: 
   24:     @Override // android.os.Parcelable
   25:     public void writeToParcel(Parcel parcel, int i) {
   26:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   27:         SafeParcelWriter.writeParcelable(parcel, 1, getPendingIntent(), i, false);
   28:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   29:     }
   30: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbh.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zbh implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 strCreateString = SafeParcelReader.createString(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/ClearTokenRequest.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   63:         return Objects.hashCode(this.b, this.c);
   64:     }
   65: 
   66:     @Override // android.os.Parcelable
   67:     public void writeToParcel(Parcel parcel, int i) {
   68:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   69:         SafeParcelWriter.writeString(parcel, 1, getToken(), false);
   70:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   71:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   72:     }
   73: 
   74:     public final Builder zba() {
   75:         Builder builder = new Builder();
   76:         builder.a = this.b;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SavePasswordRequest.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   79:         return Objects.hashCode(this.b, this.c);
   80:     }
   81: 
   82:     @Override // android.os.Parcelable
   83:     public void writeToParcel(Parcel parcel, int i) {
   84:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   85:         SafeParcelWriter.writeParcelable(parcel, 1, getSignInPassword(), i, false);
   86:         SafeParcelWriter.writeString(parcel, 2, this.c, false);
   87:         SafeParcelWriter.writeInt(parcel, 3, this.d);
   88:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   89:     }
   90: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbu.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    8: 
    9: /* JADX INFO: loaded from: classes4.dex */
   10: public final class zbu implements Parcelable.Creator {
   11:     @Override // android.os.Parcelable.Creator
   12:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   13:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   14:         String strCreateString = null;
   15:         String strCreateString2 = null;
   16:         String strCreateString3 = null;
   17:         String strCreateString4 = null;
   18:         Uri uri = null;
   19:         String strCreateString5 = null;
   20:         String strCreateString6 = null;
   21:         String strCreateString7 = null;
   22:         PublicKeyCredential publicKeyCredential = null;
   23:         while (parcel.dataPosition() < iValidateObjectHeader) {
   24:             int header = SafeParcelReader.readHeader(parcel);
   25:             switch (SafeParcelReader.getFieldId(header)) {
   26:                 case 1:
   27:                     strCreateString = SafeParcelReader.createString(parcel, header);
   28:                     break;
   29:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbm.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zbm implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         boolean z = false;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 z = SafeParcelReader.readBoolean(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbp.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    9: 
   10: /* JADX INFO: loaded from: classes4.dex */
   11: public final class zbp implements Parcelable.Creator {
   12:     @Override // android.os.Parcelable.Creator
   13:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   14:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   15:         ArrayList arrayListCreateTypedList = null;
   16:         Account account = null;
   17:         String strCreateString = null;
   18:         while (parcel.dataPosition() < iValidateObjectHeader) {
   19:             int header = SafeParcelReader.readHeader(parcel);
   20:             int fieldId = SafeParcelReader.getFieldId(header);
   21:             if (fieldId == 1) {
   22:                 arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, Scope.CREATOR);
   23:             } else if (fieldId == 2) {
   24:                 account = (Account) SafeParcelReader.createParcelable(parcel, header, Account.CREATOR);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  130:         return Objects.hashCode(this.b, this.c, this.d, this.e, this.f);
  131:     }
  132: 
  133:     @Override // android.os.Parcelable
  134:     public void writeToParcel(Parcel parcel, int i) {
  135:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  136:         SafeParcelWriter.writeParcelable(parcel, 1, getConsentPendingIntent(), i, false);
  137:         SafeParcelWriter.writeString(parcel, 2, getTokenType(), false);
  138:         SafeParcelWriter.writeString(parcel, 3, getServiceId(), false);
  139:         SafeParcelWriter.writeStringList(parcel, 4, getScopes(), false);
  140:         SafeParcelWriter.writeString(parcel, 5, this.f, false);
  141:         SafeParcelWriter.writeInt(parcel, 6, this.g);
  142:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  143:     }
  144: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/AuthorizationResult.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   10: import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
   11: import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
   12: import java.util.List;
   13: 
   14: /* JADX INFO: loaded from: classes4.dex */
   15: public final class AuthorizationResult extends AbstractSafeParcelable {
   16:     public static final Parcelable.Creator<AuthorizationResult> CREATOR = new zbc();
   17:     public final String b;
   18:     public final String c;
   19:     public final String d;
   20:     public final List e;
   21:     public final GoogleSignInAccount f;
   22:     public final PendingIntent g;
   23:     public final Bundle h;
   24: 
   25:     @Deprecated
   26:     public AuthorizationResult(String str, String str2, String str3, List<String> list, GoogleSignInAccount googleSignInAccount, PendingIntent pendingIntent) {
   27:         this.b = str;
   28:         this.c = str2;
   29:         this.d = str3;
   30:         this.e = (List) Preconditions.checkNotNull(list);
   31:         this.f = googleSignInAccount;
   32:         this.g = pendingIntent;
   33:         this.h = null;
   34:     }
   35: 
   36:     public boolean equals(Object obj) {
   37:         if (!(obj instanceof AuthorizationResult)) {
   38:             return false;
   39:         }
   40:         AuthorizationResult authorizationResult = (AuthorizationResult) obj;
   41:         return Objects.equal(this.b, authorizationResult.b) && Objects.equal(this.c, authorizationResult.c) && Objects.equal(this.d, authorizationResult.d) && Objects.equal(this.e, authorizationResult.e) && Objects.equal(this.g, authorizationResult.g) && Objects.equal(this.f, authorizationResult.f) && Objects.equal(this.h, authorizationResult.h);
   42:     }
   43: 
   44:     public String getAccessToken() {
   45:         return this.c;
   46:     }
   73:         return this.f;
   74:     }
   75: 
   76:     @Override // android.os.Parcelable
   77:     public void writeToParcel(Parcel parcel, int i) {
   78:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   79:         SafeParcelWriter.writeString(parcel, 1, getServerAuthCode(), false);
   80:         SafeParcelWriter.writeString(parcel, 2, getAccessToken(), false);
   81:         SafeParcelWriter.writeString(parcel, 3, this.d, false);
   82:         SafeParcelWriter.writeStringList(parcel, 4, getGrantedScopes(), false);
   83:         SafeParcelWriter.writeParcelable(parcel, 5, toGoogleSignInAccount(), i, false);
   84:         SafeParcelWriter.writeParcelable(parcel, 6, getPendingIntent(), i, false);
   85:         SafeParcelWriter.writeBundle(parcel, 7, getTokenResponseParams(), false);
   86:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   87:     }
   88: 
   89:     public AuthorizationResult(String str, String str2, String str3, List<String> list, GoogleSignInAccount googleSignInAccount, PendingIntent pendingIntent, Bundle bundle) {
   90:         this.b = str;
   91:         this.c = str2;
   92:         this.d = str3;
   93:         this.e = (List) Preconditions.checkNotNull(list);
   94:         this.f = googleSignInAccount;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbt.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zbt implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         PendingIntent pendingIntent = null;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             if (SafeParcelReader.getFieldId(header) != 1) {
   17:                 SafeParcelReader.skipUnknownField(parcel, header);
   18:             } else {
   19:                 pendingIntent = (PendingIntent) SafeParcelReader.createParcelable(parcel, header, PendingIntent.CREATOR);
   20:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/RevokeAccessRequest.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   82:         return Objects.hashCode(this.b, this.c, this.d);
   83:     }
   84: 
   85:     @Override // android.os.Parcelable
   86:     public void writeToParcel(Parcel parcel, int i) {
   87:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   88:         SafeParcelWriter.writeTypedList(parcel, 1, getScopes(), false);
   89:         SafeParcelWriter.writeParcelable(parcel, 2, getAccount(), i, false);
   90:         SafeParcelWriter.writeString(parcel, 3, this.d, false);
   91:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   92:     }
   93: 
   94:     public final Builder zba() {
   95:         Builder builder = new Builder();
   96:         builder.a = this.b;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SaveAccountLinkingTokenResult.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   35:         return Objects.hashCode(this.b);
   36:     }
   37: 
   38:     @Override // android.os.Parcelable
   39:     public void writeToParcel(Parcel parcel, int i) {
   40:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   41:         SafeParcelWriter.writeParcelable(parcel, 1, getPendingIntent(), i, false);
   42:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   43:     }
   44: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/Identity.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: import com.google.android.gms.internal.p000authapi.zbaj;
    8: import com.google.android.gms.internal.p000authapi.zbat;
    9: 
   10: /* JADX INFO: loaded from: classes4.dex */
   11: public final class Identity {
   12:     public static AuthorizationClient getAuthorizationClient(Activity activity) {
   13:         return new zbad((Activity) Preconditions.checkNotNull(activity), new zba(null));
   14:     }
   15: 
   16:     public static CredentialSavingClient getCredentialSavingClient(Activity activity) {
   17:         return new zbaj((Activity) Preconditions.checkNotNull(activity), new zbi());
   27: 
   28:     public static SignInClient getSignInClient(Context context) {
   29:         return new zbat((Context) Preconditions.checkNotNull(context), new zbv());
   30:     }
   31: 
   32:     public static AuthorizationClient getAuthorizationClient(Context context) {
   33:         return new zbad((Context) Preconditions.checkNotNull(context), new zba(null));
   34:     }
   35: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbe.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zbe implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         PendingIntent pendingIntent = null;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             if (SafeParcelReader.getFieldId(header) != 1) {
   17:                 SafeParcelReader.skipUnknownField(parcel, header);
   18:             } else {
   19:                 pendingIntent = (PendingIntent) SafeParcelReader.createParcelable(parcel, header, PendingIntent.CREATOR);
   20:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SignInPassword.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   39:         return Objects.hashCode(this.b, this.c);
   40:     }
   41: 
   42:     @Override // android.os.Parcelable
   43:     public void writeToParcel(Parcel parcel, int i) {
   44:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   45:         SafeParcelWriter.writeString(parcel, 1, getId(), false);
   46:         SafeParcelWriter.writeString(parcel, 2, getPassword(), false);
   47:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   48:     }
   49: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbo.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zbo implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         boolean z = false;
   13:         while (parcel.dataPosition() < iValidateObjectHeader) {
   14:             int header = SafeParcelReader.readHeader(parcel);
   15:             if (SafeParcelReader.getFieldId(header) != 1) {
   16:                 SafeParcelReader.skipUnknownField(parcel, header);
   17:             } else {
   18:                 z = SafeParcelReader.readBoolean(parcel, header);
   19:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbr.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zbr implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         PendingIntent pendingIntent = null;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             if (SafeParcelReader.getFieldId(header) != 1) {
   17:                 SafeParcelReader.skipUnknownField(parcel, header);
   18:             } else {
   19:                 pendingIntent = (PendingIntent) SafeParcelReader.createParcelable(parcel, header, PendingIntent.CREATOR);
   20:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/GetSignInIntentRequest.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  131:         return this.f;
  132:     }
  133: 
  134:     @Override // android.os.Parcelable
  135:     public void writeToParcel(Parcel parcel, int i) {
  136:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  137:         SafeParcelWriter.writeString(parcel, 1, getServerClientId(), false);
  138:         SafeParcelWriter.writeString(parcel, 2, getHostedDomainFilter(), false);
  139:         SafeParcelWriter.writeString(parcel, 3, this.d, false);
  140:         SafeParcelWriter.writeString(parcel, 4, getNonce(), false);
  141:         SafeParcelWriter.writeBoolean(parcel, 5, requestVerifiedPhoneNumber());
  142:         SafeParcelWriter.writeInt(parcel, 6, this.g);
  143:         SafeParcelWriter.writeTypedList(parcel, 7, this.h, false);
  144:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  145:     }
  146: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbk.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zbk implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         String strCreateString = null;
   14:         String strCreateString2 = null;
   15:         String strCreateString3 = null;
   16:         String strCreateString4 = null;
   17:         ArrayList arrayListCreateTypedList = null;
   18:         boolean z = false;
   19:         int i = 0;
   20:         while (parcel.dataPosition() < iValidateObjectHeader) {
   21:             int header = SafeParcelReader.readHeader(parcel);
   22:             switch (SafeParcelReader.getFieldId(header)) {
   23:                 case 1:
   24:                     strCreateString = SafeParcelReader.createString(parcel, header);
   25:                     break;
   26:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/BeginSignInRequest.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  226:             return this.h;
  227:         }
  228: 
  229:         @Override // android.os.Parcelable
  230:         public void writeToParcel(Parcel parcel, int i) {
  231:             int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  232:             SafeParcelWriter.writeBoolean(parcel, 1, isSupported());
  233:             SafeParcelWriter.writeString(parcel, 2, getServerClientId(), false);
  234:             SafeParcelWriter.writeString(parcel, 3, getNonce(), false);
  235:             SafeParcelWriter.writeBoolean(parcel, 4, filterByAuthorizedAccounts());
  236:             SafeParcelWriter.writeString(parcel, 5, getLinkedServiceId(), false);
  237:             SafeParcelWriter.writeStringList(parcel, 6, getIdTokenDepositionScopes(), false);
  238:             SafeParcelWriter.writeBoolean(parcel, 7, requestVerifiedPhoneNumber());
  239:             SafeParcelWriter.writeTypedList(parcel, 8, this.i, false);
  240:             SafeParcelWriter.writeString(parcel, 9, this.j, false);
  241:             SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  242:         }
  243:     }
  244: 
  245:     @Deprecated
  246:     public static final class PasskeyJsonRequestOptions extends AbstractSafeParcelable {
  302:             return this.b;
  303:         }
  304: 
  305:         @Override // android.os.Parcelable
  306:         public void writeToParcel(Parcel parcel, int i) {
  307:             int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  308:             SafeParcelWriter.writeBoolean(parcel, 1, isSupported());
  309:             SafeParcelWriter.writeString(parcel, 2, getRequestJson(), false);
  310:             SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  311:         }
  312:     }
  313: 
  314:     @Deprecated
  315:     public static final class PasskeysRequestOptions extends AbstractSafeParcelable {
  384:             return this.b;
  385:         }
  386: 
  387:         @Override // android.os.Parcelable
  388:         public void writeToParcel(Parcel parcel, int i) {
  389:             int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  390:             SafeParcelWriter.writeBoolean(parcel, 1, isSupported());
  391:             SafeParcelWriter.writeByteArray(parcel, 2, getChallenge(), false);
  392:             SafeParcelWriter.writeString(parcel, 3, getRpId(), false);
  393:             SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  394:         }
  395:     }
  396: 
  397:     @Deprecated
  398:     public static final class PasswordRequestOptions extends AbstractSafeParcelable {
  432:             return this.b;
  433:         }
  434: 
  435:         @Override // android.os.Parcelable
  436:         public void writeToParcel(Parcel parcel, int i) {
  437:             int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  438:             SafeParcelWriter.writeBoolean(parcel, 1, isSupported());
  439:             SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  440:         }
  441:     }
  442: 
  443:     public BeginSignInRequest(PasswordRequestOptions passwordRequestOptions, GoogleIdTokenRequestOptions googleIdTokenRequestOptions, String str, boolean z, int i, PasskeysRequestOptions passkeysRequestOptions, PasskeyJsonRequestOptions passkeyJsonRequestOptions, boolean z2) {
  444:         this.b = (PasswordRequestOptions) Preconditions.checkNotNull(passwordRequestOptions);
  518:         return this.e;
  519:     }
  520: 
  521:     @Override // android.os.Parcelable
  522:     public void writeToParcel(Parcel parcel, int i) {
  523:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  524:         SafeParcelWriter.writeParcelable(parcel, 1, getPasswordRequestOptions(), i, false);
  525:         SafeParcelWriter.writeParcelable(parcel, 2, getGoogleIdTokenRequestOptions(), i, false);
  526:         SafeParcelWriter.writeString(parcel, 3, this.d, false);
  527:         SafeParcelWriter.writeBoolean(parcel, 4, isAutoSelectEnabled());
  528:         SafeParcelWriter.writeInt(parcel, 5, this.f);
  529:         SafeParcelWriter.writeParcelable(parcel, 6, getPasskeysRequestOptions(), i, false);
  530:         SafeParcelWriter.writeParcelable(parcel, 7, getPasskeyJsonRequestOptions(), i, false);
  531:         SafeParcelWriter.writeBoolean(parcel, 8, getPreferImmediatelyAvailableCredentials());
  532:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  533:     }
  534: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/AuthorizationClient.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    3: import android.content.Intent;
    4: import com.google.android.gms.common.api.HasApiKey;
    5: import com.google.android.gms.tasks.Task;
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public interface AuthorizationClient extends HasApiKey<zba> {
    9:     Task<AuthorizationResult> authorize(AuthorizationRequest authorizationRequest);
   10: 
   11:     Task<Void> clearToken(ClearTokenRequest clearTokenRequest);
   12: 
   13:     AuthorizationResult getAuthorizationResultFromIntent(Intent intent);
   14: 
   15:     Task<Void> revokeAccess(RevokeAccessRequest revokeAccessRequest);
   16: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SignInCredential.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   84:         return Objects.hashCode(this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j);
   85:     }
   86: 
   87:     @Override // android.os.Parcelable
   88:     public void writeToParcel(Parcel parcel, int i) {
   89:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   90:         SafeParcelWriter.writeString(parcel, 1, getId(), false);
   91:         SafeParcelWriter.writeString(parcel, 2, getDisplayName(), false);
   92:         SafeParcelWriter.writeString(parcel, 3, getGivenName(), false);
   93:         SafeParcelWriter.writeString(parcel, 4, getFamilyName(), false);
   94:         SafeParcelWriter.writeParcelable(parcel, 5, getProfilePictureUri(), i, false);
   95:         SafeParcelWriter.writeString(parcel, 6, getPassword(), false);
   96:         SafeParcelWriter.writeString(parcel, 7, getGoogleIdToken(), false);
   97:         SafeParcelWriter.writeString(parcel, 8, getPhoneNumber(), false);
   98:         SafeParcelWriter.writeParcelable(parcel, 9, getPublicKeyCredential(), i, false);
   99:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  100:     }
  101: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbg.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zbg implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         boolean z = false;
   13:         String strCreateString = null;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 strCreateString = SafeParcelReader.createString(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbc.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   10: 
   11: /* JADX INFO: loaded from: classes4.dex */
   12: public final class zbc implements Parcelable.Creator {
   13:     @Override // android.os.Parcelable.Creator
   14:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   15:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   16:         String strCreateString = null;
   17:         String strCreateString2 = null;
   18:         String strCreateString3 = null;
   19:         ArrayList<String> arrayListCreateStringList = null;
   20:         GoogleSignInAccount googleSignInAccount = null;
   21:         PendingIntent pendingIntent = null;
   22:         Bundle bundleCreateBundle = null;
   23:         while (parcel.dataPosition() < iValidateObjectHeader) {
   24:             int header = SafeParcelReader.readHeader(parcel);
   25:             switch (SafeParcelReader.getFieldId(header)) {
   26:                 case 1:
   27:                     strCreateString = SafeParcelReader.createString(parcel, header);
   28:                     break;
   29:                 case 2:
   48:                     SafeParcelReader.skipUnknownField(parcel, header);
   49:                     break;
   50:             }
   51:         }
   52:         SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
   53:         return new AuthorizationResult(strCreateString, strCreateString2, strCreateString3, arrayListCreateStringList, googleSignInAccount, pendingIntent, bundleCreateBundle);
   54:     }
   55: 
   56:     @Override // android.os.Parcelable.Creator
   57:     public final /* synthetic */ Object[] newArray(int i) {
   58:         return new AuthorizationResult[i];
   59:     }
   60: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbf.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   31:         return Objects.hashCode(this.b, Boolean.valueOf(this.c));
   32:     }
   33: 
   34:     @Override // android.os.Parcelable
   35:     public final void writeToParcel(Parcel parcel, int i) {
   36:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   37:         SafeParcelWriter.writeString(parcel, 1, this.b, false);
   38:         SafeParcelWriter.writeBoolean(parcel, 2, this.c);
   39:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   40:     }
   41: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/SavePasswordResult.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   33:         return Objects.hashCode(this.b);
   34:     }
   35: 
   36:     @Override // android.os.Parcelable
   37:     public void writeToParcel(Parcel parcel, int i) {
   38:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   39:         SafeParcelWriter.writeParcelable(parcel, 1, getPendingIntent(), i, false);
   40:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   41:     }
   42: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbb.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   10: 
   11: /* JADX INFO: loaded from: classes4.dex */
   12: public final class zbb implements Parcelable.Creator {
   13:     @Override // android.os.Parcelable.Creator
   14:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   15:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   16:         boolean z = false;
   17:         boolean z2 = false;
   18:         boolean z3 = false;
   19:         boolean z4 = false;
   20:         int i = 0;
   23:         Account account = null;
   24:         String strCreateString2 = null;
   25:         String strCreateString3 = null;
   26:         Bundle bundleCreateBundle = null;
   27:         while (parcel.dataPosition() < iValidateObjectHeader) {
   28:             int header = SafeParcelReader.readHeader(parcel);
   29:             switch (SafeParcelReader.getFieldId(header)) {
   30:                 case 1:
   31:                     arrayListCreateTypedList = SafeParcelReader.createTypedList(parcel, header, Scope.CREATOR);
   32:                     break;
   33:                 case 2:
   64:                     SafeParcelReader.skipUnknownField(parcel, header);
   65:                     break;
   66:             }
   67:         }
   68:         SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
   69:         return new AuthorizationRequest(arrayListCreateTypedList, strCreateString, z, z2, account, strCreateString2, strCreateString3, z3, bundleCreateBundle, z4, i);
   70:     }
   71: 
   72:     @Override // android.os.Parcelable.Creator
   73:     public final /* synthetic */ Object[] newArray(int i) {
   74:         return new AuthorizationRequest[i];
   75:     }
   76: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/AuthorizationRequest.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   13: import java.lang.annotation.Retention;
   14: import java.lang.annotation.RetentionPolicy;
   15: import java.util.List;
   16: 
   17: /* JADX INFO: loaded from: classes4.dex */
   18: public class AuthorizationRequest extends AbstractSafeParcelable implements ReflectedParcelable {
   19:     public static final Parcelable.Creator<AuthorizationRequest> CREATOR = new zbb();
   20:     public final List b;
   21:     public final String c;
   22:     public final boolean d;
   23:     public final boolean e;
   24:     public final Account f;
   54:         ResourceParameter(String str) {
   55:             this.zba = str;
   56:         }
   57:     }
   58: 
   59:     public AuthorizationRequest(List list, String str, boolean z, boolean z2, Account account, String str2, String str3, boolean z3, Bundle bundle, boolean z4, int i) {
   60:         boolean z5 = false;
   61:         if (list != null && !list.isEmpty()) {
   62:             z5 = true;
   63:         }
   64:         Preconditions.checkArgument(z5, "requestedScopes cannot be null or empty");
   77: 
   78:     public static Builder builder() {
   79:         return new Builder();
   80:     }
   81: 
   82:     public static Builder zba(AuthorizationRequest authorizationRequest) {
   83:         ResourceParameter resourceParameter;
   84:         Preconditions.checkNotNull(authorizationRequest);
   85:         Builder builder = builder();
   86:         builder.setRequestedScopes(authorizationRequest.getRequestedScopes());
   87:         Bundle resourceParameters = authorizationRequest.getResourceParameters();
   88:         if (resourceParameters != null) {
   89:             for (String str : resourceParameters.keySet()) {
   90:                 String string = resourceParameters.getString(str);
   91:                 ResourceParameter[] resourceParameterArrValues = ResourceParameter.values();
   92:                 int length = resourceParameterArrValues.length;
  105:                 if (string != null && resourceParameter != null) {
  106:                     builder.addResourceParameter(resourceParameter, string);
  107:                 }
  108:             }
  109:         }
  110:         boolean zIsForceCodeForRefreshToken = authorizationRequest.isForceCodeForRefreshToken();
  111:         String str2 = authorizationRequest.h;
  112:         String hostedDomain = authorizationRequest.getHostedDomain();
  113:         Account account = authorizationRequest.getAccount();
  114:         String serverClientId = authorizationRequest.getServerClientId();
  115:         if (str2 != null) {
  116:             builder.zbb(str2);
  117:         }
  118:         if (hostedDomain != null) {
  119:             builder.filterByHostedDomain(hostedDomain);
  120:         }
  121:         if (account != null) {
  122:             builder.setAccount(account);
  123:         }
  124:         if (authorizationRequest.e && serverClientId != null) {
  125:             builder.zba(serverClientId);
  126:         }
  127:         if (authorizationRequest.isOfflineAccessRequested() && serverClientId != null) {
  128:             builder.requestOfflineAccess(serverClientId, zIsForceCodeForRefreshToken);
  129:         }
  130:         builder.setOptOutIncludingGrantedScopes(authorizationRequest.k);
  131:         builder.setPrompt(authorizationRequest.getPrompt());
  132:         return builder;
  133:     }
  134: 
  135:     public boolean equals(Object obj) {
  136:         if (!(obj instanceof AuthorizationRequest)) {
  137:             return false;
  138:         }
  139:         AuthorizationRequest authorizationRequest = (AuthorizationRequest) obj;
  140:         List list = this.b;
  141:         int size = list.size();
  142:         List list2 = authorizationRequest.b;
  143:         if (size == list2.size() && list.containsAll(list2)) {
  144:             Bundle bundle = authorizationRequest.j;
  145:             Bundle bundle2 = this.j;
  146:             if (bundle2 == null) {
  147:                 if (bundle == null) {
  148:                     bundle = null;
  149:                 }
  158:                         if (!Objects.equal(bundle2.getString(str), bundle.getString(str))) {
  159:                             return false;
  160:                         }
  161:                     }
  162:                 }
  163:                 if (this.d == authorizationRequest.d && this.i == authorizationRequest.i && this.e == authorizationRequest.e && this.k == authorizationRequest.k && this.l == authorizationRequest.l && Objects.equal(this.c, authorizationRequest.c) && Objects.equal(this.f, authorizationRequest.f) && Objects.equal(this.g, authorizationRequest.g) && Objects.equal(this.h, authorizationRequest.h)) {
  164:                     return true;
  165:                 }
  166:             }
  167:             return false;
  168:         }
  217:         return this.d;
  218:     }
  219: 
  220:     @Override // android.os.Parcelable
  221:     public void writeToParcel(Parcel parcel, int i) {
  222:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  223:         SafeParcelWriter.writeTypedList(parcel, 1, getRequestedScopes(), false);
  224:         SafeParcelWriter.writeString(parcel, 2, getServerClientId(), false);
  225:         SafeParcelWriter.writeBoolean(parcel, 3, isOfflineAccessRequested());
  226:         SafeParcelWriter.writeBoolean(parcel, 4, this.e);
  227:         SafeParcelWriter.writeParcelable(parcel, 5, getAccount(), i, false);
  229:         SafeParcelWriter.writeString(parcel, 7, this.h, false);
  230:         SafeParcelWriter.writeBoolean(parcel, 8, isForceCodeForRefreshToken());
  231:         SafeParcelWriter.writeBundle(parcel, 9, getResourceParameters(), false);
  232:         SafeParcelWriter.writeBoolean(parcel, 10, getOptOutIncludingGrantedScopes());
  233:         SafeParcelWriter.writeInt(parcel, 11, getPrompt());
  234:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  235:     }
  236: 
  237:     public static final class Builder {
  238:         public List a;
  239:         public String b;
  267:             }
  268:             bundle.putString(resourceParameter.zba, str);
  269:             return this;
  270:         }
  271: 
  272:         public AuthorizationRequest build() {
  273:             return new AuthorizationRequest(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k);
  274:         }
  275: 
  276:         public Builder filterByHostedDomain(String str) {
  277:             this.f = Preconditions.checkNotEmpty(str);
  278:             return this;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   40:         return Objects.hashCode(Integer.valueOf(this.b));
   41:     }
   42: 
   43:     @Override // android.os.Parcelable
   44:     public void writeToParcel(Parcel parcel, int i) {
   45:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   46:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   47:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   48:     }
   49: }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbn.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zbn implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         byte[] bArrCreateByteArray = null;
   13:         boolean z = false;
   14:         String strCreateString = null;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 1) {
   19:                 z = SafeParcelReader.readBoolean(parcel, header);
   20:             } else if (fieldId == 2) {
   21:                 bArrCreateByteArray = SafeParcelReader.createByteArray(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbs.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zbs implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         SignInPassword signInPassword = null;
   14:         String strCreateString = null;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 1) {
   19:                 signInPassword = (SignInPassword) SafeParcelReader.createParcelable(parcel, header, SignInPassword.CREATOR);
   20:             } else if (fieldId == 2) {
   21:                 strCreateString = SafeParcelReader.createString(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbj.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zbj implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         int i = 0;
   13:         while (parcel.dataPosition() < iValidateObjectHeader) {
   14:             int header = SafeParcelReader.readHeader(parcel);
   15:             if (SafeParcelReader.getFieldId(header) != 1) {
   16:                 SafeParcelReader.skipUnknownField(parcel, header);
   17:             } else {
   18:                 i = SafeParcelReader.readInt(parcel, header);
   19:             }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/identity/zbw.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zbw implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = null;
   13:         String strCreateString2 = null;
   14:         while (parcel.dataPosition() < iValidateObjectHeader) {
   15:             int header = SafeParcelReader.readHeader(parcel);
   16:             int fieldId = SafeParcelReader.getFieldId(header);
   17:             if (fieldId == 1) {
   18:                 strCreateString = SafeParcelReader.createString(parcel, header);
   19:             } else if (fieldId != 2) {
   20:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/GoogleSignInAccount.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  182:         return this;
  183:     }
  184: 
  185:     @Override // android.os.Parcelable
  186:     public void writeToParcel(Parcel parcel, int i) {
  187:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  188:         SafeParcelWriter.writeString(parcel, 2, getId(), false);
  189:         SafeParcelWriter.writeString(parcel, 3, getIdToken(), false);
  190:         SafeParcelWriter.writeString(parcel, 4, getEmail(), false);
  191:         SafeParcelWriter.writeString(parcel, 5, getDisplayName(), false);
  192:         SafeParcelWriter.writeParcelable(parcel, 6, getPhotoUrl(), i, false);
  194:         SafeParcelWriter.writeLong(parcel, 8, this.h);
  195:         SafeParcelWriter.writeString(parcel, 9, this.i, false);
  196:         SafeParcelWriter.writeTypedList(parcel, 10, this.j, false);
  197:         SafeParcelWriter.writeString(parcel, 11, getGivenName(), false);
  198:         SafeParcelWriter.writeString(parcel, 12, getFamilyName(), false);
  199:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  200:     }
  201: 
  202:     public final String zac() {
  203:         return this.i;
  204:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/zad.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   10: 
   11: /* JADX INFO: loaded from: classes4.dex */
   12: public final class zad implements Parcelable.Creator {
   13:     @Override // android.os.Parcelable.Creator
   14:     public final Object createFromParcel(Parcel parcel) {
   15:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   16:         ArrayList arrayListCreateTypedList = null;
   17:         ArrayList arrayListCreateTypedList2 = null;
   18:         Account account = null;
   19:         String strCreateString = null;
   20:         String strCreateString2 = null;
   22:         int i = 0;
   23:         boolean z = false;
   24:         boolean z2 = false;
   25:         boolean z3 = false;
   26:         while (parcel.dataPosition() < iValidateObjectHeader) {
   27:             int header = SafeParcelReader.readHeader(parcel);
   28:             switch (SafeParcelReader.getFieldId(header)) {
   29:                 case 1:
   30:                     i = SafeParcelReader.readInt(parcel, header);
   31:                     break;
   32:                 case 2:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/zab.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    9: 
   10: /* JADX INFO: loaded from: classes4.dex */
   11: public final class zab implements Parcelable.Creator {
   12:     @Override // android.os.Parcelable.Creator
   13:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   14:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   15:         String strCreateString = null;
   16:         String strCreateString2 = null;
   17:         String strCreateString3 = null;
   18:         String strCreateString4 = null;
   19:         Uri uri = null;
   22:         ArrayList arrayListCreateTypedList = null;
   23:         String strCreateString7 = null;
   24:         String strCreateString8 = null;
   25:         long j = 0;
   26:         while (parcel.dataPosition() < iValidateObjectHeader) {
   27:             int header = SafeParcelReader.readHeader(parcel);
   28:             switch (SafeParcelReader.getFieldId(header)) {
   29:                 case 2:
   30:                     strCreateString = SafeParcelReader.createString(parcel, header);
   31:                     break;
   32:                 case 3:
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/GoogleSignInOptions.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  209:         return this.f;
  210:     }
  211: 
  212:     @Override // android.os.Parcelable
  213:     public void writeToParcel(Parcel parcel, int i) {
  214:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
  215:         SafeParcelWriter.writeInt(parcel, 1, this.b);
  216:         SafeParcelWriter.writeTypedList(parcel, 2, getScopes(), false);
  217:         SafeParcelWriter.writeParcelable(parcel, 3, getAccount(), i, false);
  218:         SafeParcelWriter.writeBoolean(parcel, 4, isIdTokenRequested());
  219:         SafeParcelWriter.writeBoolean(parcel, 5, isServerAuthCodeRequested());
  220:         SafeParcelWriter.writeBoolean(parcel, 6, isForceCodeForRefreshToken());
  221:         SafeParcelWriter.writeString(parcel, 7, getServerClientId(), false);
  222:         SafeParcelWriter.writeString(parcel, 8, this.i, false);
  223:         SafeParcelWriter.writeTypedList(parcel, 9, getExtensions(), false);
  224:         SafeParcelWriter.writeString(parcel, 10, getLogSessionId(), false);
  225:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
  226:     }
  227: 
  228:     public final String zab() {
  229:         String str = this.i;
  230:         String str2 = this.h;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/zbb.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    6: 
    7: /* JADX INFO: loaded from: classes4.dex */
    8: public final class zbb implements Parcelable.Creator {
    9:     @Override // android.os.Parcelable.Creator
   10:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   11:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   12:         String strCreateString = "";
   13:         GoogleSignInAccount googleSignInAccount = null;
   14:         String strCreateString2 = "";
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 4) {
   19:                 strCreateString = SafeParcelReader.createString(parcel, header);
   20:             } else if (fieldId == 7) {
   21:                 googleSignInAccount = (GoogleSignInAccount) SafeParcelReader.createParcelable(parcel, header, GoogleSignInAccount.CREATOR);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/SignInAccount.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   24:         this.d = Preconditions.checkNotEmpty(str2, "8.3 and 8.4 SDKs require non-null userId");
   25:     }
   26: 
   27:     @Override // android.os.Parcelable
   28:     public final void writeToParcel(Parcel parcel, int i) {
   29:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   30:         SafeParcelWriter.writeString(parcel, 4, this.b, false);
   31:         SafeParcelWriter.writeParcelable(parcel, 7, this.c, i, false);
   32:         SafeParcelWriter.writeString(parcel, 8, this.d, false);
   33:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   34:     }
   35: 
   36:     public final GoogleSignInAccount zba() {
   37:         return this.c;
   38:     }
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/internal/zaa.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zaa implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         Bundle bundleCreateBundle = null;
   14:         int i = 0;
   15:         int i2 = 0;
   16:         while (parcel.dataPosition() < iValidateObjectHeader) {
   17:             int header = SafeParcelReader.readHeader(parcel);
   18:             int fieldId = SafeParcelReader.getFieldId(header);
   19:             if (fieldId == 1) {
   20:                 i = SafeParcelReader.readInt(parcel, header);
   21:             } else if (fieldId == 2) {
   22:                 i2 = SafeParcelReader.readInt(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/internal/zbu.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: 
    8: /* JADX INFO: loaded from: classes4.dex */
    9: public final class zbu implements Parcelable.Creator {
   10:     @Override // android.os.Parcelable.Creator
   11:     public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
   12:         int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
   13:         String strCreateString = null;
   14:         GoogleSignInOptions googleSignInOptions = null;
   15:         while (parcel.dataPosition() < iValidateObjectHeader) {
   16:             int header = SafeParcelReader.readHeader(parcel);
   17:             int fieldId = SafeParcelReader.getFieldId(header);
   18:             if (fieldId == 2) {
   19:                 strCreateString = SafeParcelReader.createString(parcel, header);
   20:             } else if (fieldId != 5) {
   21:                 SafeParcelReader.skipUnknownField(parcel, header);
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   22:         return this.c;
   23:     }
   24: 
   25:     @Override // android.os.Parcelable
   26:     public final void writeToParcel(Parcel parcel, int i) {
   27:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   28:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   29:         SafeParcelWriter.writeInt(parcel, 2, getType());
   30:         SafeParcelWriter.writeBundle(parcel, 3, this.d, false);
   31:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   32:     }
   33: 
   34:     public GoogleSignInOptionsExtensionParcelable(int i, int i2, Bundle bundle) {
   35:         this.b = i;
   36:         this.c = i2;
```


---

## `apk_analysis/jadx/sources/com/google/android/gms/auth/api/signin/internal/SignInConfiguration.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   42:         return new HashAccumulator().addObject(this.b).addObject(this.c).hash();
   43:     }
   44: 
   45:     @Override // android.os.Parcelable
   46:     public final void writeToParcel(Parcel parcel, int i) {
   47:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   48:         SafeParcelWriter.writeString(parcel, 2, this.b, false);
   49:         SafeParcelWriter.writeParcelable(parcel, 5, this.c, i, false);
   50:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   51:     }
   52: 
   53:     public final GoogleSignInOptions zba() {
   54:         return this.c;
   55:     }
```


---

## `apk_analysis/jadx/sources/com/google/mlkit/vision/common/internal/VisionImageMetadataParcel.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   23:         this.e = i4;
   24:     }
   25: 
   26:     @Override // android.os.Parcelable
   27:     public final void writeToParcel(Parcel parcel, int i) {
   28:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
   29:         SafeParcelWriter.writeInt(parcel, 1, this.b);
   30:         SafeParcelWriter.writeInt(parcel, 2, this.c);
   31:         SafeParcelWriter.writeInt(parcel, 3, this.f);
   32:         SafeParcelWriter.writeLong(parcel, 4, this.d);
   33:         SafeParcelWriter.writeInt(parcel, 5, this.e);
   34:         SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
   35:     }
   36: }
```


---

## `apk_analysis/jadx/sources/com/warefly/checkscan/CheckScanApplication.java`

**Разделы:** API HOST / NETWORK CONFIG

```
  124:             } else {
  125:                 hg4Var.b(arrayListH0, z, false);
  126:             }
  127:             String string = checkScanApplication.getResources().getString(R.string.server_host);
  128:             string.getClass();
  129:             Map mapE = n05.e(new b36("server_host", string), new b36("location_by_ip_base_url", checkScanApplication.getResources().getString(R.string.location_by_ip_url)), new b36("ofd_base_url", checkScanApplication.getResources().getString(R.string.ofd_base_url)), new b36("sse_url", string.concat("/v1/sse/event/subscribe")));
  130:             fs6 fs6Var = hg4Var.e;
  131:             fs6Var.getClass();
  132:             lx2 lx2Var2 = fs6Var.a.a;
  133:             String str = "load " + mapE.size() + " properties";
  134:             lx2Var2.getClass();
```


---

## `apk_analysis/jadx/sources/com/warefly/checkscan/R.java`

**Разделы:** API HOST / NETWORK CONFIG

```
 9918:         public static final int favorite_card_removed = 0x7f140294;
 9919:         public static final int favorite_no_shops = 0x7f140295;
 9920:         public static final int favorite_toolbar_title = 0x7f140296;
 9921:         public static final int fcm_fallback_notification_channel_label = 0x7f140298;
 9922:         public static final int fd_hint = 0x7f140299;
 9923:         public static final int firebase_database_url = 0x7f1402a0;
 9924:         public static final int firebase_dynamic_links_app_store_id = 0x7f1402a1;
 9925:         public static final int firebase_dynamic_links_domain_uri_prefix = 0x7f1402a2;
 9926:         public static final int firebase_dynamic_links_ios_bundle_id = 0x7f1402a3;
 9927:         public static final int fn_hint = 0x7f1402a4;
 9928:         public static final int fns_not_responding = 0x7f1402a5;
10332:         public static final int not_correct_format_action = 0x7f140482;
10333:         public static final int not_correct_format_description = 0x7f140483;
10334:         public static final int not_selected = 0x7f140484;
10335:         public static final int not_valid_according_fns = 0x7f140485;
10336:         public static final int not_valid_according_fns_description = 0x7f140486;
10337:         public static final int ofd_base_url = 0x7f140487;
10338:         public static final int offer_landing_error_loading = 0x7f140488;
10339:         public static final int offer_landing_error_loading_button_title = 0x7f140489;
10340:         public static final int offer_landing_try_again_button_title = 0x7f14048a;
10341:         public static final int offer_landing_try_again_title = 0x7f14048b;
10342:         public static final int offer_link_error_loading = 0x7f14048c;
```


---

## `apk_analysis/jadx/sources/com/warefly/checkscan/util/calendar/calendar/TouchEventInterceptorLayout.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    4: import android.util.AttributeSet;
    5: import android.view.MotionEvent;
    6: import android.widget.FrameLayout;
    7: 
    8: /* JADX INFO: loaded from: classes2.dex */
    9: public final class TouchEventInterceptorLayout extends FrameLayout {
   10:     /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
   11:     public TouchEventInterceptorLayout(Context context, AttributeSet attributeSet) {
   12:         super(context, attributeSet);
   13:         context.getClass();
   14:         attributeSet.getClass();
   15:     }
   16: 
```


---

## `apk_analysis/jadx/sources/com/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  578:                         String strGuessFileName = URLUtil.guessFileName(str, str3, str4);
  579:                         try {
  580:                             DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
  581:                             request.setMimeType(str4);
  582:                             if (str2 != null) {
  583:                                 request.addRequestHeader("User-Agent", str2);
  584:                             }
  585:                             String cookie = CookieManager.getInstance().getCookie(str);
  586:                             if (cookie != null) {
  587:                                 request.addRequestHeader("Cookie", cookie);
  588:                             }
  589:                             request.setNotificationVisibility(1);
  590:                             strGuessFileName.getClass();
  591:                             if (Build.VERSION.SDK_INT >= 29) {
  592:                                 request.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, strGuessFileName);
```


---

## `apk_analysis/jadx/sources/com/warefly/checkscan/auth/data/network/deserializer/AuthResponseDeserializer.java`

**Разделы:** SIGN-IN ROUTES / DTO

```
   17:         pc4Var.getClass();
   18:         type.getClass();
   19:         mc4Var.getClass();
   20:         kd4 kd4VarD = pc4Var.d();
   21:         xq4<String, pc4> xq4Var = kd4VarD.b;
   22:         if (xq4Var.containsKey("confirmType")) {
   23:             Object objA = ((TreeTypeAdapter.a) mc4Var).a(kd4VarD, ex.a.class);
   24:             objA.getClass();
   25:             return (ex) objA;
   26:         }
   27:         if (!xq4Var.containsKey("callPhone")) {
```


---

## `apk_analysis/jadx/sources/com/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter.java`

**Разделы:** SIGN-IN ROUTES / DTO

```
   50:     private final String email;
   51:     private final uf3 flowRouter;
   52:     private final gs5 observeCallVerifiedUseCase;
   53:     private final String phone;
   54:     private mb4 pollingJob;
   55:     private final cx7 signInConfirmInteractor;
   56:     private final gx7 signInRetryUseCase;
   57: 
   58:     public static final class a implements hd3<i57<? extends j3>> {
   59:         public final /* synthetic */ m91 b;
   60:         public final /* synthetic */ VerificationUserCallPresenter c;
  136:                     defpackage.r57.b(r9)
  137:                     goto L58
  138:                 L37:
  139:                     defpackage.r57.b(r9)
  140:                     com.warefly.checkscan.auth.presentation.userCallVerification.presenter.VerificationUserCallPresenter r9 = r7.c
  141:                     cx7 r1 = com.warefly.checkscan.auth.presentation.userCallVerification.presenter.VerificationUserCallPresenter.access$getSignInConfirmInteractor$p(r9)
  142:                     java.lang.String r9 = com.warefly.checkscan.auth.presentation.userCallVerification.presenter.VerificationUserCallPresenter.access$getPhone$p(r9)
  143:                     am2 r5 = defpackage.am2.USER_CALL
  144:                     r6 = 4
  145:                     de3 r9 = defpackage.cx7.a(r1, r9, r5, r2, r6)
  146:                     id3 r7 = r7.b
  313:         this.phone = str;
  314:         this.callPhone = str2;
  315:         this.email = str3;
  316:         this.flowRouter = uf3Var;
  317:         this.signInRetryUseCase = gx7Var;
  318:         this.signInConfirmInteractor = cx7Var;
  319:         this.observeCallVerifiedUseCase = gs5Var;
  320:     }
  321: 
  322:     public final mb4 getPollingJob() {
  323:         return this.pollingJob;
```


---

## `apk_analysis/jadx/sources/com/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter.java`

**Разделы:** SIGN-IN ROUTES / DTO

```
   45:     private final aw1 confirmEmailUseCase;
   46:     private final String email;
   47:     private final jw2 emailVerificationReason;
   48:     private final uf3 flowRouter;
   49:     private String otpCode;
   50:     private final cx7 signInConfirmInteractor;
   51:     private final gx7 signInRetryUseCase;
   52: 
   53:     public static final class a {
   54:     }
   55: 
  474:         z8Var.getClass();
  475:         this.email = str;
  476:         this.flowRouter = uf3Var;
  477:         this.emailVerificationReason = jw2Var;
  478:         this.signInRetryUseCase = gx7Var;
  479:         this.signInConfirmInteractor = cx7Var;
  480:         this.confirmEmailUseCase = aw1Var;
  481:         this.addEmailUseCase = z8Var;
  482:     }
  483: 
  484:     /* JADX INFO: Access modifiers changed from: private */
  567:         str.getClass();
  568:         launchInPresenter(new df3(s57.a(new tb7(new zv1(aw1Var, str2, str, null))), new j(null)));
  569:     }
  570: 
  571:     private final void verifySignIn(String str) {
  572:         launchInPresenter(new df3(cx7.a(this.signInConfirmInteractor, null, am2.EMAIL, str, 1), new k(null)));
  573:     }
  574: 
  575:     public final void onBackClicked() {
  576:         this.flowRouter.c();
  577:     }
```


---

## `apk_analysis/jadx/sources/com/posthog/surveys/PostHogDisplaySurveyAppearance.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  226: 
  227:     public final PostHogDisplaySurveyTextContentType getThankYouMessageDescriptionContentType() {
  228:         return this.thankYouMessageDescriptionContentType;
  229:     }
  230: 
  231:     public final String getThankYouMessageHeader() {
  232:         return this.thankYouMessageHeader;
  233:     }
  234: 
  235:     public int hashCode() {
  236:         String str = this.fontFamily;
  345:             String inputTextColor = surveyAppearance.getInputTextColor();
  346:             String placeholder = surveyAppearance.getPlaceholder();
  347:             Double surveyPopupDelaySeconds = surveyAppearance.getSurveyPopupDelaySeconds();
  348:             Boolean displayThankYouMessage = surveyAppearance.getDisplayThankYouMessage();
  349:             boolean zBooleanValue = displayThankYouMessage != null ? displayThankYouMessage.booleanValue() : false;
  350:             if (surveyTranslation == null || (thankYouMessageHeader = surveyTranslation.getThankYouMessageHeader()) == null) {
  351:                 thankYouMessageHeader = surveyAppearance.getThankYouMessageHeader();
  352:             }
  353:             String str = thankYouMessageHeader;
  354:             if (surveyTranslation == null || (thankYouMessageDescription = surveyTranslation.getThankYouMessageDescription()) == null) {
  355:                 thankYouMessageDescription = surveyAppearance.getThankYouMessageDescription();
  356:             }
```


---

## `apk_analysis/jadx/sources/com/posthog/surveys/SurveyAppearance.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  323: 
  324:     public final SurveyTextContentType getThankYouMessageDescriptionContentType() {
  325:         return this.thankYouMessageDescriptionContentType;
  326:     }
  327: 
  328:     public final String getThankYouMessageHeader() {
  329:         return this.thankYouMessageHeader;
  330:     }
  331: 
  332:     public final Boolean getWhiteLabel() {
  333:         return this.whiteLabel;
```


---

## `apk_analysis/jadx/sources/com/posthog/surveys/SurveyTranslation.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   72: 
   73:     public final String getThankYouMessageDescription() {
   74:         return this.thankYouMessageDescription;
   75:     }
   76: 
   77:     public final String getThankYouMessageHeader() {
   78:         return this.thankYouMessageHeader;
   79:     }
   80: 
   81:     public int hashCode() {
   82:         String str = this.name;
```


---

## `apk_analysis/jadx/sources/com/yalantis/ucrop/OkHttpClientStore.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package com.yalantis.ucrop;
    2: 
    3: import okhttp3.OkHttpClient;
    4: 
    5: /* JADX INFO: loaded from: classes5.dex */
    6: public class OkHttpClientStore {
    7:     public static final OkHttpClientStore INSTANCE = new OkHttpClientStore();
    8:     private OkHttpClient client;
    9: 
   10:     private OkHttpClientStore() {
   11:     }
   12: 
   13:     public OkHttpClient getClient() {
   14:         OkHttpClient okHttpClient = this.client;
   15:         if (okHttpClient != null) {
   16:             return okHttpClient;
   17:         }
   18:         OkHttpClient okHttpClient2 = new OkHttpClient();
   19:         this.client = okHttpClient2;
   20:         return okHttpClient2;
   21:     }
   22: 
   23:     public void setClient(OkHttpClient okHttpClient) {
   24:         this.client = okHttpClient;
   25:     }
   26: }
```


---

## `apk_analysis/jadx/sources/com/yalantis/ucrop/UCropInitializer.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    1: package com.yalantis.ucrop;
    2: 
    3: import okhttp3.OkHttpClient;
    4: 
    5: /* JADX INFO: loaded from: classes5.dex */
    6: public class UCropInitializer {
    7:     public UCropInitializer setOkHttpClient(OkHttpClient okHttpClient) {
    8:         OkHttpClientStore.INSTANCE.setClient(okHttpClient);
    9:         return this;
   10:     }
   11: }
```


---

## `apk_analysis/jadx/sources/com/yalantis/ucrop/task/BitmapLoadTask.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    7: import android.net.Uri;
    8: import android.os.AsyncTask;
    9: import android.util.Log;
   10: import androidx.webkit.ProxyConfig;
   11: import com.google.firebase.analytics.FirebaseAnalytics;
   12: import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
   13: import com.yalantis.ucrop.OkHttpClientStore;
   14: import com.yalantis.ucrop.callback.BitmapLoadCallback;
   15: import com.yalantis.ucrop.model.ExifInfo;
   16: import com.yalantis.ucrop.util.BitmapLoadUtils;
   17: import defpackage.b37;
   18: import defpackage.bj;
   27: import java.io.FileOutputStream;
   28: import java.io.IOException;
   29: import java.io.InputStream;
   30: import java.io.OutputStream;
   31: import java.lang.ref.WeakReference;
   32: import okhttp3.OkHttpClient;
   33: 
   34: /* JADX INFO: loaded from: classes5.dex */
   35: public class BitmapLoadTask extends AsyncTask<Void, Void, BitmapWorkerResult> {
   36:     private static final int MAX_BITMAP_SIZE = 104857600;
   37:     private static final String TAG = "BitmapWorkerTask";
  110:         Context context = this.mContext.get();
  111:         if (context == null) {
  112:             o2.d("Context is null");
  113:             return;
  114:         }
  115:         OkHttpClient client = OkHttpClientStore.INSTANCE.getClient();
  116:         wu0 wu0Var = null;
  117:         try {
  118:             b37.a aVar = new b37.a();
  119:             aVar.e(uri.toString());
  120:             b37 b37VarA = aVar.a();
  121:             try {
  122:                 client.getClass();
  123:                 z47VarExecute = FirebasePerfOkHttpClient.execute(new jy6(client, b37VarA));
  124:                 try {
  125:                     wu0 wu0VarL = z47VarExecute.h.L();
  126:                     try {
  127:                         OutputStream outputStreamOpenOutputStream = isContentUri(this.mOutputUri) ? context.getContentResolver().openOutputStream(uri2) : new FileOutputStream(new File(uri2.getPath()));
  128:                         if (outputStreamOpenOutputStream == null) {
```


---

## `apk_analysis/jadx/sources/com/my/tracker/MyTrackerConfig.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    4: import com.my.tracker.config.AntiFraudConfig;
    5: import com.my.tracker.obfuscated.c3;
    6: import java.lang.annotation.Retention;
    7: import java.lang.annotation.RetentionPolicy;
    8: import java.util.List;
    9: import okhttp3.OkHttpClient;
   10: 
   11: /* JADX INFO: loaded from: classes4.dex */
   12: public final class MyTrackerConfig {
   13:     private final c3 a;
   14: 
   21:         public static final int ACTIVE = 2;
   22:         public static final int CACHED = 1;
   23:         public static final int NONE = 0;
   24:     }
   25: 
   26:     public interface OkHttpClientProvider {
   27:         OkHttpClient getOkHttpClient();
   28:     }
   29: 
   30:     private MyTrackerConfig(c3 c3Var) {
   31:         this.a = c3Var;
   32:     }
  146:     public MyTrackerConfig setLocationTrackingMode(int i) {
  147:         this.a.d(i);
  148:         return this;
  149:     }
  150: 
  151:     public MyTrackerConfig setOkHttpClientProvider(OkHttpClientProvider okHttpClientProvider) {
  152:         this.a.a(okHttpClientProvider);
  153:         return this;
  154:     }
  155: 
  156:     public MyTrackerConfig setProxyHost(String str) {
  157:         this.a.c(str);
```


---

## `apk_analysis/jadx/sources/com/my/target/w0.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP, API HOST / NETWORK CONFIG

```
  205:             } else {
  206:                 a2Var.e = false;
  207:                 WebView webView = ycVar2.b;
  208:                 if (webView != null) {
  209:                     try {
  210:                         webView.loadDataWithBaseURL("https://ad.mail.ru/", str, "text/html", "UTF-8", null);
  211:                     } catch (Throwable th) {
  212:                         h1.c(th);
  213:                     }
  214:                 }
  215:             }
```


---

## `apk_analysis/jadx/sources/com/my/target/e1.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP, API HOST / NETWORK CONFIG

```
  108:         WebView webView = this.b;
  109:         if (webView == null) {
  110:             return;
  111:         }
  112:         try {
  113:             webView.loadDataWithBaseURL("https://ad.mail.ru/", str, "text/html", "UTF-8", null);
  114:         } catch (Throwable th) {
  115:             h1.c(th);
  116:         }
  117:     }
  118: 
```


---

## `apk_analysis/jadx/sources/com/my/target/d1.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   70:                 httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
   71:                 try {
   72:                     httpURLConnection.setReadTimeout(10000);
   73:                     httpURLConnection.setConnectTimeout(10000);
   74:                     httpURLConnection.setRequestMethod("GET");
   75:                     httpURLConnection.addRequestProperty("User-Agent", System.getProperty("http.agent"));
   76:                     httpURLConnection.setInstanceFollowRedirects(false);
   77:                     httpURLConnection.setRequestProperty("connection", TJAdUnitConstants.String.CLOSE);
   78:                     y14.m(httpURLConnection);
   79:                     ln9Var.c(httpURLConnection);
   80:                     httpURLConnection.connect();
```


---

## `apk_analysis/jadx/sources/com/my/target/k1.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP, API HOST / NETWORK CONFIG

```
  243:                         return;
  244:                     }
  245:                     u0Var.e = true;
  246:                     return;
  247:                 }
  248:                 webView.loadDataWithBaseURL("https://ad.mail.ru/", str2, "text/html", "UTF-8", null);
  249:             }
  250:             int i2 = j4aVar.e;
  251:             raVar.e.setVisibility(0);
  252:             raVar.g.setVisibility(8);
  253:             b(i2);
```


---

## `apk_analysis/jadx/sources/com/my/tracker/personalize/PersonalizeApiClient.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   93:         });
   94:     }
   95: 
   96:     /* JADX INFO: Access modifiers changed from: private */
   97:     public /* synthetic */ void a(String str, PersonalizeRequest personalizeRequest, Handler handler, OnCompleteListener onCompleteListener) {
   98:         a(personalizeRequest, w0.a((MyTrackerConfig.OkHttpClientProvider) null).a(str), handler, onCompleteListener);
   99:     }
  100: 
  101:     private void a(final PersonalizeRequest personalizeRequest, Object obj, String str, Handler handler, final String str2, final OnCompleteListener onCompleteListener) {
  102:         if (handler == null) {
  103:             handler = m.a;
```


---

## `apk_analysis/jadx/sources/com/my/tracker/obfuscated/o2.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   64:                 v1Var.a(38, qVar);
   65:             }
   66:         }
   67:     }
   68: 
   69:     public synchronized byte[] a(boolean z, c3.a aVar, f3 f3Var, u2 u2Var, String str, MyTrackerConfig.OkHttpClientProvider okHttpClientProvider, Context context) {
   70:         byte[] bArrC;
   71:         if (context != null) {
   72:             try {
   73:                 j0 j0VarA = k0.a().a(aVar.m, aVar.g, aVar.e, z, str, okHttpClientProvider, context);
   74:                 this.c.a();
   75:                 a(this.c, z, aVar, f3Var, j0VarA, u2Var);
   76:                 bArrC = this.c.c();
   77:                 this.c.d();
   78:                 a();
```


---

## `apk_analysis/jadx/sources/com/my/tracker/obfuscated/i0.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
  142:         b();
  143:     }
  144: 
  145:     public void b(j1 j1Var) {
  146:         String strQ = this.b.q();
  147:         MyTrackerConfig.OkHttpClientProvider okHttpClientProviderN = this.b.n();
  148:         try {
  149:             com.my.tracker.obfuscated.b bVarD = j1Var.d();
  150:             try {
  151:                 if (bVarD != null) {
  152:                     while (bVarD.b()) {
  153:                         long jA = bVarD.a();
  154:                         byte[] bArrI = bVarD.i();
  155:                         this.i.a();
  156:                         this.i.b(bArrI);
  157:                         w0.b bVarA = a(strQ, okHttpClientProviderN, this.i);
  158:                         if (bVarA == null || !bVarA.c()) {
  159:                             break;
  160:                             break;
  161:                         }
  162:                         String str = (String) bVarA.b();
  398: 
  399:     private static void a(Runnable runnable) {
  400:         m.a(runnable);
  401:     }
  402: 
  403:     private static int a(v1 v1Var, j1 j1Var, c3.a aVar, boolean z, f3 f3Var, String str, k1 k1Var, String str2, MyTrackerConfig.OkHttpClientProvider okHttpClientProvider, Context context) {
  404:         if (!j1Var.j()) {
  405:             return 3;
  406:         }
  407:         long jI = j1Var.i();
  408:         b2 b2VarB = j1Var.b();
  409:         d2 d2VarC = j1Var.c();
  410:         return k1Var.a(v1Var, aVar, z, f3Var, str, k0.a().a(aVar.m, aVar.g, aVar.e, z, str2, okHttpClientProvider, context), jI, j1Var.f(), b2VarB, d2VarC);
  411:     }
  412: 
  413:     public void b(final float f, final float f2, final float f3) {
  414:         final long jCurrentTimeMillis = System.currentTimeMillis();
  415:         a(new Runnable() { // from class: ox9
  563: 
  564:     public void b(boolean z, f3 f3Var, String str, j1 j1Var) {
  565:         b3.a("createAndStorePartialPacket: start");
  566:         c3.a aVarO = this.b.o();
  567:         String strH = this.b.h();
  568:         MyTrackerConfig.OkHttpClientProvider okHttpClientProviderN = this.b.n();
  569:         this.i.a();
  570:         int iA = a(this.i, j1Var, aVarO, z, f3Var, str, this.j, strH, okHttpClientProviderN, this.c);
  571:         b3.a("createAndStorePartialPacket: writeResult=" + iA);
  572:         if (iA == 1) {
  573:             j1Var.a();
  574:             j1Var.a(this.i.c());
  575:         } else if (iA == 2) {
  962:         String str2;
  963:         w0.b bVarA;
  964:         c3.a aVarO = this.b.o();
  965:         String strQ = this.b.q();
  966:         String strH = this.b.h();
  967:         MyTrackerConfig.OkHttpClientProvider okHttpClientProviderN = this.b.n();
  968:         this.i.a();
  969:         if (a(this.i, j1Var, aVarO, z, f3Var, str, this.j, strH, okHttpClientProviderN, this.c) == 1 && (bVarA = a(strQ, okHttpClientProviderN, this.i)) != null) {
  970:             if (bVarA.c()) {
  971:                 b3.a("Events were sent successfully");
  972:                 j1Var.a();
  973:             }
  974:             str2 = (String) bVarA.b();
  980:         }
  981:         this.i.d();
  982:         return str2;
  983:     }
  984: 
  985:     private w0.b a(String str, MyTrackerConfig.OkHttpClientProvider okHttpClientProvider, q qVar) {
  986:         if (this.j.a(qVar, z2.a())) {
  987:             return w0.a(new r(qVar), okHttpClientProvider, true).a(str);
  988:         }
  989:         return null;
  990:     }
  991: 
  992:     private boolean a(JSONObject jSONObject, JSONObject jSONObject2, String str, Map map, long j) {
```


---

## `apk_analysis/jadx/sources/com/my/tracker/obfuscated/k0.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   19:     private final m0 k = new m0();
   20: 
   21:     private k0() {
   22:     }
   23: 
   24:     public j0 a(MyTrackerConfig.InstalledPackagesProvider installedPackagesProvider, boolean z, int i, boolean z2, String str, MyTrackerConfig.OkHttpClientProvider okHttpClientProvider, Context context) {
   25:         d1 d1VarA;
   26:         x0 x0Var;
   27:         b1 b1Var;
   28:         g0 g0Var;
   29:         l0 l0Var;
   42:         } else {
   43:             x0 x0VarA = this.e.a(context);
   44:             o0 o0VarA = this.d.a(context);
   45:             g0 g0VarB = z ? this.i.b(context) : g0.c;
   46:             l0 l0VarA = this.k.a(context);
   47:             b1 b1VarA = this.b.a(str, okHttpClientProvider);
   48:             d1VarA = this.g.a(i, context);
   49:             x0Var = x0VarA;
   50:             b1Var = b1VarA;
   51:             g0Var = g0VarB;
   52:             l0Var = l0VarA;
```


---

## `apk_analysis/jadx/sources/com/my/tracker/obfuscated/c3.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   30:     private volatile int m = 0;
   31:     private volatile int n = 900;
   32:     private volatile String o = null;
   33:     private volatile String p = null;
   34:     private volatile MyTrackerConfig.InstalledPackagesProvider q = null;
   35:     private volatile MyTrackerConfig.OkHttpClientProvider r = null;
   36:     private volatile String s = "";
   37:     private volatile String t = "";
   38:     private volatile String u = "";
   39:     private volatile String v = "";
   40:     private volatile String w = "";
  205: 
  206:     public MyTrackerParams m() {
  207:         return this.a;
  208:     }
  209: 
  210:     public MyTrackerConfig.OkHttpClientProvider n() {
  211:         return this.r;
  212:     }
  213: 
  214:     public a o() {
  215:         return new a(this.c, this.l, this.n, this.m, this.f, this.e, this.g, this.h, this.i, this.j, this.a.a(), this.d, this.q);
  282: 
  283:     public void b(String str) {
  284:         this.c = str;
  285:     }
  286: 
  287:     public void a(MyTrackerConfig.OkHttpClientProvider okHttpClientProvider) {
  288:         this.r = okHttpClientProvider;
  289:     }
  290: 
  291:     public String b() {
  292:         return this.o;
  293:     }
```


---

## `apk_analysis/jadx/sources/com/my/tracker/obfuscated/n1.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
    4: import com.my.tracker.MyTrackerConfig;
    5: import defpackage.b37;
    6: import defpackage.b57;
    7: import defpackage.jy6;
    8: import defpackage.z47;
    9: import okhttp3.OkHttpClient;
   10: 
   11: /* JADX INFO: loaded from: classes4.dex */
   12: public final class n1 extends w0 {
   13:     final MyTrackerConfig.OkHttpClientProvider a;
   14: 
   15:     public n1(MyTrackerConfig.OkHttpClientProvider okHttpClientProvider) {
   16:         this.a = okHttpClientProvider;
   17:     }
   18: 
   19:     @Override // com.my.tracker.obfuscated.w0
   20:     public w0.b a(String str) {
   21:         w0.b bVarD = w0.b.d();
   25:         b37.a aVar = new b37.a();
   26:         aVar.e(str);
   27:         try {
   28:             aVar.c("GET", null);
   29:             b37 b37VarA = aVar.a();
   30:             OkHttpClient okHttpClient = this.a.getOkHttpClient();
   31:             okHttpClient.getClass();
   32:             z47 z47VarExecute = new jy6(okHttpClient, b37VarA).execute();
   33:             try {
   34:                 int i = z47VarExecute.e;
   35:                 if (i == 200) {
   36:                     b3.a("OkHttpGetRequest: response successfully received");
   37:                     bVarD.a = true;
```


---

## `apk_analysis/jadx/sources/com/my/tracker/obfuscated/o1.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   10: import defpackage.jy6;
   11: import defpackage.z47;
   12: import java.io.ByteArrayOutputStream;
   13: import java.util.regex.Pattern;
   14: import java.util.zip.GZIPOutputStream;
   15: import okhttp3.OkHttpClient;
   16: 
   17: /* JADX INFO: loaded from: classes4.dex */
   18: public final class o1 extends w0 {
   19:     static final j95 d;
   20:     final w0.a a;
   21:     final MyTrackerConfig.OkHttpClientProvider b;
   22:     final boolean c;
   23: 
   24:     static {
   25:         j95 j95VarA;
   26:         Pattern pattern = j95.e;
   30:             j95VarA = null;
   31:         }
   32:         d = j95VarA;
   33:     }
   34: 
   35:     public o1(w0.a aVar, MyTrackerConfig.OkHttpClientProvider okHttpClientProvider, boolean z) {
   36:         this.a = aVar;
   37:         this.b = okHttpClientProvider;
   38:         this.c = z;
   39:     }
   40: 
   41:     /* JADX WARN: Code duplicated, block: B:55:0x00fc A[Catch: all -> 0x0087, TRY_ENTER, TryCatch #3 {all -> 0x0087, blocks: (B:3:0x000f, B:21:0x0083, B:24:0x008b, B:55:0x00fc, B:57:0x0101, B:58:0x0104), top: B:73:0x000f }] */
   42:     /* JADX WARN: Code duplicated, block: B:57:0x0101 A[Catch: all -> 0x0087, TryCatch #3 {all -> 0x0087, blocks: (B:3:0x000f, B:21:0x0083, B:24:0x008b, B:55:0x00fc, B:57:0x0101, B:58:0x0104), top: B:73:0x000f }] */
   90:                                 b37 b37VarA = aVar.a();
   91:                                 if (gZIPOutputStream2 != null) {
   92:                                     gZIPOutputStream2.close();
   93:                                 }
   94:                                 byteArrayOutputStream.close();
   95:                                 OkHttpClient okHttpClient = this.b.getOkHttpClient();
   96:                                 okHttpClient.getClass();
   97:                                 z47 z47VarExecute = new jy6(okHttpClient, b37VarA).execute();
   98:                                 try {
   99:                                     int i = z47VarExecute.e;
  100:                                     if (i == 200 || i == 204) {
  101:                                         b3.a("OkHttpPostRequest: response successfully received");
  102:                                         bVarD.a = true;
```


---

## `apk_analysis/jadx/sources/com/my/tracker/obfuscated/c1.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   11:     boolean a = false;
   12:     private b1 b = null;
   13: 
   14:     /* JADX INFO: Access modifiers changed from: private */
   15:     /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
   16:     public void b(String str, MyTrackerConfig.OkHttpClientProvider okHttpClientProvider) {
   17:         b3.a("Ipv4DataProvider: get IPv4 address");
   18:         try {
   19:             w0.b bVarA = w0.a(okHttpClientProvider).a(str);
   20:             if (!bVarA.c()) {
   21:                 b3.a("Ipv4DataProvider: unsuccessful response from server: " + bVarA.a());
   22:                 return;
   23:             }
   24:             String str2 = (String) bVarA.b();
   36:         } catch (Throwable th) {
   37:             b3.b("Ipv4DataProvider: failed to get IPv4 address", th);
   38:         }
   39:     }
   40: 
   41:     public b1 a(String str, MyTrackerConfig.OkHttpClientProvider okHttpClientProvider) {
   42:         if (!this.a) {
   43:             this.a = true;
   44:             m.b(new gd9(this, str, okHttpClientProvider, 1));
   45:         }
   46:         return this.b;
   47:     }
   48: }
```


---

## `apk_analysis/jadx/sources/com/my/tracker/obfuscated/q2.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   32:         this.a.a(jArr);
   33:         b3.a("TimeSpentPacketSender: successfully deleted " + length + " packets from repository");
   34:     }
   35: 
   36:     public void b(a aVar) throws Exception {
   37:         MyTrackerConfig.OkHttpClientProvider okHttpClientProviderN = this.b.n();
   38:         String strP = this.b.p();
   39:         aVar.a(System.currentTimeMillis());
   40:         if (b3.a()) {
   41:             b3.a("TimeSpentPacketSender: This packet will be sent now:\n" + aVar);
   42:         }
   43:         if (!w0.a(aVar, okHttpClientProviderN, true).a(strP).c()) {
   44:             throw new Exception("packet didn't delivered to server");
   45:         }
   46:         b3.a("TimeSpentPacketSender: packet successfully delivered to server");
   47:     }
   48: 
```


---

## `apk_analysis/jadx/sources/com/my/tracker/obfuscated/w0.java`

**Разделы:** CLIENT / INTERCEPTOR SETUP

```
   49:         return activeNetworkInfo.isConnected();
   50:     }
   51: 
   52:     public abstract b a(String str);
   53: 
   54:     public static w0 a(a aVar, MyTrackerConfig.OkHttpClientProvider okHttpClientProvider, boolean z) {
   55:         if (okHttpClientProvider != null) {
   56:             try {
   57:                 return new o1(aVar, okHttpClientProvider, z);
   58:             } catch (Throwable th) {
   59:                 b3.a("HttpRequest error: error while creating OkHttpPostRequest", th);
   60:             }
   61:         }
   62:         return new v0(aVar, z);
   63:     }
   64: 
   65:     public static w0 a(MyTrackerConfig.OkHttpClientProvider okHttpClientProvider) {
   66:         if (okHttpClientProvider != null) {
   67:             try {
   68:                 return new n1(okHttpClientProvider);
   69:             } catch (Throwable th) {
   70:                 b3.a("HttpRequest error: error while creating OkHttpPostRequest", th);
   71:             }
   72:         }
   73:         return new u0();
```
