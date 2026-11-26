.class public final Lyads/a4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/bf5;

.field public final b:Lyads/d9;

.field public final c:Lyads/e4;

.field public final d:Lyads/lf4;

.field public final e:Lyads/hv5;

.field public final f:Lyads/l65;

.field public final g:Lyads/qe4;

.field public final h:Lyads/h16;

.field public final i:Lyads/q5;

.field public final j:Lyads/sz;

.field public final k:Lyads/pe4;

.field public final l:Lyads/oe4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/bf5;Lyads/d9;Lyads/e4;Lyads/lf4;Lyads/hv5;Lyads/l65;)V
    .locals 4

    new-instance v0, Lyads/ea;

    invoke-direct {v0, p1, p4, p2}, Lyads/ea;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;)V

    new-instance v1, Lyads/qe4;

    invoke-direct {v1, p1, p4, p2, p3}, Lyads/qe4;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;)V

    new-instance p1, Lyads/h16;

    invoke-direct {p1, v0, p4, p3}, Lyads/h16;-><init>(Lyads/ea;Lyads/e4;Lyads/d9;)V

    new-instance v0, Lyads/q5;

    invoke-direct {v0, p5}, Lyads/q5;-><init>(Lyads/lf4;)V

    new-instance v2, Lyads/sz;

    invoke-direct {v2}, Lyads/sz;-><init>()V

    new-instance v3, Lyads/pe4;

    invoke-direct {v3}, Lyads/pe4;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/a4;->a:Lyads/bf5;

    iput-object p3, p0, Lyads/a4;->b:Lyads/d9;

    iput-object p4, p0, Lyads/a4;->c:Lyads/e4;

    iput-object p5, p0, Lyads/a4;->d:Lyads/lf4;

    iput-object p6, p0, Lyads/a4;->e:Lyads/hv5;

    iput-object p7, p0, Lyads/a4;->f:Lyads/l65;

    iput-object v1, p0, Lyads/a4;->g:Lyads/qe4;

    iput-object p1, p0, Lyads/a4;->h:Lyads/h16;

    iput-object v0, p0, Lyads/a4;->i:Lyads/q5;

    iput-object v2, p0, Lyads/a4;->j:Lyads/sz;

    iput-object v3, p0, Lyads/a4;->k:Lyads/pe4;

    new-instance p1, Lyads/oe4;

    invoke-direct {p1}, Lyads/oe4;-><init>()V

    iput-object p1, p0, Lyads/a4;->l:Lyads/oe4;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lyads/ot3;Lyads/d1;Lyads/nk4;Lyads/ji4;Lf02;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p6, Lyads/z3;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Lyads/z3;

    iget v1, v0, Lyads/z3;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/z3;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/z3;

    invoke-direct {v0, p0, p6}, Lyads/z3;-><init>(Lyads/a4;Lf02;)V

    :goto_0
    iget-object p6, v0, Lyads/z3;->f:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/z3;->h:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p5, v0, Lyads/z3;->e:Lyads/ji4;

    iget-object p4, v0, Lyads/z3;->d:Lyads/nk4;

    iget-object p2, v0, Lyads/z3;->c:Lyads/ot3;

    iget-object p1, v0, Lyads/z3;->b:Landroid/view/View;

    invoke-static {p6}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p6}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p6, p2, Lyads/ot3;->a:Ljava/util/ArrayList;

    iput-object p1, v0, Lyads/z3;->b:Landroid/view/View;

    iput-object p2, v0, Lyads/z3;->c:Lyads/ot3;

    iput-object p4, v0, Lyads/z3;->d:Lyads/nk4;

    iput-object p5, v0, Lyads/z3;->e:Lyads/ji4;

    iput v3, v0, Lyads/z3;->h:I

    invoke-virtual {p3, p1, p6, v0}, Lyads/d1;->a(Landroid/view/View;Ljava/util/ArrayList;Lf02;)Ljava/lang/Object;

    move-result-object p6

    if-ne p6, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p6, Lyads/m83;

    iget-object p3, p0, Lyads/a4;->f:Lyads/l65;

    iget-object p3, p3, Lyads/l65;->a:Ljava/lang/Long;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    goto :goto_2

    :cond_4
    const-wide/16 v5, 0x0

    :goto_2
    iget-object p3, p0, Lyads/a4;->j:Lyads/sz;

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p3, p1, v0}, Lyads/sz;->a(Landroid/view/View;Ljava/lang/Long;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iget-object p3, p2, Lyads/ot3;->d:Ljava/lang/String;

    iget-object v0, p6, Lyads/m83;->b:Lyads/n83;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lyads/n83;->a:Lyads/by4;

    goto :goto_3

    :cond_5
    move-object v1, v4

    :goto_3
    iget-object p2, p2, Lyads/ot3;->c:Ljava/util/List;

    if-eqz p3, :cond_6

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    move-object v2, p3

    goto :goto_4

    :cond_6
    move-object v2, v4

    :goto_4
    if-eqz v2, :cond_8

    iget-object v5, p4, Lyads/nk4;->a:Lyads/lk4;

    iget-object v6, v5, Lyads/lk4;->b:Lyads/zv3;

    sget-object v7, Lmx2;->b:Lmx2;

    invoke-virtual {v6, v2, v7}, Lyads/zv3;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    iget-object v5, v5, Lyads/lk4;->a:Lyads/gv5;

    invoke-interface {v5, v2}, Lyads/gv5;->a(Ljava/lang/String;)Lyads/fv5;

    move-result-object v2

    goto :goto_5

    :cond_7
    new-instance v2, Lyads/dv5;

    sget-object v5, Lyads/d75;->e:Lyads/d75;

    invoke-direct {v2, v5}, Lyads/dv5;-><init>(Lyads/d75;)V

    goto :goto_5

    :cond_8
    move-object v2, v4

    :goto_5
    invoke-static {v1, v2}, Lyads/pe4;->a(Lyads/by4;Lyads/fv5;)Lyads/zz;

    move-result-object v1

    iget-object p4, p4, Lyads/nk4;->b:Lyads/h16;

    invoke-virtual {p4, p2, v1, p1}, Lyads/h16;->a(Ljava/util/List;Lyads/zz;Ljava/util/Map;)V

    iget-object p1, p5, Lyads/ji4;->b:Lyads/pe4;

    invoke-static {v2, v0}, Lyads/pe4;->a(Lyads/fv5;Lyads/n83;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz v2, :cond_9

    iget-object p2, v2, Lyads/fv5;->a:Lyads/d75;

    goto :goto_6

    :cond_9
    move-object p2, v4

    :goto_6
    if-eqz v0, :cond_a

    iget-object p4, v0, Lyads/n83;->b:Lyads/fv5;

    if-eqz p4, :cond_a

    iget-object p4, p4, Lyads/fv5;->a:Lyads/d75;

    goto :goto_7

    :cond_a
    move-object p4, v4

    :goto_7
    sget-object v1, Lyads/d75;->d:Lyads/d75;

    if-eqz v0, :cond_b

    iget-object v5, v0, Lyads/n83;->a:Lyads/by4;

    goto :goto_8

    :cond_b
    move-object v5, v4

    :goto_8
    if-eqz v5, :cond_c

    goto :goto_9

    :cond_c
    move-object v1, v4

    :goto_9
    if-nez p2, :cond_f

    if-nez p4, :cond_e

    if-nez v1, :cond_d

    sget-object p2, Lyads/d75;->e:Lyads/d75;

    goto :goto_a

    :cond_d
    move-object p2, v1

    goto :goto_a

    :cond_e
    move-object p2, p4

    :cond_f
    :goto_a
    instance-of p4, v2, Lyads/ev5;

    if-eqz p4, :cond_10

    move-object v1, v2

    check-cast v1, Lyads/ev5;

    goto :goto_b

    :cond_10
    move-object v1, v4

    :goto_b
    if-eqz v1, :cond_11

    iget-object v1, v1, Lyads/ev5;->c:Ljava/lang/String;

    goto :goto_c

    :cond_11
    move-object v1, v4

    :goto_c
    if-eqz v0, :cond_12

    iget-object v5, v0, Lyads/n83;->b:Lyads/fv5;

    goto :goto_d

    :cond_12
    move-object v5, v4

    :goto_d
    instance-of v6, v5, Lyads/ev5;

    if-eqz v6, :cond_13

    check-cast v5, Lyads/ev5;

    goto :goto_e

    :cond_13
    move-object v5, v4

    :goto_e
    if-eqz v5, :cond_14

    iget-object v5, v5, Lyads/ev5;->c:Ljava/lang/String;

    goto :goto_f

    :cond_14
    move-object v5, v4

    :goto_f
    if-eqz v0, :cond_15

    iget-object v6, v0, Lyads/n83;->a:Lyads/by4;

    if-eqz v6, :cond_15

    iget-object v6, v6, Lyads/by4;->b:Ljava/lang/String;

    goto :goto_10

    :cond_15
    move-object v6, v4

    :goto_10
    if-nez v1, :cond_17

    if-nez v5, :cond_16

    move-object v1, v6

    goto :goto_11

    :cond_16
    move-object v1, v5

    :cond_17
    :goto_11
    invoke-static {v1}, Lyads/a56;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0}, Lyads/pe4;->a(Lyads/fv5;Lyads/n83;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v3, :cond_1b

    if-nez v2, :cond_19

    if-eqz v0, :cond_18

    iget-object v5, v0, Lyads/n83;->b:Lyads/fv5;

    goto :goto_12

    :cond_18
    move-object v5, v4

    goto :goto_12

    :cond_19
    move-object v5, v2

    :goto_12
    if-eqz v0, :cond_1a

    iget-object v6, v0, Lyads/n83;->a:Lyads/by4;

    goto :goto_13

    :cond_1a
    move-object v6, v4

    :goto_13
    invoke-static {v6, v5}, Lyads/pe4;->a(Lyads/by4;Lyads/fv5;)Lyads/zz;

    move-result-object v5

    goto :goto_14

    :cond_1b
    sget-object v5, Lyads/wz;->a:Lyads/wz;

    :goto_14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-instance v6, Lb36;

    const-string v7, "click_handled"

    invoke-direct {v6, v7, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p2, Lyads/d75;->b:Ljava/lang/String;

    new-instance p2, Lb36;

    const-string v7, "click_type"

    invoke-direct {p2, v7, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lb36;

    const-string v7, "click_url"

    invoke-direct {p1, v7, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v5}, Lyads/a00;->a(Lyads/zz;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lb36;

    const-string v7, "click_destination"

    invoke-direct {v5, v7, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v6, p2, p1, v5}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p5, Lyads/ji4;->a:Lyads/l00;

    sget-object p5, Lyads/e75;->r:Lyads/e75;

    invoke-virtual {p2, p5, p1}, Lyads/l00;->a(Lyads/e75;Ljava/util/Map;)Lyads/g75;

    move-result-object p1

    iget-object v1, p2, Lyads/l00;->d:Lyads/q84;

    invoke-virtual {v1, p1}, Lyads/q84;->a(Lyads/g75;)V

    iget-object p2, p2, Lyads/l00;->f:Lyads/le;

    iget-object p1, p1, Lyads/g75;->b:Ljava/util/Map;

    sget-object v1, Lyads/c75;->a:Ljava/lang/String;

    invoke-virtual {p2, p5, p1, v1, v4}, Lyads/le;->a(Lyads/e75;Ljava/util/Map;Ljava/lang/String;Lyads/j5;)V

    iget-object p1, p0, Lyads/a4;->k:Lyads/pe4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0}, Lyads/pe4;->a(Lyads/fv5;Lyads/n83;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lyads/a4;->l:Lyads/oe4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_1c

    iget-object p1, v0, Lyads/n83;->a:Lyads/by4;

    goto :goto_15

    :cond_1c
    move-object p1, v4

    :goto_15
    if-eqz v0, :cond_1d

    iget-object v4, v0, Lyads/n83;->b:Lyads/fv5;

    :cond_1d
    instance-of p2, v4, Lyads/ev5;

    if-eqz p1, :cond_1e

    goto :goto_16

    :cond_1e
    const/4 v3, 0x0

    :goto_16
    if-eqz v0, :cond_1f

    if-nez v3, :cond_1f

    if-nez p2, :cond_1f

    if-nez p4, :cond_1f

    sget-object p1, Lyads/ne4;->d:Lyads/ne4;

    goto :goto_17

    :cond_1f
    instance-of p1, v2, Lyads/dv5;

    if-eqz p1, :cond_20

    sget-object p1, Lyads/ne4;->c:Lyads/ne4;

    goto :goto_17

    :cond_20
    if-nez v2, :cond_23

    if-nez v0, :cond_23

    if-nez p3, :cond_21

    sget-object p1, Lyads/ne4;->f:Lyads/ne4;

    goto :goto_17

    :cond_21
    invoke-static {p3}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_22

    sget-object p1, Lyads/ne4;->e:Lyads/ne4;

    goto :goto_17

    :cond_22
    sget-object p1, Lyads/ne4;->b:Lyads/ne4;

    goto :goto_17

    :cond_23
    if-eqz p3, :cond_24

    invoke-static {p3}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_24

    if-nez v3, :cond_24

    if-nez p2, :cond_24

    sget-object p1, Lyads/ne4;->e:Lyads/ne4;

    goto :goto_17

    :cond_24
    sget-object p1, Lyads/ne4;->b:Lyads/ne4;

    :goto_17
    iget-object p0, p0, Lyads/a4;->d:Lyads/lf4;

    new-instance p2, Lyads/me4;

    invoke-direct {p2, p1}, Lyads/me4;-><init>(Lyads/ne4;)V

    iget-object p0, p0, Lyads/lf4;->a:Lyads/nf4;

    invoke-virtual {p0, p2}, Lyads/nf4;->a(Lyads/me4;)V

    :cond_25
    return-object p6
.end method
