.class public abstract Lgo1$c;
.super Ly94;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgo1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ly94<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/util/concurrent/Executor;

.field public final synthetic e:Lgo1;


# direct methods
.method public constructor <init>(Lgo1;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lgo1$c;->e:Lgo1;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lgo1$c;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lgo1$c;->e:Lgo1;

    iput-object v0, p0, Lgo1;->p:Lgo1$c;

    instance-of v0, p1, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll0;->m(Ljava/lang/Throwable;)Z

    return-void

    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ll0;->cancel(Z)Z

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Ll0;->m(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lgo1$c;->e:Lgo1;

    const/4 v1, 0x0

    iput-object v1, v0, Lgo1;->p:Lgo1$c;

    invoke-virtual {p0, p1}, Lgo1$c;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Lgo1$c;->e:Lgo1;

    invoke-virtual {p0}, Ll0;->isDone()Z

    move-result p0

    return p0
.end method

.method public abstract j(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
