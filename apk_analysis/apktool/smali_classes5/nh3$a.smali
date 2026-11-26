.class public final Lnh3$a;
.super Lgg3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnh3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lgg3<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final d:Lxl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxl3<",
            "-TT;+",
            "Ldt6<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lxl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lxl3<",
            "-TT;+",
            "Ldt6<",
            "+TR;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lgg3;-><init>()V

    iput-object p1, p0, Lnh3$a;->c:Ljava/lang/Object;

    iput-object p2, p0, Lnh3$a;->d:Lxl3;

    return-void
.end method


# virtual methods
.method public final g(Lwb8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TR;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnh3$a;->d:Lxl3;

    iget-object p0, p0, Lnh3$a;->c:Ljava/lang/Object;

    invoke-interface {v0, p0}, Lxl3;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "The mapper returned a null Publisher"

    invoke-static {p0, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ldt6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    instance-of v0, p0, Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_1

    :try_start_1
    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_0

    sget-object p0, Lqx2;->INSTANCE:Lqx2;

    invoke-interface {p1, p0}, Lwb8;->a(Lbc8;)V

    invoke-interface {p1}, Lwb8;->onComplete()V

    return-void

    :cond_0
    new-instance v0, Lld7;

    invoke-direct {v0, p1, p0}, Lld7;-><init>(Lwb8;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lwb8;->a(Lbc8;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    sget-object v0, Lqx2;->INSTANCE:Lqx2;

    invoke-interface {p1, v0}, Lwb8;->a(Lbc8;)V

    invoke-interface {p1, p0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-interface {p0, p1}, Ldt6;->a(Lwb8;)V

    return-void

    :catchall_1
    move-exception p0

    sget-object v0, Lqx2;->INSTANCE:Lqx2;

    invoke-interface {p1, v0}, Lwb8;->a(Lbc8;)V

    invoke-interface {p1, p0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
