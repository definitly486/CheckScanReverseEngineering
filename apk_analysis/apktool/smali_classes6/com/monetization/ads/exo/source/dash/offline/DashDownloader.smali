.class public final Lcom/monetization/ads/exo/source/dash/offline/DashDownloader;
.super Lyads/ji5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyads/ji5;"
    }
.end annotation


# instance fields
.field private final j:Lyads/ns;


# direct methods
.method public constructor <init>(Lyads/p04;Lyads/bw;Ljava/util/concurrent/Executor;)V
    .locals 1

    new-instance v0, Lyads/mc0;

    invoke-direct {v0}, Lyads/mc0;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lyads/ji5;-><init>(Lyads/p04;Lyads/mc0;Lyads/bw;Ljava/util/concurrent/Executor;)V

    new-instance p1, Lyads/ns;

    invoke-direct {p1}, Lyads/ns;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/exo/source/dash/offline/DashDownloader;->j:Lyads/ns;

    return-void
.end method

.method private a(Lyads/cw;Lyads/eb;JJZLjava/util/ArrayList;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p7

    move-object/from16 v6, p8

    const/4 v8, 0x0

    :goto_0
    iget-object v0, v2, Lyads/eb;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_8

    iget-object v0, v2, Lyads/eb;->c:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/o75;

    :try_start_0
    iget v9, v2, Lyads/eb;->b:I

    invoke-virtual {v0}, Lyads/o75;->d()Lyads/qc0;

    move-result-object v10

    if-eqz v10, :cond_0

    move-object/from16 v11, p1

    goto :goto_1

    :cond_0
    new-instance v10, Lcom/monetization/ads/exo/source/dash/offline/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v11, p1

    :try_start_1
    invoke-direct {v10, v11, v9, v0}, Lcom/monetization/ads/exo/source/dash/offline/a;-><init>(Lyads/cw;ILyads/o75;)V

    invoke-virtual {v1, v10, v5}, Lyads/ji5;->a(Lyads/rb5;Z)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyads/gz;

    if-nez v9, :cond_1

    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    new-instance v10, Lyads/sc0;

    iget-wide v12, v0, Lyads/o75;->c:J

    invoke-direct {v10, v9, v12, v13}, Lyads/sc0;-><init>(Lyads/gz;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    if-eqz v10, :cond_6

    move-wide/from16 v12, p5

    invoke-interface {v10, v12, v13}, Lyads/qc0;->c(J)J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v9, v14, v16

    if-eqz v9, :cond_5

    iget-object v9, v1, Lcom/monetization/ads/exo/source/dash/offline/DashDownloader;->j:Lyads/ns;

    iget-object v7, v0, Lyads/o75;->b:Lyads/oe3;

    invoke-virtual {v9, v7}, Lyads/ns;->b(Ljava/util/List;)Lyads/ms;

    move-result-object v7

    sget v9, Lyads/u56;->a:I

    iget-object v7, v7, Lyads/ms;->a:Ljava/lang/String;

    iget-object v9, v0, Lyads/o75;->e:Lyads/y35;

    if-eqz v9, :cond_2

    const/4 v1, 0x0

    invoke-static {v0, v7, v9, v1}, Lyads/rc0;->a(Lyads/o75;Ljava/lang/String;Lyads/y35;I)Lyads/bd0;

    move-result-object v9

    new-instance v1, Lyads/hi5;

    invoke-direct {v1, v3, v4, v9}, Lyads/hi5;-><init>(JLyads/bd0;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v0}, Lyads/o75;->e()Lyads/y35;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v9, 0x0

    invoke-static {v0, v7, v1, v9}, Lyads/rc0;->a(Lyads/o75;Ljava/lang/String;Lyads/y35;I)Lyads/bd0;

    move-result-object v1

    new-instance v9, Lyads/hi5;

    invoke-direct {v9, v3, v4, v1}, Lyads/hi5;-><init>(JLyads/bd0;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v10}, Lyads/qc0;->b()J

    move-result-wide v17

    add-long v14, v17, v14

    const-wide/16 v19, 0x1

    sub-long v14, v14, v19

    move-wide/from16 v1, v17

    :goto_2
    cmp-long v9, v1, v14

    if-gtz v9, :cond_4

    invoke-interface {v10, v1, v2}, Lyads/qc0;->a(J)J

    move-result-wide v17

    add-long v3, v17, p3

    invoke-interface {v10, v1, v2}, Lyads/qc0;->b(J)Lyads/y35;

    move-result-object v9

    move-wide/from16 v17, v1

    const/4 v1, 0x0

    invoke-static {v0, v7, v9, v1}, Lyads/rc0;->a(Lyads/o75;Ljava/lang/String;Lyads/y35;I)Lyads/bd0;

    move-result-object v2

    new-instance v9, Lyads/hi5;

    invoke-direct {v9, v3, v4, v2}, Lyads/hi5;-><init>(JLyads/bd0;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-long v2, v17, v19

    move-wide v1, v2

    move-wide/from16 v3, p3

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    new-instance v0, Lyads/lk2;

    const-string v1, "Unbounded segment index"

    invoke-direct {v0, v1}, Lyads/lk2;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-wide/from16 v12, p5

    const/4 v1, 0x0

    :try_start_2
    new-instance v0, Lyads/lk2;

    const-string v2, "Missing segment index"

    invoke-direct {v0, v2}, Lyads/lk2;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_3
    move-wide/from16 v12, p5

    const/4 v1, 0x0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v11, p1

    goto :goto_3

    :goto_4
    if-eqz v5, :cond_7

    :goto_5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    goto/16 :goto_0

    :cond_7
    throw v0

    :cond_8
    return-void
.end method


# virtual methods
.method public final a(Lyads/cw;Lyads/kc0;Z)Ljava/util/ArrayList;
    .locals 14

    move-object/from16 v0, p2

    .line 217
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    move v11, v10

    .line 218
    :goto_0
    iget-object v1, v0, Lyads/kc0;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_1

    .line 219
    iget-object v1, v0, Lyads/kc0;->m:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/au4;

    .line 220
    iget-wide v2, v1, Lyads/au4;->b:J

    invoke-static {v2, v3}, Lyads/u56;->a(J)J

    move-result-wide v4

    .line 221
    invoke-virtual {v0, v11}, Lyads/kc0;->a(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lyads/u56;->a(J)J

    move-result-wide v6

    .line 222
    iget-object v12, v1, Lyads/au4;->c:Ljava/util/List;

    move v13, v10

    .line 223
    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_0

    .line 224
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lyads/eb;

    move-object v1, p0

    move-object v2, p1

    move/from16 v8, p3

    .line 225
    invoke-direct/range {v1 .. v9}, Lcom/monetization/ads/exo/source/dash/offline/DashDownloader;->a(Lyads/cw;Lyads/eb;JJZLjava/util/ArrayList;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    return-object v9
.end method
