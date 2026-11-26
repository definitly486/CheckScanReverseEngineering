.class public final Lio/appmetrica/analytics/impl/vg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/vg;-><init>(Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lio/appmetrica/analytics/impl/vg;->a:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/L9;
    .locals 4

    sget-object v0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/Fa;->d:Lio/appmetrica/analytics/impl/Ak;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Ak;->g()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v1

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->D()Lio/appmetrica/analytics/impl/Jo;

    move-result-object v0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Jo;->c:Lio/appmetrica/analytics/impl/Fo;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/vg;->a:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->getInstallerPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x619d58dd

    if-eq v2, v3, :cond_3

    const v3, -0x3e676dcf

    if-eq v2, v3, :cond_2

    const v3, -0x153c684d

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "ru.vk.store"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lio/appmetrica/analytics/impl/Yi;

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Yi;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    const-string v2, "com.android.vending"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance p0, Lio/appmetrica/analytics/impl/Ia;

    invoke-direct {p0, p1, v1}, Lio/appmetrica/analytics/impl/Ia;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;)V

    goto :goto_1

    :cond_3
    const-string v2, "com.huawei.appmarket"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Lio/appmetrica/analytics/impl/Na;

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Na;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    :goto_0
    new-instance p1, Lio/appmetrica/analytics/impl/ne;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/ne;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    :goto_1
    new-instance p1, Lio/appmetrica/analytics/impl/u3;

    new-instance v2, Lio/appmetrica/analytics/impl/Lo;

    invoke-direct {v2, v0}, Lio/appmetrica/analytics/impl/Lo;-><init>(Lio/appmetrica/analytics/impl/Fo;)V

    invoke-direct {p1, p0, v2}, Lio/appmetrica/analytics/impl/u3;-><init>(Lio/appmetrica/analytics/impl/ug;Lio/appmetrica/analytics/impl/kg;)V

    new-instance p0, Lio/appmetrica/analytics/impl/ej;

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/ej;-><init>(Lio/appmetrica/analytics/impl/ug;)V

    new-instance p1, Lio/appmetrica/analytics/impl/L9;

    invoke-direct {p1, p0, v1}, Lio/appmetrica/analytics/impl/L9;-><init>(Lio/appmetrica/analytics/impl/ug;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;)V

    return-object p1
.end method
