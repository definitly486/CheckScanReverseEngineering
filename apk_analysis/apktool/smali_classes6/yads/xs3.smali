.class public final Lyads/xs3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:Lyg5;

.field public c:Lyads/ct3;

.field public d:I

.field public final synthetic e:Lyads/ct3;


# direct methods
.method public constructor <init>(Lyads/ct3;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/xs3;->e:Lyads/ct3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0

    new-instance p1, Lyads/xs3;

    iget-object p0, p0, Lyads/xs3;->e:Lyads/ct3;

    invoke-direct {p1, p0, p2}, Lyads/xs3;-><init>(Lyads/ct3;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/xs3;

    iget-object p0, p0, Lyads/xs3;->e:Lyads/ct3;

    invoke-direct {p1, p0, p2}, Lyads/xs3;-><init>(Lyads/ct3;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/xs3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/xs3;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lyads/xs3;->b:Lyg5;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_1
    iget-object v1, p0, Lyads/xs3;->c:Lyads/ct3;

    iget-object v3, p0, Lyads/xs3;->b:Lyg5;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object p1, v3

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lyads/xs3;->e:Lyads/ct3;

    iget-object p1, v1, Lyads/ct3;->d:Lyg5;

    iput-object p1, p0, Lyads/xs3;->b:Lyg5;

    iput-object v1, p0, Lyads/xs3;->c:Lyads/ct3;

    iput v3, p0, Lyads/xs3;->d:I

    invoke-interface {p1, v4, p0}, Lyg5;->lock(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    :try_start_1
    iput-object p1, p0, Lyads/xs3;->b:Lyg5;

    iput-object v4, p0, Lyads/xs3;->c:Lyads/ct3;

    iput v2, p0, Lyads/xs3;->d:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lqo2;->a:Loi2;

    sget-object v2, Lsh2;->c:Lsh2;

    new-instance v3, Lyads/zs3;

    invoke-direct {v3, v1, v4}, Lyads/zs3;-><init>(Lyads/ct3;Le02;)V

    invoke-static {v2, v3, p0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :goto_2
    :try_start_2
    check-cast p1, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p0, v4}, Lyg5;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_1
    move-exception p0

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :goto_3
    invoke-interface {p0, v4}, Lyg5;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
