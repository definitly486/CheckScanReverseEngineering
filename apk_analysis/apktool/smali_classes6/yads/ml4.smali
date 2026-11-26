.class public final Lyads/ml4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/wa6;


# instance fields
.field public final a:Lyads/gr2;

.field public final b:Lyads/we3;

.field public final c:Lyads/za6;

.field public final d:Lyads/r76;

.field public e:Lyads/bb6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/d9;Lyads/bf5;Lyads/gr2;Lyads/ja6;Lyads/em4;Lyads/cb6;Lyads/jf6;Lyads/ob6;Lyads/we3;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p7

    new-instance v3, Lyads/za6;

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-direct {v3, v5, v6, v2}, Lyads/za6;-><init>(Landroid/content/Context;Lyads/bf5;Lyads/cb6;)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lyads/ml4;->a:Lyads/gr2;

    move-object/from16 v4, p10

    iput-object v4, v0, Lyads/ml4;->b:Lyads/we3;

    iput-object v3, v0, Lyads/ml4;->c:Lyads/za6;

    new-instance v7, Lyads/vk4;

    invoke-direct {v7, v1}, Lyads/vk4;-><init>(Lyads/gr2;)V

    new-instance v14, Lyads/ll4;

    invoke-direct {v14, v0}, Lyads/ll4;-><init>(Lyads/ml4;)V

    new-instance v10, Lyads/vl4;

    move-object/from16 v8, p6

    invoke-direct {v10, v8}, Lyads/vl4;-><init>(Lyads/em4;)V

    new-instance v11, Lyads/ec6;

    invoke-direct {v11}, Lyads/ec6;-><init>()V

    new-instance v4, Lyads/r76;

    const/16 v16, 0x1

    move-object/from16 v15, p2

    move-object/from16 v9, p5

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-direct/range {v4 .. v16}, Lyads/r76;-><init>(Landroid/content/Context;Lyads/bf5;Lyads/eb6;Lyads/of6;Lyads/ja6;Lyads/me6;Lyads/ec6;Lyads/jf6;Lyads/ob6;Lyads/ya6;Lyads/d9;Z)V

    iput-object v4, v0, Lyads/ml4;->d:Lyads/r76;

    iget-object v0, v4, Lyads/r76;->g:Lyads/ub6;

    iget-object v1, v0, Lyads/ub6;->i:Lyads/sb6;

    sget-object v3, Lyads/ub6;->k:[Lze4;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v0, v3, v2}, Lsr5;->setValue(Ljava/lang/Object;Lze4;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lyads/bb6;)V
    .locals 0

    iput-object p1, p0, Lyads/ml4;->e:Lyads/bb6;

    return-void
.end method

.method public final play()V
    .locals 0

    iget-object p0, p0, Lyads/ml4;->d:Lyads/r76;

    invoke-virtual {p0}, Lyads/r76;->a()V

    return-void
.end method

.method public final stop()V
    .locals 2

    iget-object v0, p0, Lyads/ml4;->d:Lyads/r76;

    iget-object v1, v0, Lyads/r76;->h:Lyads/rb6;

    invoke-virtual {v1}, Lyads/rb6;->b()V

    iget-object v0, v0, Lyads/r76;->a:Lyads/eb6;

    invoke-interface {v0}, Lyads/eb6;->pauseAd()V

    iget-object p0, p0, Lyads/ml4;->a:Lyads/gr2;

    invoke-virtual {p0}, Lyads/gr2;->g()V

    return-void
.end method
