.class public final Lyads/az4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:Lyads/x54;

.field public c:Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;

.field public d:I

.field public final synthetic e:Lyads/fz4;

.field public final synthetic f:Lyads/l74;

.field public final synthetic g:Landroid/content/Context;

.field public final synthetic h:Lyads/n70;

.field public final synthetic i:J

.field public final synthetic j:Lyads/sl5;


# direct methods
.method public constructor <init>(Lyads/fz4;Lyads/l74;Landroid/content/Context;Lyads/n70;JLyads/sl5;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/az4;->e:Lyads/fz4;

    iput-object p2, p0, Lyads/az4;->f:Lyads/l74;

    iput-object p3, p0, Lyads/az4;->g:Landroid/content/Context;

    iput-object p4, p0, Lyads/az4;->h:Lyads/n70;

    iput-wide p5, p0, Lyads/az4;->i:J

    iput-object p7, p0, Lyads/az4;->j:Lyads/sl5;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 9

    new-instance v0, Lyads/az4;

    iget-object v1, p0, Lyads/az4;->e:Lyads/fz4;

    iget-object v2, p0, Lyads/az4;->f:Lyads/l74;

    iget-object v3, p0, Lyads/az4;->g:Landroid/content/Context;

    iget-object v4, p0, Lyads/az4;->h:Lyads/n70;

    iget-wide v5, p0, Lyads/az4;->i:J

    iget-object v7, p0, Lyads/az4;->j:Lyads/sl5;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lyads/az4;-><init>(Lyads/fz4;Lyads/l74;Landroid/content/Context;Lyads/n70;JLyads/sl5;Le02;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/az4;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/az4;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/az4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/az4;->d:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lyads/az4;->c:Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;

    iget-object v2, p0, Lyads/az4;->b:Lyads/x54;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/az4;->e:Lyads/fz4;

    iget-object p1, p1, Lyads/fz4;->e:Lyads/vy4;

    iget-object v1, p0, Lyads/az4;->f:Lyads/l74;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lyads/x54;

    iget-object v5, v1, Lyads/l74;->b:Ljava/lang/String;

    iget-object v6, v1, Lyads/l74;->c:Ljava/util/Map;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Lyads/x54;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyads/j5;Ljava/util/Map;Lyads/cb5;)V

    :try_start_1
    iget-object p1, p0, Lyads/az4;->e:Lyads/fz4;

    invoke-static {p1, v4}, Lyads/fz4;->a(Lyads/fz4;Lyads/x54;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4

    iget-object p1, p0, Lyads/az4;->e:Lyads/fz4;

    iget-object p1, p1, Lyads/fz4;->c:Lyads/e34;

    iget-object v1, p0, Lyads/az4;->g:Landroid/content/Context;

    const-class v6, Lcom/monetization/ads/mediation/base/a;

    invoke-virtual {p1, v1, v4, v6}, Lyads/e34;->a(Landroid/content/Context;Lyads/x54;Ljava/lang/Class;)Lcom/monetization/ads/mediation/base/a;

    move-result-object p1

    instance-of v1, p1, Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;

    move-object v9, p1

    goto :goto_0

    :cond_2
    move-object v9, v3

    :goto_0
    if-nez v9, :cond_3

    invoke-static {v5}, Lyads/q54;->a(Ljava/lang/String;)Lyads/qy4;

    move-result-object p1

    iget-object v0, p0, Lyads/az4;->e:Lyads/fz4;

    iget-object v0, v0, Lyads/fz4;->a:Lyads/n00;

    iget-object v1, p0, Lyads/az4;->g:Landroid/content/Context;

    iget-object p0, p0, Lyads/az4;->h:Lyads/n70;

    invoke-virtual {v0, v1, p0, p1, v3}, Lyads/n00;->a(Landroid/content/Context;Lyads/n70;Lyads/qy4;Ljava/lang/Long;)V

    return-object p1

    :cond_3
    iget-object p1, p0, Lyads/az4;->e:Lyads/fz4;

    iget-object p1, p1, Lyads/fz4;->b:Lyads/m00;

    iget-object v1, p1, Lyads/m00;->a:Lyads/t5;

    invoke-virtual {v1}, Lyads/t5;->a()V

    iget-object v1, p1, Lyads/m00;->a:Lyads/t5;

    iget-object p1, p1, Lyads/m00;->c:Lyads/s5;

    invoke-virtual {v1, p1, v3}, Lyads/t5;->a(Lyads/s5;Ljava/lang/Object;)V

    :try_start_2
    iget-wide v11, p0, Lyads/az4;->i:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v8, v4

    :try_start_3
    new-instance v4, Lyads/zy4;

    iget-object v5, p0, Lyads/az4;->e:Lyads/fz4;

    iget-object v6, p0, Lyads/az4;->g:Landroid/content/Context;

    iget-object v7, p0, Lyads/az4;->j:Lyads/sl5;

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lyads/zy4;-><init>(Lyads/fz4;Landroid/content/Context;Lyads/sl5;Lyads/x54;Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;Le02;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object p1, v4

    move-object v4, v8

    :try_start_4
    iput-object v4, p0, Lyads/az4;->b:Lyads/x54;

    iput-object v9, p0, Lyads/az4;->c:Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iput v2, p0, Lyads/az4;->d:I

    invoke-static {v11, v12, p1, p0}, Lyv8;->b(JLbm3;Lf02;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v2, v4

    move-object v1, v9

    :goto_1
    :try_start_6
    check-cast p1, Lyads/qy4;

    iget-object v0, p0, Lyads/az4;->e:Lyads/fz4;

    iget-object v0, v0, Lyads/fz4;->b:Lyads/m00;

    iget-object v4, v0, Lyads/m00;->a:Lyads/t5;

    iget-object v5, v0, Lyads/m00;->c:Lyads/s5;

    iget-object v0, v0, Lyads/m00;->b:Lyads/iu4;

    invoke-virtual {v4, v5, v0, v3}, Lyads/t5;->a(Lyads/s5;Lyads/ju4;Ljava/lang/Object;)V

    iget-object v0, p0, Lyads/az4;->e:Lyads/fz4;

    iget-object v0, v0, Lyads/fz4;->b:Lyads/m00;

    invoke-virtual {v0}, Lyads/m00;->a()Ljava/lang/Long;

    move-result-object v0

    if-eqz p1, :cond_5

    iget-object v4, p0, Lyads/az4;->e:Lyads/fz4;

    iget-object v5, p0, Lyads/az4;->g:Landroid/content/Context;

    iget-object v6, p0, Lyads/az4;->h:Lyads/n70;

    iget-object v4, v4, Lyads/fz4;->a:Lyads/n00;

    invoke-virtual {v4, v5, v6, p1, v0}, Lyads/n00;->a(Landroid/content/Context;Lyads/n70;Lyads/qy4;Ljava/lang/Long;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_5
    invoke-interface {v1}, Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;->onInvalidate()V

    return-object p1

    :goto_2
    move-object v4, v2

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :catch_2
    move-exception v0

    :goto_3
    move-object p1, v0

    move-object v1, v9

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v4, v8

    goto :goto_3

    :goto_4
    :try_start_7
    iget-object v0, p0, Lyads/az4;->e:Lyads/fz4;

    iget-object v0, v0, Lyads/fz4;->b:Lyads/m00;

    iget-object v2, v0, Lyads/m00;->a:Lyads/t5;

    iget-object v5, v0, Lyads/m00;->c:Lyads/s5;

    iget-object v0, v0, Lyads/m00;->b:Lyads/iu4;

    invoke-virtual {v2, v5, v0, v3}, Lyads/t5;->a(Lyads/s5;Lyads/ju4;Ljava/lang/Object;)V

    iget-object v0, p0, Lyads/az4;->e:Lyads/fz4;

    iget-object v0, v0, Lyads/fz4;->b:Lyads/m00;

    invoke-virtual {v0}, Lyads/m00;->a()Ljava/lang/Long;

    move-result-object v0

    iget-object v2, v4, Lyads/x54;->b:Ljava/lang/String;

    invoke-static {p1, v2}, Lyads/q54;->a(Ljava/lang/Exception;Ljava/lang/String;)Lyads/qy4;

    move-result-object p1

    iget-object v2, p0, Lyads/az4;->e:Lyads/fz4;

    iget-object v2, v2, Lyads/fz4;->a:Lyads/n00;

    iget-object v3, p0, Lyads/az4;->g:Landroid/content/Context;

    iget-object p0, p0, Lyads/az4;->h:Lyads/n70;

    invoke-virtual {v2, v3, p0, p1, v0}, Lyads/n00;->a(Landroid/content/Context;Lyads/n70;Lyads/qy4;Ljava/lang/Long;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-interface {v1}, Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;->onInvalidate()V

    return-object p1

    :goto_5
    move-object v9, v1

    :goto_6
    invoke-interface {v9}, Lcom/monetization/ads/mediation/base/prefetch/MediatedAdapterPrefetcher;->onInvalidate()V

    throw p0

    :catch_4
    move-exception v0

    move-object p0, v0

    iget-object p1, v4, Lyads/x54;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Lyads/q54;->a(Ljava/lang/Exception;Ljava/lang/String;)Lyads/qy4;

    move-result-object p0

    return-object p0
.end method
