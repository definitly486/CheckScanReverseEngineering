.class public final Lyads/bk4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:Lmk2;

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Lyads/ye4;

.field public final synthetic g:Lyads/af4;

.field public final synthetic h:Lyads/ck4;

.field public final synthetic i:Lyads/e4;

.field public final synthetic j:Lyads/ee4;

.field public final synthetic k:Lyads/jd0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/ye4;Lyads/af4;Lyads/ck4;Lyads/e4;Lyads/ee4;Lyads/jd0;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/bk4;->e:Landroid/content/Context;

    iput-object p2, p0, Lyads/bk4;->f:Lyads/ye4;

    iput-object p3, p0, Lyads/bk4;->g:Lyads/af4;

    iput-object p4, p0, Lyads/bk4;->h:Lyads/ck4;

    iput-object p5, p0, Lyads/bk4;->i:Lyads/e4;

    iput-object p6, p0, Lyads/bk4;->j:Lyads/ee4;

    iput-object p7, p0, Lyads/bk4;->k:Lyads/jd0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 9

    new-instance v0, Lyads/bk4;

    iget-object v1, p0, Lyads/bk4;->e:Landroid/content/Context;

    iget-object v2, p0, Lyads/bk4;->f:Lyads/ye4;

    iget-object v3, p0, Lyads/bk4;->g:Lyads/af4;

    iget-object v4, p0, Lyads/bk4;->h:Lyads/ck4;

    iget-object v5, p0, Lyads/bk4;->i:Lyads/e4;

    iget-object v6, p0, Lyads/bk4;->j:Lyads/ee4;

    iget-object v7, p0, Lyads/bk4;->k:Lyads/jd0;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lyads/bk4;-><init>(Landroid/content/Context;Lyads/ye4;Lyads/af4;Lyads/ck4;Lyads/e4;Lyads/ee4;Lyads/jd0;Le02;)V

    iput-object p1, v0, Lyads/bk4;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/bk4;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/bk4;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/bk4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/bk4;->c:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_0

    iget-object v0, p0, Lyads/bk4;->d:Ljava/lang/Object;

    check-cast v0, Lyads/b05;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v7, v0

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_1
    iget-object v1, p0, Lyads/bk4;->b:Lmk2;

    iget-object v5, p0, Lyads/bk4;->d:Ljava/lang/Object;

    check-cast v5, Lyads/b05;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/bk4;->d:Ljava/lang/Object;

    check-cast p1, Ly22;

    new-instance v11, Lyads/b05;

    iget-object v1, p0, Lyads/bk4;->e:Landroid/content/Context;

    invoke-direct {v11, v1}, Lyads/b05;-><init>(Landroid/content/Context;)V

    new-instance v6, Lyads/ak4;

    iget-object v7, p0, Lyads/bk4;->h:Lyads/ck4;

    iget-object v8, p0, Lyads/bk4;->i:Lyads/e4;

    iget-object v9, p0, Lyads/bk4;->e:Landroid/content/Context;

    iget-object v10, p0, Lyads/bk4;->j:Lyads/ee4;

    iget-object v12, p0, Lyads/bk4;->k:Lyads/jd0;

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Lyads/ak4;-><init>(Lyads/ck4;Lyads/e4;Landroid/content/Context;Lyads/ee4;Lyads/b05;Lyads/jd0;Le02;)V

    invoke-static {p1, v3, v3, v6, v2}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object v1

    new-instance v6, Lyads/zj4;

    iget-object v7, p0, Lyads/bk4;->h:Lyads/ck4;

    iget-object v8, p0, Lyads/bk4;->j:Lyads/ee4;

    invoke-direct {v6, v7, v8, v3}, Lyads/zj4;-><init>(Lyads/ck4;Lyads/ee4;Le02;)V

    invoke-static {p1, v3, v3, v6, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    iput-object v11, p0, Lyads/bk4;->d:Ljava/lang/Object;

    iput-object v1, p0, Lyads/bk4;->b:Lmk2;

    iput v5, p0, Lyads/bk4;->c:I

    invoke-virtual {p1, p0}, Lsb4;->e0(Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v5, v11

    :goto_0
    iput-object v5, p0, Lyads/bk4;->d:Ljava/lang/Object;

    iput-object v3, p0, Lyads/bk4;->b:Lmk2;

    iput v4, p0, Lyads/bk4;->c:I

    invoke-interface {v1, p0}, Lmk2;->Z(Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    move-object v7, v5

    :goto_2
    move-object v6, p1

    check-cast v6, Lyads/ee4;

    if-nez v6, :cond_5

    iget-object p0, p0, Lyads/bk4;->f:Lyads/ye4;

    sget-object p1, Lyads/o8;->w:Lyads/m4;

    invoke-interface {p0, p1}, Lyads/ye4;->a(Lyads/m4;)V

    goto :goto_3

    :cond_5
    iget-object v9, p0, Lyads/bk4;->g:Lyads/af4;

    iget-object p0, v9, Lyads/af4;->b:Lyads/t5;

    sget-object p1, Lyads/s5;->n:Lyads/s5;

    invoke-virtual {p0, p1}, Lyads/t5;->a(Lyads/s5;)V

    iget-object v8, v9, Lyads/af4;->c:Lyads/bf4;

    iget-object v5, v8, Lyads/bf4;->g:Lyads/df4;

    iget-object p0, v5, Lyads/df4;->d:Ly22;

    new-instance v4, Lyads/ze4;

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lyads/ze4;-><init>(Lyads/df4;Lyads/ee4;Lyads/b05;Lyads/bf4;Lyads/af4;Le02;)V

    invoke-static {p0, v3, v3, v4, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
