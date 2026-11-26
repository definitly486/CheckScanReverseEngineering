.class public final Ltc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;
.implements Lrxa;


# static fields
.field public static final synthetic b:Ltc0;

.field public static final synthetic c:Ltc0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ltc0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltc0;->b:Ltc0;

    new-instance v0, Ltc0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltc0;->c:Ltc0;

    return-void
.end method

.method public static a(Ljava/util/ArrayList;II)Lh14;
    .locals 8

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p2, :cond_8

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    int-to-float p1, p1

    int-to-float p2, p2

    div-float v0, p1, p2

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh14;

    iget v4, v3, Lxha;->b:I

    if-lez v4, :cond_2

    iget v5, v3, Lxha;->c:I

    if-gtz v5, :cond_3

    goto :goto_0

    :cond_3
    int-to-float v4, v4

    int-to-float v5, v5

    div-float v6, v4, v5

    cmpg-float v7, v0, v6

    if-gez v7, :cond_5

    cmpl-float v5, v4, p1

    if-lez v5, :cond_4

    move v4, p1

    :cond_4
    div-float v5, v4, v6

    goto :goto_1

    :cond_5
    cmpl-float v4, v5, p2

    if-lez v4, :cond_6

    move v5, p2

    :cond_6
    mul-float v4, v5, v6

    :goto_1
    mul-float/2addr v4, v5

    cmpl-float v2, v4, v2

    if-lez v2, :cond_7

    move-object v1, v3

    move v2, v4

    goto :goto_0

    :cond_7
    return-object v1

    :cond_8
    :goto_2
    const-string p0, "InterstitialAdResultProcessor: Display size is zero"

    invoke-static {v1, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static b(Ljava/util/List;)Lsna;
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsna;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsna;

    iget v2, v1, Lsna;->h:F

    iget v3, v0, Lsna;->h:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static c(Ljava/util/ArrayList;)Z
    .locals 9

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljia;

    instance-of v3, v3, Lxda;

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-lez v2, :cond_f

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v2, v1

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljia;

    instance-of v4, v3, Lxda;

    if-eqz v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lxda;

    iget-object v5, v3, Lxda;->Z:Lkha;

    if-eqz v5, :cond_4

    iget-object v6, v5, Lkha;->S:Lh14;

    if-eqz v6, :cond_3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v5, v5, Lkha;->h0:Lxha;

    check-cast v5, Lrn9;

    if-eqz v5, :cond_4

    iget-boolean v6, v5, Lrn9;->e:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lifa;

    sget-object v8, Lpp9;->d:Lpp9;

    invoke-direct {v7, v5, v8}, Lifa;-><init>(Lrn9;Lpp9;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lmt9;

    invoke-direct {v7, v6}, Lmt9;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v7}, Lmt9;->a()V

    iget-object v5, v5, Lxha;->d:Ljava/lang/Object;

    if-nez v5, :cond_4

    iget-boolean v5, v3, Lxda;->e0:Z

    if-eqz v5, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v5, v3, Lao9;->p:Lh14;

    if-eqz v5, :cond_5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v5, v3, Lao9;->q:Lh14;

    if-eqz v5, :cond_6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v5, v3, Ljia;->R:Lh14;

    if-eqz v5, :cond_7

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v5, v3, Lxda;->b0:Lh14;

    if-eqz v5, :cond_8

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v5, v3, Lao9;->H:Lcom/my/target/q;

    if-eqz v5, :cond_9

    iget-object v5, v5, Lcom/my/target/q;->a:Lh14;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v5, v3, Lxda;->X:Lev9;

    iget-object v5, v5, Lev9;->k:Lh14;

    if-eqz v5, :cond_a

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v5, v3, Lxda;->Y:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfo9;

    iget-object v6, v6, Lao9;->p:Lh14;

    if-eqz v6, :cond_b

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_c
    iget-object v5, v3, Lxda;->a0:Ljia;

    if-eqz v5, :cond_d

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ltc0;->c(Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_d

    const/4 v5, 0x0

    iput-object v5, v3, Lxda;->a0:Ljia;

    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Ls0a;->c:Ljava/util/WeakHashMap;

    sget-object v3, Lpp9;->d:Lpp9;

    invoke-static {v4, v3}, Ls0a;->a(Ljava/util/ArrayList;Lpp9;)Ls0a;

    move-result-object v3

    invoke-virtual {v3}, Ls0a;->d()V

    goto/16 :goto_1

    :cond_e
    if-eqz v2, :cond_1e

    goto/16 :goto_3

    :cond_f
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljia;

    instance-of v2, p0, Lvy9;

    if-eqz v2, :cond_17

    check-cast p0, Lvy9;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lrh5;->c:Lkt9;

    if-nez v3, :cond_10

    goto/16 :goto_4

    :cond_10
    iget-object v3, v3, Lkt9;->a:Landroid/content/Context;

    invoke-static {v3}, Ll3a;->q(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lvy9;->X:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v4, v5, v6}, Ltc0;->a(Ljava/util/ArrayList;II)Lh14;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v4, p0, Lvy9;->Z:Lh14;

    :cond_11
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lvy9;->Y:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v7, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v6, v3}, Ltc0;->a(Ljava/util/ArrayList;II)Lh14;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v3, p0, Lvy9;->a0:Lh14;

    :cond_12
    if-nez v4, :cond_13

    if-eqz v3, :cond_14

    :cond_13
    iget-object v5, p0, Ljia;->R:Lh14;

    if-eqz v5, :cond_14

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-object p0, p0, Lao9;->H:Lcom/my/target/q;

    if-eqz p0, :cond_15

    iget-object p0, p0, Lcom/my/target/q;->a:Lh14;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1e

    sget-object p0, Ls0a;->c:Ljava/util/WeakHashMap;

    sget-object p0, Lpp9;->d:Lpp9;

    invoke-static {v2, p0}, Ls0a;->a(Ljava/util/ArrayList;Lpp9;)Ls0a;

    move-result-object p0

    invoke-virtual {p0}, Ls0a;->d()V

    if-eqz v4, :cond_16

    iget-object p0, v4, Lxha;->d:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    if-eqz p0, :cond_16

    goto :goto_3

    :cond_16
    if-eqz v3, :cond_1e

    iget-object p0, v3, Lxha;->d:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    if-eqz p0, :cond_1e

    goto :goto_3

    :cond_17
    instance-of v2, p0, Lwv9;

    if-eqz v2, :cond_1a

    check-cast p0, Lwv9;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lao9;->H:Lcom/my/target/q;

    if-eqz v2, :cond_18

    iget-object v2, v2, Lcom/my/target/q;->a:Lh14;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    iget-object p0, p0, Ljia;->R:Lh14;

    if-eqz p0, :cond_19

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    sget-object p0, Ls0a;->c:Ljava/util/WeakHashMap;

    sget-object p0, Lpp9;->d:Lpp9;

    invoke-static {v1, p0}, Ls0a;->a(Ljava/util/ArrayList;Lpp9;)Ls0a;

    move-result-object p0

    invoke-virtual {p0}, Ls0a;->d()V

    return v0

    :cond_1a
    instance-of v2, p0, Lj1a;

    if-eqz v2, :cond_1e

    check-cast p0, Lj1a;

    iget-object v2, p0, Lj1a;->a0:Ly8a;

    iget-object p0, p0, Lj1a;->Y:Lk6a;

    if-nez v2, :cond_1b

    :goto_3
    return v0

    :cond_1b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v2, Ly8a;->g:Lrn9;

    if-eqz v4, :cond_1d

    iget-object v5, v2, Ly8a;->f:Lh14;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v5, v4, Lrn9;->e:Z

    if-eqz v5, :cond_1c

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lifa;

    sget-object v7, Lpp9;->d:Lpp9;

    invoke-direct {v6, v4, v7}, Lifa;-><init>(Lrn9;Lpp9;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lmt9;

    invoke-direct {v6, v5}, Lmt9;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v6}, Lmt9;->a()V

    iget-object v4, v4, Lxha;->d:Ljava/lang/Object;

    if-nez v4, :cond_1c

    goto :goto_4

    :cond_1c
    iget-object v1, v2, Ly8a;->d:Lh14;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    iget-object p0, p0, Lk6a;->d:Lh14;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Ls0a;->c:Ljava/util/WeakHashMap;

    sget-object p0, Lpp9;->d:Lpp9;

    invoke-static {v3, p0}, Ls0a;->a(Ljava/util/ArrayList;Lpp9;)Ls0a;

    move-result-object p0

    invoke-virtual {p0}, Ls0a;->d()V

    return v0

    :cond_1e
    :goto_4
    return v1
.end method

.method public static d(Ln4a;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ln4a;->a(I)Ls5a;

    move-result-object v1

    iget-object v1, v1, Ls5a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ltc0;->b(Ljava/util/List;)Lsna;

    move-result-object p0

    iput-boolean v0, p0, Lm2a;->d:Z

    return v0

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ln4a;->a(I)Ls5a;

    move-result-object v1

    iget-object v1, v1, Ls5a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ltc0;->b(Ljava/util/List;)Lsna;

    move-result-object p0

    iput-boolean v0, p0, Lm2a;->d:Z

    return v0

    :cond_1
    const-string v1, "show"

    invoke-virtual {p0, v1}, Ln4a;->f(Ljava/lang/String;)Ls5a;

    move-result-object v1

    iget-object v1, v1, Ls5a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm2a;

    iput-boolean v0, p0, Lm2a;->d:Z

    return v0

    :cond_2
    const-string v1, "playbackStarted"

    invoke-virtual {p0, v1}, Ln4a;->f(Ljava/lang/String;)Ls5a;

    move-result-object p0

    iget-object p0, p0, Ls5a;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm2a;

    iput-boolean v0, p0, Lm2a;->d:Z

    return v0

    :cond_3
    return v3
.end method

.method public static final e(Lud2;)Lkc4;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lkc4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkc4;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    const-string v0, "This serializer can be used only with Json format.Expected Decoder to be JsonDecoder, got "

    invoke-static {p0, v0}, Lqz0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final f(Lux2;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lwc4;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lwc4;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    const-string v0, "This serializer can be used only with Json format.Expected Encoder to be JsonEncoder, got "

    invoke-static {p0, v0}, Lqz0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static final g(Lar4;Lti3;)V
    .locals 1

    instance-of v0, p1, Lte0;

    if-eqz v0, :cond_0

    check-cast p1, Lte0;

    iget-object p1, p1, Lte0;->a:Lx83;

    invoke-virtual {p0, p1}, Lar4;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    instance-of v0, p1, Lwu1;

    if-eqz v0, :cond_1

    check-cast p1, Lwu1;

    iget-object p1, p1, Lwu1;->a:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfo5;

    invoke-static {p0, v0}, Ltc0;->g(Lar4;Lti3;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lhx1;

    if-nez v0, :cond_4

    instance-of v0, p1, Lox7;

    if-eqz v0, :cond_2

    check-cast p1, Lox7;

    iget-object p1, p1, Lox7;->a:Lte0;

    invoke-static {p0, p1}, Ltc0;->g(Lar4;Lti3;)V

    return-void

    :cond_2
    instance-of v0, p1, Lwc;

    if-eqz v0, :cond_3

    check-cast p1, Lwc;

    iget-object v0, p1, Lwc;->a:Lwu1;

    invoke-static {p0, v0}, Ltc0;->g(Lar4;Lti3;)V

    iget-object p1, p1, Lwc;->b:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti3;

    invoke-static {p0, v0}, Ltc0;->g(Lar4;Lti3;)V

    goto :goto_1

    :cond_3
    instance-of v0, p1, Luz5;

    if-eqz v0, :cond_4

    check-cast p1, Luz5;

    iget-object p1, p1, Luz5;->b:Lwu1;

    invoke-static {p0, p1}, Ltc0;->g(Lar4;Lti3;)V

    :cond_4
    return-void
.end method

.method public static h(Lsc0;)Lylb;
    .locals 5

    const-string v0, "You must provide a valid BarcodeScannerOptions."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljb5;->c()Ljb5;

    move-result-object v0

    const-class v1, Ljhb;

    invoke-virtual {v0, v1}, Ljb5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljhb;

    iget-object v1, v0, Ljhb;->a:Lupb;

    new-instance v2, Lylb;

    invoke-virtual {v1, p0}, Lu1;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm1c;

    iget-object v0, v0, Ljhb;->b:Lx13;

    iget-object v0, v0, Lx13;->a:Lcom/google/firebase/inject/Provider;

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    invoke-static {}, Lxva;->c()Z

    move-result v4

    if-eq v3, v4, :cond_0

    const-string v3, "play-services-mlkit-barcode-scanning"

    goto :goto_0

    :cond_0
    const-string v3, "barcode-scanning"

    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxa;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    move-result-object v3

    invoke-direct {v2, p0, v1, v0, v3}, Lylb;-><init>(Lsc0;Lm1c;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;)V

    return-object v2
.end method

.method public static final i(I)V
    .locals 2

    new-instance v0, Lkotlinx/serialization/SerializationException;

    const-string v1, "An unknown field for index "

    invoke-static {p0, v1}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/google/android/gms/internal/location/zzcg;->a:Lcom/google/android/gms/common/api/Api$ClientKey;

    const/4 p0, 0x0

    return-object p0
.end method

.method public synthetic zza()Ljava/lang/Object;
    .locals 2

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzK()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
