.class public final Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Boolean;Lll3;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :catchall_0
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final getActivityInfo(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/coreutils/impl/b;

    invoke-direct {p0, p1, p2, p3}, Lio/appmetrica/analytics/coreutils/impl/b;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->a(Ljava/lang/Boolean;Lll3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method public final getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/coreutils/impl/c;

    invoke-direct {p0, p1, p2, p3}, Lio/appmetrica/analytics/coreutils/impl/c;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->a(Ljava/lang/Boolean;Lll3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public final getApplicationMetaData(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/coreutils/impl/d;

    invoke-direct {v0, p0, p1}, Lio/appmetrica/analytics/coreutils/impl/d;-><init>(Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-static {p0, v0}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->a(Ljava/lang/Boolean;Lll3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method public final getInstallerPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/coreutils/impl/e;

    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/coreutils/impl/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->a(Ljava/lang/Boolean;Lll3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, p1, p2, v0}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/coreutils/impl/f;

    invoke-direct {p0, p1, p2, p3}, Lio/appmetrica/analytics/coreutils/impl/f;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->a(Ljava/lang/Boolean;Lll3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInfo;

    return-object p0
.end method

.method public final getServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/coreutils/impl/g;

    invoke-direct {p0, p1, p2, p3}, Lio/appmetrica/analytics/coreutils/impl/g;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->a(Ljava/lang/Boolean;Lll3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ServiceInfo;

    return-object p0
.end method

.method public final hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v0, Lio/appmetrica/analytics/coreutils/impl/h;

    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/coreutils/impl/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->a(Ljava/lang/Boolean;Lll3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final resolveActivity(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/coreutils/impl/i;

    invoke-direct {p0, p1, p2, p3}, Lio/appmetrica/analytics/coreutils/impl/i;-><init>(Landroid/content/Context;Landroid/content/Intent;I)V

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->a(Ljava/lang/Boolean;Lll3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    return-object p0
.end method

.method public final resolveContentProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ProviderInfo;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/coreutils/impl/j;

    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/coreutils/impl/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->a(Ljava/lang/Boolean;Lll3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ProviderInfo;

    return-object p0
.end method

.method public final resolveService(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/coreutils/impl/k;

    invoke-direct {p0, p1, p2, p3}, Lio/appmetrica/analytics/coreutils/impl/k;-><init>(Landroid/content/Context;Landroid/content/Intent;I)V

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->a(Ljava/lang/Boolean;Lll3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    return-object p0
.end method

.method public final setComponentEnabledSetting(Landroid/content/Context;Landroid/content/ComponentName;II)Lj59;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/coreutils/impl/l;

    invoke-direct {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/coreutils/impl/l;-><init>(Landroid/content/Context;Landroid/content/ComponentName;II)V

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->a(Ljava/lang/Boolean;Lll3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj59;

    return-object p0
.end method
