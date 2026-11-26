.class public final Lcom/my/target/o1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls5a;

.field public final b:Ls5a;

.field public final c:Lcom/my/target/m1$b;

.field public d:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ls5a;Ls5a;Lcom/my/target/m1$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/my/target/o1;->b:Ls5a;

    iput-object p1, p0, Lcom/my/target/o1;->a:Ls5a;

    iput-object p3, p0, Lcom/my/target/o1;->c:Lcom/my/target/m1$b;

    return-void
.end method

.method public static a(Ln4a;Lcom/my/target/m1$b;)Lcom/my/target/o1;
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ln4a;->e(I)Ls5a;

    move-result-object v1

    invoke-virtual {p0, v0}, Ln4a;->a(I)Ls5a;

    move-result-object p0

    new-instance v0, Lcom/my/target/o1;

    invoke-direct {v0, v1, p0, p1}, Lcom/my/target/o1;-><init>(Ls5a;Ls5a;Lcom/my/target/m1$b;)V

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/my/target/o1;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/my/target/o1;->b:Ls5a;

    iget-object v0, v0, Ls5a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/my/target/o1;->a:Ls5a;

    iget-object v0, v0, Ls5a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/my/target/o1;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final c(FF)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/my/target/o1;->d:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-static {v2}, Ll3a;->a(Landroid/view/View;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    :goto_0
    iget-object v5, v0, Lcom/my/target/o1;->b:Ls5a;

    iget-object v5, v5, Ls5a;->b:Ljava/util/List;

    iget-object v6, v0, Lcom/my/target/o1;->a:Ls5a;

    iget-object v7, v6, Ls5a;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    const/high16 v8, -0x40800000    # -1.0f

    if-nez v2, :cond_3

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsna;

    iput v8, v1, Lsna;->j:F

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-virtual {v6}, Ls5a;->a()Ls5a;

    move-result-object v2

    iget-object v6, v2, Ls5a;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    const/4 v12, 0x1

    if-eqz v9, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lht9;

    iget v13, v9, Lht9;->i:F

    cmpl-float v14, v13, v8

    if-nez v14, :cond_5

    iget v14, v9, Lht9;->j:F

    cmpl-float v10, v14, v10

    if-ltz v10, :cond_5

    mul-float v14, v14, p2

    const/high16 v10, 0x42c80000    # 100.0f

    div-float v13, v14, v10

    iput v13, v9, Lht9;->i:F

    iput v8, v9, Lht9;->j:F

    :cond_5
    invoke-static {v13, v1}, Ly14;->a(FF)I

    move-result v10

    if-eq v10, v12, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    iget v10, v9, Lo2a;->f:I

    iget-boolean v13, v9, Lht9;->h:Z

    int-to-double v14, v10

    cmpg-double v10, v14, v3

    if-gtz v10, :cond_6

    move v11, v12

    goto :goto_4

    :cond_6
    const/4 v11, 0x0

    :goto_4
    if-eqz v11, :cond_7

    if-nez v13, :cond_8

    :cond_7
    if-nez v11, :cond_4

    if-nez v13, :cond_4

    :cond_8
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    sub-float v7, p2, v1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lsna;

    iget v13, v9, Lo2a;->f:I

    iget-boolean v14, v9, Lsna;->i:Z

    iget v15, v9, Lsna;->h:F

    move/from16 v16, v10

    iget v10, v9, Lsna;->j:F

    int-to-double v11, v13

    cmpg-double v11, v3, v11

    if-gez v11, :cond_a

    const/4 v11, 0x1

    goto :goto_6

    :cond_a
    const/4 v11, 0x0

    :goto_6
    cmpg-float v12, v10, v16

    if-gez v12, :cond_b

    const/4 v12, 0x1

    goto :goto_7

    :cond_b
    const/4 v12, 0x0

    :goto_7
    invoke-static {v7, v15}, Ly14;->a(FF)I

    move-result v13

    const/4 v8, -0x1

    if-ne v13, v8, :cond_e

    if-nez v11, :cond_c

    if-eqz v12, :cond_e

    :cond_c
    if-nez v14, :cond_d

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    move/from16 v10, v16

    const/high16 v8, -0x40800000    # -1.0f

    :goto_8
    const/4 v12, 0x1

    goto :goto_5

    :cond_e
    if-eqz v11, :cond_f

    const/high16 v11, -0x40800000    # -1.0f

    iput v11, v9, Lsna;->j:F

    :goto_9
    move v8, v11

    move/from16 v10, v16

    goto :goto_8

    :cond_f
    const/high16 v11, -0x40800000    # -1.0f

    if-eqz v12, :cond_10

    iput v1, v9, Lsna;->j:F

    goto :goto_9

    :cond_10
    sub-float v10, v1, v10

    invoke-static {v10, v15}, Ly14;->a(FF)I

    move-result v10

    if-ne v10, v8, :cond_11

    goto :goto_9

    :cond_11
    if-eqz v14, :cond_12

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    :cond_13
    iget-object v0, v0, Lcom/my/target/o1;->c:Lcom/my/target/m1$b;

    invoke-static {v2, v0}, Lcom/my/target/m1;->g(Ls5a;Lcom/my/target/m1$b;)V

    return-void
.end method

.method public final d(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/my/target/o1;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/my/target/o1;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method
