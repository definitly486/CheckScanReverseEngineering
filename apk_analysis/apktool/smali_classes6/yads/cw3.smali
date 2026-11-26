.class public final Lyads/cw3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:J

.field public final synthetic e:Lyads/kc4;


# direct methods
.method public constructor <init>(JLyads/kc4;Le02;)V
    .locals 0

    iput-wide p1, p0, Lyads/cw3;->d:J

    iput-object p3, p0, Lyads/cw3;->e:Lyads/kc4;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 3

    new-instance v0, Lyads/cw3;

    iget-wide v1, p0, Lyads/cw3;->d:J

    iget-object p0, p0, Lyads/cw3;->e:Lyads/kc4;

    invoke-direct {v0, v1, v2, p0, p2}, Lyads/cw3;-><init>(JLyads/kc4;Le02;)V

    iput-object p1, v0, Lyads/cw3;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/cw3;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/cw3;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/cw3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/cw3;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    iget-object v1, p0, Lyads/cw3;->c:Ljava/lang/Object;

    check-cast v1, Ly22;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/cw3;->c:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ly22;

    iget-wide v4, p0, Lyads/cw3;->d:J

    iput-object v1, p0, Lyads/cw3;->c:Ljava/lang/Object;

    iput v3, p0, Lyads/cw3;->b:I

    invoke-static {v4, v5, p0}, Lyk2;->b(JLe02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {v1}, Lz22;->e(Ly22;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lyads/cw3;->e:Lyads/kc4;

    iget-object v3, p1, Lyads/ay;->b:Lyads/zx;

    sget-object v4, Lyads/zx;->b:Lyads/zx;

    if-ne v3, v4, :cond_4

    invoke-virtual {p1}, Lyads/kc4;->run()V

    iget-wide v3, p0, Lyads/cw3;->d:J

    iput-object v1, p0, Lyads/cw3;->c:Ljava/lang/Object;

    iput v2, p0, Lyads/cw3;->b:I

    invoke-static {v3, v4, p0}, Lyk2;->b(JLe02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    :goto_2
    return-object v0

    :cond_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
