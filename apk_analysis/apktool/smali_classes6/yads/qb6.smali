.class public final Lyads/qb6;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lyads/rb6;


# direct methods
.method public constructor <init>(Lyads/rb6;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/qb6;->d:Lyads/rb6;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance v0, Lyads/qb6;

    iget-object p0, p0, Lyads/qb6;->d:Lyads/rb6;

    invoke-direct {v0, p0, p2}, Lyads/qb6;-><init>(Lyads/rb6;Le02;)V

    iput-object p1, v0, Lyads/qb6;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance v0, Lyads/qb6;

    iget-object p0, p0, Lyads/qb6;->d:Lyads/rb6;

    invoke-direct {v0, p0, p2}, Lyads/qb6;-><init>(Lyads/rb6;Le02;)V

    iput-object p1, v0, Lyads/qb6;->c:Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {v0, p0}, Lyads/qb6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/qb6;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lyads/qb6;->c:Ljava/lang/Object;

    check-cast v1, Ly22;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/qb6;->c:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ly22;

    :cond_2
    :goto_0
    invoke-static {v1}, Lz22;->e(Ly22;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lyads/qb6;->d:Lyads/rb6;

    iget-boolean v3, p1, Lyads/rb6;->d:Z

    if-eqz v3, :cond_3

    iget-object p1, p1, Lyads/rb6;->a:Lyads/eb6;

    invoke-interface {p1}, Lyads/eb6;->getAdPosition()J

    move-result-wide v3

    iget-object p1, p0, Lyads/qb6;->d:Lyads/rb6;

    iget-object p1, p1, Lyads/rb6;->a:Lyads/eb6;

    invoke-interface {p1}, Lyads/eb6;->c()J

    move-result-wide v5

    iget-object p1, p0, Lyads/qb6;->d:Lyads/rb6;

    iget-object p1, p1, Lyads/rb6;->b:Lyads/ob6;

    invoke-virtual {p1, v5, v6, v3, v4}, Lyads/ob6;->a(JJ)V

    iget-object p1, p0, Lyads/qb6;->d:Lyads/rb6;

    iget-boolean p1, p1, Lyads/rb6;->d:Z

    if-eqz p1, :cond_2

    iput-object v1, p0, Lyads/qb6;->c:Ljava/lang/Object;

    iput v2, p0, Lyads/qb6;->b:I

    const-wide/16 v3, 0xc8

    invoke-static {v3, v4, p0}, Lyk2;->b(JLe02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
