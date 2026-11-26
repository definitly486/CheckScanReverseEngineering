# CheckScan — точечные фрагменты авторизации

- Корень репозитория: `/home/definitly/CheckScanReverseEngineering`
- Источник JADX: `/home/definitly/CheckScanReverseEngineering/apk_analysis/jadx/sources`

> Отчёт содержит код из локальной декомпиляции. Секреты и реальные токены специально не ищутся/не выводятся.

## on.java — HTTP client builder / interceptor configuration

Путь: `apk_analysis/jadx/sources/defpackage/on.java`

### Фрагмент, строки 33–57
```java
    public final OkHttpClient.a c(boolean z, boolean z2) {
        OkHttpClient.a aVar = new OkHttpClient.a();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        timeUnit.getClass();
        aVar.x = gb9.b(30L, timeUnit);
        aVar.z = gb9.b(30L, timeUnit);
        aVar.y = gb9.b(90L, timeUnit);
        bz3 bz3Var = c;
        bz3Var.getClass();
        ArrayList arrayList = aVar.c;
        arrayList.add(bz3Var);
        arrayList.add((f94) (this instanceof og4 ? m2.c(ev3.class, ((og4) this).getScope(), null, null) : super.b().c.d.e(x07.a(ev3.class), null, null)));
        jg4 jg4Var = b;
        if (z) {
            arrayList.add((f94) (jg4Var instanceof og4 ? m2.c(a59.class, ((og4) jg4Var).getScope(), null, null) : super.b().c.d.e(x07.a(a59.class), null, null)));
        }
        if (z2) {
            aVar.j = (l02) (jg4Var instanceof og4 ? m2.c(qx.class, ((og4) jg4Var).getScope(), null, null) : super.b().c.d.e(x07.a(qx.class), null, null));
        }
        ba8 ba8Var = p72.i;
        for (f94 f94Var : (Iterable) (jg4Var instanceof og4 ? n2.c(List.class, ((og4) jg4Var).getScope(), ba8Var, null) : super.b().c.d.e(x07.a(List.class), null, ba8Var))) {
            f94Var.getClass();
            arrayList.add(f94Var);
        }
        return aVar;
    }
```

## wc5.java — Retrofit factory / authorized client

Путь: `apk_analysis/jadx/sources/defpackage/wc5.java`

### Фрагмент, строки 1605–1686
```java
                defpackage.s0.c("KOIN: authorized retrofit created");
                on onVar = on.b;
                String str = (String) ze7Var2.c("server_host");
                n67.b bVar = new n67.b();
                bVar.b(str.concat("/"));
                bVar.a = new OkHttpClient(onVar.c(true, true));
                bVar.a((i02.a) ay3.a.getValue());
                ws3 ws3Var = new ws3();
                TransferShowcaseDeserializer transferShowcaseDeserializer = new TransferShowcaseDeserializer();
                HashMap map = transferShowcaseDeserializer.b;
                map.put("REGISTER", k70.k.class);
                map.put("PHONE", k70.j.class);
                map.put("SBP_PHONE", k70.l.class);
                map.put("COMMON_CELL", k70.d.class);
                map.put("COMMON_BANNER", k70.c.class);
                map.put("MINI_LOGO_BANNER", k70.h.class);
                map.put("HEADER_LOGO_BANNERS", k70.f.class);
                map.put("TITLE", k70.m.class);
                ws3Var.c(k70.b.class, transferShowcaseDeserializer);
                PromoSelectCardDeserializer promoSelectCardDeserializer = new PromoSelectCardDeserializer();
                HashMap map2 = promoSelectCardDeserializer.b;
                map2.put("TITLE", wp6.j.class);
                map2.put(CodePackage.COMMON, wp6.i.class);
                map2.put("COMMON_RICH_PREVIEW", wp6.a.class);
                map2.put("MFO_RICH_PREVIEW", wp6.c.class);
                map2.put("MINI_LOGO_BANNER", wp6.d.class);
                map2.put("MINI_LOGO_TRANSFER_BANNER", wp6.e.class);
                map2.put("INFO", wp6.k.class);
                ws3Var.c(wp6.h.class, promoSelectCardDeserializer);
                OnboardingSlideDeserializer onboardingSlideDeserializer = new OnboardingSlideDeserializer();
                HashMap map3 = onboardingSlideDeserializer.b;
                map3.put("MULTI", jf5.class);
                map3.put("DEFAULT", ei2.class);
                ws3Var.c(fx5.class, onboardingSlideDeserializer);
                ProductsSelectionBlockDeserializer productsSelectionBlockDeserializer = new ProductsSelectionBlockDeserializer(0);
                HashMap map4 = productsSelectionBlockDeserializer.c;
                map4.put("MixedOffersSelection", gj6.class);
                map4.put("MerchantOffersSelection", fj6.class);
                ws3Var.c(ik6.class, productsSelectionBlockDeserializer);
                ProductOfferDeserializer productOfferDeserializer = new ProductOfferDeserializer(0);
                HashMap map5 = productOfferDeserializer.c;
                map5.put("LoyaltyProgram", dy4.class);
                map5.put("Cashback", j61.class);
                map5.put("OfferConditionsList", rt5.class);
                map5.put("MerchantsList", z95.class);
                map5.put("TextBlock", eq8.class);
                map5.put("OfferHeader", st5.class);
                map5.put("FullTerms", ch6.class);
                ws3Var.c(zh6.class, productOfferDeserializer);
                SelectionDetailsBlockDeserializer selectionDetailsBlockDeserializer = new SelectionDetailsBlockDeserializer(0);
                HashMap map6 = selectionDetailsBlockDeserializer.c;
                map6.put("SelectionHeader", in7.class);
                map6.put("OffersListTitle", yn7.class);
                map6.put("LoyaltyProgram", jn7.class);
                map6.put("CashbackRules", um7.class);
                map6.put("Merchant", un7.class);
                map6.put("Offer", vn7.class);
                ws3Var.c(fn7.class, selectionDetailsBlockDeserializer);
                ws3Var.c(ex.class, new AuthResponseDeserializer());
                ProfileDataFormQuestionsDeserializer profileDataFormQuestionsDeserializer = new ProfileDataFormQuestionsDeserializer();
                HashMap map7 = profileDataFormQuestionsDeserializer.b;
                map7.put("TEXT", yk6.a.i.class);
                map7.put("DATE", yk6.a.b.class);
                map7.put("SINGLE_CHOICE", yk6.a.h.class);
                map7.put("AREA", yk6.a.C0362a.class);
                map7.put("PHONE_EDIT", yk6.a.f.class);
                map7.put("SINGLE_CHOICE_DROPDOWN", yk6.a.c.class);
                ws3Var.c(yk6.a.g.class, profileDataFormQuestionsDeserializer);
                bVar.a(new xs3(new Gson(ws3Var)));
                bVar.d.add(new c97());
                return bVar.c();
            }
        }

        public final class s1 extends gh4 implements bm3<ze7, i36, mh1> {
            public static final s1 f = new s1(2);

            @Override // defpackage.bm3
            public final mh1 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (mh1) zc5.b(ze7Var2, i36Var, ze7Var2, mh1.class);
            }
        }
```

### Фрагмент, строки 1607–1686
```java
                String str = (String) ze7Var2.c("server_host");
                n67.b bVar = new n67.b();
                bVar.b(str.concat("/"));
                bVar.a = new OkHttpClient(onVar.c(true, true));
                bVar.a((i02.a) ay3.a.getValue());
                ws3 ws3Var = new ws3();
                TransferShowcaseDeserializer transferShowcaseDeserializer = new TransferShowcaseDeserializer();
                HashMap map = transferShowcaseDeserializer.b;
                map.put("REGISTER", k70.k.class);
                map.put("PHONE", k70.j.class);
                map.put("SBP_PHONE", k70.l.class);
                map.put("COMMON_CELL", k70.d.class);
                map.put("COMMON_BANNER", k70.c.class);
                map.put("MINI_LOGO_BANNER", k70.h.class);
                map.put("HEADER_LOGO_BANNERS", k70.f.class);
                map.put("TITLE", k70.m.class);
                ws3Var.c(k70.b.class, transferShowcaseDeserializer);
                PromoSelectCardDeserializer promoSelectCardDeserializer = new PromoSelectCardDeserializer();
                HashMap map2 = promoSelectCardDeserializer.b;
                map2.put("TITLE", wp6.j.class);
                map2.put(CodePackage.COMMON, wp6.i.class);
                map2.put("COMMON_RICH_PREVIEW", wp6.a.class);
                map2.put("MFO_RICH_PREVIEW", wp6.c.class);
                map2.put("MINI_LOGO_BANNER", wp6.d.class);
                map2.put("MINI_LOGO_TRANSFER_BANNER", wp6.e.class);
                map2.put("INFO", wp6.k.class);
                ws3Var.c(wp6.h.class, promoSelectCardDeserializer);
                OnboardingSlideDeserializer onboardingSlideDeserializer = new OnboardingSlideDeserializer();
                HashMap map3 = onboardingSlideDeserializer.b;
                map3.put("MULTI", jf5.class);
                map3.put("DEFAULT", ei2.class);
                ws3Var.c(fx5.class, onboardingSlideDeserializer);
                ProductsSelectionBlockDeserializer productsSelectionBlockDeserializer = new ProductsSelectionBlockDeserializer(0);
                HashMap map4 = productsSelectionBlockDeserializer.c;
                map4.put("MixedOffersSelection", gj6.class);
                map4.put("MerchantOffersSelection", fj6.class);
                ws3Var.c(ik6.class, productsSelectionBlockDeserializer);
                ProductOfferDeserializer productOfferDeserializer = new ProductOfferDeserializer(0);
                HashMap map5 = productOfferDeserializer.c;
                map5.put("LoyaltyProgram", dy4.class);
                map5.put("Cashback", j61.class);
                map5.put("OfferConditionsList", rt5.class);
                map5.put("MerchantsList", z95.class);
                map5.put("TextBlock", eq8.class);
                map5.put("OfferHeader", st5.class);
                map5.put("FullTerms", ch6.class);
                ws3Var.c(zh6.class, productOfferDeserializer);
                SelectionDetailsBlockDeserializer selectionDetailsBlockDeserializer = new SelectionDetailsBlockDeserializer(0);
                HashMap map6 = selectionDetailsBlockDeserializer.c;
                map6.put("SelectionHeader", in7.class);
                map6.put("OffersListTitle", yn7.class);
                map6.put("LoyaltyProgram", jn7.class);
                map6.put("CashbackRules", um7.class);
                map6.put("Merchant", un7.class);
                map6.put("Offer", vn7.class);
                ws3Var.c(fn7.class, selectionDetailsBlockDeserializer);
                ws3Var.c(ex.class, new AuthResponseDeserializer());
                ProfileDataFormQuestionsDeserializer profileDataFormQuestionsDeserializer = new ProfileDataFormQuestionsDeserializer();
                HashMap map7 = profileDataFormQuestionsDeserializer.b;
                map7.put("TEXT", yk6.a.i.class);
                map7.put("DATE", yk6.a.b.class);
                map7.put("SINGLE_CHOICE", yk6.a.h.class);
                map7.put("AREA", yk6.a.C0362a.class);
                map7.put("PHONE_EDIT", yk6.a.f.class);
                map7.put("SINGLE_CHOICE_DROPDOWN", yk6.a.c.class);
                ws3Var.c(yk6.a.g.class, profileDataFormQuestionsDeserializer);
                bVar.a(new xs3(new Gson(ws3Var)));
                bVar.d.add(new c97());
                return bVar.c();
            }
        }

        public final class s1 extends gh4 implements bm3<ze7, i36, mh1> {
            public static final s1 f = new s1(2);

            @Override // defpackage.bm3
            public final mh1 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (mh1) zc5.b(ze7Var2, i36Var, ze7Var2, mh1.class);
            }
        }
```

### Фрагмент, строки 1760–1778
```java
                String str = (String) ze7Var2.c("server_host");
                n67.b bVar = new n67.b();
                bVar.b(str.concat("/"));
                bVar.a = new OkHttpClient(onVar.c(false, true));
                bVar.a((i02.a) ay3.a.getValue());
                bVar.a(new xs3(new Gson()));
                bVar.d.add(new c97());
                return bVar.c();
            }
        }

        public final class t1 extends gh4 implements bm3<ze7, i36, l78> {
            public static final t1 f = new t1(2);

            @Override // defpackage.bm3
            public final l78 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (l78) zc5.b(ze7Var2, i36Var, ze7Var2, l78.class);
            }
        }
```

### Фрагмент, строки 1847–1860
```java
                defpackage.s0.c("KOIN: plain retrofit created");
                on onVar = on.b;
                return on.a((String) ze7Var2.c("server_host"), (OkHttpClient) ze7Var2.e(x07.a(OkHttpClient.class), null, p72.c));
            }
        }

        public final class u1 extends gh4 implements bm3<ze7, i36, ov2> {
            public static final u1 f = new u1(2);

            @Override // defpackage.bm3
            public final ov2 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (ov2) zc5.b(ze7Var2, i36Var, ze7Var2, ov2.class);
            }
        }
```

### Фрагмент, строки 1849–1860
```java
                return on.a((String) ze7Var2.c("server_host"), (OkHttpClient) ze7Var2.e(x07.a(OkHttpClient.class), null, p72.c));
            }
        }

        public final class u1 extends gh4 implements bm3<ze7, i36, ov2> {
            public static final u1 f = new u1(2);

            @Override // defpackage.bm3
            public final ov2 invoke(ze7 ze7Var, i36 i36Var) {
                ze7 ze7Var2 = ze7Var;
                return (ov2) zc5.b(ze7Var2, i36Var, ze7Var2, ov2.class);
            }
        }
```

## cv.java — API routes and request signatures

Путь: `apk_analysis/jadx/sources/defpackage/cv.java`

```java
package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface cv {
    @gn3("api/v2.1/users/agreements")
    Object a(e02<? super p99> e02Var);

    @z06("api/v2.1/users/signin/confirm/v2")
    Object b(@lk0 dx7 dx7Var, e02<? super a57<g3>> e02Var);

    @z06("api/v2.1/users/signin/v2")
    Object c(@lk0 ex7 ex7Var, e02<? super a57<ex>> e02Var);

    @z06("api/v2.1/users/email")
    Object d(@lk0 hw2 hw2Var, e02<? super a57<Object>> e02Var);

    @gn3("api/v2.1/users/policies")
    Object e(e02<? super List<aa9>> e02Var);

    @z06("api/v2.1/users/email/confirm")
    Object f(@lk0 s8 s8Var, e02<? super a57<g3>> e02Var);

    @z06("api/v2.1/users/signup/confirm/v2")
    Object g(@lk0 sc9 sc9Var, e02<? super a57<g3>> e02Var);
}
```

## ex7.java — sign-in request DTO

Путь: `apk_analysis/jadx/sources/defpackage/ex7.java`

```java
package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class ex7 {

    @bq7("phone")
    private final String a;

    @bq7("allowSmsNotifications")
    private final boolean b;

    @bq7("confirmType")
    private final dw1 c;

    @bq7("referral")
    private final String d;

    @bq7("fromOnboarding")
    private final Boolean e;

    public ex7(String str, boolean z, dw1 dw1Var, String str2, Boolean bool) {
        str.getClass();
        dw1Var.getClass();
        this.a = str;
        this.b = z;
        this.c = dw1Var;
        this.d = str2;
        this.e = bool;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ex7)) {
            return false;
        }
        ex7 ex7Var = (ex7) obj;
        return aa4.e(this.a, ex7Var.a) && this.b == ex7Var.b && this.c == ex7Var.c && aa4.e(this.d, ex7Var.d) && aa4.e(this.e, ex7Var.e);
    }

    public final int hashCode() {
        int iHashCode = (this.c.hashCode() + tg.c(this.a.hashCode() * 31, 31, this.b)) * 31;
        String str = this.d;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.e;
        return iHashCode2 + (bool != null ? bool.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        boolean z = this.b;
        dw1 dw1Var = this.c;
        String str2 = this.d;
        Boolean bool = this.e;
        StringBuilder sbB = p2.b("SignInRequestBody(phone=", str, ", allowSmsNotifications=", ", confirmType=", z);
        sbB.append(dw1Var);
        sbB.append(", referral=");
        sbB.append(str2);
        sbB.append(", fromOnboarding=");
        sbB.append(bool);
        sbB.append(")");
        return sbB.toString();
    }

    public /* synthetic */ ex7(String str, boolean z, dw1 dw1Var, String str2, Boolean bool, int i, jh2 jh2Var) {
        this(str, z, dw1Var, (i & 8) != 0 ? null : str2, (i & 16) != 0 ? null : bool);
    }
}
```

## xm1.java — confirmation request DTO

Путь: `apk_analysis/jadx/sources/defpackage/xm1.java`

```java
package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class xm1 {

    @bq7("code")
    private final String a;

    @bq7("confirmType")
    private final cw1 b;

    @bq7("objType")
    private final qc9 c;

    public xm1(String str, cw1 cw1Var, qc9 qc9Var) {
        str.getClass();
        cw1Var.getClass();
        qc9Var.getClass();
        this.a = str;
        this.b = cw1Var;
        this.c = qc9Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xm1)) {
            return false;
        }
        xm1 xm1Var = (xm1) obj;
        return aa4.e(this.a, xm1Var.a) && this.b == xm1Var.b && this.c == xm1Var.c;
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "CodeRequest(code=" + this.a + ", confirmType=" + this.b + ", objType=" + this.c + ")";
    }
}
```
