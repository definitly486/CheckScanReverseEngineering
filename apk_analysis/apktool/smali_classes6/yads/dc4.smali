.class public final Lyads/dc4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lyads/by3;

.field public final synthetic e:Lyads/tz3;

.field public final synthetic f:Lyads/ec4;

.field public final synthetic g:Lyads/d9;

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/by3;Lyads/tz3;Lyads/ec4;Lyads/d9;ZLe02;)V
    .locals 0

    iput-object p1, p0, Lyads/dc4;->c:Landroid/content/Context;

    iput-object p2, p0, Lyads/dc4;->d:Lyads/by3;

    iput-object p3, p0, Lyads/dc4;->e:Lyads/tz3;

    iput-object p4, p0, Lyads/dc4;->f:Lyads/ec4;

    iput-object p5, p0, Lyads/dc4;->g:Lyads/d9;

    iput-boolean p6, p0, Lyads/dc4;->h:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 8

    new-instance v0, Lyads/dc4;

    iget-object v1, p0, Lyads/dc4;->c:Landroid/content/Context;

    iget-object v2, p0, Lyads/dc4;->d:Lyads/by3;

    iget-object v3, p0, Lyads/dc4;->e:Lyads/tz3;

    iget-object v4, p0, Lyads/dc4;->f:Lyads/ec4;

    iget-object v5, p0, Lyads/dc4;->g:Lyads/d9;

    iget-boolean v6, p0, Lyads/dc4;->h:Z

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lyads/dc4;-><init>(Landroid/content/Context;Lyads/by3;Lyads/tz3;Lyads/ec4;Lyads/d9;ZLe02;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/dc4;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/dc4;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/dc4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/dc4;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p1, Lyads/gc4;->c:Lyads/fc4;

    iget-object v1, p0, Lyads/dc4;->c:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lyads/fc4;->a(Landroid/content/Context;)Lyads/gc4;

    move-result-object p1

    iget-object v1, p1, Lyads/gc4;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    iget v4, p1, Lyads/gc4;->a:I

    if-ne v1, v4, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v1, p0, Lyads/dc4;->d:Lyads/by3;

    iget-object v4, p1, Lyads/gc4;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lyads/dc4;->e:Lyads/tz3;

    if-nez v1, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v1, p0, Lyads/dc4;->f:Lyads/ec4;

    iget-object v1, v1, Lyads/ec4;->a:Lyads/ec5;

    iget-object v1, p0, Lyads/dc4;->c:Landroid/content/Context;

    iget-object v4, p0, Lyads/dc4;->g:Lyads/d9;

    iget-object v4, v4, Lyads/d9;->G:Ljava/lang/String;

    if-eqz v4, :cond_4

    sget-object v5, Lyads/zj6;->c:Lyads/yj6;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lyads/zj6;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/zj6;

    if-nez v4, :cond_5

    sget-object v4, Lyads/zj6;->e:Lyads/zj6;

    goto :goto_0

    :cond_4
    sget-object v4, Lyads/zj6;->e:Lyads/zj6;

    :cond_5
    :goto_0
    new-instance v5, Lyads/xj6;

    invoke-direct {v5, v4}, Lyads/xj6;-><init>(Lyads/zj6;)V

    :try_start_0
    new-instance v4, Lyads/vb4;

    invoke-direct {v4, v1, v5, v2}, Lyads/vb4;-><init>(Landroid/content/Context;Lyads/xj6;Landroid/util/AttributeSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    :catchall_0
    if-nez v2, :cond_6

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_6
    iget-object v1, p0, Lyads/dc4;->d:Lyads/by3;

    iget-object v4, p0, Lyads/dc4;->e:Lyads/tz3;

    iget-boolean v5, p0, Lyads/dc4;->h:Z

    iput v3, p0, Lyads/dc4;->b:I

    new-instance v6, Lc31;

    invoke-static {p0}, Lzya;->b(Le02;)Le02;

    move-result-object p0

    invoke-direct {v6, v3, p0}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v6}, Lc31;->u()V

    new-instance p0, Lyads/bc4;

    new-instance v3, Lyads/cc4;

    invoke-direct {v3, v5, v6}, Lyads/cc4;-><init>(ZLc31;)V

    invoke-direct {p0, p1, v1, v3}, Lyads/bc4;-><init>(Lyads/gc4;Lyads/by3;Lyads/cc4;)V

    iget-object v3, p1, Lyads/gc4;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->size()I

    move-result v3

    iget v7, p1, Lyads/gc4;->a:I

    if-ge v3, v7, :cond_7

    iget-object p1, p1, Lyads/gc4;->b:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    instance-of p1, v4, Lyads/rz3;

    if-eqz p1, :cond_8

    check-cast v4, Lyads/rz3;

    iget-object p1, v4, Lyads/rz3;->a:Ljava/lang/String;

    invoke-virtual {v2, p1, p0}, Lyads/vb4;->a(Ljava/lang/String;Lyads/ub4;)V

    goto :goto_1

    :cond_8
    instance-of p1, v4, Lyads/sz3;

    if-eqz p1, :cond_9

    check-cast v4, Lyads/sz3;

    iget-object p1, v4, Lyads/sz3;->a:Ljava/lang/String;

    invoke-virtual {v2, p1, p0}, Lyads/vb4;->a(Ljava/lang/String;Lyads/bc4;)V

    :cond_9
    :goto_1
    if-nez v5, :cond_a

    invoke-virtual {v6}, Lc31;->t()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lno5;

    if-eqz p0, :cond_a

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {v6, p0}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {v6}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, v0, :cond_b

    return-object v0

    :cond_b
    :goto_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_c
    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
