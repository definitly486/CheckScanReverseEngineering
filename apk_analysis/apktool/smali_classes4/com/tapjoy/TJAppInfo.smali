.class public final Lcom/tapjoy/TJAppInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/tapjoy/TJAppInfo;

.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/Integer;

.field public static final g:Ljava/lang/Integer;

.field public static final h:Ljava/lang/Integer;

.field public static final i:Ljava/lang/Boolean;

.field public static final j:Ljava/lang/Boolean;

.field public static k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static final n:Lcom/tapjoy/TJKeyValueStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/tapjoy/TJAppInfo;

    invoke-direct {v0}, Lcom/tapjoy/TJAppInfo;-><init>()V

    sput-object v0, Lcom/tapjoy/TJAppInfo;->INSTANCE:Lcom/tapjoy/TJAppInfo;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v1, Lcom/tapjoy/TJKeyValueStorage;

    const-string v2, "tjcPrefrences"

    invoke-direct {v1, v0, v2}, Lcom/tapjoy/TJKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/tapjoy/TJAppInfo;->n:Lcom/tapjoy/TJKeyValueStorage;

    new-instance v2, Lcom/tapjoy/TJPreferencesMigration;

    const-string v3, "fiverocks"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "it"

    const-string v6, "pref_installed"

    invoke-static {v5, v6}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lkx2;->b:Lkx2;

    invoke-direct {v2, v1, v3, v5, v6}, Lcom/tapjoy/TJPreferencesMigration;-><init>(Lcom/tapjoy/TJKeyValueStorage;Landroid/content/SharedPreferences;Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {v2}, Lcom/tapjoy/TJPreferencesMigration;->migrateAllKeysIfExists()V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tapjoy/TJAppInfo;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x1c

    const/4 v5, 0x0

    :try_start_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v3, :cond_0

    const/high16 v6, 0x8000000

    invoke-virtual {v1, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v6}, Lfh;->b(Landroid/content/pm/PackageInfo;)Landroid/content/pm/SigningInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/16 v6, 0x40

    invoke-virtual {v1, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_3

    array-length v7, v6

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    :try_start_1
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v7, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lti0;->f(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    :goto_1
    move-object v6, v5

    :goto_2
    sput-object v6, Lcom/tapjoy/TJAppInfo;->d:Ljava/lang/String;

    sget-object v6, Lcom/tapjoy/TJAppInfo;->INSTANCE:Lcom/tapjoy/TJAppInfo;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    :cond_4
    move-object v6, v5

    :goto_3
    sput-object v6, Lcom/tapjoy/TJAppInfo;->e:Ljava/lang/String;

    sget-object v6, Lcom/tapjoy/TJAppInfo;->INSTANCE:Lcom/tapjoy/TJAppInfo;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_3
    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v3, :cond_5

    invoke-virtual {v6}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v6

    long-to-int v3, v6

    goto :goto_4

    :cond_5
    iget v3, v6, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move v3, v4

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/TJAppInfo;->f:Ljava/lang/Integer;

    sget-object v3, Lcom/tapjoy/TJAppInfo;->INSTANCE:Lcom/tapjoy/TJAppInfo;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1e

    if-lt v3, v6, :cond_6

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    :cond_7
    move-object v3, v5

    :goto_5
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    sput-object v3, Lcom/tapjoy/TJAppInfo;->b:Ljava/lang/String;

    :cond_8
    :try_start_5
    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v3, Lcom/tapjoy/TJAppInfo;->a:Ljava/lang/String;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/TJAppInfo;->g:Ljava/lang/Integer;

    sget-object v3, Lcom/tapjoy/TJAppInfo;->INSTANCE:Lcom/tapjoy/TJAppInfo;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sput-object v6, Lcom/tapjoy/TJAppInfo;->h:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "com.tapjoy.TJAdUnitActivity"

    invoke-static {v1, v2, v3}, Lcom/tapjoy/TJAppInfo;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/TJAppInfo;->i:Ljava/lang/Boolean;

    const-string v3, "com.tapjoy.TJWebViewActivity"

    invoke-static {v1, v2, v3}, Lcom/tapjoy/TJAppInfo;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/TJAppInfo;->j:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-static {v0, v1}, Landroid/content/pm/ApplicationInfo;->getCategoryTitle(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_9
    sput-object v5, Lcom/tapjoy/TJAppInfo;->l:Ljava/lang/String;

    :cond_a
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result p0

    sget p1, Lcom/tapjoy/sdk/R$style;->TranslucentTheme:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public final getAdUnitThemeChanged()Ljava/lang/Boolean;
    .locals 0

    sget-object p0, Lcom/tapjoy/TJAppInfo;->i:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getAppCategory()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/tapjoy/TJAppInfo;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final getAppGroupId()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/tapjoy/TJAppInfo;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final getAppVersion()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/tapjoy/TJAppInfo;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getInstallTime()J
    .locals 5

    sget-object p0, Lcom/tapjoy/TJAppInfo;->n:Lcom/tapjoy/TJKeyValueStorage;

    const-string v0, "pref_installed"

    const-wide/16 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0, v1, v2}, Lcom/tapjoy/TJKeyValueStorage;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    cmp-long v1, v3, v1

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz p0, :cond_1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-wide v1

    :cond_2
    return-wide v3
.end method

.method public final getInstaller()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/tapjoy/TJAppInfo;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getManagedDeviceID()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/tapjoy/TJAppInfo;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final getMinSdkVersion()Ljava/lang/Integer;
    .locals 0

    sget-object p0, Lcom/tapjoy/TJAppInfo;->h:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getPkgId()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/tapjoy/TJAppInfo;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getPkgRev()Ljava/lang/Integer;
    .locals 0

    sget-object p0, Lcom/tapjoy/TJAppInfo;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getPkgSign()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/tapjoy/TJAppInfo;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getPkgVer()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/tapjoy/TJAppInfo;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getTargetSdkVersion()Ljava/lang/Integer;
    .locals 0

    sget-object p0, Lcom/tapjoy/TJAppInfo;->g:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getWebThemeChanged()Ljava/lang/Boolean;
    .locals 0

    sget-object p0, Lcom/tapjoy/TJAppInfo;->j:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setAppGroupId(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/tapjoy/TJAppInfo;->k:Ljava/lang/String;

    return-void
.end method

.method public final setManagedDeviceID(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/tapjoy/TJAppInfo;->m:Ljava/lang/String;

    return-void
.end method
