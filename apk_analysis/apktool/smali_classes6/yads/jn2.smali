.class public final Lyads/jn2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/xo;

.field public final c:Lyads/na;

.field public final d:Lyads/ao4;


# direct methods
.method public constructor <init>(Lyads/e4;Lyads/bf5;Lyads/dt;)V
    .locals 3

    new-instance v0, Lyads/xo;

    invoke-direct {v0}, Lyads/xo;-><init>()V

    new-instance v1, Lyads/na;

    invoke-direct {v1, p3}, Lyads/na;-><init>(Lyads/dt;)V

    new-instance p3, Lyads/l34;

    const/4 v2, 0x0

    invoke-direct {p3, p1, p2, v2}, Lyads/l34;-><init>(Lyads/e4;Lyads/bf5;Lyads/d9;)V

    new-instance p2, Lyads/ao4;

    invoke-direct {p2, p3}, Lyads/ao4;-><init>(Lyads/l34;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/jn2;->a:Lyads/e4;

    iput-object v0, p0, Lyads/jn2;->b:Lyads/xo;

    iput-object v1, p0, Lyads/jn2;->c:Lyads/na;

    iput-object p2, p0, Lyads/jn2;->d:Lyads/ao4;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lf02;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p2, Lyads/in2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lyads/in2;

    iget v1, v0, Lyads/in2;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/in2;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/in2;

    invoke-direct {v0, p0, p2}, Lyads/in2;-><init>(Lyads/jn2;Lf02;)V

    :goto_0
    iget-object p2, v0, Lyads/in2;->b:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/in2;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lyads/jn2;->a:Lyads/e4;

    iget-object p2, p2, Lyads/e4;->c:Lyads/ma;

    iget-object p2, p2, Lyads/ma;->a:Ljava/lang/String;

    iget-object v2, p0, Lyads/jn2;->c:Lyads/na;

    iget-object v2, v2, Lyads/na;->a:Lyads/dt;

    iget-object v2, v2, Lyads/dt;->b:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lyads/la;

    iget-object v7, v7, Lyads/la;->b:Ljava/lang/String;

    invoke-static {v7, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_5
    move-object v6, v5

    :goto_1
    check-cast v6, Lyads/la;

    if-eqz v6, :cond_a

    iget-object v9, v6, Lyads/la;->c:Ljava/util/ArrayList;

    iget-object p2, p0, Lyads/jn2;->a:Lyads/e4;

    iget-object v2, p2, Lyads/e4;->a:Lyads/n70;

    sget-object v6, Lyads/n70;->d:Lyads/n70;

    if-ne v2, v6, :cond_8

    iget-object p2, p2, Lyads/e4;->d:Lyads/tl5;

    iget-object v12, p2, Lyads/tl5;->a:Lyads/sl5;

    if-eqz v12, :cond_7

    iget-object v11, p0, Lyads/jn2;->d:Lyads/ao4;

    iput v4, v0, Lyads/in2;->d:I

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lqo2;->a:Loi2;

    sget-object p2, Lsh2;->c:Lsh2;

    new-instance v7, Lyads/zn4;

    const/4 v10, 0x0

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lyads/zn4;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Le02;Lyads/ao4;Lyads/sl5;)V

    invoke-static {p2, v7, v0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    check-cast p2, Lorg/json/JSONArray;

    invoke-virtual {p0, p2}, Lyads/jn2;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v5

    :cond_8
    move-object v8, p1

    iget-object v11, p0, Lyads/jn2;->d:Lyads/ao4;

    iput v3, v0, Lyads/in2;->d:I

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lqo2;->a:Loi2;

    sget-object p1, Lsh2;->c:Lsh2;

    new-instance v7, Lyads/zn4;

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lyads/zn4;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Le02;Lyads/ao4;Lyads/sl5;)V

    invoke-static {p1, v7, v0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    :goto_3
    return-object v1

    :cond_9
    :goto_4
    check-cast p2, Lorg/json/JSONArray;

    invoke-virtual {p0, p2}, Lyads/jn2;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    return-object v5
.end method

.method public final a(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 2

    .line 183
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 184
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 185
    const-string v1, "networks"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    iget-object p0, p0, Lyads/jn2;->b:Lyads/xo;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/xo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
