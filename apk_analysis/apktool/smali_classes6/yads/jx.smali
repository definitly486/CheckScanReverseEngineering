.class public final Lyads/jx;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/ox;

.field public final synthetic d:Lyads/kx;

.field public final synthetic e:Lyads/ja5;


# direct methods
.method public constructor <init>(Lyads/ox;Lyads/kx;Lyads/ja5;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/jx;->c:Lyads/ox;

    iput-object p2, p0, Lyads/jx;->d:Lyads/kx;

    iput-object p3, p0, Lyads/jx;->e:Lyads/ja5;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2

    new-instance p1, Lyads/jx;

    iget-object v0, p0, Lyads/jx;->c:Lyads/ox;

    iget-object v1, p0, Lyads/jx;->d:Lyads/kx;

    iget-object p0, p0, Lyads/jx;->e:Lyads/ja5;

    invoke-direct {p1, v0, v1, p0, p2}, Lyads/jx;-><init>(Lyads/ox;Lyads/kx;Lyads/ja5;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/jx;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/jx;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/jx;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/jx;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/jx;->c:Lyads/ox;

    iget-object p1, p1, Lyads/ox;->i:Lyads/fb5;

    iget-object v1, p0, Lyads/jx;->d:Lyads/kx;

    iget-object v1, v1, Lyads/kx;->a:Lyads/n8;

    iget-object v3, p0, Lyads/jx;->e:Lyads/ja5;

    iput v2, p0, Lyads/jx;->b:I

    iget-object v2, p1, Lyads/fb5;->a:Lyads/zz4;

    iget-object p1, p1, Lyads/fb5;->b:Lyads/b13;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lyads/b13;->a(Lyads/n8;)Lyads/a13;

    move-result-object p1

    invoke-virtual {v2, p1, v3, p0}, Lyads/zz4;->a(Lyads/a13;Ljava/lang/Object;Lf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lj59;->a:Lj59;

    :goto_0
    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    iget-object p1, p0, Lyads/jx;->c:Lyads/ox;

    iget-object p1, p1, Lyads/bq;->e:Lyads/cl0;

    iget-object v0, p0, Lyads/jx;->d:Lyads/kx;

    iget-object v0, v0, Lyads/kx;->a:Lyads/n8;

    iget-object p0, p0, Lyads/jx;->e:Lyads/ja5;

    iget-object p1, p1, Lyads/cl0;->a:Lyads/g1;

    invoke-virtual {p1, v0, p0}, Lyads/g1;->a(Lyads/n8;Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
