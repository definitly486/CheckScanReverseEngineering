.class public final Lyads/cj4;
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

    iput-object v0, p0, Lyads/cj4;->a:Lyads/pf4;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/ee4;Lyads/b05;Lyads/de4;Lyads/of4;Lyads/we4;Lyads/ye4;)V
    .locals 9

    move-object/from16 v8, p7

    iget-object v0, p2, Lyads/ee4;->a:Lyads/vg4;

    iget-object v6, v0, Lyads/vg4;->a:Ljava/util/List;

    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v0, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lyads/de4;->a(Landroid/content/Context;Lyads/ee4;Lyads/b05;Lyads/of4;Lyads/we4;)Lyads/ni4;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lyads/sd4;

    iget-object v0, p0, Lyads/cj4;->a:Lyads/pf4;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lyads/pf4;->a(Landroid/content/Context;Lyads/ee4;Lyads/b05;Lyads/de4;Lyads/of4;Lyads/we4;Lyads/sd4;)Lyads/be4;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v8, v0}, Lyads/ye4;->a(Lyads/pg4;)V

    return-void

    :cond_2
    sget-object v0, Lyads/o8;->a:Lyads/m4;

    invoke-interface {v8, v0}, Lyads/ye4;->a(Lyads/m4;)V

    return-void
.end method
