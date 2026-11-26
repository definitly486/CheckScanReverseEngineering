.class public final Lyads/hf1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lyads/f51;

.field public final c:Lyads/gf1;

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Lyads/f51;Lyads/gf1;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/hf1;->a:Ljava/util/List;

    iput-object p2, p0, Lyads/hf1;->b:Lyads/f51;

    iput-object p3, p0, Lyads/hf1;->c:Lyads/gf1;

    iput-object p4, p0, Lyads/hf1;->d:Ljava/util/List;

    iput-object p5, p0, Lyads/hf1;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lyads/hf1;Lyads/fs2;Lyads/fs2;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lyads/hf1;->a:Ljava/util/List;

    iget-object v2, p1, Lyads/hf1;->a:Ljava/util/List;

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

    goto/16 :goto_f

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

    check-cast v4, Lyads/m31;

    check-cast v5, Lyads/m31;

    invoke-virtual {v5, v4, p2, p3}, Lyads/m31;->a(Lyads/m31;Lyads/fs2;Lyads/fs2;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_f

    :cond_3
    move v4, v6

    goto :goto_0

    :cond_4
    invoke-static {}, Lu96;->o()V

    throw v3

    :cond_5
    if-nez v2, :cond_21

    :cond_6
    iget-object v1, p0, Lyads/hf1;->b:Lyads/f51;

    iget-object v2, p1, Lyads/hf1;->b:Lyads/f51;

    const/4 v4, 0x1

    if-eqz v1, :cond_7

    invoke-virtual {v1, v2, p2, p3}, Lyads/f51;->a(Lyads/f51;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    goto :goto_1

    :cond_7
    if-nez v2, :cond_8

    move v1, v4

    goto :goto_1

    :cond_8
    move v1, v0

    :goto_1
    if-eqz v1, :cond_21

    iget-object v1, p0, Lyads/hf1;->c:Lyads/gf1;

    iget-object v2, p1, Lyads/hf1;->c:Lyads/gf1;

    if-eqz v1, :cond_14

    if-nez v2, :cond_9

    goto/16 :goto_f

    :cond_9
    iget-object v5, v1, Lyads/gf1;->a:Lyads/as2;

    if-eqz v5, :cond_a

    invoke-virtual {v5, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_2

    :cond_a
    move-object v5, v3

    :goto_2
    iget-object v6, v2, Lyads/gf1;->a:Lyads/as2;

    if-eqz v6, :cond_b

    invoke-virtual {v6, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_3

    :cond_b
    move-object v6, v3

    :goto_3
    invoke-static {v5, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    iget-object v5, v1, Lyads/gf1;->b:Lyads/as2;

    if-eqz v5, :cond_c

    invoke-virtual {v5, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_4

    :cond_c
    move-object v5, v3

    :goto_4
    iget-object v6, v2, Lyads/gf1;->b:Lyads/as2;

    if-eqz v6, :cond_d

    invoke-virtual {v6, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_5

    :cond_d
    move-object v6, v3

    :goto_5
    invoke-static {v5, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    iget-object v5, v1, Lyads/gf1;->c:Lyads/as2;

    if-eqz v5, :cond_e

    invoke-virtual {v5, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_6

    :cond_e
    move-object v5, v3

    :goto_6
    iget-object v6, v2, Lyads/gf1;->c:Lyads/as2;

    if-eqz v6, :cond_f

    invoke-virtual {v6, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_7

    :cond_f
    move-object v6, v3

    :goto_7
    invoke-static {v5, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    iget-object v5, v1, Lyads/gf1;->d:Lyads/as2;

    if-eqz v5, :cond_10

    invoke-virtual {v5, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_8

    :cond_10
    move-object v5, v3

    :goto_8
    iget-object v6, v2, Lyads/gf1;->d:Lyads/as2;

    if-eqz v6, :cond_11

    invoke-virtual {v6, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_9

    :cond_11
    move-object v6, v3

    :goto_9
    invoke-static {v5, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    iget-object v1, v1, Lyads/gf1;->e:Lyads/as2;

    if-eqz v1, :cond_12

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_a

    :cond_12
    move-object v1, v3

    :goto_a
    iget-object v2, v2, Lyads/gf1;->e:Lyads/as2;

    if-eqz v2, :cond_13

    invoke-virtual {v2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_b

    :cond_13
    move-object v2, v3

    :goto_b
    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_c

    :cond_14
    if-nez v2, :cond_21

    :goto_c
    iget-object v1, p0, Lyads/hf1;->d:Ljava/util/List;

    iget-object v2, p1, Lyads/hf1;->d:Ljava/util/List;

    if-eqz v1, :cond_19

    if-nez v2, :cond_15

    return v0

    :cond_15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_16

    goto/16 :goto_f

    :cond_16
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-ltz v5, :cond_18

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/xr0;

    check-cast v6, Lyads/xr0;

    invoke-virtual {v6, v5, p2, p3}, Lyads/xr0;->a(Lyads/xr0;Lyads/fs2;Lyads/fs2;)Z

    move-result v5

    if-nez v5, :cond_17

    goto :goto_f

    :cond_17
    move v5, v7

    goto :goto_d

    :cond_18
    invoke-static {}, Lu96;->o()V

    throw v3

    :cond_19
    if-nez v2, :cond_21

    :cond_1a
    iget-object p0, p0, Lyads/hf1;->e:Ljava/util/List;

    iget-object p1, p1, Lyads/hf1;->e:Ljava/util/List;

    if-eqz p0, :cond_1f

    if-nez p1, :cond_1b

    return v0

    :cond_1b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1c

    goto :goto_f

    :cond_1c
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v5, v1, 0x1

    if-ltz v1, :cond_1e

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/xr0;

    check-cast v2, Lyads/xr0;

    invoke-virtual {v2, v1, p2, p3}, Lyads/xr0;->a(Lyads/xr0;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_f

    :cond_1d
    move v1, v5

    goto :goto_e

    :cond_1e
    invoke-static {}, Lu96;->o()V

    throw v3

    :cond_1f
    if-nez p1, :cond_21

    :cond_20
    return v4

    :cond_21
    :goto_f
    return v0
.end method
