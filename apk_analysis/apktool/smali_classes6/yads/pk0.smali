.class public final Lyads/pk0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Landroid/util/SparseArray;


# instance fields
.field public final a:Lyads/bw;

.field public final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    :try_start_0
    const-class v1, Lcom/monetization/ads/exo/source/dash/offline/DashDownloader;

    invoke-static {v1}, Lyads/pk0;->a(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string v1, "com.monetization.ads.exo.source.hls.offline.HlsDownloader"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lyads/pk0;->a(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    const-string v1, "com.monetization.ads.exo.source.smoothstreaming.offline.SsDownloader"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lyads/pk0;->a(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Lyads/pk0;->c:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lyads/bw;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/pk0;->a:Lyads/bw;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lyads/pk0;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3

    .line 255
    :try_start_0
    const-class v0, Lyads/uk2;

    .line 256
    invoke-virtual {p0, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lyads/p04;

    const-class v1, Lyads/bw;

    const-class v2, Ljava/util/concurrent/Executor;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Class;

    move-result-object v0

    .line 257
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 258
    const-string v0, "Downloader constructor missing"

    invoke-static {v0, p0}, Lh2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lyads/tk2;)Lyads/uk2;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lyads/tk2;->c:Landroid/net/Uri;

    iget-object v3, v1, Lyads/tk2;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lyads/u56;->a(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    new-instance v2, Lyads/p15;

    new-instance v4, Lyads/e04;

    invoke-direct {v4}, Lyads/e04;-><init>()V

    sget-object v5, Lyads/oe3;->c:Lyads/le3;

    sget-object v5, Lyads/k55;->f:Lyads/k55;

    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v11, Lyads/k55;->f:Lyads/k55;

    sget-object v18, Lyads/m04;->d:Lyads/m04;

    iget-object v7, v1, Lyads/tk2;->c:Landroid/net/Uri;

    iget-object v10, v1, Lyads/tk2;->g:Ljava/lang/String;

    if-eqz v7, :cond_0

    new-instance v6, Lyads/k04;

    const/4 v8, 0x0

    invoke-direct/range {v6 .. v11}, Lyads/k04;-><init>(Landroid/net/Uri;Lyads/i04;Ljava/util/List;Ljava/lang/String;Lyads/oe3;)V

    move-object v15, v6

    goto :goto_0

    :cond_0
    move-object v15, v3

    :goto_0
    new-instance v12, Lyads/p04;

    new-instance v14, Lyads/g04;

    invoke-direct {v14, v4}, Lyads/g04;-><init>(Lyads/e04;)V

    new-instance v16, Lyads/j04;

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    const v26, -0x800001

    const v27, -0x800001

    move-object/from16 v19, v16

    invoke-direct/range {v19 .. v27}, Lyads/j04;-><init>(JJJFF)V

    sget-object v17, Lyads/t04;->H:Lyads/t04;

    const-string v13, ""

    invoke-direct/range {v12 .. v18}, Lyads/p04;-><init>(Ljava/lang/String;Lyads/g04;Lyads/k04;Lyads/j04;Lyads/t04;Lyads/m04;)V

    iget-object v1, v0, Lyads/pk0;->a:Lyads/bw;

    iget-object v0, v0, Lyads/pk0;->b:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v2, v12, v1, v0}, Lyads/p15;-><init>(Lyads/p04;Lyads/bw;Ljava/util/concurrent/ExecutorService;)V

    return-object v2

    :cond_1
    const-string v0, "Unsupported type: "

    invoke-static {v2, v0}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v3

    :cond_2
    sget-object v4, Lyads/pk0;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Constructor;

    if-eqz v4, :cond_5

    new-instance v5, Lyads/e04;

    invoke-direct {v5}, Lyads/e04;-><init>()V

    sget-object v6, Lyads/oe3;->c:Lyads/le3;

    sget-object v12, Lyads/k55;->f:Lyads/k55;

    sget-object v19, Lyads/m04;->d:Lyads/m04;

    iget-object v8, v1, Lyads/tk2;->c:Landroid/net/Uri;

    iget-object v6, v1, Lyads/tk2;->e:Ljava/util/List;

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    :goto_1
    move-object v10, v6

    goto :goto_2

    :cond_3
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    :goto_2
    iget-object v11, v1, Lyads/tk2;->g:Ljava/lang/String;

    if-eqz v8, :cond_4

    new-instance v7, Lyads/k04;

    const/4 v9, 0x0

    invoke-direct/range {v7 .. v12}, Lyads/k04;-><init>(Landroid/net/Uri;Lyads/i04;Ljava/util/List;Ljava/lang/String;Lyads/oe3;)V

    move-object/from16 v16, v7

    goto :goto_3

    :cond_4
    move-object/from16 v16, v3

    :goto_3
    new-instance v13, Lyads/p04;

    new-instance v15, Lyads/g04;

    invoke-direct {v15, v5}, Lyads/g04;-><init>(Lyads/e04;)V

    new-instance v17, Lyads/j04;

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v25, -0x7fffffffffffffffL    # -4.9E-324

    const v27, -0x800001

    const v28, -0x800001

    move-object/from16 v20, v17

    invoke-direct/range {v20 .. v28}, Lyads/j04;-><init>(JJJFF)V

    sget-object v18, Lyads/t04;->H:Lyads/t04;

    const-string v14, ""

    invoke-direct/range {v13 .. v19}, Lyads/p04;-><init>(Ljava/lang/String;Lyads/g04;Lyads/k04;Lyads/j04;Lyads/t04;Lyads/m04;)V

    :try_start_0
    iget-object v1, v0, Lyads/pk0;->a:Lyads/bw;

    iget-object v0, v0, Lyads/pk0;->b:Ljava/util/concurrent/ExecutorService;

    filled-new-array {v13, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/uk2;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "Failed to instantiate downloader for content type "

    invoke-static {v2, v0}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_5
    const-string v0, "Module missing for content type "

    invoke-static {v2, v0}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v3
.end method
