.class public final Lio/appmetrica/analytics/screenshot/impl/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/screenshot/impl/M;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/screenshot/impl/M;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/J;->a:Lio/appmetrica/analytics/screenshot/impl/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/screenshot/impl/M;Lio/appmetrica/analytics/screenshot/impl/J;Lio/appmetrica/analytics/screenshot/impl/l;Landroid/app/ActivityManager;)Ljava/lang/Boolean;
    .locals 3

    const/16 v0, 0xc8

    invoke-virtual {p3, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p3

    if-nez p3, :cond_0

    sget-object p3, Lkx2;->b:Lkx2;

    :cond_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    const-string v2, "com.android.systemui:screenshot"

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v0, :cond_4

    iget-object p3, p0, Lio/appmetrica/analytics/screenshot/impl/M;->b:Lio/appmetrica/analytics/screenshot/impl/C;

    const-string v0, "ServiceScreenshotCaptor"

    check-cast p3, Lio/appmetrica/analytics/screenshot/impl/u;

    invoke-virtual {p3, v0}, Lio/appmetrica/analytics/screenshot/impl/u;->a(Ljava/lang/String;)V

    :cond_4
    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/M;->c:Landroid/os/Handler;

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v0, p2, Lio/appmetrica/analytics/screenshot/impl/l;->b:J

    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/J;->a:Lio/appmetrica/analytics/screenshot/impl/M;

    iget-object v0, v0, Lio/appmetrica/analytics/screenshot/impl/M;->e:Lio/appmetrica/analytics/screenshot/impl/l;

    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/J;->a:Lio/appmetrica/analytics/screenshot/impl/M;

    iget-boolean v1, v1, Lio/appmetrica/analytics/screenshot/impl/M;->d:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lio/appmetrica/analytics/screenshot/impl/l;->a:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/J;->a:Lio/appmetrica/analytics/screenshot/impl/M;

    iget-object v1, v1, Lio/appmetrica/analytics/screenshot/impl/M;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    invoke-interface {v1}, Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/appmetrica/analytics/screenshot/impl/J;->a:Lio/appmetrica/analytics/screenshot/impl/M;

    new-instance v3, Lza4;

    invoke-direct {v3, v2, p0, v0}, Lza4;-><init>(Lio/appmetrica/analytics/screenshot/impl/M;Lio/appmetrica/analytics/screenshot/impl/J;Lio/appmetrica/analytics/screenshot/impl/l;)V

    const-string p0, "running service screenshot captor"

    const-string v0, "ActivityManager"

    const-string v2, "activity"

    invoke-static {v1, v2, p0, v0, v3}, Lio/appmetrica/analytics/coreutils/internal/system/SystemServiceUtils;->accessSystemServiceByNameSafely(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
