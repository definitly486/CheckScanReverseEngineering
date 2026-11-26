.class public abstract Lio/appmetrica/analytics/impl/w0;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field public a:Lio/appmetrica/analytics/impl/a2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/w0;->a:Lio/appmetrica/analytics/impl/a2;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/a2;->a(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "serviceDelegate"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/w0;->a:Lio/appmetrica/analytics/impl/a2;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/a2;->a(Landroid/content/res/Configuration;)V

    return-void

    :cond_0
    const-string p0, "serviceDelegate"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/w0;->a:Lio/appmetrica/analytics/impl/a2;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/a2;

    new-instance v1, Lio/appmetrica/analytics/impl/x0;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/x0;-><init>(Landroid/app/Service;)V

    invoke-direct {v0, p0, v1}, Lio/appmetrica/analytics/impl/a2;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/D1;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/w0;->a:Lio/appmetrica/analytics/impl/a2;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/a2;->b()V

    return-void

    :cond_1
    const-string p0, "serviceDelegate"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/w0;->a:Lio/appmetrica/analytics/impl/a2;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/a2;->c()V

    return-void

    :cond_0
    const-string p0, "serviceDelegate"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/w0;->a:Lio/appmetrica/analytics/impl/a2;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/a2;->b(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string p0, "serviceDelegate"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/w0;->a:Lio/appmetrica/analytics/impl/a2;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/a2;->a(Landroid/content/Intent;II)I

    move-result p0

    return p0

    :cond_0
    const-string p0, "serviceDelegate"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/w0;->a:Lio/appmetrica/analytics/impl/a2;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/a2;->c(Landroid/content/Intent;)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "serviceDelegate"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
