.class public final Lgd$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/StartupParamsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgd;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# virtual methods
.method public final onReceive(Lio/appmetrica/analytics/StartupParamsCallback$Result;)V
    .locals 2

    if-eqz p1, :cond_3

    iget-object p0, p1, Lio/appmetrica/analytics/StartupParamsCallback$Result;->deviceId:Ljava/lang/String;

    if-eqz p0, :cond_3

    sget-object p1, Lgd;->e:Lna1;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p1, Lna1;->a:Ljava/lang/Object;

    check-cast p1, Lcom/warefly/checkscan/CheckScanApplication;

    instance-of v1, p1, Ljg4;

    if-eqz v1, :cond_0

    check-cast p1, Ljg4;

    invoke-interface {p1}, Ljg4;->b()Lhg4;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lc;->d:Lhg4;

    if-eqz p1, :cond_1

    :goto_0
    iget-object p1, p1, Lhg4;->c:Lbf7;

    iget-object p1, p1, Lbf7;->d:Lze7;

    const-class v1, Ljf6;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v0}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljf6;

    invoke-interface {p1, p0}, Ljf6;->o0(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "KoinApplication has not been started"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "listener"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method public final onRequestError(Lio/appmetrica/analytics/StartupParamsCallback$Reason;Lio/appmetrica/analytics/StartupParamsCallback$Result;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
