.class public final Lhg3;
.super Lk0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhg3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lk0<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+TU;>;"
        }
    .end annotation
.end field

.field public final e:Lb9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb9;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lvg3;Los5;Lb9;)V
    .locals 0

    invoke-direct {p0, p1}, Lk0;-><init>(Lgg3;)V

    iput-object p2, p0, Lhg3;->d:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lhg3;->e:Lb9;

    return-void
.end method


# virtual methods
.method public final g(Lwb8;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TU;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lhg3;->d:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The initial value supplied is null"

    invoke-static {v0, v1}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lhg3$a;

    iget-object v2, p0, Lhg3;->e:Lb9;

    invoke-direct {v1, p1, v0, v2}, Lhg3$a;-><init>(Lwb8;Ljava/lang/Object;Lb9;)V

    iget-object p0, p0, Lk0;->c:Lgg3;

    invoke-virtual {p0, v1}, Lgg3;->f(Lrh3;)V

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lqx2;->INSTANCE:Lqx2;

    invoke-interface {p1, v0}, Lwb8;->a(Lbc8;)V

    invoke-interface {p1, p0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
