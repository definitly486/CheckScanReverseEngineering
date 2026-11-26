.class public final Lro7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lee;

.field public final b:Llu6;

.field public final c:Lim2;


# direct methods
.method public constructor <init>(Lee;Llu6;Lim2;Llp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lro7;->a:Lee;

    iput-object p2, p0, Lro7;->b:Llu6;

    iput-object p3, p0, Lro7;->c:Lim2;

    return-void
.end method


# virtual methods
.method public final a(Lf02;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lqo7;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lqo7;

    iget v3, v2, Lqo7;->u:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lqo7;->u:I

    goto :goto_0

    :cond_0
    new-instance v2, Lqo7;

    invoke-direct {v2, v0, v1}, Lqo7;-><init>(Lro7;Lf02;)V

    :goto_0
    iget-object v1, v2, Lqo7;->s:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v2, Lqo7;->u:I

    iget-object v5, v0, Lro7;->c:Lim2;

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v9

    :cond_2
    iget-object v0, v2, Lqo7;->r:Ljava/lang/String;

    iget-object v4, v2, Lqo7;->q:Ljava/lang/String;

    iget-object v7, v2, Lqo7;->p:Ljava/lang/String;

    iget-object v8, v2, Lqo7;->o:Ljava/lang/String;

    iget-object v10, v2, Lqo7;->n:Ljava/lang/String;

    iget-object v11, v2, Lqo7;->m:Ljava/lang/String;

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    move-object/from16 v20, v0

    move-object/from16 v19, v4

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    move-object/from16 v16, v10

    move-object v15, v11

    goto/16 :goto_5

    :cond_3
    iget-boolean v4, v2, Lqo7;->l:Z

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    invoke-interface {v5}, Lim2;->a()Z

    move-result v4

    iput-boolean v4, v2, Lqo7;->l:Z

    iput v8, v2, Lqo7;->u:I

    iget-object v1, v0, Lro7;->b:Llu6;

    invoke-interface {v1, v2}, Llu6;->a(Lqo7;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    goto/16 :goto_6

    :cond_5
    :goto_1
    check-cast v1, Ljava/lang/String;

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v4, :cond_6

    move-object v11, v1

    goto :goto_2

    :cond_6
    move-object v11, v9

    :goto_2
    if-nez v11, :cond_7

    const-string v11, "Gurl, I am Huawei. xoxo"

    :cond_7
    if-nez v4, :cond_8

    move-object v12, v1

    goto :goto_3

    :cond_8
    move-object v12, v9

    :goto_3
    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    move-object v1, v9

    :goto_4
    const-string v4, "2.14.5.79"

    iput-object v4, v2, Lqo7;->m:Ljava/lang/String;

    const-string v13, "Android"

    iput-object v13, v2, Lqo7;->n:Ljava/lang/String;

    iput-object v10, v2, Lqo7;->o:Ljava/lang/String;

    iput-object v11, v2, Lqo7;->p:Ljava/lang/String;

    iput-object v12, v2, Lqo7;->q:Ljava/lang/String;

    iput-object v1, v2, Lqo7;->r:Ljava/lang/String;

    iput v7, v2, Lqo7;->u:I

    new-instance v7, Lc31;

    invoke-static {v2}, Lzya;->b(Le02;)Le02;

    move-result-object v14

    invoke-direct {v7, v8, v14}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v7}, Lc31;->u()V

    iget-object v0, v0, Lro7;->a:Lee;

    iget-object v0, v0, Lee;->a:Landroid/content/Context;

    new-instance v8, Lde;

    invoke-direct {v8, v7}, Lde;-><init>(Lc31;)V

    const-string v14, "appmetrica_device_id"

    invoke-static {v14}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-static {v0, v8, v14}, Lio/appmetrica/analytics/AppMetrica;->requestStartupParams(Landroid/content/Context;Lio/appmetrica/analytics/StartupParamsCallback;Ljava/util/List;)V

    invoke-virtual {v7}, Lc31;->s()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_a

    goto :goto_6

    :cond_a
    move-object/from16 v20, v1

    move-object v15, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v16, v13

    move-object v1, v0

    :goto_5
    move-object/from16 v21, v1

    check-cast v21, Ljava/lang/String;

    new-instance v14, Lgm2;

    invoke-direct/range {v14 .. v21}, Lgm2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, v2, Lqo7;->m:Ljava/lang/String;

    iput-object v9, v2, Lqo7;->n:Ljava/lang/String;

    iput-object v9, v2, Lqo7;->o:Ljava/lang/String;

    iput-object v9, v2, Lqo7;->p:Ljava/lang/String;

    iput-object v9, v2, Lqo7;->q:Ljava/lang/String;

    iput-object v9, v2, Lqo7;->r:Ljava/lang/String;

    iput v6, v2, Lqo7;->u:I

    invoke-interface {v5, v14, v2}, Lim2;->b(Lgm2;Lqo7;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_b

    :goto_6
    return-object v3

    :cond_b
    :goto_7
    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method
