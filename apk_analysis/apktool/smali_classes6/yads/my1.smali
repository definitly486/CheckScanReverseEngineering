.class public final Lyads/my1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ff3;

.field public final b:Lyads/sv5;

.field public final c:Lyads/zu5;


# direct methods
.method public constructor <init>(Lyads/ff3;Lyads/sv5;Lyads/zu5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/my1;->a:Lyads/ff3;

    iput-object p2, p0, Lyads/my1;->b:Lyads/sv5;

    iput-object p3, p0, Lyads/my1;->c:Lyads/zu5;

    return-void
.end method

.method public static final a(Lyads/vq0;Lyads/ms2;)Lj59;
    .locals 0

    .line 196
    iget-object p1, p1, Lyads/ms2;->b:Lyads/d26;

    if-eqz p1, :cond_0

    .line 197
    invoke-virtual {p1, p0}, Lyads/d26;->a(Lyads/vq0;)V

    .line 198
    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/t52;)Lyads/br0;
    .locals 0

    .line 199
    iget-object p0, p0, Lyads/t52;->a:Lyads/br0;

    return-object p0
.end method

.method public static a(Lyads/br0;Lyads/vq0;Lyads/n32;Lyads/ms2;)Lyads/ms2;
    .locals 1

    .line 183
    iget-object v0, p1, Lyads/vq0;->z:Lyads/ub5;

    .line 184
    iget-object p3, p3, Lyads/ms2;->a:Lyads/gs2;

    .line 185
    invoke-interface {v0, p2, p0, p3}, Lyads/ub5;->a(Lyads/n32;Lyads/br0;Lyads/fs2;)Lyads/ms2;

    move-result-object p0

    .line 186
    iget-object p2, p0, Lyads/ms2;->b:Lyads/d26;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lyads/d26;->b(Lyads/vq0;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(Lyads/z22;Lyads/vq0;Lyads/n32;Lyads/gs2;)Ljava/lang/String;
    .locals 2

    .line 187
    invoke-virtual {p3}, Lyads/n32;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lyads/n32;->a()Ljava/lang/String;

    move-result-object p3

    const-string v1, "/"

    .line 188
    invoke-static {v0, v1, p3}, Lcg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 189
    invoke-virtual {p2}, Lyads/vq0;->r()Lyads/qb1;

    move-result-object p2

    invoke-virtual {p2}, Lyads/qb1;->a()Ljava/lang/String;

    move-result-object p2

    .line 190
    iget-object v0, p0, Lyads/my1;->b:Lyads/sv5;

    invoke-virtual {v0, p2, p3}, Lyads/sv5;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 191
    iget-object p0, p0, Lyads/my1;->a:Lyads/ff3;

    invoke-virtual {p0, p2, p3}, Lyads/ff3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    .line 192
    iget-object p0, p1, Lyads/z22;->H:Ljava/lang/String;

    const/4 p2, 0x0

    if-eqz p0, :cond_1

    .line 193
    invoke-virtual {p4}, Lyads/gs2;->e()Lyads/z66;

    move-result-object p3

    invoke-interface {p3, p0}, Lyads/z66;->a(Ljava/lang/String;)Lyads/u66;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lyads/u66;->b()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p2

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, p2

    :goto_1
    if-nez p0, :cond_4

    .line 194
    iget-object p0, p1, Lyads/z22;->n:Lyads/as2;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object p0, p2

    :goto_2
    if-nez p0, :cond_4

    .line 195
    iget-object p0, p1, Lyads/z22;->I:Ljava/util/List;

    invoke-static {p0}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/y22;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lyads/y22;->d:Ljava/lang/String;

    return-object p0

    :cond_3
    return-object p2

    :cond_4
    return-object p0

    :cond_5
    return-object v0
.end method

.method public final a(Lyads/br0;Lyads/vq0;Ljava/util/List;Lyads/j71;Lyads/n32;Lyads/ms2;)V
    .locals 7

    .line 165
    invoke-static {p1, p2, p5, p6}, Lyads/my1;->a(Lyads/br0;Lyads/vq0;Lyads/n32;Lyads/ms2;)Lyads/ms2;

    move-result-object p1

    const/4 p6, 0x0

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    .line 166
    iget-object p3, p1, Lyads/ms2;->a:Lyads/gs2;

    .line 167
    invoke-static {p4, p3}, Lyads/f71;->a(Lyads/j71;Lyads/fs2;)Ljava/util/ArrayList;

    move-result-object p3

    .line 168
    invoke-static {p3}, Lyads/du1;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p4

    .line 169
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-ltz v0, :cond_1

    check-cast v1, Lyads/cn1;

    .line 170
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p5, v0}, Lyads/n32;->a(Ljava/lang/String;)Lyads/n32;

    move-result-object v0

    .line 171
    iget-object v3, p2, Lyads/vq0;->z:Lyads/ub5;

    .line 172
    iget-object v4, v1, Lyads/cn1;->a:Lyads/br0;

    .line 173
    iget-object v5, v1, Lyads/cn1;->b:Lyads/fs2;

    .line 174
    iget-object v6, p1, Lyads/ms2;->a:Lyads/gs2;

    .line 175
    invoke-interface {v3, v0, v4, v5, v6}, Lyads/ub5;->a(Lyads/n32;Lyads/br0;Lyads/fs2;Lyads/fs2;)Lyads/ms2;

    move-result-object v3

    .line 176
    iget-object v1, v1, Lyads/cn1;->a:Lyads/br0;

    if-nez v3, :cond_0

    move-object v3, p1

    .line 177
    :cond_0
    invoke-virtual {p0, v1, p2, v0, v3}, Lyads/my1;->b(Lyads/br0;Lyads/vq0;Lyads/n32;Lyads/ms2;)V

    move v0, v2

    goto :goto_0

    .line 178
    :cond_1
    invoke-static {}, Lu96;->o()V

    throw p6

    :cond_2
    if-eqz p3, :cond_4

    .line 179
    sget-object p4, Lyads/du1;->a:Lyads/du1;

    invoke-virtual {p4, p3}, Lyads/du1;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p4

    .line 180
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-ltz v0, :cond_3

    check-cast v1, Lyads/br0;

    .line 181
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p5, v0}, Lyads/n32;->a(Ljava/lang/String;)Lyads/n32;

    move-result-object v0

    invoke-virtual {p0, v1, p2, v0, p1}, Lyads/my1;->b(Lyads/br0;Lyads/vq0;Lyads/n32;Lyads/ms2;)V

    move v0, v2

    goto :goto_1

    .line 182
    :cond_3
    invoke-static {}, Lu96;->o()V

    throw p6

    :cond_4
    return-void
.end method

.method public final a(Lyads/br0;Lyads/vq0;Lyads/n32;Lyads/ms2;Z)V
    .locals 0

    if-eqz p5, :cond_0

    .line 200
    invoke-virtual {p0, p1, p2, p3, p4}, Lyads/my1;->b(Lyads/br0;Lyads/vq0;Lyads/n32;Lyads/ms2;)V

    return-void

    .line 201
    :cond_0
    iget-object p0, p2, Lyads/vq0;->z:Lyads/ub5;

    .line 202
    iget-object p4, p4, Lyads/ms2;->a:Lyads/gs2;

    .line 203
    invoke-interface {p0, p3, p1, p4}, Lyads/ub5;->a(Lyads/n32;Lyads/br0;Lyads/fs2;)Lyads/ms2;

    move-result-object p0

    .line 204
    iget-object p1, p2, Lyads/vq0;->z:Lyads/ub5;

    .line 205
    new-instance p4, Li1;

    const/4 p5, 0x4

    invoke-direct {p4, p2, p5}, Li1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, p0, p3, p4}, Lyads/ub5;->a(Lyads/ms2;Lyads/n32;Lnl3;)V

    return-void
.end method

.method public final a(Lyads/y52;Lyads/vq0;Lyads/n32;Lyads/ms2;)V
    .locals 13

    move-object/from16 v1, p3

    iget-object v2, p0, Lyads/my1;->c:Lyads/zu5;

    invoke-virtual {p2}, Lyads/vq0;->o()Lyads/qb1;

    move-result-object v3

    invoke-virtual {v3}, Lyads/qb1;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lyads/n32;->e:Lcl4;

    invoke-interface {v4}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v2, v2, Lyads/zu5;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v8, p4

    goto :goto_2

    :cond_1
    iget-object v2, p1, Lyads/y52;->y:Lyads/as2;

    move-object/from16 v8, p4

    iget-object v4, v8, Lyads/ms2;->a:Lyads/gs2;

    invoke-virtual {v2, v4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const/16 v2, 0x1f

    shr-long v6, v4, v2

    const-wide/16 v9, 0x0

    cmp-long v2, v6, v9

    if-eqz v2, :cond_4

    const-wide/16 v11, -0x1

    cmp-long v2, v6, v11

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    cmp-long v2, v4, v9

    if-lez v2, :cond_3

    const v2, 0x7fffffff

    goto :goto_2

    :cond_3
    const/high16 v2, -0x80000000

    goto :goto_2

    :cond_4
    :goto_1
    long-to-int v2, v4

    :goto_2
    sget-object v4, Lyads/du1;->a:Lyads/du1;

    iget-object v5, p1, Lyads/y52;->q:Ljava/util/List;

    new-instance v6, Lye;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Lye;-><init>(I)V

    invoke-static {v4, v5, v6}, Lyads/du1;->a(Lyads/du1;Ljava/util/List;Lnl3;)Ljava/util/ArrayList;

    move-result-object v10

    iget-object v0, p1, Lyads/y52;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v11, 0x0

    move v4, v11

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v12, v4, 0x1

    if-ltz v4, :cond_6

    check-cast v5, Lyads/t52;

    iget-object v5, v5, Lyads/t52;->a:Lyads/br0;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lyads/n32;->a(Ljava/lang/String;)Lyads/n32;

    move-result-object v7

    if-ne v2, v4, :cond_5

    const/4 v4, 0x1

    move v9, v4

    move-object v6, p2

    move-object v4, p0

    goto :goto_4

    :cond_5
    move v9, v11

    move-object v4, p0

    move-object v6, p2

    :goto_4
    invoke-virtual/range {v4 .. v9}, Lyads/my1;->a(Lyads/br0;Lyads/vq0;Lyads/n32;Lyads/ms2;Z)V

    move-object/from16 v8, p4

    move v4, v12

    goto :goto_3

    :cond_6
    invoke-static {}, Lu96;->o()V

    throw v3

    :cond_7
    return-void
.end method

.method public final b(Lyads/br0;Lyads/vq0;Lyads/n32;Lyads/ms2;)V
    .locals 10

    instance-of v0, p1, Lyads/up0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lyads/up0;

    iget-object v0, v0, Lyads/up0;->a:Lyads/j81;

    iget-object v3, v0, Lyads/j81;->B:Ljava/util/List;

    iget-object v4, v0, Lyads/j81;->z:Lyads/j71;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lyads/my1;->a(Lyads/br0;Lyads/vq0;Ljava/util/List;Lyads/j71;Lyads/n32;Lyads/ms2;)V

    return-void

    :cond_0
    instance-of v0, p1, Lyads/yp0;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lyads/yp0;

    iget-object v0, v0, Lyads/yp0;->a:Lyads/oh1;

    iget-object v3, v0, Lyads/oh1;->y:Ljava/util/List;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lyads/my1;->a(Lyads/br0;Lyads/vq0;Ljava/util/List;Lyads/j71;Lyads/n32;Lyads/ms2;)V

    return-void

    :cond_1
    instance-of v0, p1, Lyads/wp0;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lyads/wp0;

    iget-object v0, v0, Lyads/wp0;->a:Lyads/og1;

    iget-object v3, v0, Lyads/og1;->u:Ljava/util/List;

    iget-object v4, v0, Lyads/og1;->s:Lyads/j71;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lyads/my1;->a(Lyads/br0;Lyads/vq0;Ljava/util/List;Lyads/j71;Lyads/n32;Lyads/ms2;)V

    return-void

    :cond_2
    instance-of v0, p1, Lyads/cq0;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lyads/cq0;

    iget-object v0, v0, Lyads/cq0;->a:Lyads/ur1;

    iget-object v3, v0, Lyads/ur1;->t:Ljava/util/List;

    iget-object v4, v0, Lyads/ur1;->r:Lyads/j71;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lyads/my1;->a(Lyads/br0;Lyads/vq0;Ljava/util/List;Lyads/j71;Lyads/n32;Lyads/ms2;)V

    return-void

    :cond_3
    instance-of v4, p1, Lyads/gq0;

    if-eqz v4, :cond_5

    move-object v1, p1

    check-cast v1, Lyads/gq0;

    invoke-static {v1, p2, p3, p4}, Lyads/my1;->a(Lyads/br0;Lyads/vq0;Lyads/n32;Lyads/ms2;)Lyads/ms2;

    move-result-object v4

    iget-object v1, v1, Lyads/gq0;->a:Lyads/z22;

    iget-object v3, v4, Lyads/ms2;->a:Lyads/gs2;

    invoke-virtual {p0, v1, p2, p3, v3}, Lyads/my1;->a(Lyads/z22;Lyads/vq0;Lyads/n32;Lyads/gs2;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, v1, Lyads/z22;->I:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/y22;

    iget-object v3, v1, Lyads/y22;->c:Lyads/br0;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    iget-object v5, p3, Lyads/n32;->c:Ljava/util/List;

    invoke-static {v5}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v9, v1, Lyads/y22;->d:Ljava/lang/String;

    invoke-virtual {p3, v5, v1, v9}, Lyads/n32;->a(Ljava/lang/String;Lyads/y22;Ljava/lang/String;)Lyads/n32;

    move-result-object v5

    iget-object v1, v1, Lyads/y22;->d:Ljava/lang/String;

    invoke-static {v1, v7}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    move-object v0, v5

    move v5, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lyads/my1;->a(Lyads/br0;Lyads/vq0;Lyads/n32;Lyads/ms2;Z)V

    goto :goto_0

    :cond_5
    instance-of v4, p1, Lyads/iq0;

    if-eqz v4, :cond_6

    move-object v1, p1

    check-cast v1, Lyads/iq0;

    invoke-static {v1, p2, p3, p4}, Lyads/my1;->a(Lyads/br0;Lyads/vq0;Lyads/n32;Lyads/ms2;)Lyads/ms2;

    move-result-object v3

    iget-object v1, v1, Lyads/iq0;->a:Lyads/y52;

    invoke-virtual {p0, v1, p2, p3, v3}, Lyads/my1;->a(Lyads/y52;Lyads/vq0;Lyads/n32;Lyads/ms2;)V

    return-void

    :cond_6
    instance-of v0, p1, Lyads/vp0;

    if-eqz v0, :cond_7

    invoke-static/range {p1 .. p4}, Lyads/my1;->a(Lyads/br0;Lyads/vq0;Lyads/n32;Lyads/ms2;)Lyads/ms2;

    return-void

    :cond_7
    instance-of v0, p1, Lyads/xp0;

    if-eqz v0, :cond_8

    invoke-static/range {p1 .. p4}, Lyads/my1;->a(Lyads/br0;Lyads/vq0;Lyads/n32;Lyads/ms2;)Lyads/ms2;

    return-void

    :cond_8
    instance-of v0, p1, Lyads/zp0;

    if-eqz v0, :cond_9

    invoke-static/range {p1 .. p4}, Lyads/my1;->a(Lyads/br0;Lyads/vq0;Lyads/n32;Lyads/ms2;)Lyads/ms2;

    return-void

    :cond_9
    instance-of v0, p1, Lyads/aq0;

    if-eqz v0, :cond_a

    invoke-static/range {p1 .. p4}, Lyads/my1;->a(Lyads/br0;Lyads/vq0;Lyads/n32;Lyads/ms2;)Lyads/ms2;

    return-void

    :cond_a
    instance-of v0, p1, Lyads/bq0;

    if-eqz v0, :cond_b

    invoke-static/range {p1 .. p4}, Lyads/my1;->a(Lyads/br0;Lyads/vq0;Lyads/n32;Lyads/ms2;)Lyads/ms2;

    return-void

    :cond_b
    instance-of v0, p1, Lyads/dq0;

    if-eqz v0, :cond_c

    invoke-static/range {p1 .. p4}, Lyads/my1;->a(Lyads/br0;Lyads/vq0;Lyads/n32;Lyads/ms2;)Lyads/ms2;

    return-void

    :cond_c
    instance-of v0, p1, Lyads/eq0;

    if-eqz v0, :cond_d

    invoke-static/range {p1 .. p4}, Lyads/my1;->a(Lyads/br0;Lyads/vq0;Lyads/n32;Lyads/ms2;)Lyads/ms2;

    return-void

    :cond_d
    instance-of v0, p1, Lyads/fq0;

    if-eqz v0, :cond_e

    invoke-static/range {p1 .. p4}, Lyads/my1;->a(Lyads/br0;Lyads/vq0;Lyads/n32;Lyads/ms2;)Lyads/ms2;

    return-void

    :cond_e
    instance-of v0, p1, Lyads/jq0;

    if-eqz v0, :cond_f

    invoke-static/range {p1 .. p4}, Lyads/my1;->a(Lyads/br0;Lyads/vq0;Lyads/n32;Lyads/ms2;)Lyads/ms2;

    return-void

    :cond_f
    instance-of v0, p1, Lyads/kq0;

    if-eqz v0, :cond_10

    invoke-static/range {p1 .. p4}, Lyads/my1;->a(Lyads/br0;Lyads/vq0;Lyads/n32;Lyads/ms2;)Lyads/ms2;

    return-void

    :cond_10
    instance-of v0, p1, Lyads/hq0;

    if-eqz v0, :cond_11

    invoke-static/range {p1 .. p4}, Lyads/my1;->a(Lyads/br0;Lyads/vq0;Lyads/n32;Lyads/ms2;)Lyads/ms2;

    :cond_11
    return-void
.end method
