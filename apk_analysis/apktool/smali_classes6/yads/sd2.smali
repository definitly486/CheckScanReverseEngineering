.class public final Lyads/sd2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/vd2;


# instance fields
.field public final a:Lyads/cn1;

.field public final b:Lnl3;

.field public final c:Lnl3;

.field public d:Z

.field public e:Ljava/util/List;

.field public f:I


# direct methods
.method public constructor <init>(Lyads/cn1;Lnl3;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/sd2;->a:Lyads/cn1;

    iput-object p2, p0, Lyads/sd2;->b:Lnl3;

    iput-object p3, p0, Lyads/sd2;->c:Lnl3;

    return-void
.end method


# virtual methods
.method public final a()Lyads/cn1;
    .locals 6

    iget-boolean v0, p0, Lyads/sd2;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lyads/sd2;->b:Lnl3;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lyads/sd2;->a:Lyads/cn1;

    iget-object v2, v2, Lyads/cn1;->a:Lyads/br0;

    invoke-interface {v0, v2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/sd2;->d:Z

    iget-object p0, p0, Lyads/sd2;->a:Lyads/cn1;

    return-object p0

    :cond_1
    iget-object v0, p0, Lyads/sd2;->e:Ljava/util/List;

    if-nez v0, :cond_17

    iget-object v0, p0, Lyads/sd2;->a:Lyads/cn1;

    iget-object v2, v0, Lyads/cn1;->a:Lyads/br0;

    iget-object v0, v0, Lyads/cn1;->b:Lyads/fs2;

    instance-of v3, v2, Lyads/jq0;

    sget-object v4, Lkx2;->b:Lkx2;

    if-eqz v3, :cond_2

    :goto_0
    move-object v0, v4

    goto/16 :goto_5

    :cond_2
    instance-of v3, v2, Lyads/zp0;

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    instance-of v3, v2, Lyads/xp0;

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    instance-of v3, v2, Lyads/eq0;

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    instance-of v3, v2, Lyads/aq0;

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_6
    instance-of v3, v2, Lyads/fq0;

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_7
    instance-of v3, v2, Lyads/bq0;

    if-eqz v3, :cond_8

    goto :goto_0

    :cond_8
    instance-of v3, v2, Lyads/vp0;

    if-eqz v3, :cond_9

    goto :goto_0

    :cond_9
    instance-of v3, v2, Lyads/dq0;

    if-eqz v3, :cond_a

    goto :goto_0

    :cond_a
    instance-of v3, v2, Lyads/kq0;

    if-eqz v3, :cond_b

    goto :goto_0

    :cond_b
    instance-of v3, v2, Lyads/hq0;

    if-eqz v3, :cond_c

    goto :goto_0

    :cond_c
    instance-of v3, v2, Lyads/up0;

    if-eqz v3, :cond_d

    check-cast v2, Lyads/up0;

    iget-object v2, v2, Lyads/up0;->a:Lyads/j81;

    iget-object v3, v2, Lyads/j81;->B:Ljava/util/List;

    iget-object v2, v2, Lyads/j81;->z:Lyads/j71;

    invoke-static {v3, v2, v0}, Lyads/f71;->a(Ljava/util/List;Lyads/j71;Lyads/fs2;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_5

    :cond_d
    instance-of v3, v2, Lyads/yp0;

    if-eqz v3, :cond_f

    check-cast v2, Lyads/yp0;

    iget-object v2, v2, Lyads/yp0;->a:Lyads/oh1;

    iget-object v2, v2, Lyads/oh1;->y:Ljava/util/List;

    if-nez v2, :cond_e

    goto :goto_1

    :cond_e
    move-object v4, v2

    :goto_1
    invoke-static {v4, v0}, Lyads/f71;->a(Ljava/util/List;Lyads/fs2;)Ljava/util/ArrayList;

    move-result-object v0

    goto/16 :goto_5

    :cond_f
    instance-of v3, v2, Lyads/wp0;

    if-eqz v3, :cond_10

    check-cast v2, Lyads/wp0;

    iget-object v2, v2, Lyads/wp0;->a:Lyads/og1;

    iget-object v3, v2, Lyads/og1;->u:Ljava/util/List;

    iget-object v2, v2, Lyads/og1;->s:Lyads/j71;

    invoke-static {v3, v2, v0}, Lyads/f71;->a(Ljava/util/List;Lyads/j71;Lyads/fs2;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_5

    :cond_10
    instance-of v3, v2, Lyads/cq0;

    if-eqz v3, :cond_11

    check-cast v2, Lyads/cq0;

    iget-object v2, v2, Lyads/cq0;->a:Lyads/ur1;

    iget-object v3, v2, Lyads/ur1;->t:Ljava/util/List;

    iget-object v2, v2, Lyads/ur1;->r:Lyads/j71;

    invoke-static {v3, v2, v0}, Lyads/f71;->a(Ljava/util/List;Lyads/j71;Lyads/fs2;)Ljava/util/List;

    move-result-object v0

    goto :goto_5

    :cond_11
    instance-of v3, v2, Lyads/iq0;

    if-eqz v3, :cond_13

    check-cast v2, Lyads/iq0;

    iget-object v2, v2, Lyads/iq0;->a:Lyads/y52;

    iget-object v2, v2, Lyads/y52;->q:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/t52;

    iget-object v4, v4, Lyads/t52;->a:Lyads/br0;

    new-instance v5, Lyads/cn1;

    invoke-direct {v5, v4, v0}, Lyads/cn1;-><init>(Lyads/br0;Lyads/fs2;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_12
    move-object v0, v3

    goto :goto_5

    :cond_13
    instance-of v3, v2, Lyads/gq0;

    if-eqz v3, :cond_16

    check-cast v2, Lyads/gq0;

    iget-object v2, v2, Lyads/gq0;->a:Lyads/z22;

    iget-object v2, v2, Lyads/z22;->I:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/y22;

    iget-object v4, v4, Lyads/y22;->c:Lyads/br0;

    if-eqz v4, :cond_15

    new-instance v5, Lyads/cn1;

    invoke-direct {v5, v4, v0}, Lyads/cn1;-><init>(Lyads/br0;Lyads/fs2;)V

    goto :goto_4

    :cond_15
    move-object v5, v1

    :goto_4
    if-eqz v5, :cond_14

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :goto_5
    iput-object v0, p0, Lyads/sd2;->e:Ljava/util/List;

    goto :goto_6

    :cond_16
    invoke-static {}, Lme0;->e()V

    return-object v1

    :cond_17
    :goto_6
    iget v2, p0, Lyads/sd2;->f:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_18

    iget v1, p0, Lyads/sd2;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lyads/sd2;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/cn1;

    return-object p0

    :cond_18
    iget-object v0, p0, Lyads/sd2;->c:Lnl3;

    if-eqz v0, :cond_19

    iget-object p0, p0, Lyads/sd2;->a:Lyads/cn1;

    iget-object p0, p0, Lyads/cn1;->a:Lyads/br0;

    invoke-interface {v0, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    return-object v1
.end method

.method public final b()Lyads/cn1;
    .locals 0

    iget-object p0, p0, Lyads/sd2;->a:Lyads/cn1;

    return-object p0
.end method
