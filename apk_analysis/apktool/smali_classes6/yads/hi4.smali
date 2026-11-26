.class public final Lyads/hi4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/fe4;


# instance fields
.field public final a:Lyads/pf4;


# direct methods
.method public constructor <init>(Lyads/bf5;)V
    .locals 1

    new-instance v0, Lyads/pf4;

    invoke-direct {v0, p1}, Lyads/pf4;-><init>(Lyads/bf5;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/hi4;->a:Lyads/pf4;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/ee4;Lyads/b05;Lyads/de4;Lyads/of4;Lyads/we4;Lyads/ye4;)V
    .locals 11

    move-object/from16 v8, p7

    iget-object v0, p2, Lyads/ee4;->a:Lyads/vg4;

    iget-object v0, v0, Lyads/vg4;->a:Ljava/util/List;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lyads/sd4;

    iget-object v0, p0, Lyads/hi4;->a:Lyads/pf4;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v7}, Lyads/pf4;->a(Landroid/content/Context;Lyads/ee4;Lyads/b05;Lyads/de4;Lyads/of4;Lyads/we4;Lyads/sd4;)Lyads/be4;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v8, v9}, Lyads/ye4;->a(Ljava/util/ArrayList;)V

    return-void

    :cond_2
    sget-object v0, Lyads/o8;->a:Lyads/m4;

    invoke-interface {v8, v0}, Lyads/ye4;->a(Lyads/m4;)V

    return-void
.end method
