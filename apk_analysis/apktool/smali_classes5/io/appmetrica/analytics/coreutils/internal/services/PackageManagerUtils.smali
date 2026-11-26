.class public final Lio/appmetrica/analytics/coreutils/internal/services/PackageManagerUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/appmetrica/analytics/coreutils/internal/services/PackageManagerUtils;

.field private static final a:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/services/PackageManagerUtils;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/services/PackageManagerUtils;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/coreutils/internal/services/PackageManagerUtils;->INSTANCE:Lio/appmetrica/analytics/coreutils/internal/services/PackageManagerUtils;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/coreutils/internal/services/PackageManagerUtils;->a:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAppVersionCodeInt(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/services/PackageManagerUtils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final getAppVersionCodeString(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/services/PackageManagerUtils;->getAppVersionCodeInt(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/services/PackageManagerUtils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const-string p0, "0.0"

    return-object p0
.end method

.method public static final getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/coreutils/internal/services/PackageManagerUtils;->a:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final getServiceInfo(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/pm/ServiceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/content/pm/ServiceInfo;"
        }
    .end annotation

    sget-object v0, Lio/appmetrica/analytics/coreutils/internal/services/PackageManagerUtils;->a:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x4

    invoke-virtual {v0, p0, v1, p1}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->getServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final hasContentProvider(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lio/appmetrica/analytics/coreutils/internal/services/PackageManagerUtils;->resolveContentProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final resolveContentProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ProviderInfo;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/coreutils/internal/services/PackageManagerUtils;->a:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    invoke-virtual {v0, p0, p1}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->resolveContentProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    return-object p0
.end method
