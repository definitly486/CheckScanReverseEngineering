.class public final Lio/appmetrica/analytics/screenshot/impl/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/screenshot/impl/B;


# instance fields
.field public final a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

.field public final b:Lio/appmetrica/analytics/screenshot/impl/C;

.field public volatile c:Lio/appmetrica/analytics/screenshot/impl/i;

.field public final d:Lcl4;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;Lio/appmetrica/analytics/screenshot/impl/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/d;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    iput-object p2, p0, Lio/appmetrica/analytics/screenshot/impl/d;->b:Lio/appmetrica/analytics/screenshot/impl/C;

    new-instance p1, Lio/appmetrica/analytics/screenshot/impl/a;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/screenshot/impl/a;-><init>(Lio/appmetrica/analytics/screenshot/impl/d;)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lio/appmetrica/analytics/screenshot/impl/d;->d:Lcl4;

    return-void
.end method

.method public static final synthetic a(Lio/appmetrica/analytics/screenshot/impl/d;)Lio/appmetrica/analytics/screenshot/impl/i;
    .locals 0

    .line 32
    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/d;->c:Lio/appmetrica/analytics/screenshot/impl/i;

    return-object p0
.end method

.method public static final synthetic b(Lio/appmetrica/analytics/screenshot/impl/d;)Lio/appmetrica/analytics/screenshot/impl/C;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/d;->b:Lio/appmetrica/analytics/screenshot/impl/C;

    return-object p0
.end method

.method public static final synthetic c(Lio/appmetrica/analytics/screenshot/impl/d;)Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/d;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    return-object p0
.end method

.method public static final d(Lio/appmetrica/analytics/screenshot/impl/d;)Landroid/app/Activity$ScreenCaptureCallback;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/d;->d:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity$ScreenCaptureCallback;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/16 v0, 0x22

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;->isApiAchieved(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/d;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    invoke-interface {v0}, Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;->getActivityLifecycleRegistry()Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleRegistry;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/screenshot/impl/c;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/screenshot/impl/c;-><init>(Lio/appmetrica/analytics/screenshot/impl/d;)V

    sget-object p0, Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;->STARTED:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    sget-object v2, Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;->STOPPED:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    filled-new-array {p0, v2}, [Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleRegistry;->registerListener(Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;[Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/screenshot/impl/k;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 33
    iget-object p1, p1, Lio/appmetrica/analytics/screenshot/impl/k;->b:Lio/appmetrica/analytics/screenshot/impl/i;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 34
    :goto_0
    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/d;->c:Lio/appmetrica/analytics/screenshot/impl/i;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    .line 3
    const-string p0, "AndroidApiScreenshotCaptor"

    return-object p0
.end method
