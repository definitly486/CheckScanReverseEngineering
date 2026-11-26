.class public final Lnh8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Li;

.field public final d:Luz;


# direct methods
.method public constructor <init>(Ljava/lang/String;Leg9;Li;Luz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnh8;->b:Ljava/lang/String;

    iput-object p3, p0, Lnh8;->c:Li;

    iput-object p4, p0, Lnh8;->d:Luz;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    sget p1, Lru/vk/store/sdk/install/referrer/InstallReferrerProvider$a;->a:I

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "ru.vk.store.sdk.install.referrer.InstallReferrerProvider"

    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lru/vk/store/sdk/install/referrer/InstallReferrerProvider;

    if-eqz v0, :cond_1

    check-cast p1, Lru/vk/store/sdk/install/referrer/InstallReferrerProvider;

    goto :goto_0

    :cond_1
    new-instance p1, Lru/vk/store/sdk/install/referrer/InstallReferrerProvider$a$a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p2, p1, Lru/vk/store/sdk/install/referrer/InstallReferrerProvider$a$a;->a:Landroid/os/IBinder;

    :goto_0
    new-instance p2, Lnh8$a;

    invoke-direct {p2, p0}, Lnh8$a;-><init>(Lnh8;)V

    :try_start_0
    iget-object v0, p0, Lnh8;->b:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lru/vk/store/sdk/install/referrer/InstallReferrerProvider;->d(Ljava/lang/String;Lnh8$a;)V

    sget-object p1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    new-instance p2, Lk57$a;

    invoke-direct {p2, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_1
    invoke-static {p1}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p2, Lru/rustore/sdk/core/exception/RuStoreException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnh8;->d:Luz;

    invoke-virtual {p0, p2}, Luz;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    new-instance p1, Lru/rustore/sdk/core/exception/RuStoreException;

    const-string v0, "onServiceDisconnected"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnh8;->d:Luz;

    invoke-virtual {p0, p1}, Luz;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
