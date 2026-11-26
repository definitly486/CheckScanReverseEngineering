.class public abstract Lgd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgd$a;
    }
.end annotation


# static fields
.field public static final a:Lgd$a;

.field public static volatile b:Lhd;

.field public static c:Landroid/content/Context;

.field public static d:Z

.field public static e:Lna1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgd$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lgd;->a:Lgd$a;

    return-void
.end method

.method public static a()V
    .locals 4

    sget-object v0, Lgd;->c:Landroid/content/Context;

    const-string v1, "appContext"

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    const v3, 0x7f1406c3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/AppMetricaConfig;->newConfigBuilder(Ljava/lang/String;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v3, Lgd;->d:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->handleFirstActivationAsUpdate(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    :cond_0
    invoke-virtual {v0}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->build()Lio/appmetrica/analytics/AppMetricaConfig;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lgd;->c:Landroid/content/Context;

    if-eqz v3, :cond_5

    invoke-static {v3, v0}, Lio/appmetrica/analytics/AppMetrica;->activate(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaConfig;)V

    sget-object v0, Lgd;->c:Landroid/content/Context;

    if-eqz v0, :cond_4

    instance-of v3, v0, Landroid/app/Application;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/app/Application;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v0}, Lio/appmetrica/analytics/AppMetrica;->enableActivityAutoTracking(Landroid/app/Application;)V

    :cond_2
    sget-object v0, Lgd;->c:Landroid/content/Context;

    if-eqz v0, :cond_3

    new-instance v1, Lgd$b;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-string v2, "appmetrica_device_id"

    invoke-static {v2}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/appmetrica/analytics/AppMetrica;->requestStartupParams(Landroid/content/Context;Lio/appmetrica/analytics/StartupParamsCallback;Ljava/util/List;)V

    return-void

    :cond_3
    invoke-static {v1}, Laa4;->j(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v1}, Laa4;->j(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {v1}, Laa4;->j(Ljava/lang/String;)V

    throw v2

    :cond_6
    invoke-static {v1}, Laa4;->j(Ljava/lang/String;)V

    throw v2
.end method
