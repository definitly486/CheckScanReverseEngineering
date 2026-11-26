.class public abstract Lyads/rd2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lyads/rd2;Lyads/br0;Lyads/tt;Lyads/n32;Ljava/util/List;Lyads/j71;I)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 149
    invoke-virtual/range {v0 .. v6}, Lyads/rd2;->a(Lyads/br0;Lyads/tt;Lyads/n32;Ljava/util/List;Lyads/j71;Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a(Lyads/br0;Lyads/tt;Lyads/n32;)Lj59;
.end method

.method public final a(Lyads/br0;Lyads/tt;Lyads/n32;Ljava/util/List;Lyads/j71;Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0, p1, p2, p3}, Lyads/rd2;->a(Lyads/br0;Lyads/tt;Lyads/n32;)Lj59;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p5, :cond_2

    iget-object p4, p2, Lyads/tt;->b:Lyads/fs2;

    invoke-static {p5, p4}, Lyads/f71;->a(Lyads/j71;Lyads/fs2;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-static {p4}, Lyads/du1;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_6

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    add-int/lit8 v2, v1, 0x1

    if-ltz v1, :cond_1

    check-cast p6, Lyads/cn1;

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v1}, Lyads/n32;->a(Ljava/lang/String;)Lyads/n32;

    move-result-object v1

    iget-object v3, p2, Lyads/tt;->a:Lyads/vq0;

    iget-object v3, v3, Lyads/vq0;->z:Lyads/ub5;

    iget-object v4, p6, Lyads/cn1;->a:Lyads/br0;

    iget-object v5, p6, Lyads/cn1;->b:Lyads/fs2;

    iget-object v6, p2, Lyads/tt;->b:Lyads/fs2;

    invoke-interface {v3, v1, v4, v5, v6}, Lyads/ub5;->a(Lyads/n32;Lyads/br0;Lyads/fs2;Lyads/fs2;)Lyads/ms2;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v3, Lyads/ms2;->a:Lyads/gs2;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p6, Lyads/cn1;->b:Lyads/fs2;

    :goto_1
    new-instance v4, Lyads/tt;

    iget-object v5, p2, Lyads/tt;->a:Lyads/vq0;

    invoke-direct {v4, v5, v3}, Lyads/tt;-><init>(Lyads/vq0;Lyads/fs2;)V

    iget-object p6, p6, Lyads/cn1;->a:Lyads/br0;

    invoke-virtual {p0, p6, v4, v1}, Lyads/rd2;->b(Lyads/br0;Lyads/tt;Lyads/n32;)Ljava/lang/Object;

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lu96;->o()V

    throw v0

    :cond_2
    if-eqz p4, :cond_6

    sget-object p5, Lyads/du1;->a:Lyads/du1;

    invoke-virtual {p5, p4}, Lyads/du1;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_5

    check-cast v2, Lyads/br0;

    if-eqz p6, :cond_3

    invoke-virtual {p6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/n32;

    if-nez v4, :cond_4

    :cond_3
    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v1}, Lyads/n32;->a(Ljava/lang/String;)Lyads/n32;

    move-result-object v4

    :cond_4
    invoke-virtual {p0, v2, p2, v4}, Lyads/rd2;->b(Lyads/br0;Lyads/tt;Lyads/n32;)Ljava/lang/Object;

    move v1, v3

    goto :goto_2

    :cond_5
    invoke-static {}, Lu96;->o()V

    throw v0

    :cond_6
    return-object p1
.end method

.method public a(Lyads/kq0;Lyads/tt;Lyads/n32;)Ljava/lang/Object;
    .locals 0

    .line 150
    invoke-virtual {p0, p1, p2, p3}, Lyads/rd2;->a(Lyads/br0;Lyads/tt;Lyads/n32;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public a(Lyads/vp0;Lyads/tt;Lyads/n32;)Ljava/lang/Object;
    .locals 8

    .line 147
    iget-object v0, p1, Lyads/vp0;->a:Lyads/ka1;

    .line 148
    iget-object v5, v0, Lyads/ka1;->q:Ljava/util/List;

    const/4 v6, 0x0

    const/16 v7, 0x30

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lyads/rd2;->a(Lyads/rd2;Lyads/br0;Lyads/tt;Lyads/n32;Ljava/util/List;Lyads/j71;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lyads/br0;Lyads/tt;Lyads/n32;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p2, Lyads/tt;->a:Lyads/vq0;

    iget-object v0, v0, Lyads/vq0;->z:Lyads/ub5;

    iget-object v1, p2, Lyads/tt;->b:Lyads/fs2;

    invoke-interface {v0, p3, p1, v1}, Lyads/ub5;->a(Lyads/n32;Lyads/br0;Lyads/fs2;)Lyads/ms2;

    move-result-object v0

    iget-object v0, v0, Lyads/ms2;->a:Lyads/gs2;

    iget-object v1, p2, Lyads/tt;->b:Lyads/fs2;

    invoke-static {v1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v4, p2

    goto :goto_0

    :cond_0
    new-instance v1, Lyads/tt;

    iget-object p2, p2, Lyads/tt;->a:Lyads/vq0;

    invoke-direct {v1, p2, v0}, Lyads/tt;-><init>(Lyads/vq0;Lyads/fs2;)V

    move-object v4, v1

    :goto_0
    instance-of p2, p1, Lyads/jq0;

    if-eqz p2, :cond_1

    check-cast p1, Lyads/jq0;

    invoke-virtual {p0, p1, v4, p3}, Lyads/rd2;->a(Lyads/br0;Lyads/tt;Lyads/n32;)Lj59;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p2, p1, Lyads/zp0;

    if-eqz p2, :cond_2

    check-cast p1, Lyads/zp0;

    invoke-virtual {p0, p1, v4, p3}, Lyads/rd2;->a(Lyads/br0;Lyads/tt;Lyads/n32;)Lj59;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of p2, p1, Lyads/xp0;

    if-eqz p2, :cond_3

    check-cast p1, Lyads/xp0;

    invoke-virtual {p0, p1, v4, p3}, Lyads/rd2;->a(Lyads/br0;Lyads/tt;Lyads/n32;)Lj59;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of p2, p1, Lyads/eq0;

    if-eqz p2, :cond_4

    check-cast p1, Lyads/eq0;

    invoke-virtual {p0, p1, v4, p3}, Lyads/rd2;->a(Lyads/br0;Lyads/tt;Lyads/n32;)Lj59;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of p2, p1, Lyads/up0;

    if-eqz p2, :cond_5

    move-object v3, p1

    check-cast v3, Lyads/up0;

    iget-object p1, v3, Lyads/up0;->a:Lyads/j81;

    iget-object v6, p1, Lyads/j81;->B:Ljava/util/List;

    iget-object v7, p1, Lyads/j81;->z:Lyads/j71;

    const/16 v8, 0x20

    move-object v2, p0

    move-object v5, p3

    invoke-static/range {v2 .. v8}, Lyads/rd2;->a(Lyads/rd2;Lyads/br0;Lyads/tt;Lyads/n32;Ljava/util/List;Lyads/j71;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    move-object v2, p0

    move-object v5, p3

    instance-of p0, p1, Lyads/yp0;

    if-eqz p0, :cond_6

    move-object v3, p1

    check-cast v3, Lyads/yp0;

    iget-object p0, v3, Lyads/yp0;->a:Lyads/oh1;

    iget-object v6, p0, Lyads/oh1;->y:Ljava/util/List;

    const/4 v7, 0x0

    const/16 v8, 0x30

    invoke-static/range {v2 .. v8}, Lyads/rd2;->a(Lyads/rd2;Lyads/br0;Lyads/tt;Lyads/n32;Ljava/util/List;Lyads/j71;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    instance-of p0, p1, Lyads/wp0;

    if-eqz p0, :cond_7

    move-object v3, p1

    check-cast v3, Lyads/wp0;

    iget-object p0, v3, Lyads/wp0;->a:Lyads/og1;

    iget-object v6, p0, Lyads/og1;->u:Ljava/util/List;

    iget-object v7, p0, Lyads/og1;->s:Lyads/j71;

    const/16 v8, 0x20

    invoke-static/range {v2 .. v8}, Lyads/rd2;->a(Lyads/rd2;Lyads/br0;Lyads/tt;Lyads/n32;Ljava/util/List;Lyads/j71;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    instance-of p0, p1, Lyads/cq0;

    if-eqz p0, :cond_8

    move-object v3, p1

    check-cast v3, Lyads/cq0;

    iget-object p0, v3, Lyads/cq0;->a:Lyads/ur1;

    iget-object v6, p0, Lyads/ur1;->t:Ljava/util/List;

    iget-object v7, p0, Lyads/ur1;->r:Lyads/j71;

    const/16 v8, 0x20

    invoke-static/range {v2 .. v8}, Lyads/rd2;->a(Lyads/rd2;Lyads/br0;Lyads/tt;Lyads/n32;Ljava/util/List;Lyads/j71;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_8
    instance-of p0, p1, Lyads/iq0;

    if-eqz p0, :cond_a

    move-object v3, p1

    check-cast v3, Lyads/iq0;

    iget-object p0, v3, Lyads/iq0;->a:Lyads/y52;

    iget-object p0, p0, Lyads/y52;->q:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    const/16 p1, 0xa

    invoke-static {p0, p1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {v6, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/t52;

    iget-object p1, p1, Lyads/t52;->a:Lyads/br0;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    const/4 v7, 0x0

    const/16 v8, 0x30

    invoke-static/range {v2 .. v8}, Lyads/rd2;->a(Lyads/rd2;Lyads/br0;Lyads/tt;Lyads/n32;Ljava/util/List;Lyads/j71;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_a
    instance-of p0, p1, Lyads/gq0;

    const/4 p2, 0x0

    if-eqz p0, :cond_11

    move-object v3, p1

    check-cast v3, Lyads/gq0;

    iget-object p0, v3, Lyads/gq0;->a:Lyads/z22;

    iget-object p1, p0, Lyads/z22;->p:Ljava/lang/String;

    if-nez p1, :cond_b

    iget-object p1, p0, Lyads/z22;->x:Ljava/lang/String;

    if-nez p1, :cond_b

    const-string p1, ""

    :cond_b
    iget-object p0, p0, Lyads/z22;->I:Ljava/util/List;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/y22;

    iget-object v0, p3, Lyads/y22;->c:Lyads/br0;

    if-nez v0, :cond_d

    move-object p3, p2

    goto :goto_3

    :cond_d
    iget-object v0, p3, Lyads/y22;->d:Ljava/lang/String;

    invoke-virtual {v5, p1, p3, v0}, Lyads/n32;->a(Ljava/lang/String;Lyads/y22;Ljava/lang/String;)Lyads/n32;

    move-result-object p3

    :goto_3
    if-eqz p3, :cond_c

    invoke-virtual {v8, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_e
    iget-object p0, v3, Lyads/gq0;->a:Lyads/z22;

    iget-object p0, p0, Lyads/z22;->I:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/y22;

    iget-object p1, p1, Lyads/y22;->c:Lyads/br0;

    if-eqz p1, :cond_f

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_10
    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lyads/rd2;->a(Lyads/br0;Lyads/tt;Lyads/n32;Ljava/util/List;Lyads/j71;Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_11
    instance-of p0, p1, Lyads/vp0;

    if-eqz p0, :cond_12

    check-cast p1, Lyads/vp0;

    invoke-virtual {v2, p1, v4, v5}, Lyads/rd2;->a(Lyads/vp0;Lyads/tt;Lyads/n32;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_12
    instance-of p0, p1, Lyads/aq0;

    if-eqz p0, :cond_13

    check-cast p1, Lyads/aq0;

    invoke-virtual {v2, p1, v4, v5}, Lyads/rd2;->a(Lyads/br0;Lyads/tt;Lyads/n32;)Lj59;

    move-result-object p0

    return-object p0

    :cond_13
    instance-of p0, p1, Lyads/fq0;

    if-eqz p0, :cond_14

    check-cast p1, Lyads/fq0;

    invoke-virtual {v2, p1, v4, v5}, Lyads/rd2;->a(Lyads/br0;Lyads/tt;Lyads/n32;)Lj59;

    move-result-object p0

    return-object p0

    :cond_14
    instance-of p0, p1, Lyads/bq0;

    if-eqz p0, :cond_15

    check-cast p1, Lyads/bq0;

    invoke-virtual {v2, p1, v4, v5}, Lyads/rd2;->a(Lyads/br0;Lyads/tt;Lyads/n32;)Lj59;

    move-result-object p0

    return-object p0

    :cond_15
    instance-of p0, p1, Lyads/dq0;

    if-eqz p0, :cond_16

    check-cast p1, Lyads/dq0;

    invoke-virtual {v2, p1, v4, v5}, Lyads/rd2;->a(Lyads/br0;Lyads/tt;Lyads/n32;)Lj59;

    move-result-object p0

    return-object p0

    :cond_16
    instance-of p0, p1, Lyads/kq0;

    if-eqz p0, :cond_17

    check-cast p1, Lyads/kq0;

    invoke-virtual {v2, p1, v4, v5}, Lyads/rd2;->a(Lyads/kq0;Lyads/tt;Lyads/n32;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_17
    instance-of p0, p1, Lyads/hq0;

    if-eqz p0, :cond_18

    check-cast p1, Lyads/hq0;

    invoke-virtual {v2, p1, v4, v5}, Lyads/rd2;->a(Lyads/br0;Lyads/tt;Lyads/n32;)Lj59;

    move-result-object p0

    return-object p0

    :cond_18
    invoke-static {}, Lme0;->e()V

    return-object p2
.end method
