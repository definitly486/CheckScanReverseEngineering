.class public final Lh59;
.super Laf7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Laf7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final g:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lb36<",
            "Lo22;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile threadLocalIsSet:Z


# direct methods
.method public constructor <init>(Le02;Lo22;)V
    .locals 2

    sget-object v0, Li59;->b:Li59;

    invoke-interface {p2, v0}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p2, v0}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-direct {p0, p1, v0}, Laf7;-><init>(Le02;Lo22;)V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lh59;->g:Ljava/lang/ThreadLocal;

    invoke-interface {p1}, Le02;->getContext()Lo22;

    move-result-object p1

    sget-object v0, Lg02$a;->b:Lg02$a;

    invoke-interface {p1, v0}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object p1

    instance-of p1, p1, Lr22;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-static {p2, p1}, Llt8;->c(Lo22;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Llt8;->a(Lo22;Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Lh59;->q0(Lo22;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final n0()V
    .locals 0

    invoke-virtual {p0}, Lh59;->p0()V

    return-void
.end method

.method public final o0()Z
    .locals 2

    iget-boolean v0, p0, Lh59;->threadLocalIsSet:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh59;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lh59;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    xor-int/lit8 p0, v0, 0x1

    return p0
.end method

.method public final p0()V
    .locals 2

    iget-boolean v0, p0, Lh59;->threadLocalIsSet:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh59;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb36;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lb36;->b:Ljava/lang/Object;

    check-cast v1, Lo22;

    iget-object v0, v0, Lb36;->c:Ljava/lang/Object;

    invoke-static {v1, v0}, Llt8;->a(Lo22;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lh59;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_1
    return-void
.end method

.method public final q0(Lo22;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh59;->threadLocalIsSet:Z

    iget-object p0, p0, Lh59;->g:Ljava/lang/ThreadLocal;

    new-instance v0, Lb36;

    invoke-direct {v0, p1, p2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final t(Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p0}, Lh59;->p0()V

    invoke-static {p1}, Loe0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Laf7;->f:Le02;

    invoke-interface {p0}, Le02;->getContext()Lo22;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Llt8;->c(Lo22;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Llt8;->a:Lbh8;

    if-eq v2, v3, :cond_0

    invoke-static {p0, v0, v2}, Lq22;->c(Le02;Lo22;Ljava/lang/Object;)Lh59;

    move-result-object v1

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Le02;->resumeWith(Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lh59;->o0()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-static {v0, v2}, Llt8;->a(Lo22;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lh59;->o0()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    invoke-static {v0, v2}, Llt8;->a(Lo22;Ljava/lang/Object;)V

    :cond_4
    throw p0
.end method
