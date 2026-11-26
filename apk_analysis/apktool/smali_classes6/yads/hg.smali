.class public final Lyads/hg;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:Lyg5;

.field public c:Lyads/ig;

.field public d:Landroid/content/Context;

.field public e:I

.field public final synthetic f:Lyads/ig;

.field public final synthetic g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lyads/ig;Landroid/content/Context;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/hg;->f:Lyads/ig;

    iput-object p2, p0, Lyads/hg;->g:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance p1, Lyads/hg;

    iget-object v0, p0, Lyads/hg;->f:Lyads/ig;

    iget-object p0, p0, Lyads/hg;->g:Landroid/content/Context;

    invoke-direct {p1, v0, p0, p2}, Lyads/hg;-><init>(Lyads/ig;Landroid/content/Context;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/hg;

    iget-object v0, p0, Lyads/hg;->f:Lyads/ig;

    iget-object p0, p0, Lyads/hg;->g:Landroid/content/Context;

    invoke-direct {p1, v0, p0, p2}, Lyads/hg;-><init>(Lyads/ig;Landroid/content/Context;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/hg;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/hg;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lyads/hg;->c:Lyads/ig;

    iget-object p0, p0, Lyads/hg;->b:Lyg5;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_1
    iget-object v1, p0, Lyads/hg;->d:Landroid/content/Context;

    iget-object v3, p0, Lyads/hg;->c:Lyads/ig;

    iget-object v5, p0, Lyads/hg;->b:Lyg5;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object p1, v5

    move-object v5, v1

    move-object v1, p1

    move-object p1, v3

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/hg;->f:Lyads/ig;

    iget-object v1, p1, Lyads/ig;->e:Lyg5;

    iget-object v5, p0, Lyads/hg;->g:Landroid/content/Context;

    iput-object v1, p0, Lyads/hg;->b:Lyg5;

    iput-object p1, p0, Lyads/hg;->c:Lyads/ig;

    iput-object v5, p0, Lyads/hg;->d:Landroid/content/Context;

    iput v3, p0, Lyads/hg;->e:I

    invoke-interface {v1, v4, p0}, Lyg5;->lock(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    :try_start_1
    iget-object v3, p1, Lyads/ig;->d:Lyads/fg;

    if-nez v3, :cond_9

    sget-wide v6, Lyads/ig;->f:J

    new-instance v3, Lyads/gg;

    invoke-direct {v3, p1, v5, v4}, Lyads/gg;-><init>(Lyads/ig;Landroid/content/Context;Le02;)V

    iput-object v1, p0, Lyads/hg;->b:Lyg5;

    iput-object p1, p0, Lyads/hg;->c:Lyads/ig;

    iput-object v4, p0, Lyads/hg;->d:Landroid/content/Context;

    iput v2, p0, Lyads/hg;->e:I

    invoke-static {v6, v7, v3, p0}, Lyv8;->c(JLbm3;Le02;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, p0

    move-object p0, v1

    :goto_2
    :try_start_2
    check-cast p1, Lyads/pg;

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lyads/pg;->a:Ljava/lang/String;

    iget-object v2, p1, Lyads/pg;->b:Ljava/lang/String;

    iget-object p1, p1, Lyads/pg;->c:Ljava/lang/String;

    new-instance v3, Lyads/fg;

    invoke-direct {v3, p1, v2, v1}, Lyads/fg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object v3, v4

    :goto_3
    if-eqz v3, :cond_a

    iget-object p1, v0, Lyads/ig;->a:Lyads/kg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v3, Lyads/fg;->a:Ljava/lang/String;

    iget-object v1, v3, Lyads/fg;->b:Ljava/lang/String;

    iget-object v2, v3, Lyads/fg;->c:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    iput-object v3, v0, Lyads/ig;->d:Lyads/fg;

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_9
    move-object p0, v1

    :cond_a
    :goto_4
    sget-object p1, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p0, v4}, Lyg5;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_5
    move-object v1, p0

    move-object p0, p1

    :goto_6
    invoke-interface {v1, v4}, Lyg5;->unlock(Ljava/lang/Object;)V

    throw p0
.end method
