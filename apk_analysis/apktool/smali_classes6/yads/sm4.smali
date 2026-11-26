.class public final Lyads/sm4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:Lyads/r96;

.field public c:I

.field public final synthetic d:Lyads/r96;

.field public final synthetic e:Lyads/wm4;


# direct methods
.method public constructor <init>(Lyads/r96;Lyads/wm4;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/sm4;->d:Lyads/r96;

    iput-object p2, p0, Lyads/sm4;->e:Lyads/wm4;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance p1, Lyads/sm4;

    iget-object v0, p0, Lyads/sm4;->d:Lyads/r96;

    iget-object p0, p0, Lyads/sm4;->e:Lyads/wm4;

    invoke-direct {p1, v0, p0, p2}, Lyads/sm4;-><init>(Lyads/r96;Lyads/wm4;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/sm4;

    iget-object v0, p0, Lyads/sm4;->d:Lyads/r96;

    iget-object p0, p0, Lyads/sm4;->e:Lyads/wm4;

    invoke-direct {p1, v0, p0, p2}, Lyads/sm4;-><init>(Lyads/r96;Lyads/wm4;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/sm4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/sm4;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object p0, p0, Lyads/sm4;->b:Lyads/r96;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/sm4;->d:Lyads/r96;

    if-eqz p1, :cond_4

    iget-object v1, p0, Lyads/sm4;->e:Lyads/wm4;

    iget-object v4, p1, Lyads/r96;->a:Ljava/util/List;

    iput-object p1, p0, Lyads/sm4;->b:Lyads/r96;

    iput v3, p0, Lyads/sm4;->c:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lqo2;->a:Loi2;

    sget-object v3, Lsh2;->c:Lsh2;

    new-instance v5, Lyads/vm4;

    invoke-direct {v5, v4, v1, v2}, Lyads/vm4;-><init>(Ljava/util/List;Lyads/wm4;Le02;)V

    invoke-static {v3, v5, p0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :goto_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lyads/r96;->b:Lyads/we6;

    iget-object p0, p0, Lyads/r96;->c:Lyads/rd3;

    new-instance v1, Lyads/r96;

    invoke-direct {v1, p1, v0, p0}, Lyads/r96;-><init>(Ljava/util/List;Lyads/we6;Lyads/rd3;)V

    return-object v1

    :cond_3
    const-string p0, "Invalid VAST in response"

    invoke-static {p0}, Lqg;->g(Ljava/lang/String;)V

    :cond_4
    return-object v2
.end method
