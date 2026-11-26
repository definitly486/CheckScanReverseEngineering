.class public final Lyads/bf4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Lyads/d9;

.field public final c:Lyads/vg4;

.field public final d:Lyads/of4;

.field public final e:Lyads/ye4;

.field public final f:Lyads/jd0;

.field public final synthetic g:Lyads/df4;


# direct methods
.method public constructor <init>(Lyads/df4;Lyads/d9;Lyads/vg4;Lyads/of4;Lyads/ye4;)V
    .locals 1

    new-instance v0, Lyads/e95;

    invoke-direct {v0}, Lyads/e95;-><init>()V

    iput-object p1, p0, Lyads/bf4;->g:Lyads/df4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/bf4;->b:Lyads/d9;

    iput-object p3, p0, Lyads/bf4;->c:Lyads/vg4;

    iput-object p4, p0, Lyads/bf4;->d:Lyads/of4;

    iput-object p5, p0, Lyads/bf4;->e:Lyads/ye4;

    iget-object p3, p1, Lyads/df4;->b:Lyads/e4;

    invoke-virtual {v0, p3, p2}, Lyads/e95;->b(Lyads/e4;Lyads/d9;)Lyads/h75;

    move-result-object p2

    iget-object p3, p1, Lyads/df4;->e:Landroid/content/Context;

    iget-object p1, p1, Lyads/df4;->a:Lyads/bf5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lyads/do6;

    new-instance p4, Lyads/lm6;

    iget-object p1, p1, Lyads/do6;->a:Landroid/content/Context;

    invoke-direct {p4, p1}, Lyads/lm6;-><init>(Landroid/content/Context;)V

    invoke-static {p3, p4}, Lyads/re;->a(Landroid/content/Context;Lyads/lm6;)Lyads/q84;

    move-result-object p1

    new-instance p3, Lyads/jd0;

    invoke-direct {p3, p1, p2}, Lyads/jd0;-><init>(Lyads/q84;Lyads/h75;)V

    iput-object p3, p0, Lyads/bf4;->f:Lyads/jd0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lyads/bf4;->c:Lyads/vg4;

    if-nez v0, :cond_0

    iget-object v0, p0, Lyads/bf4;->e:Lyads/ye4;

    sget-object v1, Lyads/o8;->c:Lyads/m4;

    invoke-interface {v0, v1}, Lyads/ye4;->a(Lyads/m4;)V

    return-void

    :cond_0
    iget-object v0, v0, Lyads/vg4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyads/bf4;->e:Lyads/ye4;

    sget-object v1, Lyads/o8;->h:Lyads/m4;

    invoke-interface {v0, v1}, Lyads/ye4;->a(Lyads/m4;)V

    return-void

    :cond_1
    new-instance v8, Lyads/ee4;

    iget-object v0, p0, Lyads/bf4;->c:Lyads/vg4;

    iget-object v1, p0, Lyads/bf4;->b:Lyads/d9;

    iget-object v2, p0, Lyads/bf4;->g:Lyads/df4;

    iget-object v3, v2, Lyads/df4;->b:Lyads/e4;

    invoke-direct {v8, v3, v1, v0}, Lyads/ee4;-><init>(Lyads/e4;Lyads/d9;Lyads/vg4;)V

    new-instance v5, Lyads/af4;

    iget-object v0, p0, Lyads/bf4;->e:Lyads/ye4;

    iget-object v1, v2, Lyads/df4;->c:Lyads/t5;

    invoke-direct {v5, p0, v0, v1}, Lyads/af4;-><init>(Lyads/bf4;Lyads/ye4;Lyads/t5;)V

    sget-object v0, Lyads/s5;->n:Lyads/s5;

    const/4 v11, 0x0

    invoke-virtual {v1, v0, v11}, Lyads/t5;->a(Lyads/s5;Ljava/lang/Object;)V

    iget-object v0, p0, Lyads/bf4;->g:Lyads/df4;

    iget-object v6, v0, Lyads/df4;->g:Lyads/ck4;

    iget-object v3, v0, Lyads/df4;->e:Landroid/content/Context;

    iget-object v7, v0, Lyads/df4;->b:Lyads/e4;

    iget-object v9, p0, Lyads/bf4;->f:Lyads/jd0;

    iget-object v4, p0, Lyads/bf4;->e:Lyads/ye4;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lyads/dk4;

    invoke-direct {v0, v4}, Lyads/dk4;-><init>(Lyads/ye4;)V

    iget-object v1, v6, Lyads/ck4;->a:Ly22;

    new-instance v2, Lyads/bk4;

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lyads/bk4;-><init>(Landroid/content/Context;Lyads/ye4;Lyads/af4;Lyads/ck4;Lyads/e4;Lyads/ee4;Lyads/jd0;Le02;)V

    const/4 v3, 0x2

    invoke-static {v1, v0, v11, v2, v3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p0, p0, Lyads/bf4;->e:Lyads/ye4;

    sget-object v0, Lyads/o8;->c:Lyads/m4;

    invoke-interface {p0, v0}, Lyads/ye4;->a(Lyads/m4;)V

    return-void
.end method
