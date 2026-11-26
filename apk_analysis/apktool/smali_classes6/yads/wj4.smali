.class public final Lyads/wj4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:Lmk2;

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lyads/e4;

.field public final synthetic f:Lyads/xj4;

.field public final synthetic g:Landroid/content/Context;

.field public final synthetic h:Lyads/ee4;

.field public final synthetic i:Lyads/jd0;

.field public final synthetic j:Lyads/b05;


# direct methods
.method public constructor <init>(Lyads/e4;Lyads/xj4;Landroid/content/Context;Lyads/ee4;Lyads/jd0;Lyads/b05;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/wj4;->e:Lyads/e4;

    iput-object p2, p0, Lyads/wj4;->f:Lyads/xj4;

    iput-object p3, p0, Lyads/wj4;->g:Landroid/content/Context;

    iput-object p4, p0, Lyads/wj4;->h:Lyads/ee4;

    iput-object p5, p0, Lyads/wj4;->i:Lyads/jd0;

    iput-object p6, p0, Lyads/wj4;->j:Lyads/b05;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 8

    new-instance v0, Lyads/wj4;

    iget-object v1, p0, Lyads/wj4;->e:Lyads/e4;

    iget-object v2, p0, Lyads/wj4;->f:Lyads/xj4;

    iget-object v3, p0, Lyads/wj4;->g:Landroid/content/Context;

    iget-object v4, p0, Lyads/wj4;->h:Lyads/ee4;

    iget-object v5, p0, Lyads/wj4;->i:Lyads/jd0;

    iget-object v6, p0, Lyads/wj4;->j:Lyads/b05;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lyads/wj4;-><init>(Lyads/e4;Lyads/xj4;Landroid/content/Context;Lyads/ee4;Lyads/jd0;Lyads/b05;Le02;)V

    iput-object p1, v0, Lyads/wj4;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/wj4;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/wj4;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/wj4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/wj4;->c:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v6

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_2
    iget-object v1, p0, Lyads/wj4;->d:Ljava/lang/Object;

    check-cast v1, Lmk2;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lyads/wj4;->b:Lmk2;

    iget-object v2, p0, Lyads/wj4;->d:Ljava/lang/Object;

    check-cast v2, Lmb4;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/wj4;->d:Ljava/lang/Object;

    check-cast p1, Ly22;

    iget-object v1, p0, Lyads/wj4;->e:Lyads/e4;

    iget-boolean v1, v1, Lyads/e4;->m:Z

    iget-object v7, p0, Lyads/wj4;->f:Lyads/xj4;

    if-eqz v1, :cond_8

    new-instance v1, Lyads/tj4;

    iget-object v2, p0, Lyads/wj4;->h:Lyads/ee4;

    iget-object v8, p0, Lyads/wj4;->j:Lyads/b05;

    invoke-direct {v1, v7, v2, v8, v6}, Lyads/tj4;-><init>(Lyads/xj4;Lyads/ee4;Lyads/b05;Le02;)V

    invoke-static {p1, v6, v6, v1, v3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object v1

    new-instance v2, Lyads/vj4;

    iget-object v7, p0, Lyads/wj4;->f:Lyads/xj4;

    iget-object v8, p0, Lyads/wj4;->g:Landroid/content/Context;

    iget-object v9, p0, Lyads/wj4;->h:Lyads/ee4;

    invoke-direct {v2, v7, v8, v9, v6}, Lyads/vj4;-><init>(Lyads/xj4;Landroid/content/Context;Lyads/ee4;Le02;)V

    invoke-static {p1, v6, v6, v2, v3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object v2

    new-instance v7, Lyads/uj4;

    iget-object v8, p0, Lyads/wj4;->f:Lyads/xj4;

    iget-object v9, p0, Lyads/wj4;->g:Landroid/content/Context;

    iget-object v10, p0, Lyads/wj4;->h:Lyads/ee4;

    iget-object v11, p0, Lyads/wj4;->i:Lyads/jd0;

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lyads/uj4;-><init>(Lyads/xj4;Landroid/content/Context;Lyads/ee4;Lyads/jd0;Le02;)V

    invoke-static {p1, v6, v6, v7, v3}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object p1

    iput-object v2, p0, Lyads/wj4;->d:Ljava/lang/Object;

    iput-object p1, p0, Lyads/wj4;->b:Lmk2;

    iput v5, p0, Lyads/wj4;->c:I

    invoke-virtual {v1, p0}, Lsb4;->e0(Le02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, p1

    :goto_0
    iput-object v1, p0, Lyads/wj4;->d:Ljava/lang/Object;

    iput-object v6, p0, Lyads/wj4;->b:Lmk2;

    iput v4, p0, Lyads/wj4;->c:I

    invoke-interface {v2, p0}, Lmb4;->e0(Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    goto :goto_2

    :cond_6
    :goto_1
    iput-object v6, p0, Lyads/wj4;->d:Ljava/lang/Object;

    iput v3, p0, Lyads/wj4;->c:I

    invoke-interface {v1, p0}, Lmk2;->Z(Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    goto :goto_2

    :cond_7
    return-object p0

    :cond_8
    iget-object v1, v7, Lyads/xj4;->c:Lyads/il4;

    iget-object v3, p0, Lyads/wj4;->g:Landroid/content/Context;

    iget-object v4, p0, Lyads/wj4;->h:Lyads/ee4;

    iget-object v5, p0, Lyads/wj4;->i:Lyads/jd0;

    iput v2, p0, Lyads/wj4;->c:I

    const/4 v2, 0x0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lyads/il4;->a(ZLandroid/content/Context;Lyads/ee4;Lyads/jd0;Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_9

    :goto_2
    return-object v0

    :cond_9
    return-object p0
.end method
