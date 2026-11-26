.class public final Lyads/g64;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e34;

.field public final b:Lyads/z54;

.field public final c:Lyads/y54;

.field public final d:Lyads/p24;


# direct methods
.method public constructor <init>(Lyads/l34;)V
    .locals 3

    new-instance v0, Lyads/e34;

    invoke-direct {v0, p1}, Lyads/e34;-><init>(Lyads/l34;)V

    new-instance v1, Lyads/z54;

    invoke-direct {v1}, Lyads/z54;-><init>()V

    new-instance v2, Lyads/y54;

    invoke-direct {v2, p1}, Lyads/y54;-><init>(Lyads/l34;)V

    new-instance p1, Lyads/p24;

    invoke-direct {p1}, Lyads/p24;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/g64;->a:Lyads/e34;

    iput-object v1, p0, Lyads/g64;->b:Lyads/z54;

    iput-object v2, p0, Lyads/g64;->c:Lyads/y54;

    iput-object p1, p0, Lyads/g64;->d:Lyads/p24;

    return-void
.end method

.method public static a(Lyads/x54;Ljava/util/concurrent/CancellationException;)Ljava/lang/String;
    .locals 0

    .line 211
    instance-of p1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz p1, :cond_0

    .line 212
    invoke-virtual {p0}, Lyads/x54;->c()Ljava/lang/String;

    move-result-object p0

    const-string p1, " didn\'t provide bidder token after timeout"

    .line 213
    invoke-static {p0, p1}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 214
    :cond_0
    invoke-virtual {p0}, Lyads/x54;->c()Ljava/lang/String;

    move-result-object p0

    const-string p1, " bidder token loading was cancelled"

    .line 215
    invoke-static {p0, p1}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/sl5;Lyads/x54;Lyads/o24;Lcom/monetization/ads/mediation/base/MediatedBidderTokenLoader;Lf02;)Ljava/lang/Object;
    .locals 13

    move-object/from16 v6, p3

    move-object/from16 v0, p6

    instance-of v2, v0, Lyads/e64;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lyads/e64;

    iget v3, v2, Lyads/e64;->h:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lyads/e64;->h:I

    :goto_0
    move-object v7, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lyads/e64;

    invoke-direct {v2, p0, v0}, Lyads/e64;-><init>(Lyads/g64;Lf02;)V

    goto :goto_0

    :goto_1
    iget-object v0, v7, Lyads/e64;->f:Ljava/lang/Object;

    sget-object v8, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v7, Lyads/e64;->h:I

    const/4 v9, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v9, :cond_1

    iget-wide v2, v7, Lyads/e64;->e:J

    iget-object v4, v7, Lyads/e64;->d:Lyads/o24;

    iget-object v5, v7, Lyads/e64;->c:Lyads/x54;

    iget-object v6, v7, Lyads/e64;->b:Landroid/content/Context;

    :try_start_0
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v10, v2

    move-object v3, v4

    move-object v2, v6

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-wide v10, v2

    move-object v3, v4

    move-object v2, v6

    goto/16 :goto_4

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    new-instance v3, Ljava/util/HashMap;

    iget-object v0, v6, Lyads/x54;->c:Ljava/util/Map;

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v0, v6, Lyads/x54;->h:Ljava/util/Map;

    if-eqz v0, :cond_3

    const-string v2, "app_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2}, Lyads/sl5;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "width"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Lyads/sl5;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "height"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :try_start_1
    sget-object v0, Lqo2;->a:Loi2;

    sget-object v12, Lsh2;->c:Lsh2;

    new-instance v0, Lyads/f64;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Lyads/f64;-><init>(Lyads/g64;Landroid/content/Context;Ljava/util/HashMap;Lcom/monetization/ads/mediation/base/MediatedBidderTokenLoader;Le02;)V

    iput-object p1, v7, Lyads/e64;->b:Landroid/content/Context;

    iput-object v6, v7, Lyads/e64;->c:Lyads/x54;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v3, p4

    :try_start_2
    iput-object v3, v7, Lyads/e64;->d:Lyads/o24;

    iput-wide v10, v7, Lyads/e64;->e:J

    iput v9, v7, Lyads/e64;->h:I

    invoke-static {v12, v0, v7}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_2

    if-ne v0, v8, :cond_5

    return-object v8

    :cond_5
    move-object v2, p1

    move-object v5, v6

    :goto_2
    :try_start_3
    check-cast v0, Lyads/c64;

    invoke-virtual {p0, v2, v5, v3, v0}, Lyads/g64;->a(Landroid/content/Context;Lyads/x54;Lyads/o24;Lyads/c64;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v3, p4

    :goto_3
    move-object v2, p1

    move-object v5, v6

    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v10

    invoke-static {v5, v0}, Lyads/g64;->a(Lyads/x54;Ljava/util/concurrent/CancellationException;)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, v6, v7}, Ljava/lang/Long;-><init>(J)V

    move-object p1, p0

    move-object p2, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p3, v5

    move-object/from16 p6, v8

    invoke-virtual/range {p1 .. p6}, Lyads/g64;->a(Landroid/content/Context;Lyads/x54;Lyads/o24;Ljava/lang/String;Ljava/lang/Long;)V

    throw v0
.end method

.method public final a(Landroid/content/Context;Lyads/x54;Lyads/o24;Lyads/c64;)Lorg/json/JSONObject;
    .locals 7

    .line 216
    instance-of v1, p4, Lyads/a64;

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    .line 217
    move-object v0, p4

    check-cast v0, Lyads/a64;

    invoke-virtual {v0}, Lyads/a64;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 218
    invoke-virtual/range {v0 .. v5}, Lyads/g64;->a(Landroid/content/Context;Lyads/x54;Lyads/o24;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v6

    .line 219
    :cond_0
    instance-of v1, p4, Lyads/b64;

    if-eqz v1, :cond_3

    .line 220
    move-object v0, p4

    check-cast v0, Lyads/b64;

    invoke-virtual {v0}, Lyads/b64;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 221
    invoke-virtual {p2}, Lyads/x54;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, " provided empty token"

    .line 222
    invoke-static {v0, v1}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 223
    invoke-virtual/range {v0 .. v5}, Lyads/g64;->a(Landroid/content/Context;Lyads/x54;Lyads/o24;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v6

    :cond_1
    move-object v1, v0

    .line 224
    iget-object v3, p0, Lyads/g64;->b:Lyads/z54;

    .line 225
    invoke-virtual {v1}, Lyads/b64;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lyads/b64;->a()Lcom/monetization/ads/mediation/banner/MediatedBannerSize;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v4, v6}, Lyads/z54;->a(Lyads/x54;Ljava/lang/String;Lcom/monetization/ads/mediation/banner/MediatedBannerSize;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    .line 226
    const-string v4, "Can\'t create bidding data json object for network."

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 227
    invoke-virtual/range {v0 .. v5}, Lyads/g64;->a(Landroid/content/Context;Lyads/x54;Lyads/o24;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v6

    .line 228
    :cond_2
    iget-object v0, p0, Lyads/g64;->c:Lyads/y54;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    new-instance v3, Lb36;

    const-string v4, "status"

    const-string v5, "success"

    invoke-direct {v3, v4, v5}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 230
    filled-new-array {v3}, [Lb36;

    move-result-object v3

    invoke-static {v3}, Ln05;->f([Lb36;)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 231
    invoke-virtual {v0, p1, p2, p3, v3}, Lyads/y54;->a(Landroid/content/Context;Lyads/x54;Lyads/o24;Ljava/util/Map;)V

    return-object v1

    .line 232
    :cond_3
    invoke-static {}, Lme0;->e()V

    return-object v6
.end method

.method public final a(Landroid/content/Context;Lyads/x54;Lyads/o24;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    .line 233
    iget-object p0, p0, Lyads/g64;->c:Lyads/y54;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 235
    const-string v1, "failure_reason"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string p4, "status"

    const-string v1, "error"

    invoke-interface {v0, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_0

    .line 237
    const-string p4, "response_time"

    invoke-interface {v0, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lyads/y54;->a(Landroid/content/Context;Lyads/x54;Lyads/o24;Ljava/util/Map;)V

    return-void
.end method
