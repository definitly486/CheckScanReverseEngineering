.class public final Lyads/yb6;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lyads/zb6;


# direct methods
.method public constructor <init>(Lyads/zb6;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/yb6;->d:Lyads/zb6;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance v0, Lyads/yb6;

    iget-object p0, p0, Lyads/yb6;->d:Lyads/zb6;

    invoke-direct {v0, p0, p2}, Lyads/yb6;-><init>(Lyads/zb6;Le02;)V

    iput-object p1, v0, Lyads/yb6;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance v0, Lyads/yb6;

    iget-object p0, p0, Lyads/yb6;->d:Lyads/zb6;

    invoke-direct {v0, p0, p2}, Lyads/yb6;-><init>(Lyads/zb6;Le02;)V

    iput-object p1, v0, Lyads/yb6;->c:Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {v0, p0}, Lyads/yb6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/yb6;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lyads/yb6;->c:Ljava/lang/Object;

    check-cast v1, Ly22;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/yb6;->c:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ly22;

    :cond_2
    :goto_0
    invoke-static {v1}, Lz22;->e(Ly22;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lyads/yb6;->d:Lyads/zb6;

    iget-object p1, p1, Lyads/zb6;->a:Lyads/me6;

    invoke-interface {p1}, Lyads/me6;->a()Z

    move-result p1

    if-nez p1, :cond_3

    iput-object v1, p0, Lyads/yb6;->c:Ljava/lang/Object;

    iput v3, p0, Lyads/yb6;->b:I

    const-wide/16 v4, 0xc8

    invoke-static {v4, v5, p0}, Lyk2;->b(JLe02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_3
    invoke-static {v1}, Lz22;->e(Ly22;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lyads/yb6;->d:Lyads/zb6;

    iput-boolean v3, p1, Lyads/zb6;->d:Z

    iget-object p1, p1, Lyads/zb6;->b:Lyads/ub6;

    invoke-virtual {p1}, Lyads/ub6;->a()V

    iget-object p0, p0, Lyads/yb6;->d:Lyads/zb6;

    iget-object p1, p0, Lyads/zb6;->f:Lmb4;

    if-eqz p1, :cond_4

    invoke-interface {p1, v2}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_4
    iput-object v2, p0, Lyads/zb6;->f:Lmb4;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lyads/zb6;->e:Z

    :cond_5
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
