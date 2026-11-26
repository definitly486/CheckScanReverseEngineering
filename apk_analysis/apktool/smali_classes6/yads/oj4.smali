.class public final Lyads/oj4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lhd3;

.field public final synthetic d:Lyads/b05;


# direct methods
.method public constructor <init>(Lhd3;Lyads/b05;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/oj4;->c:Lhd3;

    iput-object p2, p0, Lyads/oj4;->d:Lyads/b05;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance p1, Lyads/oj4;

    iget-object v0, p0, Lyads/oj4;->c:Lhd3;

    iget-object p0, p0, Lyads/oj4;->d:Lyads/b05;

    invoke-direct {p1, v0, p0, p2}, Lyads/oj4;-><init>(Lhd3;Lyads/b05;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/oj4;

    iget-object v0, p0, Lyads/oj4;->c:Lhd3;

    iget-object p0, p0, Lyads/oj4;->d:Lyads/b05;

    invoke-direct {p1, v0, p0, p2}, Lyads/oj4;-><init>(Lhd3;Lyads/b05;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/oj4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/oj4;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/oj4;->c:Lhd3;

    new-instance v1, Lyads/nj4;

    iget-object v3, p0, Lyads/oj4;->d:Lyads/b05;

    invoke-direct {v1, v3}, Lyads/nj4;-><init>(Lyads/b05;)V

    iput v2, p0, Lyads/oj4;->b:I

    invoke-interface {p1, v1, p0}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
