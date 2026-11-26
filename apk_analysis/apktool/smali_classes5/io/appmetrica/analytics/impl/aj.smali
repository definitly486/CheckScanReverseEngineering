.class public final Lio/appmetrica/analytics/impl/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/qg;

.field public final b:Lio/appmetrica/analytics/impl/Zi;

.field public final synthetic c:Lio/appmetrica/analytics/impl/bj;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/bj;Lio/appmetrica/analytics/impl/qg;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/aj;->c:Lio/appmetrica/analytics/impl/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/aj;->a:Lio/appmetrica/analytics/impl/qg;

    new-instance p2, Lio/appmetrica/analytics/impl/Zi;

    invoke-direct {p2, p1, p0}, Lio/appmetrica/analytics/impl/Zi;-><init>(Lio/appmetrica/analytics/impl/bj;Lio/appmetrica/analytics/impl/aj;)V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/aj;->b:Lio/appmetrica/analytics/impl/Zi;

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    iget-object p1, p0, Lio/appmetrica/analytics/impl/aj;->c:Lio/appmetrica/analytics/impl/bj;

    invoke-static {p1, p0}, Lio/appmetrica/analytics/impl/bj;->a(Lio/appmetrica/analytics/impl/bj;Landroid/content/ServiceConnection;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/aj;->a:Lio/appmetrica/analytics/impl/qg;

    new-instance p1, Lio/appmetrica/analytics/impl/wg;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "RuStore service binding died"

    invoke-direct {p1, v2, v0, v1, v0}, Lio/appmetrica/analytics/impl/wg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjh2;)V

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/qg;->a(Lio/appmetrica/analytics/impl/yg;)V

    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 3

    iget-object p1, p0, Lio/appmetrica/analytics/impl/aj;->c:Lio/appmetrica/analytics/impl/bj;

    invoke-static {p1, p0}, Lio/appmetrica/analytics/impl/bj;->a(Lio/appmetrica/analytics/impl/bj;Landroid/content/ServiceConnection;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/aj;->a:Lio/appmetrica/analytics/impl/qg;

    new-instance p1, Lio/appmetrica/analytics/impl/wg;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "RuStore service returned null binding"

    invoke-direct {p1, v2, v0, v1, v0}, Lio/appmetrica/analytics/impl/wg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjh2;)V

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/qg;->a(Lio/appmetrica/analytics/impl/yg;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    :try_start_0
    invoke-static {p2}, Lio/appmetrica/analytics/impl/lb;->a(Landroid/os/IBinder;)Lio/appmetrica/analytics/impl/mb;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "RuStore service binder is null"

    iget-object p2, p0, Lio/appmetrica/analytics/impl/aj;->c:Lio/appmetrica/analytics/impl/bj;

    invoke-static {p2, p0}, Lio/appmetrica/analytics/impl/bj;->a(Lio/appmetrica/analytics/impl/bj;Landroid/content/ServiceConnection;)V

    iget-object p2, p0, Lio/appmetrica/analytics/impl/aj;->a:Lio/appmetrica/analytics/impl/qg;

    new-instance v0, Lio/appmetrica/analytics/impl/wg;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1, v2}, Lio/appmetrica/analytics/impl/wg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjh2;)V

    invoke-interface {p2, v0}, Lio/appmetrica/analytics/impl/qg;->a(Lio/appmetrica/analytics/impl/yg;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lio/appmetrica/analytics/impl/aj;->c:Lio/appmetrica/analytics/impl/bj;

    iget-object p2, p2, Lio/appmetrica/analytics/impl/bj;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/aj;->b:Lio/appmetrica/analytics/impl/Zi;

    check-cast p1, Lio/appmetrica/analytics/impl/kb;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "ru.vk.store.sdk.install.referrer.InstallReferrerProvider"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-object p1, p1, Lio/appmetrica/analytics/impl/kb;->a:Landroid/os/IBinder;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    iget-object p2, p0, Lio/appmetrica/analytics/impl/aj;->c:Lio/appmetrica/analytics/impl/bj;

    invoke-static {p2, p0}, Lio/appmetrica/analytics/impl/bj;->a(Lio/appmetrica/analytics/impl/bj;Landroid/content/ServiceConnection;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/aj;->a:Lio/appmetrica/analytics/impl/qg;

    new-instance p2, Lio/appmetrica/analytics/impl/wg;

    const-string v0, "Failed to referrer from RuStore service"

    invoke-direct {p2, v0, p1}, Lio/appmetrica/analytics/impl/wg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, p2}, Lio/appmetrica/analytics/impl/qg;->a(Lio/appmetrica/analytics/impl/yg;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
