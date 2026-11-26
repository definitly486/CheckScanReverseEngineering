.class public final Lcom/my/target/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/k0$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/my/target/m1$b;

.field public b:Z

.field public c:Z

.field public final d:Lcom/my/target/e3;

.field public e:Ls5a;

.field public final f:Ln4a;

.field public final g:Landroid/content/Context;

.field public final h:Ljava/lang/String;

.field public i:F

.field public final j:Lcom/my/target/k0$a;

.field public final k:Lvp9;

.field public final l:Lcom/my/target/e0;


# direct methods
.method public constructor <init>(Lkha;Lcom/my/target/e3;Landroid/content/Context;Lcom/my/target/m1$b;Lvp9;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/my/target/k0$a;

    invoke-direct {v0}, Lcom/my/target/k0$a;-><init>()V

    iput-object v0, p0, Lcom/my/target/k0;->j:Lcom/my/target/k0$a;

    iput-object p5, p0, Lcom/my/target/k0;->k:Lvp9;

    iput-object p2, p0, Lcom/my/target/k0;->d:Lcom/my/target/e3;

    iput-object p4, p0, Lcom/my/target/k0;->a:Lcom/my/target/m1$b;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/my/target/k0;->g:Landroid/content/Context;

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p2, p1, Lao9;->a:Ln4a;

    iput-object p2, p0, Lcom/my/target/k0;->f:Ln4a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Ljava/util/ArrayList;

    iget-object p4, p2, Ln4a;->c:Ljava/util/HashSet;

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p4, Ls5a;

    iget-object p5, p2, Ln4a;->a:Lpp9;

    const/4 v0, 0x0

    invoke-direct {p4, p3, p5, v0}, Ls5a;-><init>(Ljava/util/List;Lpp9;Lik0;)V

    iput-object p4, p0, Lcom/my/target/k0;->e:Ls5a;

    iget-object p3, p1, Lao9;->B:Ljava/lang/String;

    iput-object p3, p0, Lcom/my/target/k0;->h:Ljava/lang/String;

    iget p3, p1, Lao9;->z:F

    iput p3, p0, Lcom/my/target/k0;->i:F

    iget-object p1, p1, Lao9;->P:Lzn9;

    iget-boolean p3, p1, Lzn9;->c:Z

    iget-boolean p1, p1, Lzn9;->d:Z

    new-instance p4, Lcom/my/target/e0;

    invoke-direct {p4, p2, p3, p1}, Lcom/my/target/e0;-><init>(Ln4a;ZZ)V

    iput-object p4, p0, Lcom/my/target/k0;->l:Lcom/my/target/e0;

    return-void
.end method

.method public static a(Lkha;Lcom/my/target/e3;Lcom/my/target/m1$b;Landroid/content/Context;)Lcom/my/target/k0;
    .locals 6

    new-instance v0, Lcom/my/target/k0;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lvp9;

    invoke-direct {v5, v1}, Lvp9;-><init>(Landroid/os/Handler;)V

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/my/target/k0;-><init>(Lkha;Lcom/my/target/e3;Landroid/content/Context;Lcom/my/target/m1$b;Lvp9;)V

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/my/target/k0;->g:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/k0;->f:Ln4a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/k0;->l:Lcom/my/target/e0;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/my/target/k0;->e:Ls5a;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final c(FF)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/my/target/k0;->e()V

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v5, v1, Lcom/my/target/k0;->j:Lcom/my/target/k0$a;

    iget v6, v5, Lcom/my/target/k0$a;->b:F

    invoke-static {v4, v6}, Ly14;->a(FF)I

    move-result v6

    const/4 v7, 0x1

    if-ne v7, v6, :cond_1

    iget-object v6, v5, Lcom/my/target/k0$a;->a:Ljt;

    iget v8, v5, Lcom/my/target/k0$a;->b:F

    sub-float v8, v4, v8

    float-to-double v8, v8

    :cond_0
    iget-object v10, v6, Ljt;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v12

    add-double/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v12

    iget-object v14, v6, Ljt;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v14, v10, v11, v12, v13}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v10

    if-eqz v10, :cond_0

    :cond_1
    iput v4, v5, Lcom/my/target/k0$a;->b:F

    invoke-virtual {v1}, Lcom/my/target/k0;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-boolean v4, v1, Lcom/my/target/k0;->b:Z

    iget-object v5, v1, Lcom/my/target/k0;->a:Lcom/my/target/m1$b;

    iget-object v6, v1, Lcom/my/target/k0;->l:Lcom/my/target/e0;

    if-nez v4, :cond_5

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v8, v6, Lcom/my/target/e0;->b:Ln4a;

    const-string v9, "playbackStarted"

    invoke-virtual {v8, v9}, Ln4a;->j(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6, v9}, Lcom/my/target/e0;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v8, v6, Lcom/my/target/e0;->b:Ln4a;

    sget-object v10, Lcom/my/target/m1;->a:Lcom/my/target/m1$a;

    if-eqz v10, :cond_4

    invoke-virtual {v8, v9}, Ln4a;->f(Ljava/lang/String;)Ls5a;

    move-result-object v8

    invoke-virtual {v10, v8, v4, v7, v5}, Lcom/my/target/m1$a;->a(Ls5a;Ljava/util/Map;ILcom/my/target/m1$b;)V

    :cond_4
    iput-boolean v7, v1, Lcom/my/target/k0;->b:Z

    :cond_5
    const/4 v4, 0x0

    cmpl-float v8, v2, v4

    if-lez v8, :cond_6

    iget v9, v1, Lcom/my/target/k0;->i:F

    cmpl-float v9, v9, v4

    if-lez v9, :cond_6

    iput v2, v1, Lcom/my/target/k0;->i:F

    :cond_6
    iget-object v9, v1, Lcom/my/target/k0;->e:Ls5a;

    iget-object v9, v9, Ls5a;->b:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d

    iget-object v9, v1, Lcom/my/target/k0;->e:Ls5a;

    invoke-virtual {v9}, Ls5a;->a()Ls5a;

    move-result-object v9

    iget-object v10, v9, Ls5a;->b:Ljava/util/List;

    iget-object v11, v1, Lcom/my/target/k0;->e:Ls5a;

    iget-object v11, v11, Ls5a;->b:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lk8a;

    iget v13, v12, Lk8a;->f:F

    iget v14, v12, Lk8a;->g:F

    const/high16 v15, -0x40800000    # -1.0f

    cmpl-float v16, v13, v15

    if-nez v16, :cond_8

    cmpl-float v16, v14, v4

    if-ltz v16, :cond_8

    mul-float/2addr v14, v2

    const/high16 v13, 0x42c80000    # 100.0f

    div-float v13, v14, v13

    iput v13, v12, Lk8a;->f:F

    iput v15, v12, Lk8a;->g:F

    :cond_8
    invoke-static {v13, v0}, Ly14;->a(FF)I

    move-result v13

    if-eq v13, v7, :cond_7

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_9
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_1

    :cond_a
    iget-boolean v11, v6, Lcom/my/target/e0;->d:Z

    if-nez v11, :cond_b

    iget-boolean v11, v6, Lcom/my/target/e0;->c:Z

    if-eqz v11, :cond_c

    :cond_b
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "progressStats, pos="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", dur="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/my/target/e0;->a(Ljava/lang/String;)V

    :cond_c
    sget-object v6, Lcom/my/target/m1;->a:Lcom/my/target/m1$a;

    if-eqz v6, :cond_d

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    sget-object v6, Lcom/my/target/m1;->a:Lcom/my/target/m1$a;

    invoke-virtual {v6, v9, v3, v7, v5}, Lcom/my/target/m1$a;->a(Ls5a;Ljava/util/Map;ILcom/my/target/m1$b;)V

    :cond_d
    :goto_1
    iget-object v3, v1, Lcom/my/target/k0;->d:Lcom/my/target/e3;

    if-eqz v3, :cond_1b

    iget-object v5, v3, Lcom/my/target/e3;->h:Lcom/iab/omid/library/corpmailru/adsession/media/MediaEvents;

    if-nez v5, :cond_e

    goto/16 :goto_5

    :cond_e
    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v10, -0x1

    if-nez v8, :cond_f

    goto :goto_2

    :cond_f
    div-float/2addr v0, v2

    invoke-static {v0, v4}, Ly14;->a(FF)I

    move-result v8

    if-ne v8, v10, :cond_10

    goto :goto_2

    :cond_10
    const/high16 v8, 0x3e800000    # 0.25f

    invoke-static {v0, v8}, Ly14;->a(FF)I

    move-result v8

    if-ne v8, v10, :cond_11

    const/4 v10, 0x0

    goto :goto_2

    :cond_11
    const/high16 v8, 0x3f000000    # 0.5f

    invoke-static {v0, v8}, Ly14;->a(FF)I

    move-result v8

    if-ne v8, v10, :cond_12

    move v10, v7

    goto :goto_2

    :cond_12
    const/high16 v8, 0x3f400000    # 0.75f

    invoke-static {v0, v8}, Ly14;->a(FF)I

    move-result v8

    if-ne v8, v10, :cond_13

    move v10, v9

    goto :goto_2

    :cond_13
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v0, v8}, Ly14;->a(FF)I

    move-result v0

    if-ne v0, v10, :cond_14

    move v10, v6

    goto :goto_2

    :cond_14
    move v10, v5

    :goto_2
    iget v0, v3, Lcom/my/target/e3;->d:I

    if-eq v10, v0, :cond_1b

    if-le v10, v0, :cond_1b

    iget-object v0, v3, Lcom/my/target/e3;->h:Lcom/iab/omid/library/corpmailru/adsession/media/MediaEvents;

    if-nez v0, :cond_15

    goto :goto_4

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "OmTracker: sendQuartile() called with: quartile = ["

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    invoke-static {v8, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_1a

    if-eq v10, v7, :cond_19

    if-eq v10, v9, :cond_18

    if-eq v10, v6, :cond_17

    if-eq v10, v5, :cond_16

    goto :goto_4

    :cond_16
    :try_start_0
    iget-object v0, v3, Lcom/my/target/e3;->h:Lcom/iab/omid/library/corpmailru/adsession/media/MediaEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/corpmailru/adsession/media/MediaEvents;->complete()V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_17
    iget-object v0, v3, Lcom/my/target/e3;->h:Lcom/iab/omid/library/corpmailru/adsession/media/MediaEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/corpmailru/adsession/media/MediaEvents;->thirdQuartile()V

    goto :goto_4

    :cond_18
    iget-object v0, v3, Lcom/my/target/e3;->h:Lcom/iab/omid/library/corpmailru/adsession/media/MediaEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/corpmailru/adsession/media/MediaEvents;->midpoint()V

    goto :goto_4

    :cond_19
    iget-object v0, v3, Lcom/my/target/e3;->h:Lcom/iab/omid/library/corpmailru/adsession/media/MediaEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/corpmailru/adsession/media/MediaEvents;->firstQuartile()V

    goto :goto_4

    :cond_1a
    iget-object v0, v3, Lcom/my/target/e3;->h:Lcom/iab/omid/library/corpmailru/adsession/media/MediaEvents;

    iget v5, v3, Lcom/my/target/e3;->e:F

    invoke-virtual {v0, v2, v5}, Lcom/iab/omid/library/corpmailru/adsession/media/MediaEvents;->start(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "OmTracker: Unable to track quartiles: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v5, v0}, Lfg;->e(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    :goto_4
    iput v10, v3, Lcom/my/target/e3;->d:I

    :cond_1b
    :goto_5
    iget v0, v1, Lcom/my/target/k0;->i:F

    cmpg-float v0, v0, v4

    if-lez v0, :cond_1e

    cmpg-float v0, v2, v4

    if-gtz v0, :cond_1c

    goto :goto_6

    :cond_1c
    iget-object v0, v1, Lcom/my/target/k0;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_6

    :cond_1d
    iget v0, v1, Lcom/my/target/k0;->i:F

    sub-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x3fc00000    # 1.5f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "The diff between expected duration = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/my/target/k0;->i:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " and the received duration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " from the player is more than duration error limit = 1.5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlaybackTracker"

    invoke-static {v1, v0}, Ly14;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    :goto_6
    return-void
.end method

.method public final d(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/my/target/k0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/16 v0, 0x3e7

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/my/target/k0;->l:Lcom/my/target/e0;

    if-eqz p1, :cond_1

    iget-object v2, v2, Lcom/my/target/e0;->b:Ln4a;

    const-string v3, "volumeOn"

    invoke-static {v2, v3, v0, v1}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lcom/my/target/e0;->b:Ln4a;

    const-string v3, "volumeOff"

    invoke-static {v2, v3, v0, v1}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    :goto_0
    iget-object p0, p0, Lcom/my/target/k0;->d:Lcom/my/target/e3;

    if-eqz p0, :cond_5

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/my/target/e3;->h:Lcom/iab/omid/library/corpmailru/adsession/media/MediaEvents;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/my/target/e3;->e:F

    invoke-static {p1, v0}, Ly14;->a(FF)I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iput p1, p0, Lcom/my/target/e3;->e:F

    :try_start_0
    iget-object p0, p0, Lcom/my/target/e3;->h:Lcom/iab/omid/library/corpmailru/adsession/media/MediaEvents;

    invoke-virtual {p0, p1}, Lcom/iab/omid/library/corpmailru/adsession/media/MediaEvents;->volumeChange(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "OmTracker: Unable to track media volume: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1, p0}, Lfg;->e(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final e()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/my/target/k0;->f:Ln4a;

    iget-object v1, p0, Lcom/my/target/k0;->l:Lcom/my/target/e0;

    iget-object v2, p0, Lcom/my/target/k0;->j:Lcom/my/target/k0$a;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/my/target/k0;->k:Lvp9;

    new-instance v0, La52;

    const/4 v3, 0x4

    invoke-direct {v0, v3, v2, v1}, La52;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lvp9;->b:Lll6;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lvp9;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lvp9;->b:Lll6;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :try_start_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :goto_0
    new-instance v1, Lll6;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lll6;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lvp9;->b:Lll6;

    iget-object v0, p0, Lvp9;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    goto :goto_2

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :goto_2
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_1
    return-void

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method public final f()V
    .locals 4

    invoke-virtual {p0}, Lcom/my/target/k0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/my/target/k0;->f:Ln4a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Ln4a;->c:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ls5a;

    iget-object v0, v0, Ln4a;->a:Lpp9;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Ls5a;-><init>(Ljava/util/List;Lpp9;Lik0;)V

    iput-object v2, p0, Lcom/my/target/k0;->e:Ls5a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/k0;->b:Z

    iput-boolean v0, p0, Lcom/my/target/k0;->c:Z

    return-void
.end method

.method public final g()V
    .locals 4

    invoke-virtual {p0}, Lcom/my/target/k0;->e()V

    invoke-virtual {p0}, Lcom/my/target/k0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/my/target/k0;->i:F

    invoke-virtual {p0, v0, v0}, Lcom/my/target/k0;->c(FF)V

    iget-boolean v0, p0, Lcom/my/target/k0;->c:Z

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iget-object v1, p0, Lcom/my/target/k0;->l:Lcom/my/target/e0;

    iget-object v1, v1, Lcom/my/target/e0;->b:Ln4a;

    const-string v2, "playbackCompleted"

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/my/target/m1;->e(Ln4a;Ljava/lang/String;Ljava/util/Map;I)V

    iput-boolean v3, p0, Lcom/my/target/k0;->c:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final h()V
    .locals 3

    invoke-virtual {p0}, Lcom/my/target/k0;->e()V

    invoke-virtual {p0}, Lcom/my/target/k0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/my/target/k0;->l:Lcom/my/target/e0;

    iget-object v0, p0, Lcom/my/target/e0;->b:Ln4a;

    const-string v1, "closedByUser"

    invoke-virtual {v0, v1}, Ln4a;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/my/target/e0;->a(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/my/target/e0;->b:Ln4a;

    const/16 v0, 0x3e7

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    return-void
.end method

.method public final i()V
    .locals 4

    invoke-virtual {p0}, Lcom/my/target/k0;->e()V

    invoke-virtual {p0}, Lcom/my/target/k0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iget-object v1, p0, Lcom/my/target/k0;->l:Lcom/my/target/e0;

    iget-object v1, v1, Lcom/my/target/e0;->b:Ln4a;

    const-string v2, "playbackPaused"

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/my/target/m1;->e(Ln4a;Ljava/lang/String;Ljava/util/Map;I)V

    iget-object p0, p0, Lcom/my/target/k0;->d:Lcom/my/target/e3;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/my/target/e3;->b(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 5

    invoke-virtual {p0}, Lcom/my/target/k0;->e()V

    invoke-virtual {p0}, Lcom/my/target/k0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iget-object v1, p0, Lcom/my/target/k0;->l:Lcom/my/target/e0;

    iget-object v2, v1, Lcom/my/target/e0;->b:Ln4a;

    const-string v3, "playbackError"

    invoke-virtual {v2, v3}, Ln4a;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v3}, Lcom/my/target/e0;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v1, v1, Lcom/my/target/e0;->b:Ln4a;

    const-string v2, "error"

    const/4 v4, 0x1

    invoke-static {v1, v2, v0, v4}, Lcom/my/target/m1;->e(Ln4a;Ljava/lang/String;Ljava/util/Map;I)V

    invoke-static {v1, v3, v0, v4}, Lcom/my/target/m1;->e(Ln4a;Ljava/lang/String;Ljava/util/Map;I)V

    iget-object p0, p0, Lcom/my/target/k0;->d:Lcom/my/target/e3;

    if-eqz p0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/my/target/e3;->b(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final k()V
    .locals 3

    invoke-virtual {p0}, Lcom/my/target/k0;->e()V

    invoke-virtual {p0}, Lcom/my/target/k0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/my/target/k0;->l:Lcom/my/target/e0;

    iget-object v0, p0, Lcom/my/target/e0;->b:Ln4a;

    const-string v1, "playbackTimeout"

    invoke-virtual {v0, v1}, Ln4a;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/my/target/e0;->a(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/my/target/e0;->b:Ln4a;

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    return-void
.end method

.method public final l()V
    .locals 4

    invoke-virtual {p0}, Lcom/my/target/k0;->e()V

    invoke-virtual {p0}, Lcom/my/target/k0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iget-object v1, p0, Lcom/my/target/k0;->l:Lcom/my/target/e0;

    iget-object v1, v1, Lcom/my/target/e0;->b:Ln4a;

    const-string v2, "playbackResumed"

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/my/target/m1;->e(Ln4a;Ljava/lang/String;Ljava/util/Map;I)V

    iget-object p0, p0, Lcom/my/target/k0;->d:Lcom/my/target/e3;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v3}, Lcom/my/target/e3;->b(I)V

    :cond_1
    :goto_0
    return-void
.end method
