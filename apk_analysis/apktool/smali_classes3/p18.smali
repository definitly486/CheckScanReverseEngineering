.class public final synthetic Lp18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo18$a;


# virtual methods
.method public final a(Landroid/content/Context;)Lsy6;
    .locals 20

    new-instance v0, Lr14$a;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lr14$a;-><init>(Landroid/content/Context;)V

    sget-object v1, Lq18;->b:Lb53$b;

    sget-object v2, Lj59;->a:Lj59;

    iget-object v3, v0, Lr14$a;->c:Lb53$a;

    iget-object v3, v3, Lb53$a;->a:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_0

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    new-instance v4, Lsy6$a;

    new-instance v1, Lb53;

    invoke-static {v3}, Lrn1;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lb53;-><init>(Ljava/util/Map;)V

    iget-object v2, v0, Lr14$a;->b:Lb24$b;

    iget-object v6, v2, Lb24$b;->a:Lw93;

    iget-object v7, v2, Lb24$b;->b:Lo22;

    iget-object v8, v2, Lb24$b;->c:Lo22;

    iget-object v9, v2, Lb24$b;->d:Lo22;

    iget-object v10, v2, Lb24$b;->e:Lsx0;

    iget-object v11, v2, Lb24$b;->f:Lsx0;

    iget-object v12, v2, Lb24$b;->g:Lsx0;

    iget-object v13, v2, Lb24$b;->h:Lnl3;

    iget-object v14, v2, Lb24$b;->i:Lnl3;

    iget-object v15, v2, Lb24$b;->j:Lnl3;

    iget-object v3, v2, Lb24$b;->k:Lw18;

    iget-object v5, v2, Lb24$b;->l:Lmd7;

    iget-object v2, v2, Lb24$b;->m:Lre6;

    move-object/from16 v17, v5

    new-instance v5, Lb24$b;

    move-object/from16 v19, v1

    move-object/from16 v18, v2

    move-object/from16 v16, v3

    invoke-direct/range {v5 .. v19}, Lb24$b;-><init>(Lw93;Lo22;Lo22;Lo22;Lsx0;Lsx0;Lsx0;Lnl3;Lnl3;Lnl3;Lw18;Lmd7;Lre6;Lb53;)V

    new-instance v1, Lus0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lus0;-><init>(I)V

    new-instance v7, Lfh8;

    invoke-direct {v7, v1}, Lfh8;-><init>(Lll3;)V

    new-instance v1, Lp14;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lp14;-><init>(Ljava/lang/Object;I)V

    new-instance v8, Lfh8;

    invoke-direct {v8, v1}, Lfh8;-><init>(Lll3;)V

    new-instance v1, Lq14;

    invoke-direct {v1, v2}, Lq14;-><init>(I)V

    new-instance v9, Lfh8;

    invoke-direct {v9, v1}, Lfh8;-><init>(Lll3;)V

    new-instance v10, Lfs1;

    invoke-direct {v10}, Lfs1;-><init>()V

    iget-object v0, v0, Lr14$a;->a:Landroid/content/Context;

    move-object v6, v5

    move-object v5, v0

    invoke-direct/range {v4 .. v10}, Lsy6$a;-><init>(Landroid/content/Context;Lb24$b;Lfh8;Lfh8;Lfh8;Lfs1;)V

    new-instance v0, Lsy6;

    invoke-direct {v0, v4}, Lsy6;-><init>(Lsy6$a;)V

    return-object v0
.end method
