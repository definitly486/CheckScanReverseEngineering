.class public final Lzg3;
.super Lgg3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzg3$b;,
        Lzg3$c;,
        Lzg3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lgg3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lgg3;-><init>()V

    iput-object p1, p0, Lzg3;->c:Ljava/lang/Iterable;

    return-void
.end method

.method public static i(Lwb8;Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lwb8<",
            "-TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    sget-object p1, Lqx2;->INSTANCE:Lqx2;

    invoke-interface {p0, p1}, Lwb8;->a(Lbc8;)V

    invoke-interface {p0}, Lwb8;->onComplete()V

    return-void

    :cond_0
    instance-of v0, p0, Lgv1;

    if-eqz v0, :cond_1

    new-instance v0, Lzg3$b;

    move-object v1, p0

    check-cast v1, Lgv1;

    invoke-direct {v0, v1, p1}, Lzg3$b;-><init>(Lgv1;Ljava/util/Iterator;)V

    invoke-interface {p0, v0}, Lwb8;->a(Lbc8;)V

    return-void

    :cond_1
    new-instance v0, Lzg3$c;

    invoke-direct {v0, p0, p1}, Lzg3$c;-><init>(Lwb8;Ljava/util/Iterator;)V

    invoke-interface {p0, v0}, Lwb8;->a(Lbc8;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lm13;->d(Ljava/lang/Throwable;)V

    sget-object v0, Lqx2;->INSTANCE:Lqx2;

    invoke-interface {p0, v0}, Lwb8;->a(Lbc8;)V

    invoke-interface {p0, p1}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final g(Lwb8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TT;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lzg3;->c:Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, p0}, Lzg3;->i(Lwb8;Ljava/util/Iterator;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    sget-object v0, Lqx2;->INSTANCE:Lqx2;

    invoke-interface {p1, v0}, Lwb8;->a(Lbc8;)V

    invoke-interface {p1, p0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
