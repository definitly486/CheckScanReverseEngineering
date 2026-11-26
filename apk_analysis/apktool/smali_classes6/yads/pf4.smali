.class public final Lyads/pf4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/dj4;

.field public final b:Lyads/ce4;


# direct methods
.method public constructor <init>(Lyads/bf5;)V
    .locals 2

    new-instance v0, Lyads/dj4;

    invoke-direct {v0}, Lyads/dj4;-><init>()V

    new-instance v1, Lyads/ce4;

    invoke-direct {v1, p1}, Lyads/ce4;-><init>(Lyads/bf5;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/pf4;->a:Lyads/dj4;

    iput-object v1, p0, Lyads/pf4;->b:Lyads/ce4;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/ee4;Lyads/b05;Lyads/de4;Lyads/of4;Lyads/we4;Lyads/sd4;)Lyads/be4;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v1, p4

    move-object/from16 v7, p7

    const/4 v3, 0x0

    if-eqz v7, :cond_2

    iget-object v4, v0, Lyads/pf4;->a:Lyads/dj4;

    iget-object v5, v7, Lyads/sd4;->a:Lyads/f95;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    :cond_0
    move-object/from16 v5, p5

    goto :goto_0

    :cond_1
    invoke-static {}, Lme0;->e()V

    return-object v3

    :goto_0
    iget-object v3, v5, Lyads/of4;->c:Lyads/gm4;

    invoke-interface {v3, v7}, Lyads/gm4;->a(Lyads/sd4;)Lyads/fm4;

    move-result-object v4

    new-instance v6, Lyads/sz2;

    invoke-direct {v6}, Lyads/sz2;-><init>()V

    iget-object v3, v1, Lyads/de4;->a:Lyads/s06;

    iget-object v8, v7, Lyads/sd4;->i:Ljava/util/List;

    iget-object v9, v2, Lyads/ee4;->a:Lyads/vg4;

    iget-object v9, v9, Lyads/vg4;->g:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v9}, Lyads/s06;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v12

    iget-object v1, v1, Lyads/de4;->a:Lyads/s06;

    iget-object v3, v7, Lyads/sd4;->h:Ljava/util/List;

    iget-object v8, v2, Lyads/ee4;->a:Lyads/vg4;

    iget-object v8, v8, Lyads/vg4;->c:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v8}, Lyads/s06;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v13

    new-instance v10, Lyads/hm4;

    iget-object v11, v7, Lyads/sd4;->b:Ljava/util/List;

    iget-object v14, v7, Lyads/sd4;->c:Ljava/lang/String;

    iget-object v15, v7, Lyads/sd4;->g:Lyads/j5;

    iget-object v1, v7, Lyads/sd4;->j:Lyads/s70;

    move-object/from16 v16, v1

    invoke-direct/range {v10 .. v16}, Lyads/hm4;-><init>(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lyads/j5;Lyads/s70;)V

    iget-object v0, v0, Lyads/pf4;->b:Lyads/ce4;

    sget-object v8, Lyads/ba;->b:Lyads/ba;

    move-object/from16 v1, p1

    move-object v3, v10

    invoke-virtual/range {v0 .. v8}, Lyads/ce4;->a(Landroid/content/Context;Lyads/ee4;Lyads/hm4;Lyads/fm4;Lyads/of4;Lyads/sz2;Lyads/sd4;Lyads/ba;)Lyads/rt;

    move-result-object v5

    new-instance v3, Lyads/lg4;

    move-object/from16 v0, p3

    invoke-direct {v3, v1, v7, v0, v4}, Lyads/lg4;-><init>(Landroid/content/Context;Lyads/sd4;Lyads/b05;Lyads/fm4;)V

    new-instance v0, Lyads/be4;

    move-object/from16 v4, p3

    move-object/from16 v6, p6

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lyads/be4;-><init>(Landroid/content/Context;Lyads/sd4;Lyads/lg4;Lyads/b05;Lyads/rt;Lyads/we4;)V

    return-object v0

    :cond_2
    return-object v3
.end method
