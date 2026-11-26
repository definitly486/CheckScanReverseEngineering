.class public final Ltz2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Llz2$a;Lb24;Lzz5;La13;Lf02;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    instance-of v4, v3, Lsz2;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lsz2;

    iget v5, v4, Lsz2;->t:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lsz2;->t:I

    goto :goto_0

    :cond_0
    new-instance v4, Lsz2;

    invoke-direct {v4, v3}, Lf02;-><init>(Le02;)V

    :goto_0
    iget-object v3, v4, Lsz2;->s:Ljava/lang/Object;

    sget-object v5, La32;->COROUTINE_SUSPENDED:La32;

    iget v6, v4, Lsz2;->t:I

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    if-ne v6, v7, :cond_1

    iget v0, v4, Lsz2;->r:I

    iget v1, v4, Lsz2;->q:I

    iget-object v2, v4, Lsz2;->p:Ljava/util/List;

    check-cast v2, Ljava/util/List;

    iget-object v6, v4, Lsz2;->o:La13;

    iget-object v8, v4, Lsz2;->n:Lzz5;

    iget-object v9, v4, Lsz2;->m:Lb24;

    iget-object v10, v4, Lsz2;->l:Llz2$a;

    invoke-static {v3}, Lr57;->b(Ljava/lang/Object;)V

    move-object/from16 v16, v8

    move v8, v0

    move-object v0, v10

    move-object v10, v4

    move-object v4, v2

    move-object/from16 v2, v16

    goto/16 :goto_4

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-static {v3}, Lr57;->b(Ljava/lang/Object;)V

    sget-object v3, Ld24;->a:Lb53$b;

    invoke-static {v1, v3}, Lc53;->a(Lb24;Lb53$b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    return-object v0

    :cond_3
    iget-object v6, v0, Llz2$a;->a:Lx04;

    instance-of v8, v6, Ldj0;

    if-nez v8, :cond_4

    sget-object v9, Ld24;->d:Lb53$b;

    invoke-static {v1, v9}, Lc53;->a(Lb24;Lb53$b;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_4

    return-object v0

    :cond_4
    const/4 v9, 0x0

    if-eqz v8, :cond_6

    move-object v8, v6

    check-cast v8, Ldj0;

    iget-object v8, v8, Ldj0;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    if-nez v10, :cond_5

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_5
    sget-object v11, Lsb9;->a:[Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v10}, Lyr;->E([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_2

    :cond_6
    iget-object v8, v2, Lzz5;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v6, v8}, Ln24;->a(Lx04;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    sget-object v6, Lf24;->b:Lb53$b;

    invoke-static {v2, v6}, Lc53;->b(Lzz5;Lb53$b;)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Landroid/graphics/Bitmap$Config;

    iget-object v12, v2, Lzz5;->b:Lt18;

    iget-object v13, v2, Lzz5;->c:Lmd7;

    sget-object v6, Ld24;->b:Lb53$b;

    invoke-static {v2, v6}, Lc53;->b(Lzz5;Lb53$b;)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Lt18;

    iget-object v6, v2, Lzz5;->d:Lre6;

    sget-object v8, Lre6;->INEXACT:Lre6;

    if-ne v6, v8, :cond_7

    move v15, v7

    goto :goto_1

    :cond_7
    move v15, v9

    :goto_1
    invoke-static/range {v10 .. v15}, Lss2;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lt18;Lmd7;Lt18;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    :goto_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    move-object v10, v8

    move-object v8, v4

    move-object v4, v3

    move-object/from16 v3, p3

    :goto_3
    if-ge v9, v6, :cond_9

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lt19;

    iget-object v11, v2, Lzz5;->b:Lt18;

    iput-object v0, v8, Lsz2;->l:Llz2$a;

    iput-object v1, v8, Lsz2;->m:Lb24;

    iput-object v2, v8, Lsz2;->n:Lzz5;

    iput-object v3, v8, Lsz2;->o:La13;

    move-object v11, v4

    check-cast v11, Ljava/util/List;

    iput-object v11, v8, Lsz2;->p:Ljava/util/List;

    iput v9, v8, Lsz2;->q:I

    iput v6, v8, Lsz2;->r:I

    iput v7, v8, Lsz2;->t:I

    invoke-virtual {v10}, Lt19;->b()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v5, :cond_8

    return-object v5

    :cond_8
    move/from16 v16, v9

    move-object v9, v1

    move/from16 v1, v16

    move/from16 v16, v6

    move-object v6, v3

    move-object v3, v10

    move-object v10, v8

    move/from16 v8, v16

    :goto_4
    check-cast v3, Landroid/graphics/Bitmap;

    invoke-interface {v10}, Le02;->getContext()Lo22;

    move-result-object v11

    invoke-static {v11}, Lqb4;->e(Lo22;)V

    add-int/2addr v1, v7

    move-object/from16 v16, v9

    move v9, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v10

    move-object v10, v3

    move-object v3, v6

    move v6, v8

    move-object/from16 v8, v16

    goto :goto_3

    :cond_9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ldj0;

    invoke-direct {v1, v10}, Ldj0;-><init>(Landroid/graphics/Bitmap;)V

    iget-boolean v2, v0, Llz2$a;->b:Z

    iget-object v3, v0, Llz2$a;->c:Lz82;

    iget-object v0, v0, Llz2$a;->d:Ljava/lang/String;

    new-instance v4, Llz2$a;

    invoke-direct {v4, v1, v2, v3, v0}, Llz2$a;-><init>(Lx04;ZLz82;Ljava/lang/String;)V

    return-object v4
.end method
