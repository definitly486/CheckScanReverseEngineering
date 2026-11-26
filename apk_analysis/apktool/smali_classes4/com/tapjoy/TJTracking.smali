.class public final Lcom/tapjoy/TJTracking;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/tapjoy/TJTracking;

.field public static a:Ljava/lang/String; = null

.field public static b:Ljava/lang/String; = null

.field public static c:Ljava/lang/String; = ""

.field public static d:Ljava/lang/String; = ""

.field public static e:Ljava/lang/String; = ""

.field public static f:Ljava/lang/String; = ""

.field public static g:Ljava/lang/String; = ""

.field public static h:Z

.field public static i:Z

.field public static j:Z

.field public static k:Z

.field public static l:J

.field public static m:I

.field public static n:Z

.field public static o:Z

.field public static p:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

.field public static q:Landroid/content/SharedPreferences;

.field public static final r:Lcl4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tapjoy/TJTracking;

    invoke-direct {v0}, Lcom/tapjoy/TJTracking;-><init>()V

    sput-object v0, Lcom/tapjoy/TJTracking;->INSTANCE:Lcom/tapjoy/TJTracking;

    new-instance v0, Leb7;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Leb7;-><init>(I)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    sput-object v1, Lcom/tapjoy/TJTracking;->r:Lcl4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 229
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Landroid/content/Context;)V
    .locals 2

    .line 227
    :try_start_0
    sget-object v0, Lcom/tapjoy/TJTracking;->INSTANCE:Lcom/tapjoy/TJTracking;

    invoke-virtual {v0}, Lcom/tapjoy/TJTracking;->isLegacyIdFallbackAllowed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/tapjoy/TJTracking;->a(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 228
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error fetching advertising id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/tapjoy/TJTracking;->q:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    const-string v1, "tapjoyInstallId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    sput-object v2, Lcom/tapjoy/TJTracking;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v2, Lcom/tapjoy/TJTracking;->d:Ljava/lang/String;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/tapjoy/TJTracking;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error generating install id: "

    invoke-static {v1, v0}, Ljg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    sget-object v0, Lcom/tapjoy/TJTracking;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/tapjoy/TJTracking;->q:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    const-string v1, "tapjoyTestId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    sput-object v2, Lcom/tapjoy/TJTracking;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v2, Lcom/tapjoy/TJTracking;->f:Ljava/lang/String;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/tapjoy/TJTracking;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error generating test id: "

    invoke-static {v1, v0}, Ljg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    sget-object v0, Lcom/tapjoy/TJTracking;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Z)V
    .locals 7

    const-string v0, "Error getting device\'s Google Play Services version"

    const-string v1, "Device\'s Google Play Services version: "

    const-string v2, "Looking for Google Play Services..."

    invoke-static {v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    sget-boolean v2, Lcom/tapjoy/TJTracking;->j:Z

    if-eqz v2, :cond_8

    sget-boolean v2, Lcom/tapjoy/TJTracking;->k:Z

    if-eqz v2, :cond_8

    const-string v2, "Packaged Google Play Services found, fetching advertisingID..."

    invoke-static {v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    sget v2, Lcom/tapjoy/TJTracking;->m:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Packaged Google Play Services version: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/TJTracking;->isAdvertisingIdAllowed()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v2

    sput-object v2, Lcom/tapjoy/TJTracking;->p:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :catch_0
    :cond_0
    move v2, v4

    :goto_0
    sput-boolean v2, Lcom/tapjoy/TJTracking;->i:Z

    :try_start_1
    sget-wide v5, Lcom/tapjoy/TJTracking;->l:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    :goto_1
    :try_start_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v5, 0x1c

    const-string v6, "com.google.android.gms"

    if-lt v2, v5, :cond_1

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v6, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v6, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v5, p1

    :goto_2
    sput-wide v5, Lcom/tapjoy/TJTracking;->l:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    :goto_3
    sget-boolean p1, Lcom/tapjoy/TJTracking;->i:Z

    const-string v0, ""

    if-eqz p1, :cond_5

    sget-object p0, Lcom/tapjoy/TJTracking;->p:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_4

    :cond_2
    move-object v0, p0

    :cond_3
    :goto_4
    sput-object v0, Lcom/tapjoy/TJTracking;->c:Ljava/lang/String;

    sget-object p0, Lcom/tapjoy/TJTracking;->p:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p0

    goto :goto_5

    :cond_4
    move p0, v3

    :goto_5
    xor-int/2addr p0, v3

    sput-boolean p0, Lcom/tapjoy/TJTracking;->h:Z

    sget-object p0, Lcom/tapjoy/TJTracking;->c:Ljava/lang/String;

    const-string p1, "Found advertising ID: "

    invoke-static {p1, p0}, Ljg;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p0, Lcom/tapjoy/TJTracking;->h:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Is ad tracking enabled: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    goto :goto_6

    :cond_5
    const-string p1, "Error getting advertisingID from Google Play Services"

    invoke-static {p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_7

    sput-boolean v4, Lcom/tapjoy/TJTracking;->h:Z

    invoke-virtual {p0}, Lcom/tapjoy/TJTracking;->isAdvertisingIdAllowed()Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "00000000-0000-0000-0000-000000000000"

    sput-object p0, Lcom/tapjoy/TJTracking;->c:Ljava/lang/String;

    sput-boolean v3, Lcom/tapjoy/TJTracking;->i:Z

    goto :goto_6

    :cond_6
    sput-object v0, Lcom/tapjoy/TJTracking;->c:Ljava/lang/String;

    sput-boolean v4, Lcom/tapjoy/TJTracking;->i:Z

    :cond_7
    :goto_6
    return-void

    :cond_8
    const-string p0, "Google Play Services not found"

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final fetchAdvertisingID(Landroid/content/Context;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/tapjoy/TJTracking;->r:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lal;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lal;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public final getAdIdCheckDisabled()Z
    .locals 0

    sget-boolean p0, Lcom/tapjoy/TJTracking;->n:Z

    return p0
.end method

.method public final getAdTrackingEnableIfPresent()Z
    .locals 0

    invoke-virtual {p0}, Lcom/tapjoy/TJTracking;->isAdvertisingIdPresent()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/tapjoy/TJTracking;->h:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getAdvertisingID()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/tapjoy/TJTracking;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getAdvertisingIdIfAllowed()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/tapjoy/TJTracking;->isAdvertisingIdPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tapjoy/TJTracking;->isAdvertisingIdAllowed()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/tapjoy/TJTracking;->c:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public final getAndroidID()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/tapjoy/TJTracking;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getAndroidIDIfAllowed()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/tapjoy/TJTracking;->isLegacyIdFallbackAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tapjoy/TJTracking;->isAdvertisingIdPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/TJTracking;->isGooglePlayServiceIntegrated()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    sget-object p0, Lcom/tapjoy/TJTracking;->e:Ljava/lang/String;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAppSetID()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/tapjoy/TJTracking;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final getDeviceGpsVersion()Ljava/lang/Long;
    .locals 4

    sget-wide v0, Lcom/tapjoy/TJTracking;->l:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getInstallID()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/tapjoy/TJTracking;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getLegacyIdFallbackAllowed()Z
    .locals 0

    sget-boolean p0, Lcom/tapjoy/TJTracking;->o:Z

    return p0
.end method

.method public final getLevelPlayAuid()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/tapjoy/TJTracking;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getOptOutAdvertisingID(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "tjcPrefrences"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    sput-object p1, Lcom/tapjoy/TJTracking;->q:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/tapjoy/TJTracking;->isAdvertisingIdAllowed()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final getPackagedGpsVersion()Ljava/lang/Integer;
    .locals 0

    sget p0, Lcom/tapjoy/TJTracking;->m:I

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTestID()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/tapjoy/TJTracking;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final getUnityAdsIdfi()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/tapjoy/TJTracking;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final init()V
    .locals 4

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnectCore;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string v0, "tjcPrefrences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TJTracking;->q:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/tapjoy/TJTracking;->INSTANCE:Lcom/tapjoy/TJTracking;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "9774d56d682e549c"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    sput-object v0, Lcom/tapjoy/TJTracking;->e:Ljava/lang/String;

    invoke-static {}, Lcom/tapjoy/TJTracking;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TJTracking;->d:Ljava/lang/String;

    invoke-static {}, Lcom/tapjoy/TJTracking;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TJTracking;->f:Ljava/lang/String;

    const-string v0, "unityads-installinfo"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "unityads-idfi"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TJTracking;->a:Ljava/lang/String;

    const-string v0, "supersonic_shared_preferen"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "auid"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TJTracking;->b:Ljava/lang/String;

    sget-boolean v0, Lcom/tapjoy/TJTracking;->j:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v3, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    sput-boolean v2, Lcom/tapjoy/TJTracking;->j:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sput-boolean v1, Lcom/tapjoy/TJTracking;->j:Z

    goto :goto_1

    :catch_1
    sput-boolean v1, Lcom/tapjoy/TJTracking;->j:Z

    :cond_1
    :goto_1
    sget-boolean v0, Lcom/tapjoy/TJTracking;->k:Z

    if-nez v0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x80

    invoke-virtual {v0, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.google.android.gms.version"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/tapjoy/TJTracking;->m:I

    sput-boolean v2, Lcom/tapjoy/TJTracking;->k:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    sput-boolean v1, Lcom/tapjoy/TJTracking;->k:Z

    :cond_2
    :goto_2
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object p0

    const-string v0, "TJC_OPTION_ALLOW_LEGACY_ID_FALLBACK"

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "true"

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_3

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    sput-boolean p0, Lcom/tapjoy/TJTracking;->o:Z

    :cond_3
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object p0

    const-string v0, "TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK"

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_4

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    sput-boolean p0, Lcom/tapjoy/TJTracking;->n:Z

    :cond_4
    return-void
.end method

.method public final isAdvertisingIdAllowed()Z
    .locals 3

    sget-object p0, Lcom/tapjoy/TJTracking;->q:Landroid/content/SharedPreferences;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    const-string v1, "optout_advertising_id"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/tapjoy/TJTracking;->q:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :cond_0
    xor-int/lit8 p0, v2, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public final isAdvertisingIdPresent()Z
    .locals 0

    sget-object p0, Lcom/tapjoy/TJTracking;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isAndroidIdPresent()Z
    .locals 0

    sget-object p0, Lcom/tapjoy/TJTracking;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isGooglePlayServiceIntegrated()Z
    .locals 1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object p0

    const-string v0, "TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK"

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean v0, Lcom/tapjoy/TJTracking;->j:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/tapjoy/TJTracking;->k:Z

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p0, :cond_2

    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isGpsAvailable()Z
    .locals 0

    sget-boolean p0, Lcom/tapjoy/TJTracking;->j:Z

    return p0
.end method

.method public final isGpsManifestConfigured()Z
    .locals 0

    sget-boolean p0, Lcom/tapjoy/TJTracking;->k:Z

    return p0
.end method

.method public final isLegacyIdFallbackAllowed()Z
    .locals 1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object p0

    const-string v0, "TJC_OPTION_ALLOW_LEGACY_ID_FALLBACK"

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    invoke-static {p0, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final optOutAdvertisingID(Landroid/content/Context;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "tjcPrefrences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "optout_advertising_id"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    invoke-static {}, Lcom/tapjoy/Tapjoy;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p2, :cond_4

    sget-object p2, Lcom/tapjoy/TJTracking;->c:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/tapjoy/TJTracking;->c:Ljava/lang/String;

    const-string v0, "00000000-0000-0000-0000-000000000000"

    invoke-static {p2, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJTracking;->fetchAdvertisingID(Landroid/content/Context;)Ljava/util/concurrent/Future;

    return-void

    :cond_4
    const-string p0, ""

    sput-object p0, Lcom/tapjoy/TJTracking;->c:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public final setAppSetID(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p1, Lcom/tapjoy/TJTracking;->g:Ljava/lang/String;

    return-void
.end method
