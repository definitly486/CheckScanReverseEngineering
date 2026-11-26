.class public final Lyads/st4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lyads/tt4;


# direct methods
.method public constructor <init>(Lyads/tt4;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/st4;->d:Lyads/tt4;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance v0, Lyads/st4;

    iget-object p0, p0, Lyads/st4;->d:Lyads/tt4;

    invoke-direct {v0, p0, p2}, Lyads/st4;-><init>(Lyads/tt4;Le02;)V

    iput-object p1, v0, Lyads/st4;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance v0, Lyads/st4;

    iget-object p0, p0, Lyads/st4;->d:Lyads/tt4;

    invoke-direct {v0, p0, p2}, Lyads/st4;-><init>(Lyads/tt4;Le02;)V

    iput-object p1, v0, Lyads/st4;->c:Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {v0, p0}, Lyads/st4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/st4;->b:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lyads/st4;->c:Ljava/lang/Object;

    check-cast v1, Ly22;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/st4;->c:Ljava/lang/Object;

    check-cast p1, Ly22;

    move-object v1, p1

    :cond_2
    :goto_0
    invoke-static {v1}, Lz22;->e(Ly22;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lyads/st4;->d:Lyads/tt4;

    iget-wide v5, p1, Lyads/tt4;->f:J

    cmp-long p1, v5, v2

    if-lez p1, :cond_4

    const-wide/16 v7, 0xc8

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    iget-object p1, p0, Lyads/st4;->d:Lyads/tt4;

    iget-object v7, p1, Lyads/tt4;->b:Lyads/ax5;

    check-cast v7, Lcg;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/qt4;->a()J

    move-result-wide v7

    iput-wide v7, p1, Lyads/tt4;->h:J

    iput-object v1, p0, Lyads/st4;->c:Ljava/lang/Object;

    iput v4, p0, Lyads/st4;->b:I

    invoke-static {v5, v6, p0}, Lyk2;->b(JLe02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    iget-object p1, p0, Lyads/st4;->d:Lyads/tt4;

    iget-object p1, p1, Lyads/tt4;->b:Lyads/ax5;

    check-cast p1, Lcg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/qt4;->a()J

    move-result-wide v5

    iget-object p1, p0, Lyads/st4;->d:Lyads/tt4;

    iget-wide v7, p1, Lyads/tt4;->h:J

    sub-long/2addr v5, v7

    iget-wide v7, p1, Lyads/tt4;->f:J

    sub-long/2addr v7, v5

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p1, Lyads/tt4;->f:J

    iget-object p1, p0, Lyads/st4;->d:Lyads/tt4;

    iget-object v5, p1, Lyads/tt4;->e:Lyads/tx5;

    if-eqz v5, :cond_2

    iget-wide v6, p1, Lyads/tt4;->f:J

    iget-wide v8, p1, Lyads/tt4;->g:J

    sub-long/2addr v8, v6

    invoke-interface {v5, v6, v7, v8, v9}, Lyads/tx5;->a(JJ)V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lz22;->e(Ly22;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lyads/st4;->d:Lyads/tt4;

    iget-object p1, p1, Lyads/tt4;->d:Lyads/ut4;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lyads/ut4;->a()V

    :cond_5
    iget-object p0, p0, Lyads/st4;->d:Lyads/tt4;

    invoke-virtual {p0}, Lyads/tt4;->a()V

    :cond_6
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
