.class public final Lyads/ae3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/be3;

.field public final synthetic d:Lyads/rd3;


# direct methods
.method public constructor <init>(Lyads/be3;Lyads/rd3;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/ae3;->c:Lyads/be3;

    iput-object p2, p0, Lyads/ae3;->d:Lyads/rd3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance p1, Lyads/ae3;

    iget-object v0, p0, Lyads/ae3;->c:Lyads/be3;

    iget-object p0, p0, Lyads/ae3;->d:Lyads/rd3;

    invoke-direct {p1, v0, p0, p2}, Lyads/ae3;-><init>(Lyads/be3;Lyads/rd3;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/ae3;

    iget-object v0, p0, Lyads/ae3;->c:Lyads/be3;

    iget-object p0, p0, Lyads/ae3;->d:Lyads/rd3;

    invoke-direct {p1, v0, p0, p2}, Lyads/ae3;-><init>(Lyads/be3;Lyads/rd3;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/ae3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/ae3;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/ae3;->c:Lyads/be3;

    iget-object p1, p1, Lyads/be3;->d:Lyads/hc3;

    iget-object v1, p0, Lyads/ae3;->d:Lyads/rd3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lyads/fc3;

    invoke-direct {v4, p1, v1, v2}, Lyads/fc3;-><init>(Lyads/hc3;Lyads/rd3;Le02;)V

    invoke-static {v4}, Ls0;->a(Lbm3;)Lwy0;

    move-result-object p1

    new-instance v1, Lyads/zd3;

    iget-object v2, p0, Lyads/ae3;->c:Lyads/be3;

    iget-object v4, p0, Lyads/ae3;->d:Lyads/rd3;

    invoke-direct {v1, v2, v4}, Lyads/zd3;-><init>(Lyads/be3;Lyads/rd3;)V

    iput v3, p0, Lyads/ae3;->b:I

    invoke-virtual {p1, v1, p0}, Ld91;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
