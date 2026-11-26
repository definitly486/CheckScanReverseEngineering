.class public final Lyads/tl4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/td6;

.field public final b:Lyads/nf6;

.field public final c:Lyads/nl4;

.field public final d:Lyads/uj5;

.field public final e:Lyads/bw3;

.field public final f:Lyads/uk4;

.field public final g:Lyads/a15;

.field public final h:Lyads/bm4;

.field public final i:Lyads/yv4;

.field public final j:Lyads/yv4;

.field public final k:Lyads/u65;

.field public final l:Lyads/rl4;

.field public m:Lyads/yv4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/d9;Lyads/bf5;Lyads/gr2;Lyads/r96;Lyads/td6;Lyads/nf6;Lyads/cb6;Lyads/jf6;Lyads/we3;Lyads/nl4;Lyads/b05;Lyads/uj5;Ly22;)V
    .locals 14

    move-object/from16 v4, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v0, p11

    new-instance v1, Lyads/bw3;

    invoke-direct {v1}, Lyads/bw3;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v12, p0, Lyads/tl4;->a:Lyads/td6;

    iput-object v13, p0, Lyads/tl4;->b:Lyads/nf6;

    iput-object v0, p0, Lyads/tl4;->c:Lyads/nl4;

    move-object/from16 v2, p13

    iput-object v2, p0, Lyads/tl4;->d:Lyads/uj5;

    iput-object v1, p0, Lyads/tl4;->e:Lyads/bw3;

    new-instance v1, Lyads/rl4;

    invoke-direct {v1, p0}, Lyads/rl4;-><init>(Lyads/tl4;)V

    iput-object v1, p0, Lyads/tl4;->l:Lyads/rl4;

    new-instance v6, Lyads/em4;

    invoke-direct {v6, v13}, Lyads/em4;-><init>(Lyads/nf6;)V

    new-instance v1, Lyads/uk4;

    invoke-direct {v1, v4}, Lyads/uk4;-><init>(Lyads/gr2;)V

    iput-object v1, p0, Lyads/tl4;->f:Lyads/uk4;

    new-instance v1, Lyads/bm4;

    invoke-direct {v1, v4}, Lyads/bm4;-><init>(Lyads/gr2;)V

    iput-object v1, p0, Lyads/tl4;->h:Lyads/bm4;

    new-instance v9, Lyads/ob6;

    invoke-direct {v9}, Lyads/ob6;-><init>()V

    new-instance v1, Lyads/vk4;

    invoke-direct {v1, v4}, Lyads/vk4;-><init>(Lyads/gr2;)V

    new-instance v2, Lyads/cw4;

    invoke-direct {v2, v0}, Lyads/cw4;-><init>(Lyads/nl4;)V

    new-instance v0, Lyads/ie6;

    invoke-direct {v0, v13}, Lyads/ie6;-><init>(Lyads/nf6;)V

    new-instance v3, Lyads/sh6;

    invoke-direct {v3, v1, v6}, Lyads/sh6;-><init>(Lyads/vk4;Lyads/em4;)V

    const/4 v1, 0x3

    new-array v1, v1, [Lyads/nb6;

    const/4 v5, 0x0

    aput-object v2, v1, v5

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    aput-object v3, v1, v0

    iget-object v0, v9, Lyads/ob6;->a:Ljava/util/LinkedHashSet;

    invoke-static {v0, v1}, Lnn1;->u(Ljava/util/Collection;[Ljava/lang/Object;)V

    iget-object v0, v11, Lyads/r96;->a:Ljava/util/List;

    invoke-static {v0}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lyads/ja6;

    new-instance v0, Lyads/ml4;

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lyads/ml4;-><init>(Landroid/content/Context;Lyads/d9;Lyads/bf5;Lyads/gr2;Lyads/ja6;Lyads/em4;Lyads/cb6;Lyads/jf6;Lyads/ob6;Lyads/we3;)V

    new-instance v2, Lyads/b75;

    iget-object v3, v11, Lyads/r96;->a:Ljava/util/List;

    invoke-static {v3}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/ja6;

    invoke-direct {v2, v4, v3, v9}, Lyads/b75;-><init>(Lyads/gr2;Lyads/ja6;Lyads/ob6;)V

    new-instance v3, Lyads/cm4;

    invoke-direct {v3, v4, v12}, Lyads/cm4;-><init>(Lyads/gr2;Lyads/td6;)V

    new-instance v4, Lyads/kj4;

    move-object/from16 v5, p2

    invoke-direct {v4, v5}, Lyads/kj4;-><init>(Lyads/d9;)V

    new-instance v5, Lyads/hc3;

    move-object/from16 v6, p12

    invoke-direct {v5, p1, v4, v6}, Lyads/hc3;-><init>(Landroid/content/Context;Lyads/bc3;Lyads/b05;)V

    new-instance p1, Lyads/a15;

    move-object/from16 v1, p14

    invoke-direct {p1, v11, v5, v1}, Lyads/a15;-><init>(Lyads/r96;Lyads/hc3;Ly22;)V

    iput-object p1, p0, Lyads/tl4;->g:Lyads/a15;

    new-instance v1, Lyads/yv4;

    invoke-direct {v1, v13, v0, v3, p1}, Lyads/yv4;-><init>(Lyads/nf6;Lyads/wa6;Lyads/cm4;Lyads/a15;)V

    iput-object v1, p0, Lyads/tl4;->j:Lyads/yv4;

    new-instance v0, Lyads/yv4;

    invoke-direct {v0, v13, v2, v3, p1}, Lyads/yv4;-><init>(Lyads/nf6;Lyads/wa6;Lyads/cm4;Lyads/a15;)V

    iput-object v0, p0, Lyads/tl4;->i:Lyads/yv4;

    new-instance p1, Lyads/sl4;

    invoke-direct {p1, p0}, Lyads/sl4;-><init>(Lyads/tl4;)V

    new-instance v0, Lyads/u65;

    invoke-direct {v0, v13, p1}, Lyads/u65;-><init>(Lyads/nf6;Lyads/sl4;)V

    iput-object v0, p0, Lyads/tl4;->k:Lyads/u65;

    return-void
.end method


# virtual methods
.method public final a(Lyads/yv4;)V
    .locals 1

    iput-object p1, p0, Lyads/tl4;->m:Lyads/yv4;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lyads/tl4;->l:Lyads/rl4;

    iget-object v0, p1, Lyads/yv4;->e:Lyads/xv4;

    iput-object p0, v0, Lyads/xv4;->a:Lyads/bb6;

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p1, Lyads/yv4;->b:Lyads/wa6;

    iget-object v0, p1, Lyads/yv4;->e:Lyads/xv4;

    invoke-interface {p0, v0}, Lyads/wa6;->a(Lyads/bb6;)V

    iget-object p0, p1, Lyads/yv4;->b:Lyads/wa6;

    invoke-interface {p0}, Lyads/wa6;->play()V

    :cond_1
    return-void
.end method
