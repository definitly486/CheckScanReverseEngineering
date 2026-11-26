.class public final Lr81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr29;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr81$a;,
        Lr81$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/firebase/encoders/DataEncoder;

.field public final b:Landroid/net/ConnectivityManager;

.field public final c:Landroid/content/Context;

.field public final d:Ljava/net/URL;

.field public final e:Lhm1;

.field public final f:Lhm1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhm1;Lhm1;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    invoke-direct {v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;-><init>()V

    sget-object v1, Lrx;->a:Lrx;

    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->configureWith(Lcom/google/firebase/encoders/config/Configurator;)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues(Z)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->build()Lcom/google/firebase/encoders/DataEncoder;

    move-result-object v0

    iput-object v0, p0, Lr81;->a:Lcom/google/firebase/encoders/DataEncoder;

    iput-object p1, p0, Lr81;->c:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lr81;->b:Landroid/net/ConnectivityManager;

    sget-object p1, Lkx0;->c:Ljava/lang/String;

    invoke-static {p1}, Lr81;->c(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lr81;->d:Ljava/net/URL;

    iput-object p3, p0, Lr81;->e:Lhm1;

    iput-object p2, p0, Lr81;->f:Lhm1;

    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Invalid url: "

    invoke-static {v1, p0}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lsy;)Lsy;
    .locals 7

    iget-object v0, p0, Lr81;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {p1}, Lz03;->m()Lsy$a;

    move-result-object p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p1, Lsy$a;->f:Ljava/util/HashMap;

    const/4 v3, 0x0

    const-string v4, "Property \"autoMetadata\" has not been set"

    if-eqz v2, :cond_8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "sdk-version"

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lz03$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hardware"

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lz03$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lz03$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "product"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lz03$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "os-uild"

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lz03$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lz03$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fingerprint"

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lz03$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    iget-object v5, p1, Lsy$a;->f:Ljava/util/HashMap;

    if-eqz v5, :cond_7

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tz-offset"

    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_0

    sget-object v1, Lhm5$b;->NONE:Lhm5$b;

    invoke-virtual {v1}, Lhm5$b;->d()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    :goto_0
    iget-object v2, p1, Lsy$a;->f:Ljava/util/HashMap;

    if-eqz v2, :cond_6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "net-type"

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_1

    sget-object v0, Lhm5$a;->UNKNOWN_MOBILE_SUBTYPE:Lhm5$a;

    invoke-virtual {v0}, Lhm5$a;->d()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    if-ne v0, v2, :cond_2

    sget-object v0, Lhm5$a;->COMBINED:Lhm5$a;

    invoke-virtual {v0}, Lhm5$a;->d()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lhm5$a;->a(I)Lhm5$a;

    move-result-object v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    iget-object v5, p1, Lsy$a;->f:Ljava/util/HashMap;

    if-eqz v5, :cond_5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "mobile-subtype"

    invoke-virtual {v5, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v3, "country"

    invoke-virtual {p1, v3, v0}, Lz03$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "locale"

    invoke-virtual {p1, v3, v0}, Lz03$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "phone"

    iget-object p0, p0, Lr81;->c:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, ""

    :goto_2
    const-string v3, "mcc_mnc"

    invoke-virtual {p1, v3, v0}, Lz03$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget v2, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string v0, "CctTransportBackend"

    const-string v1, "Unable to find version code for package"

    invoke-static {v0, v1, p0}, Lhv4;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "application_build"

    invoke-virtual {p1, v0, p0}, Lz03$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lsy$a;->b()Lsy;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {v4}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_6
    invoke-static {v4}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_7
    invoke-static {v4}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_8
    invoke-static {v4}, Lah;->f(Ljava/lang/String;)V

    return-object v3
.end method

.method public final b(Lly;)Lmy;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, v1, Lly;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz03;

    invoke-virtual {v4}, Lz03;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v6, "CctTransportBackend"

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lz03;

    sget-object v18, Lvu6;->DEFAULT:Lvu6;

    iget-object v9, v0, Lr81;->f:Lhm1;

    invoke-interface {v9}, Lhm1;->getTime()J

    move-result-wide v10

    iget-object v9, v0, Lr81;->e:Lhm1;

    invoke-interface {v9}, Lhm1;->getTime()J

    move-result-wide v12

    sget-object v9, Lwl1$a;->ANDROID_FIREBASE:Lwl1$a;

    const-string v14, "sdk-version"

    invoke-virtual {v8, v14}, Lz03;->h(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-string v14, "model"

    invoke-virtual {v8, v14}, Lz03;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v14, "hardware"

    invoke-virtual {v8, v14}, Lz03;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v14, "device"

    invoke-virtual {v8, v14}, Lz03;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v14, "product"

    invoke-virtual {v8, v14}, Lz03;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v14, "os-uild"

    invoke-virtual {v8, v14}, Lz03;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v14, "manufacturer"

    invoke-virtual {v8, v14}, Lz03;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v14, "fingerprint"

    invoke-virtual {v8, v14}, Lz03;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v14, "country"

    invoke-virtual {v8, v14}, Lz03;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v14, "locale"

    invoke-virtual {v8, v14}, Lz03;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v14, "mcc_mnc"

    invoke-virtual {v8, v14}, Lz03;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v14, "application_build"

    invoke-virtual {v8, v14}, Lz03;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    new-instance v19, Lky;

    invoke-direct/range {v19 .. v31}, Lky;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v19

    new-instance v14, Loy;

    invoke-direct {v14, v9, v8}, Loy;-><init>(Lwl1$a;Lky;)V

    :try_start_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v15, v8

    const/16 v16, 0x0

    goto :goto_2

    :catch_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v16, v8

    const/4 v15, 0x0

    :goto_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lz03;

    const/16 v17, 0x0

    invoke-virtual {v9}, Lz03;->d()Lsx2;

    move-result-object v7

    iget-object v5, v7, Lsx2;->a:Liy2;

    iget-object v7, v7, Lsx2;->b:[B

    move-object/from16 v20, v2

    new-instance v2, Liy2;

    move-object/from16 v21, v4

    const-string v4, "proto"

    invoke-direct {v2, v4}, Liy2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Liy2;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lyy$a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v7, v2, Lyy$a;->e:[B

    goto :goto_4

    :cond_2
    new-instance v2, Liy2;

    const-string v4, "json"

    invoke-direct {v2, v4}, Liy2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Liy2;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v7, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v4, Lyy$a;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v2, v4, Lyy$a;->f:Ljava/lang/String;

    move-object v2, v4

    :goto_4
    invoke-virtual {v9}, Lz03;->e()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Lyy$a;->a:Ljava/lang/Long;

    invoke-virtual {v9}, Lz03;->l()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Lyy$a;->d:Ljava/lang/Long;

    const-string v4, "tz-offset"

    invoke-virtual {v9}, Lz03;->b()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_3

    const-wide/16 v4, 0x0

    goto :goto_5

    :cond_3
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_5
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Lyy$a;->g:Ljava/lang/Long;

    const-string v4, "net-type"

    invoke-virtual {v9, v4}, Lz03;->h(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lhm5$b;->a(I)Lhm5$b;

    move-result-object v4

    const-string v5, "mobile-subtype"

    invoke-virtual {v9, v5}, Lz03;->h(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lhm5$a;->a(I)Lhm5$a;

    move-result-object v5

    new-instance v7, Lbz;

    invoke-direct {v7, v4, v5}, Lbz;-><init>(Lhm5$b;Lhm5$a;)V

    iput-object v7, v2, Lyy$a;->h:Lbz;

    invoke-virtual {v9}, Lz03;->c()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v9}, Lz03;->c()Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lyy$a;->b:Ljava/lang/Integer;

    :cond_4
    invoke-virtual {v9}, Lz03;->i()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v9}, Lz03;->i()Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lvy;

    invoke-direct {v5, v4}, Lvy;-><init>(Ljava/lang/Integer;)V

    new-instance v4, Lwy;

    invoke-direct {v4, v5}, Lwy;-><init>(Lvy;)V

    sget-object v5, Lgr1$a;->EVENT_OVERRIDE:Lgr1$a;

    new-instance v7, Lpy;

    invoke-direct {v7, v4, v5}, Lpy;-><init>(Lwy;Lgr1$a;)V

    iput-object v7, v2, Lyy$a;->c:Lpy;

    :cond_5
    invoke-virtual {v9}, Lz03;->f()[B

    move-result-object v4

    if-nez v4, :cond_6

    invoke-virtual {v9}, Lz03;->g()[B

    move-result-object v4

    if-eqz v4, :cond_9

    :cond_6
    invoke-virtual {v9}, Lz03;->f()[B

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v9}, Lz03;->f()[B

    move-result-object v4

    goto :goto_6

    :cond_7
    move-object/from16 v4, v17

    :goto_6
    invoke-virtual {v9}, Lz03;->g()[B

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v9}, Lz03;->g()[B

    move-result-object v5

    goto :goto_7

    :cond_8
    move-object/from16 v5, v17

    :goto_7
    new-instance v7, Luy;

    invoke-direct {v7, v4, v5}, Luy;-><init>([B[B)V

    iput-object v7, v2, Lyy$a;->i:Luy;

    :cond_9
    iget-object v4, v2, Lyy$a;->a:Ljava/lang/Long;

    if-nez v4, :cond_a

    const-string v4, " eventTimeMs"

    goto :goto_8

    :cond_a
    const-string v4, ""

    :goto_8
    iget-object v5, v2, Lyy$a;->d:Ljava/lang/Long;

    if-nez v5, :cond_b

    const-string v5, " eventUptimeMs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_b
    iget-object v5, v2, Lyy$a;->g:Ljava/lang/Long;

    if-nez v5, :cond_c

    const-string v5, " timezoneOffsetSeconds"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_c
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e

    new-instance v22, Lyy;

    iget-object v4, v2, Lyy$a;->a:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    iget-object v4, v2, Lyy$a;->b:Ljava/lang/Integer;

    iget-object v5, v2, Lyy$a;->c:Lpy;

    iget-object v7, v2, Lyy$a;->d:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    iget-object v7, v2, Lyy$a;->e:[B

    iget-object v9, v2, Lyy$a;->f:Ljava/lang/String;

    move-object/from16 v25, v4

    iget-object v4, v2, Lyy$a;->g:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    iget-object v4, v2, Lyy$a;->h:Lbz;

    iget-object v2, v2, Lyy$a;->i:Luy;

    move-object/from16 v34, v2

    move-object/from16 v33, v4

    move-object/from16 v26, v5

    move-object/from16 v29, v7

    move-object/from16 v30, v9

    invoke-direct/range {v22 .. v34}, Lyy;-><init>(JLjava/lang/Integer;Lgr1;J[BLjava/lang/String;JLhm5;Lp33;)V

    move-object/from16 v2, v22

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_9
    move-object/from16 v2, v20

    move-object/from16 v4, v21

    goto/16 :goto_3

    :cond_e
    const-string v0, "Missing required properties:"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v17

    :cond_f
    const-string v2, "TRuntime."

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_d

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Received event of unsupported encoding "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ". Skipping..."

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_10
    move-object/from16 v20, v2

    new-instance v9, Lzy;

    move-object/from16 v17, v8

    invoke-direct/range {v9 .. v18}, Lzy;-><init>(JJLoy;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;Lvu6;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_11
    const/4 v4, 0x5

    const/16 v17, 0x0

    new-instance v2, Lny;

    invoke-direct {v2, v3}, Lny;-><init>(Ljava/util/ArrayList;)V

    iget-object v1, v1, Lly;->b:[B

    const-wide/16 v7, -0x1

    iget-object v3, v0, Lr81;->d:Ljava/net/URL;

    if-eqz v1, :cond_13

    :try_start_1
    invoke-static {v1}, Lkx0;->a([B)Lkx0;

    move-result-object v1

    iget-object v5, v1, Lkx0;->b:Ljava/lang/String;

    if-eqz v5, :cond_12

    goto :goto_a

    :cond_12
    move-object/from16 v5, v17

    :goto_a
    iget-object v1, v1, Lkx0;->a:Ljava/lang/String;

    if-eqz v1, :cond_14

    invoke-static {v1}, Lr81;->c(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :catch_1
    new-instance v0, Lmy;

    sget-object v1, Lf00$a;->FATAL_ERROR:Lf00$a;

    invoke-direct {v0, v1, v7, v8}, Lmy;-><init>(Lf00$a;J)V

    return-object v0

    :cond_13
    move-object/from16 v5, v17

    :cond_14
    :goto_b
    :try_start_2
    new-instance v1, Lr81$a;

    invoke-direct {v1, v3, v2, v5}, Lr81$a;-><init>(Ljava/net/URL;Lny;Ljava/lang/String;)V

    new-instance v2, Lif1;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lif1;-><init>(Ljava/lang/Object;I)V

    move v5, v4

    :cond_15
    invoke-virtual {v2, v1}, Lif1;->a(Lr81$a;)Lr81$b;

    move-result-object v0

    iget-object v3, v0, Lr81$b;->b:Ljava/net/URL;

    if-eqz v3, :cond_16

    const-string v4, "Following redirect to: %s"

    invoke-static {v3, v6, v4}, Lhv4;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lr81$a;

    iget-object v9, v1, Lr81$a;->b:Lny;

    iget-object v1, v1, Lr81$a;->c:Ljava/lang/String;

    invoke-direct {v4, v3, v9, v1}, Lr81$a;-><init>(Ljava/net/URL;Lny;Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_c

    :cond_16
    move-object/from16 v1, v17

    :goto_c
    if-eqz v1, :cond_17

    add-int/lit8 v5, v5, -0x1

    const/4 v3, 0x1

    if-ge v5, v3, :cond_15

    :cond_17
    iget v1, v0, Lr81$b;->a:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_18

    iget-wide v0, v0, Lr81$b;->c:J

    new-instance v2, Lmy;

    sget-object v3, Lf00$a;->OK:Lf00$a;

    invoke-direct {v2, v3, v0, v1}, Lmy;-><init>(Lf00$a;J)V

    return-object v2

    :catch_2
    move-exception v0

    goto :goto_e

    :cond_18
    const/16 v0, 0x1f4

    if-ge v1, v0, :cond_1b

    const/16 v0, 0x194

    if-ne v1, v0, :cond_19

    goto :goto_d

    :cond_19
    const/16 v0, 0x190

    if-ne v1, v0, :cond_1a

    new-instance v0, Lmy;

    sget-object v1, Lf00$a;->INVALID_PAYLOAD:Lf00$a;

    invoke-direct {v0, v1, v7, v8}, Lmy;-><init>(Lf00$a;J)V

    return-object v0

    :cond_1a
    new-instance v0, Lmy;

    sget-object v1, Lf00$a;->FATAL_ERROR:Lf00$a;

    invoke-direct {v0, v1, v7, v8}, Lmy;-><init>(Lf00$a;J)V

    return-object v0

    :cond_1b
    :goto_d
    new-instance v0, Lmy;

    sget-object v1, Lf00$a;->TRANSIENT_ERROR:Lf00$a;

    invoke-direct {v0, v1, v7, v8}, Lmy;-><init>(Lf00$a;J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :goto_e
    const-string v1, "Could not make request to the backend"

    invoke-static {v6, v1, v0}, Lhv4;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v0, Lmy;

    sget-object v1, Lf00$a;->TRANSIENT_ERROR:Lf00$a;

    invoke-direct {v0, v1, v7, v8}, Lmy;-><init>(Lf00$a;J)V

    return-object v0
.end method
