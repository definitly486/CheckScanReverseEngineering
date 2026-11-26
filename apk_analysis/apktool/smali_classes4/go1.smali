.class public final Lgo1;
.super Llb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgo1$c;,
        Lgo1$a;,
        Lgo1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Llb<",
        "Ljava/lang/Object;",
        "TV;>;"
    }
.end annotation


# instance fields
.field public p:Lgo1$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgo1<",
            "TV;>.c<*>;"
        }
    .end annotation
.end field


# virtual methods
.method public final j()V
    .locals 0

    iget-object p0, p0, Lgo1;->p:Lgo1$c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ly94;->d()V

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 1

    iget-object p0, p0, Lgo1;->p:Lgo1$c;

    if-eqz p0, :cond_0

    :try_start_0
    iget-object v0, p0, Lgo1$c;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Lgo1$c;->e:Lgo1;

    invoke-virtual {p0, v0}, Ll0;->m(Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method public final u(Llb$a;)V
    .locals 1

    invoke-super {p0, p1}, Llb;->u(Llb$a;)V

    sget-object v0, Llb$a;->OUTPUT_FUTURE_DONE:Llb$a;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lgo1;->p:Lgo1$c;

    :cond_0
    return-void
.end method
