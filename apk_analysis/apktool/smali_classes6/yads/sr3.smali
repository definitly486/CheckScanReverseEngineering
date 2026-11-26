.class public final Lyads/sr3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/d9;

.field public final b:Lyads/m2;

.field public final c:Lyads/i2;

.field public final d:I

.field public final e:Lyads/x2;

.field public final f:Lyads/e4;

.field public final g:Lyads/bf5;

.field public final h:Lyads/tr3;

.field public final i:Lyads/ms3;

.field public final j:Lyads/jd0;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lyads/d9;Lyads/m2;Lyads/i2;ILyads/x2;Lyads/e4;Lyads/bf5;)V
    .locals 4

    new-instance v0, Lyads/tr3;

    invoke-direct {v0}, Lyads/tr3;-><init>()V

    new-instance v1, Lyads/ms3;

    invoke-direct {v1, p8}, Lyads/ms3;-><init>(Lyads/bf5;)V

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p8

    check-cast v2, Lyads/do6;

    new-instance v3, Lyads/lm6;

    iget-object v2, v2, Lyads/do6;->a:Landroid/content/Context;

    invoke-direct {v3, v2}, Lyads/lm6;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v3}, Lyads/re;->a(Landroid/content/Context;Lyads/lm6;)Lyads/q84;

    move-result-object p1

    new-instance v2, Lyads/e95;

    invoke-direct {v2}, Lyads/e95;-><init>()V

    invoke-virtual {v2, p7, p2}, Lyads/e95;->b(Lyads/e4;Lyads/d9;)Lyads/h75;

    move-result-object v2

    new-instance v3, Lyads/jd0;

    invoke-direct {v3, p1, v2}, Lyads/jd0;-><init>(Lyads/q84;Lyads/h75;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/sr3;->a:Lyads/d9;

    iput-object p3, p0, Lyads/sr3;->b:Lyads/m2;

    iput-object p4, p0, Lyads/sr3;->c:Lyads/i2;

    iput p5, p0, Lyads/sr3;->d:I

    iput-object p6, p0, Lyads/sr3;->e:Lyads/x2;

    iput-object p7, p0, Lyads/sr3;->f:Lyads/e4;

    iput-object p8, p0, Lyads/sr3;->g:Lyads/bf5;

    iput-object v0, p0, Lyads/sr3;->h:Lyads/tr3;

    iput-object v1, p0, Lyads/sr3;->i:Lyads/ms3;

    iput-object v3, p0, Lyads/sr3;->j:Lyads/jd0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/view/ViewGroup;Lyads/pg4;Lyads/h80;Lyads/b4;Lyads/oa5;Lyads/bx5;Lyads/ln1;Lyads/fo1;Lyads/u6;)Lyads/rr3;
    .locals 14

    iget-object v0, p0, Lyads/sr3;->i:Lyads/ms3;

    iget-object v2, p0, Lyads/sr3;->a:Lyads/d9;

    iget-object v5, p0, Lyads/sr3;->b:Lyads/m2;

    move-object v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lyads/ms3;->a(Landroid/content/Context;Lyads/d9;Lyads/pg4;Lyads/h80;Lyads/m2;Lyads/b4;)Lyads/mr3;

    move-result-object v0

    iget-object v1, p0, Lyads/sr3;->f:Lyads/e4;

    iget-object v2, p0, Lyads/sr3;->g:Lyads/bf5;

    iget-object v3, p0, Lyads/sr3;->a:Lyads/d9;

    iget-object v4, p0, Lyads/sr3;->e:Lyads/x2;

    iget v5, p0, Lyads/sr3;->d:I

    iget-object v3, v3, Lyads/d9;->a:Lyads/n70;

    sget-object v6, Lyads/n70;->f:Lyads/n70;

    if-ne v3, v6, :cond_0

    new-instance v3, Lyads/db5;

    invoke-direct {v3, v1, v2, v4, v5}, Lyads/db5;-><init>(Lyads/e4;Lyads/bf5;Lyads/x2;I)V

    :goto_0
    move-object v1, v3

    goto :goto_1

    :cond_0
    new-instance v3, Lyads/wp3;

    invoke-direct {v3, v1, v2, v4, v5}, Lyads/wp3;-><init>(Lyads/e4;Lyads/bf5;Lyads/x2;I)V

    goto :goto_0

    :goto_1
    iget-object v3, p0, Lyads/sr3;->a:Lyads/d9;

    iget-object v5, p0, Lyads/sr3;->b:Lyads/m2;

    iget-object v6, p0, Lyads/sr3;->c:Lyads/i2;

    iget-object v7, p0, Lyads/sr3;->j:Lyads/jd0;

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-interface/range {v1 .. v13}, Lyads/qn0;->a(Landroid/app/Activity;Lyads/d9;Lyads/pg4;Lyads/m2;Lyads/i2;Lyads/jd0;Lyads/b4;Lyads/oa5;Lyads/bx5;Lyads/ln1;Lyads/fo1;Lyads/u6;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lyads/sr3;->h:Lyads/tr3;

    iget-object v3, p0, Lyads/sr3;->a:Lyads/d9;

    iget-object p0, p0, Lyads/sr3;->b:Lyads/m2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/k13;

    move-object/from16 p9, p0

    move-object/from16 p6, p1

    move-object/from16 p8, p3

    move-object/from16 p10, p4

    move-object/from16 p7, v3

    move-object/from16 p5, v4

    invoke-interface/range {p5 .. p10}, Lyads/k13;->a(Landroid/app/Activity;Lyads/d9;Lyads/pg4;Lyads/m2;Lyads/h80;)Lyads/mr3;

    move-result-object p0

    move-object/from16 v4, p9

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p0, v4

    goto :goto_2

    :cond_1
    invoke-static {v0}, Lu96;->j(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v2, p0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance v0, Lyads/rr3;

    move-object/from16 v2, p2

    invoke-direct {v0, p1, v2, p0}, Lyads/rr3;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;)V

    return-object v0
.end method
