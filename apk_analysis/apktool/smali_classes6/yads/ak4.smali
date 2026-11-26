.class public final Lyads/ak4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lyads/ck4;

.field public final synthetic e:Lyads/e4;

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Lyads/ee4;

.field public final synthetic h:Lyads/b05;

.field public final synthetic i:Lyads/jd0;


# direct methods
.method public constructor <init>(Lyads/ck4;Lyads/e4;Landroid/content/Context;Lyads/ee4;Lyads/b05;Lyads/jd0;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/ak4;->d:Lyads/ck4;

    iput-object p2, p0, Lyads/ak4;->e:Lyads/e4;

    iput-object p3, p0, Lyads/ak4;->f:Landroid/content/Context;

    iput-object p4, p0, Lyads/ak4;->g:Lyads/ee4;

    iput-object p5, p0, Lyads/ak4;->h:Lyads/b05;

    iput-object p6, p0, Lyads/ak4;->i:Lyads/jd0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 8

    new-instance v0, Lyads/ak4;

    iget-object v1, p0, Lyads/ak4;->d:Lyads/ck4;

    iget-object v2, p0, Lyads/ak4;->e:Lyads/e4;

    iget-object v3, p0, Lyads/ak4;->f:Landroid/content/Context;

    iget-object v4, p0, Lyads/ak4;->g:Lyads/ee4;

    iget-object v5, p0, Lyads/ak4;->h:Lyads/b05;

    iget-object v6, p0, Lyads/ak4;->i:Lyads/jd0;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lyads/ak4;-><init>(Lyads/ck4;Lyads/e4;Landroid/content/Context;Lyads/ee4;Lyads/b05;Lyads/jd0;Le02;)V

    iput-object p1, v0, Lyads/ak4;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/ak4;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/ak4;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/ak4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/ak4;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/ak4;->c:Ljava/lang/Object;

    check-cast p1, Ly22;

    iget-object p1, p0, Lyads/ak4;->d:Lyads/ck4;

    iget-object v5, p0, Lyads/ak4;->e:Lyads/e4;

    iget-object v7, p0, Lyads/ak4;->f:Landroid/content/Context;

    iget-object v8, p0, Lyads/ak4;->g:Lyads/ee4;

    iget-object v10, p0, Lyads/ak4;->h:Lyads/b05;

    iget-object v9, p0, Lyads/ak4;->i:Lyads/jd0;

    :try_start_1
    iget-object v6, p1, Lyads/ck4;->b:Lyads/xj4;

    iput v3, p0, Lyads/ak4;->b:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lqo2;->a:Loi2;

    sget-object p1, Lsh2;->c:Lsh2;

    new-instance v4, Lyads/wj4;

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Lyads/wj4;-><init>(Lyads/e4;Lyads/xj4;Landroid/content/Context;Lyads/ee4;Lyads/jd0;Lyads/b05;Le02;)V

    invoke-static {p1, v4, p0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lyads/ee4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    new-instance p1, Lk57$a;

    invoke-direct {p1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    instance-of p0, p1, Lk57$a;

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move-object v2, p1

    :goto_3
    return-object v2
.end method
