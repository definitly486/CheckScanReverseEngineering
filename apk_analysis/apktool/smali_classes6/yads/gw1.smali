.class public final Lyads/gw1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/jw1;

.field public final b:Lyads/jw1;

.field public final c:Ljava/util/List;

.field public final d:Lyads/ds2;

.field public final e:Lyads/gx1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    sget-object v0, Lyads/tx1;->f:Lyads/tx1;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    return-void
.end method

.method public constructor <init>(Lyads/jw1;Lyads/jw1;Ljava/util/List;Lyads/ds2;Lyads/gx1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/gw1;->a:Lyads/jw1;

    iput-object p2, p0, Lyads/gw1;->b:Lyads/jw1;

    iput-object p3, p0, Lyads/gw1;->c:Ljava/util/List;

    iput-object p4, p0, Lyads/gw1;->d:Lyads/ds2;

    iput-object p5, p0, Lyads/gw1;->e:Lyads/gx1;

    return-void
.end method


# virtual methods
.method public final a(Lyads/gw1;Lyads/fs2;Lyads/fs2;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lyads/gw1;->a:Lyads/jw1;

    iget-object v2, p1, Lyads/gw1;->a:Lyads/jw1;

    invoke-virtual {v1, v2, p2, p3}, Lyads/jw1;->a(Lyads/jw1;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lyads/gw1;->b:Lyads/jw1;

    iget-object v2, p1, Lyads/gw1;->b:Lyads/jw1;

    invoke-virtual {v1, v2, p2, p3}, Lyads/jw1;->a(Lyads/jw1;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lyads/gw1;->c:Ljava/util/List;

    iget-object v2, p1, Lyads/gw1;->c:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-ltz v4, :cond_4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/fw1;

    check-cast v5, Lyads/fw1;

    if-nez v4, :cond_3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_7

    :cond_3
    iget-object v7, v5, Lyads/fw1;->a:Lyads/as2;

    invoke-virtual {v7, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    iget-object v8, v4, Lyads/fw1;->a:Lyads/as2;

    invoke-virtual {v8, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_18

    iget-object v5, v5, Lyads/fw1;->b:Lyads/as2;

    invoke-virtual {v5, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    iget-object v4, v4, Lyads/fw1;->b:Lyads/as2;

    invoke-virtual {v4, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpg-double v4, v7, v4

    if-nez v4, :cond_18

    move v4, v6

    goto :goto_0

    :cond_4
    invoke-static {}, Lu96;->o()V

    throw v3

    :cond_5
    if-nez v2, :cond_18

    :cond_6
    iget-object v1, p0, Lyads/gw1;->d:Lyads/ds2;

    if-eqz v1, :cond_b

    invoke-interface {v1, p2}, Lyads/ds2;->a(Lyads/fs2;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v2, p1, Lyads/gw1;->d:Lyads/ds2;

    if-eqz v2, :cond_a

    invoke-interface {v2, p3}, Lyads/ds2;->a(Lyads/fs2;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_8

    goto/16 :goto_7

    :cond_8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-ltz v4, :cond_9

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_18

    move v4, v6

    goto :goto_1

    :cond_9
    invoke-static {}, Lu96;->o()V

    throw v3

    :cond_a
    :goto_2
    return v0

    :cond_b
    iget-object v1, p1, Lyads/gw1;->d:Lyads/ds2;

    if-nez v1, :cond_18

    :cond_c
    iget-object p0, p0, Lyads/gw1;->e:Lyads/gx1;

    iget-object p1, p1, Lyads/gw1;->e:Lyads/gx1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    if-nez p1, :cond_d

    goto :goto_5

    :cond_d
    instance-of v2, p0, Lyads/ex1;

    if-eqz v2, :cond_11

    check-cast p0, Lyads/ex1;

    iget-object p0, p0, Lyads/ex1;->a:Lyads/af1;

    instance-of v2, p1, Lyads/ex1;

    if-eqz v2, :cond_e

    check-cast p1, Lyads/ex1;

    iget-object p1, p1, Lyads/ex1;->a:Lyads/af1;

    goto :goto_3

    :cond_e
    instance-of v2, p1, Lyads/fx1;

    if-eqz v2, :cond_10

    check-cast p1, Lyads/fx1;

    iget-object p1, p1, Lyads/fx1;->a:Lyads/ux1;

    :goto_3
    instance-of v2, p1, Lyads/af1;

    if-eqz v2, :cond_f

    move-object v3, p1

    check-cast v3, Lyads/af1;

    :cond_f
    invoke-virtual {p0, v3, p2, p3}, Lyads/af1;->a(Lyads/af1;Lyads/fs2;Lyads/fs2;)Z

    move-result p0

    goto :goto_6

    :cond_10
    invoke-static {}, Lme0;->e()V

    return v0

    :cond_11
    instance-of v2, p0, Lyads/fx1;

    if-eqz v2, :cond_17

    check-cast p0, Lyads/fx1;

    iget-object p0, p0, Lyads/fx1;->a:Lyads/ux1;

    instance-of v2, p1, Lyads/ex1;

    if-eqz v2, :cond_12

    check-cast p1, Lyads/ex1;

    iget-object p1, p1, Lyads/ex1;->a:Lyads/af1;

    goto :goto_4

    :cond_12
    instance-of v2, p1, Lyads/fx1;

    if-eqz v2, :cond_16

    check-cast p1, Lyads/fx1;

    iget-object p1, p1, Lyads/fx1;->a:Lyads/ux1;

    :goto_4
    instance-of v2, p1, Lyads/ux1;

    if-eqz v2, :cond_13

    move-object v3, p1

    check-cast v3, Lyads/ux1;

    :cond_13
    if-nez v3, :cond_14

    goto :goto_5

    :cond_14
    iget-object p0, p0, Lyads/ux1;->a:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, v3, Lyads/ux1;->a:Lyads/as2;

    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_15

    move p0, v1

    goto :goto_6

    :cond_15
    :goto_5
    move p0, v0

    :goto_6
    if-eqz p0, :cond_18

    return v1

    :cond_16
    invoke-static {}, Lme0;->e()V

    return v0

    :cond_17
    invoke-static {}, Lme0;->e()V

    :cond_18
    :goto_7
    return v0
.end method
