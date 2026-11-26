.class public final Lyads/lb6;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/mb6;


# direct methods
.method public constructor <init>(Lyads/mb6;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/lb6;->c:Lyads/mb6;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0

    new-instance p1, Lyads/lb6;

    iget-object p0, p0, Lyads/lb6;->c:Lyads/mb6;

    invoke-direct {p1, p0, p2}, Lyads/lb6;-><init>(Lyads/mb6;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/lb6;

    iget-object p0, p0, Lyads/lb6;->c:Lyads/mb6;

    invoke-direct {p1, p0, p2}, Lyads/lb6;-><init>(Lyads/mb6;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/lb6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/lb6;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/lb6;->c:Lyads/mb6;

    iget-object v1, p1, Lyads/mb6;->a:Lyads/ec6;

    iget-object v1, v1, Lyads/ec6;->c:Ly68;

    new-instance v4, Lyads/kb6;

    invoke-direct {v4, p1, v3}, Lyads/kb6;-><init>(Lyads/mb6;Le02;)V

    iput v2, p0, Lyads/lb6;->b:I

    invoke-static {v1, v4, p0}, Lue3;->b(Lhd3;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lyads/lb6;->c:Lyads/mb6;

    iput-boolean v2, p1, Lyads/mb6;->d:Z

    iget-object p1, p1, Lyads/mb6;->b:Lyads/ub6;

    iget-object v0, p1, Lyads/ub6;->d:Lyads/xb6;

    iget-object v1, p1, Lyads/ub6;->e:Lyads/ae6;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v4}, Lv39;->e(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, v3

    :goto_1
    if-nez v4, :cond_4

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_4
    iget-object v5, v1, Lyads/ae6;->b:Lyads/of6;

    invoke-interface {v5}, Lyads/of6;->b()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_2

    :cond_5
    move-object v6, v3

    :goto_2
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_3

    :cond_6
    move-object v5, v3

    :goto_3
    iget-object v1, v1, Lyads/ae6;->a:Lyads/ja6;

    iget-object v1, v1, Lyads/ja6;->c:Lyads/zz3;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_7

    goto :goto_4

    :cond_7
    move-object v6, v3

    :goto_4
    const-string v7, "undefined"

    const-string v8, "view_container_height"

    if-nez v6, :cond_8

    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    invoke-interface {v4, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_9

    goto :goto_6

    :cond_9
    move-object v5, v3

    :goto_6
    const-string v6, "view_container_width"

    if-nez v5, :cond_a

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_a
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    iget v5, v1, Lyads/zz3;->g:I

    if-lez v5, :cond_b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_8

    :cond_b
    move-object v5, v3

    :goto_8
    const-string v6, "video_height"

    if-nez v5, :cond_c

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_c
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    iget v5, v1, Lyads/zz3;->h:I

    if-lez v5, :cond_d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_a

    :cond_d
    move-object v5, v3

    :goto_a
    const-string v6, "video_width"

    if-nez v5, :cond_e

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_e
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    iget-object v5, v1, Lyads/zz3;->e:Ljava/lang/String;

    const-string v6, "video_codec"

    if-nez v5, :cond_f

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_f
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    iget-object v5, v1, Lyads/zz3;->d:Ljava/lang/String;

    const-string v6, "video_mime_type"

    if-nez v5, :cond_10

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_10
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    iget-object v1, v1, Lyads/zz3;->f:Ljava/lang/Float;

    const-string v5, "video_vmaf"

    if-nez v1, :cond_11

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_11
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e
    const-string v1, "video_playback_info"

    invoke-static {v1, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lyads/xb6;->f:Ljava/util/Map;

    iget-object v0, p1, Lyads/ub6;->a:Lyads/t5;

    sget-object v1, Lyads/s5;->z:Lyads/s5;

    invoke-virtual {v0, v1}, Lyads/t5;->a(Lyads/s5;)V

    iget-boolean v0, p1, Lyads/ub6;->h:Z

    if-nez v0, :cond_12

    iput-boolean v2, p1, Lyads/ub6;->h:Z

    iget-object p1, p1, Lyads/ub6;->d:Lyads/xb6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lb36;

    const-string v2, "status"

    const-string v4, "success"

    invoke-direct {v0, v2, v4}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p1, Lyads/xb6;->c:Lyads/vb6;

    iget-object v2, v2, Lyads/vb6;->a:Lyads/ku4;

    sget-object v4, Lyads/s5;->A:Lyads/s5;

    filled-new-array {v1, v4}, [Lyads/s5;

    move-result-object v1

    invoke-static {v1}, Lyr;->k0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v2, v1}, Lyads/ku4;->a(Ljava/util/Set;)Ljava/util/LinkedHashMap;

    move-result-object v1

    new-instance v2, Lb36;

    const-string v4, "durations"

    invoke-direct {v2, v4, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0, v2}, [Lb36;

    move-result-object v0

    invoke-static {v0}, Ln05;->f([Lb36;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lyads/xb6;->a(Ljava/util/Map;)V

    :cond_12
    iget-object p0, p0, Lyads/lb6;->c:Lyads/mb6;

    iget-object p1, p0, Lyads/mb6;->f:Lmb4;

    if-eqz p1, :cond_13

    invoke-interface {p1, v3}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_13
    iput-object v3, p0, Lyads/mb6;->f:Lmb4;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lyads/mb6;->e:Z

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
