.class public final Lyads/de4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/s06;

.field public final b:Lyads/ej4;

.field public final c:Lyads/sm5;


# direct methods
.method public constructor <init>(Lyads/bf5;)V
    .locals 3

    new-instance v0, Lyads/s06;

    invoke-direct {v0}, Lyads/s06;-><init>()V

    new-instance v1, Lyads/ej4;

    invoke-direct {v1, p1}, Lyads/ej4;-><init>(Lyads/bf5;)V

    new-instance v2, Lyads/sm5;

    invoke-direct {v2, p1}, Lyads/sm5;-><init>(Lyads/bf5;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/de4;->a:Lyads/s06;

    iput-object v1, p0, Lyads/de4;->b:Lyads/ej4;

    iput-object v2, p0, Lyads/de4;->c:Lyads/sm5;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/ee4;Lyads/b05;Lyads/of4;Lyads/we4;)Lyads/ni4;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    new-instance v7, Lyads/sz2;

    invoke-direct {v7}, Lyads/sz2;-><init>()V

    iget-object v10, v0, Lyads/de4;->b:Lyads/ej4;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lyads/ee4;->a:Lyads/vg4;

    iget-object v3, v3, Lyads/vg4;->a:Ljava/util/List;

    move-object/from16 v5, p4

    iget-object v12, v5, Lyads/of4;->c:Lyads/gm4;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v14, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/sd4;

    invoke-interface {v12, v3}, Lyads/gm4;->a(Lyads/sd4;)Lyads/fm4;

    move-result-object v5

    new-instance v15, Lyads/lg4;

    move-object/from16 v4, p3

    invoke-direct {v15, v2, v3, v4, v5}, Lyads/lg4;-><init>(Landroid/content/Context;Lyads/sd4;Lyads/b05;Lyads/fm4;)V

    iget-object v6, v10, Lyads/ej4;->b:Lyads/ja;

    iget-object v6, v6, Lyads/ja;->a:Lyads/s06;

    iget-object v6, v3, Lyads/sd4;->i:Ljava/util/List;

    invoke-static {v6, v14}, Lyads/s06;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v18

    iget-object v6, v3, Lyads/sd4;->h:Ljava/util/List;

    invoke-static {v6, v14}, Lyads/s06;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v19

    new-instance v16, Lyads/hm4;

    iget-object v6, v3, Lyads/sd4;->b:Ljava/util/List;

    iget-object v8, v3, Lyads/sd4;->c:Ljava/lang/String;

    iget-object v9, v3, Lyads/sd4;->g:Lyads/j5;

    move-object/from16 v23, v14

    iget-object v14, v3, Lyads/sd4;->j:Lyads/s70;

    move-object/from16 v17, v6

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v14

    invoke-direct/range {v16 .. v22}, Lyads/hm4;-><init>(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lyads/j5;Lyads/s70;)V

    iget-object v1, v10, Lyads/ej4;->c:Lyads/ce4;

    sget-object v9, Lyads/ba;->d:Lyads/ba;

    move-object/from16 v6, p4

    move-object v8, v3

    move-object/from16 v4, v16

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v9}, Lyads/ce4;->a(Landroid/content/Context;Lyads/ee4;Lyads/hm4;Lyads/fm4;Lyads/of4;Lyads/sz2;Lyads/sd4;Lyads/ba;)Lyads/rt;

    move-result-object v1

    move-object v9, v8

    move-object v8, v3

    move-object v3, v9

    move-object v9, v7

    iget-object v2, v10, Lyads/ej4;->a:Lyads/dj4;

    iget-object v4, v3, Lyads/sd4;->a:Lyads/f95;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    :cond_0
    move-object v6, v1

    goto :goto_1

    :cond_1
    invoke-static {}, Lme0;->e()V

    return-object v23

    :goto_1
    new-instance v1, Lyads/be4;

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    move-object v4, v15

    invoke-direct/range {v1 .. v7}, Lyads/be4;-><init>(Landroid/content/Context;Lyads/sd4;Lyads/lg4;Lyads/b05;Lyads/rt;Lyads/we4;)V

    move-object v14, v2

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p4

    move-object v1, v8

    move-object v7, v9

    goto/16 :goto_0

    :cond_2
    move-object v8, v1

    move-object v9, v7

    move-object/from16 v23, v14

    move-object v14, v2

    new-instance v12, Lyads/mi4;

    invoke-direct {v12, v11}, Lyads/mi4;-><init>(Ljava/util/ArrayList;)V

    iget-object v0, v0, Lyads/de4;->c:Lyads/sm5;

    iget-object v1, v0, Lyads/sm5;->b:Lyads/ra;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v8, Lyads/ee4;->a:Lyads/vg4;

    iget-object v2, v1, Lyads/vg4;->b:Ljava/util/List;

    iget-object v3, v1, Lyads/vg4;->g:Ljava/util/List;

    move-object/from16 v4, v23

    invoke-static {v4, v3}, Lyads/s06;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v17

    iget-object v3, v1, Lyads/vg4;->c:Ljava/util/List;

    invoke-static {v4, v3}, Lyads/s06;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v18

    iget-object v1, v1, Lyads/vg4;->d:Lyads/j5;

    new-instance v15, Lyads/hm4;

    const-string v19, "ad_unit"

    const/16 v21, 0x0

    move-object/from16 v20, v1

    move-object/from16 v16, v2

    invoke-direct/range {v15 .. v21}, Lyads/hm4;-><init>(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lyads/j5;Lyads/s70;)V

    move-object/from16 v1, v16

    sget-object v2, Lyads/yh4;->b:Lyads/yh4;

    if-nez v2, :cond_4

    sget-object v2, Lyads/yh4;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lyads/yh4;->b:Lyads/yh4;

    if-nez v3, :cond_3

    new-instance v3, Lyads/yh4;

    invoke-direct {v3}, Lyads/yh4;-><init>()V

    sput-object v3, Lyads/yh4;->b:Lyads/yh4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_2
    monitor-exit v2

    move-object v2, v3

    goto :goto_4

    :goto_3
    monitor-exit v2

    throw v0

    :cond_4
    :goto_4
    new-instance v3, Lyads/ae4;

    invoke-direct {v3, v1, v2}, Lyads/ae4;-><init>(Ljava/util/List;Lyads/yh4;)V

    invoke-static {}, Lyads/yg5;->a()Lyads/zg5;

    move-result-object v4

    new-instance v5, Lyads/wm5;

    iget-object v6, v8, Lyads/ee4;->b:Lyads/d9;

    invoke-direct {v5, v12, v3, v4, v6}, Lyads/wm5;-><init>(Lyads/mi4;Lyads/ae4;Lyads/zg5;Lyads/d9;)V

    new-instance v4, Lyads/xm5;

    invoke-direct {v4, v1}, Lyads/xm5;-><init>(Ljava/util/List;)V

    new-instance v6, Lyads/qa;

    invoke-direct {v6, v9}, Lyads/qa;-><init>(Lyads/sz2;)V

    new-instance v7, Lyads/lh4;

    invoke-direct {v7, v14, v3, v2}, Lyads/lh4;-><init>(Landroid/content/Context;Lyads/ae4;Lyads/yh4;)V

    new-instance v1, Lyads/rt;

    iget-object v0, v0, Lyads/sm5;->a:Lyads/bf5;

    sget-object v10, Lyads/ba;->c:Lyads/ba;

    const/4 v9, 0x0

    move-object v2, v8

    move-object v8, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v5

    move-object v3, v15

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v10}, Lyads/rt;-><init>(Lyads/ee4;Lyads/ch4;Lyads/hm4;Lyads/fm4;Lyads/of4;Lyads/yi4;Lyads/lh4;Lyads/bf5;Lyads/sd4;Lyads/ba;)V

    new-instance v1, Lyads/ni4;

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object v4, v0

    move-object v0, v1

    move-object v2, v12

    move-object v1, v14

    invoke-direct/range {v0 .. v5}, Lyads/ni4;-><init>(Landroid/content/Context;Lyads/mi4;Lyads/b05;Lyads/rt;Lyads/we4;)V

    return-object v0
.end method
