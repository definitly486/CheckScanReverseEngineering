.class public final Lio/appmetrica/analytics/impl/qc;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/rc;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/rc;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/qc;->a:Lio/appmetrica/analytics/impl/rc;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object p0, p0, Lio/appmetrica/analytics/impl/qc;->a:Lio/appmetrica/analytics/impl/rc;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/rc;->f:Lio/appmetrica/analytics/impl/Jc;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/rc;->b:Lio/appmetrica/analytics/impl/D9;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/rc;->a:Lio/appmetrica/analytics/impl/Tg;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/rc;->c:Lio/appmetrica/analytics/impl/A4;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/rc;->d:Lio/appmetrica/analytics/impl/jf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lio/appmetrica/analytics/coreutils/internal/services/FrameworkDetector;->isNative()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->i()Lio/appmetrica/analytics/impl/Z9;

    move-result-object v0

    iget-object v4, v0, Lio/appmetrica/analytics/impl/Z9;->d:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Z9;->a:Landroid/content/Context;

    invoke-virtual {v4, v0}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->getApplicationMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v4, "io.appmetrica.analytics.plugin_id"

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lio/appmetrica/analytics/impl/de;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/de;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v0, Lio/appmetrica/analytics/impl/We;

    invoke-direct {v0, v1, v2, v3, p0}, Lio/appmetrica/analytics/impl/We;-><init>(Lio/appmetrica/analytics/impl/D9;Lio/appmetrica/analytics/impl/Tg;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/jf;)V

    move-object p0, v0

    :goto_1
    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Ic;->a()Lio/appmetrica/analytics/impl/R8;

    move-result-object p0

    return-object p0
.end method
