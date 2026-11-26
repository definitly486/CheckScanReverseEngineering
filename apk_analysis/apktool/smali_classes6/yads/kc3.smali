.class public final Lyads/kc3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/sc3;

.field public final synthetic d:Lyads/zc3;

.field public final synthetic e:Lyads/rd3;

.field public final synthetic f:Lug6;


# direct methods
.method public constructor <init>(Lyads/sc3;Lyads/zc3;Lyads/rd3;Lug6;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/kc3;->c:Lyads/sc3;

    iput-object p2, p0, Lyads/kc3;->d:Lyads/zc3;

    iput-object p3, p0, Lyads/kc3;->e:Lyads/rd3;

    iput-object p4, p0, Lyads/kc3;->f:Lug6;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 6

    new-instance v0, Lyads/kc3;

    iget-object v1, p0, Lyads/kc3;->c:Lyads/sc3;

    iget-object v2, p0, Lyads/kc3;->d:Lyads/zc3;

    iget-object v3, p0, Lyads/kc3;->e:Lyads/rd3;

    iget-object v4, p0, Lyads/kc3;->f:Lug6;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lyads/kc3;-><init>(Lyads/sc3;Lyads/zc3;Lyads/rd3;Lug6;Le02;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/kc3;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/kc3;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/kc3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/kc3;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/kc3;->c:Lyads/sc3;

    iget-object v1, p0, Lyads/kc3;->d:Lyads/zc3;

    iget-object v5, p0, Lyads/kc3;->e:Lyads/rd3;

    iput v4, p0, Lyads/kc3;->b:I

    invoke-static {p1, v1, v5, p0}, Lyads/sc3;->a(Lyads/sc3;Lyads/zc3;Lyads/rd3;Lf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Lyads/ac3;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lyads/kc3;->f:Lug6;

    iput v3, p0, Lyads/kc3;->b:I

    invoke-interface {v1, p1, p0}, Lno7;->send(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_5
    return-object v2
.end method
