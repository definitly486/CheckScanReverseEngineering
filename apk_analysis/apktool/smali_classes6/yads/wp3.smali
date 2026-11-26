.class public final Lyads/wp3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/qn0;


# instance fields
.field public final a:Lyads/bf5;

.field public final b:Lyads/rp3;

.field public final c:Lyads/ue4;


# direct methods
.method public constructor <init>(Lyads/e4;Lyads/bf5;Lyads/x2;I)V
    .locals 1

    new-instance v0, Lyads/rp3;

    invoke-direct {v0, p1, p2, p3, p4}, Lyads/rp3;-><init>(Lyads/e4;Lyads/bf5;Lyads/x2;I)V

    new-instance p1, Lyads/ue4;

    invoke-direct {p1}, Lyads/ue4;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/wp3;->a:Lyads/bf5;

    iput-object v0, p0, Lyads/wp3;->b:Lyads/rp3;

    iput-object p1, p0, Lyads/wp3;->c:Lyads/ue4;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lyads/d9;Lyads/pg4;Lyads/m2;Lyads/i2;Lyads/jd0;Lyads/b4;Lyads/oa5;Lyads/bx5;Lyads/ln1;Lyads/fo1;Lyads/u6;)Ljava/util/List;
    .locals 16

    move-object/from16 v0, p0

    new-instance v4, Lyads/ph6;

    invoke-direct {v4}, Lyads/ph6;-><init>()V

    iget-object v6, v0, Lyads/wp3;->c:Lyads/ue4;

    new-instance v1, Lyads/p10;

    move-object/from16 v2, p2

    move-object/from16 v5, p4

    move-object/from16 v3, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Lyads/p10;-><init>(Lyads/d9;Lyads/i2;Lyads/ph6;Lyads/m2;Lyads/te4;Lyads/jd0;Lyads/bx5;)V

    iget-object v2, v0, Lyads/wp3;->a:Lyads/bf5;

    check-cast v2, Lyads/do6;

    iget-object v2, v2, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {v2, v2}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object v2

    new-instance v3, Lyads/nx4;

    invoke-direct {v3, v1, v2}, Lyads/nx4;-><init>(Lyads/p10;Lyads/q84;)V

    new-instance v4, Lyads/jr3;

    invoke-direct {v4, v1, v2}, Lyads/jr3;-><init>(Lyads/p10;Lyads/q84;)V

    new-instance v5, Lyads/ir3;

    invoke-direct {v5, v1, v2}, Lyads/ir3;-><init>(Lyads/p10;Lyads/q84;)V

    const/4 v1, 0x3

    new-array v2, v1, [Lyads/k13;

    const/4 v6, 0x0

    aput-object v3, v2, v6

    const/4 v3, 0x1

    aput-object v4, v2, v3

    const/4 v4, 0x2

    aput-object v5, v2, v4

    invoke-static {v2}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v0, v0, Lyads/wp3;->b:Lyads/rp3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v5, v0, Lyads/rp3;->e:Lyads/mo1;

    move-object/from16 v7, p1

    invoke-virtual {v5, v7}, Lyads/mo1;->a(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p11, :cond_0

    invoke-interface/range {p3 .. p3}, Lyads/pg4;->d()Lyads/sj4;

    move-result-object v5

    new-instance v15, Lyads/v40;

    new-instance v7, Lyads/p10;

    iget-object v10, v0, Lyads/rp3;->f:Lyads/ph6;

    iget-object v12, v0, Lyads/rp3;->g:Lyads/ve4;

    move-object/from16 v8, p2

    move-object/from16 v11, p4

    move-object/from16 v9, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p9

    invoke-direct/range {v7 .. v14}, Lyads/p10;-><init>(Lyads/d9;Lyads/i2;Lyads/ph6;Lyads/m2;Lyads/te4;Lyads/jd0;Lyads/bx5;)V

    move-object v14, v7

    new-instance v7, Lyads/e60;

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    move-object/from16 v12, p9

    move-object/from16 v13, p11

    move-object v11, v5

    invoke-direct/range {v7 .. v13}, Lyads/e60;-><init>(Lyads/d9;Lyads/i2;Lyads/b4;Lyads/sj4;Lyads/bx5;Lyads/fo1;)V

    new-instance v5, Lyads/gm5;

    iget-object v8, v0, Lyads/rp3;->g:Lyads/ve4;

    move-object/from16 v9, p5

    move-object/from16 v10, p12

    invoke-direct {v5, v10, v9, v8}, Lyads/gm5;-><init>(Lyads/u6;Lyads/i2;Lyads/ve4;)V

    new-array v1, v1, [Lyads/on0;

    aput-object v14, v1, v6

    aput-object v7, v1, v3

    aput-object v5, v1, v4

    invoke-direct {v15, v1}, Lyads/v40;-><init>([Lyads/on0;)V

    new-instance v1, Lyads/io1;

    iget-object v3, v0, Lyads/rp3;->a:Lyads/e4;

    iget-object v4, v0, Lyads/rp3;->b:Lyads/bf5;

    iget-object v5, v0, Lyads/rp3;->c:Lyads/x2;

    iget v0, v0, Lyads/rp3;->d:I

    move-object/from16 p6, p10

    move-object/from16 p1, p11

    move/from16 p7, v0

    move-object/from16 p0, v1

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p5, v5

    move-object/from16 p4, v15

    invoke-direct/range {p0 .. p7}, Lyads/io1;-><init>(Lyads/fo1;Lyads/e4;Lyads/bf5;Lyads/v40;Lyads/x2;Lyads/ln1;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v1, p0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lqn1;->R(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
