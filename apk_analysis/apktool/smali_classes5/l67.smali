.class public final Ll67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/Collection;

.field public final synthetic c:Lk67$x;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/util/concurrent/Future;

.field public final synthetic f:Z

.field public final synthetic g:Ljava/util/concurrent/Future;

.field public final synthetic h:Lk67;


# direct methods
.method public constructor <init>(Lk67;Ljava/util/Collection;Lk67$x;ZLjava/util/concurrent/Future;ZLjava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll67;->h:Lk67;

    iput-object p2, p0, Ll67;->b:Ljava/util/Collection;

    iput-object p3, p0, Ll67;->c:Lk67$x;

    iput-boolean p4, p0, Ll67;->d:Z

    iput-object p5, p0, Ll67;->e:Ljava/util/concurrent/Future;

    iput-boolean p6, p0, Ll67;->f:Z

    iput-object p7, p0, Ll67;->g:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ll67;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk67$x;

    iget-object v2, p0, Ll67;->c:Lk67$x;

    if-eq v1, v2, :cond_0

    iget-object v1, v1, Lk67$x;->a:Lcm1;

    sget-object v2, Lk67;->D:Lh88;

    invoke-interface {v1, v2}, Lcm1;->j(Lh88;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Ll67;->d:Z

    const/4 v1, 0x0

    iget-object v2, p0, Ll67;->h:Lk67;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ll67;->e:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    iget-boolean v0, p0, Ll67;->f:Z

    if-nez v0, :cond_3

    iget-object v0, v2, Lk67;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_3

    iget-object v0, v2, Lk67;->d:Lch8;

    new-instance v3, Ll67$a;

    invoke-direct {v3, p0}, Ll67$a;-><init>(Ll67;)V

    invoke-virtual {v0, v3}, Lch8;->execute(Ljava/lang/Runnable;)V

    :cond_3
    iget-object p0, p0, Ll67;->g:Ljava/util/concurrent/Future;

    if-eqz p0, :cond_4

    invoke-interface {p0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_4
    invoke-virtual {v2}, Lk67;->t()V

    return-void
.end method
