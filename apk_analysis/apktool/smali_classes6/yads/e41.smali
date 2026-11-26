.class public final Lyads/e41;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/oi1;


# direct methods
.method public constructor <init>(Lyads/oi1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/e41;->a:Lyads/oi1;

    return-void
.end method

.method public static final a(Lyads/e41;Landroid/view/View;Lyads/tt;Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 653
    invoke-virtual {p0, p3, p1, p4, p2}, Lyads/e41;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View;Ljava/util/List;Lyads/tt;)V

    .line 654
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/e41;Landroid/view/View;Lyads/tt;Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 695
    invoke-virtual/range {p0 .. p5}, Lyads/e41;->a(Landroid/view/View;Lyads/tt;Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/util/List;)V

    .line 696
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static a(Lyads/m31;Lyads/vq0;Landroid/util/DisplayMetrics;Lyads/fs2;)Lyads/d41;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    instance-of v3, v0, Lyads/i31;

    const-wide/16 v6, -0x1

    const/16 v8, 0x1f

    const-wide/16 v9, 0x0

    if-eqz v3, :cond_3

    new-instance v1, Lyads/s31;

    check-cast v0, Lyads/i31;

    invoke-virtual {v0}, Lyads/i31;->b()Lyads/dp1;

    move-result-object v3

    iget-object v3, v3, Lyads/dp1;->a:Lyads/as2;

    invoke-virtual {v3, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    shr-long v13, v11, v8

    cmp-long v3, v13, v9

    if-eqz v3, :cond_2

    cmp-long v3, v13, v6

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v3, v11, v9

    if-lez v3, :cond_1

    const v4, 0x7fffffff

    goto :goto_1

    :cond_1
    const/high16 v4, -0x80000000

    goto :goto_1

    :cond_2
    :goto_0
    long-to-int v4, v11

    :goto_1
    invoke-virtual {v0}, Lyads/i31;->b()Lyads/dp1;

    move-result-object v0

    invoke-static {v0, v2}, Lyads/gb1;->a(Lyads/dp1;Lyads/fs2;)Lyads/y30;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-static {v0, v2}, Lyads/z30;->a(Lyads/y30;Lyads/vq0;)Lyads/y30;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lyads/s31;-><init>(ILyads/y30;)V

    return-object v1

    :cond_3
    instance-of v3, v0, Lyads/k31;

    const/4 v11, 0x0

    if-eqz v3, :cond_8

    new-instance v3, Lyads/b41;

    check-cast v0, Lyads/k31;

    invoke-virtual {v0}, Lyads/k31;->b()Lyads/gw1;

    move-result-object v4

    iget-object v4, v4, Lyads/gw1;->a:Lyads/jw1;

    invoke-static {v4, v1, v2}, Lyads/e41;->a(Lyads/jw1;Landroid/util/DisplayMetrics;Lyads/fs2;)Lyads/x31;

    move-result-object v4

    invoke-virtual {v0}, Lyads/k31;->b()Lyads/gw1;

    move-result-object v5

    iget-object v5, v5, Lyads/gw1;->b:Lyads/jw1;

    invoke-static {v5, v1, v2}, Lyads/e41;->a(Lyads/jw1;Landroid/util/DisplayMetrics;Lyads/fs2;)Lyads/x31;

    move-result-object v5

    invoke-virtual {v0}, Lyads/k31;->b()Lyads/gw1;

    move-result-object v6

    iget-object v6, v6, Lyads/gw1;->d:Lyads/ds2;

    if-eqz v6, :cond_4

    invoke-interface {v6, v2}, Lyads/ds2;->a(Lyads/fs2;)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_5

    :cond_4
    sget-object v6, Lkx2;->b:Lkx2;

    :cond_5
    invoke-virtual {v0}, Lyads/k31;->b()Lyads/gw1;

    move-result-object v0

    iget-object v0, v0, Lyads/gw1;->e:Lyads/gx1;

    instance-of v7, v0, Lyads/ex1;

    if-eqz v7, :cond_6

    new-instance v7, Lyads/y31;

    check-cast v0, Lyads/ex1;

    iget-object v0, v0, Lyads/ex1;->a:Lyads/af1;

    invoke-static {v0, v1, v2}, Lyads/pq;->b(Lyads/af1;Landroid/util/DisplayMetrics;Lyads/fs2;)F

    move-result v0

    invoke-direct {v7, v0}, Lyads/y31;-><init>(F)V

    goto :goto_2

    :cond_6
    instance-of v1, v0, Lyads/fx1;

    if-eqz v1, :cond_7

    new-instance v7, Lyads/z31;

    check-cast v0, Lyads/fx1;

    iget-object v0, v0, Lyads/fx1;->a:Lyads/ux1;

    iget-object v0, v0, Lyads/ux1;->a:Lyads/as2;

    invoke-virtual {v0, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/tx1;

    invoke-direct {v7, v0}, Lyads/z31;-><init>(Lyads/tx1;)V

    :goto_2
    invoke-direct {v3, v4, v5, v6, v7}, Lyads/b41;-><init>(Lyads/x31;Lyads/x31;Ljava/util/List;Lyads/a41;)V

    return-object v3

    :cond_7
    invoke-static {}, Lme0;->e()V

    return-object v11

    :cond_8
    instance-of v1, v0, Lyads/h31;

    if-eqz v1, :cond_12

    check-cast v0, Lyads/h31;

    invoke-virtual {v0}, Lyads/h31;->b()Lyads/bi1;

    move-result-object v1

    iget-object v1, v1, Lyads/bi1;->a:Lyads/as2;

    invoke-virtual {v1, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    invoke-virtual {v0}, Lyads/h31;->b()Lyads/bi1;

    move-result-object v1

    iget-object v1, v1, Lyads/bi1;->b:Lyads/as2;

    invoke-virtual {v1, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lyads/f11;

    invoke-virtual {v0}, Lyads/h31;->b()Lyads/bi1;

    move-result-object v1

    iget-object v1, v1, Lyads/bi1;->c:Lyads/as2;

    invoke-virtual {v1, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lyads/h11;

    invoke-virtual {v0}, Lyads/h31;->b()Lyads/bi1;

    move-result-object v1

    iget-object v1, v1, Lyads/bi1;->e:Lyads/as2;

    invoke-virtual {v1, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroid/net/Uri;

    invoke-virtual {v0}, Lyads/h31;->b()Lyads/bi1;

    move-result-object v1

    iget-object v1, v1, Lyads/bi1;->f:Lyads/as2;

    invoke-virtual {v1, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    invoke-virtual {v0}, Lyads/h31;->b()Lyads/bi1;

    move-result-object v1

    iget-object v1, v1, Lyads/bi1;->g:Lyads/as2;

    invoke-virtual {v1, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lyads/vi1;

    invoke-virtual {v0}, Lyads/h31;->b()Lyads/bi1;

    move-result-object v1

    iget-object v1, v1, Lyads/bi1;->d:Ljava/util/List;

    if-eqz v1, :cond_f

    new-instance v3, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v1, v12}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v3, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lyads/wd1;

    instance-of v4, v12, Lyads/ud1;

    if-eqz v4, :cond_c

    new-instance v4, Lyads/n31;

    check-cast v12, Lyads/ud1;

    invoke-virtual {v12}, Lyads/ud1;->a()Lyads/z41;

    move-result-object v5

    iget-object v5, v5, Lyads/z41;->a:Lyads/as2;

    invoke-virtual {v5, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    move-wide/from16 v22, v6

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    shr-long v24, v6, v8

    cmp-long v5, v24, v9

    if-eqz v5, :cond_b

    cmp-long v5, v24, v22

    if-nez v5, :cond_9

    goto :goto_4

    :cond_9
    cmp-long v5, v6, v9

    if-lez v5, :cond_a

    const v5, 0x7fffffff

    goto :goto_5

    :cond_a
    const/high16 v5, -0x80000000

    goto :goto_5

    :cond_b
    :goto_4
    long-to-int v5, v6

    :goto_5
    invoke-direct {v4, v5, v12}, Lyads/n31;-><init>(ILyads/ud1;)V

    goto :goto_6

    :cond_c
    move-wide/from16 v22, v6

    instance-of v4, v12, Lyads/vd1;

    if-eqz v4, :cond_d

    new-instance v4, Lyads/o31;

    check-cast v12, Lyads/vd1;

    invoke-direct {v4, v12}, Lyads/o31;-><init>(Lyads/vd1;)V

    :goto_6
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v6, v22

    goto :goto_3

    :cond_d
    invoke-static {}, Lme0;->e()V

    return-object v11

    :cond_e
    move-object/from16 v20, v3

    goto :goto_7

    :cond_f
    move-object/from16 v20, v11

    :goto_7
    invoke-virtual {v0}, Lyads/h31;->b()Lyads/bi1;

    move-result-object v0

    iget-object v1, v0, Lyads/bi1;->a:Lyads/as2;

    invoke-virtual {v1, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v1, v3

    if-nez v1, :cond_11

    iget-object v0, v0, Lyads/bi1;->d:Ljava/util/List;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    const/4 v0, 0x1

    :goto_8
    move/from16 v21, v0

    goto :goto_9

    :cond_11
    const/4 v0, 0x0

    goto :goto_8

    :goto_9
    new-instance v12, Lyads/r31;

    invoke-direct/range {v12 .. v21}, Lyads/r31;-><init>(DLyads/f11;Lyads/h11;Landroid/net/Uri;ZLyads/vi1;Ljava/util/ArrayList;Z)V

    return-object v12

    :cond_12
    move-wide/from16 v22, v6

    instance-of v1, v0, Lyads/l31;

    if-eqz v1, :cond_13

    new-instance v1, Lyads/c41;

    check-cast v0, Lyads/l31;

    iget-object v0, v0, Lyads/l31;->a:Lyads/t22;

    iget-object v0, v0, Lyads/t22;->a:Lyads/as2;

    invoke-virtual {v0, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lyads/c41;-><init>(I)V

    return-object v1

    :cond_13
    instance-of v1, v0, Lyads/j31;

    if-eqz v1, :cond_20

    new-instance v1, Lyads/u31;

    check-cast v0, Lyads/j31;

    invoke-virtual {v0}, Lyads/j31;->b()Lyads/aq1;

    move-result-object v3

    iget-object v3, v3, Lyads/aq1;->a:Lyads/as2;

    invoke-virtual {v3, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lyads/j31;->b()Lyads/aq1;

    move-result-object v5

    iget-object v5, v5, Lyads/aq1;->b:Lyads/cr0;

    iget-object v5, v5, Lyads/cr0;->b:Lyads/as2;

    invoke-virtual {v5, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    shr-long v11, v5, v8

    cmp-long v7, v11, v9

    if-eqz v7, :cond_16

    cmp-long v7, v11, v22

    if-nez v7, :cond_14

    goto :goto_a

    :cond_14
    cmp-long v5, v5, v9

    if-lez v5, :cond_15

    const v5, 0x7fffffff

    goto :goto_b

    :cond_15
    const/high16 v5, -0x80000000

    goto :goto_b

    :cond_16
    :goto_a
    long-to-int v5, v5

    :goto_b
    invoke-virtual {v0}, Lyads/j31;->b()Lyads/aq1;

    move-result-object v6

    iget-object v6, v6, Lyads/aq1;->b:Lyads/cr0;

    iget-object v6, v6, Lyads/cr0;->d:Lyads/as2;

    invoke-virtual {v6, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    shr-long v11, v6, v8

    cmp-long v13, v11, v9

    if-eqz v13, :cond_19

    cmp-long v11, v11, v22

    if-nez v11, :cond_17

    goto :goto_c

    :cond_17
    cmp-long v6, v6, v9

    if-lez v6, :cond_18

    const v6, 0x7fffffff

    goto :goto_d

    :cond_18
    const/high16 v6, -0x80000000

    goto :goto_d

    :cond_19
    :goto_c
    long-to-int v6, v6

    :goto_d
    invoke-virtual {v0}, Lyads/j31;->b()Lyads/aq1;

    move-result-object v7

    iget-object v7, v7, Lyads/aq1;->b:Lyads/cr0;

    iget-object v7, v7, Lyads/cr0;->c:Lyads/as2;

    invoke-virtual {v7, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    shr-long v13, v11, v8

    cmp-long v7, v13, v9

    if-eqz v7, :cond_1c

    cmp-long v7, v13, v22

    if-nez v7, :cond_1a

    goto :goto_e

    :cond_1a
    cmp-long v7, v11, v9

    if-lez v7, :cond_1b

    const v7, 0x7fffffff

    goto :goto_f

    :cond_1b
    const/high16 v7, -0x80000000

    goto :goto_f

    :cond_1c
    :goto_e
    long-to-int v7, v11

    :goto_f
    invoke-virtual {v0}, Lyads/j31;->b()Lyads/aq1;

    move-result-object v0

    iget-object v0, v0, Lyads/aq1;->b:Lyads/cr0;

    iget-object v0, v0, Lyads/cr0;->a:Lyads/as2;

    invoke-virtual {v0, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    shr-long v13, v11, v8

    cmp-long v0, v13, v9

    if-eqz v0, :cond_1f

    cmp-long v0, v13, v22

    if-nez v0, :cond_1d

    goto :goto_10

    :cond_1d
    cmp-long v0, v11, v9

    if-lez v0, :cond_1e

    const v0, 0x7fffffff

    goto :goto_11

    :cond_1e
    const/high16 v0, -0x80000000

    goto :goto_11

    :cond_1f
    :goto_10
    long-to-int v0, v11

    :goto_11
    invoke-direct {v4, v5, v6, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v1, v3, v4}, Lyads/u31;-><init>(Landroid/net/Uri;Landroid/graphics/Rect;)V

    return-object v1

    :cond_20
    invoke-static {}, Lme0;->e()V

    return-object v11
.end method

.method public static a(Lyads/jw1;Landroid/util/DisplayMetrics;Lyads/fs2;)Lyads/x31;
    .locals 4

    .line 754
    instance-of v0, p0, Lyads/hw1;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    new-instance v0, Lyads/v31;

    .line 755
    check-cast p0, Lyads/hw1;

    .line 756
    iget-object v2, p0, Lyads/hw1;->a:Lyads/uw1;

    .line 757
    iget-object v2, v2, Lyads/uw1;->b:Lyads/as2;

    invoke-virtual {v2, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 758
    iget-object p0, p0, Lyads/hw1;->a:Lyads/uw1;

    .line 759
    iget-object p0, p0, Lyads/uw1;->a:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/g12;

    .line 760
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p2, 0x1

    if-eq p0, p2, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    long-to-float p0, v2

    goto :goto_0

    .line 761
    :cond_0
    invoke-static {}, Lme0;->e()V

    return-object v1

    .line 762
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0, p1}, Lyads/pq;->b(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p0

    goto :goto_0

    .line 763
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0, p1}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p0

    .line 764
    :goto_0
    invoke-direct {v0, p0}, Lyads/v31;-><init>(F)V

    return-object v0

    .line 765
    :cond_3
    instance-of p1, p0, Lyads/iw1;

    if-eqz p1, :cond_4

    new-instance p1, Lyads/w31;

    .line 766
    check-cast p0, Lyads/iw1;

    .line 767
    iget-object p0, p0, Lyads/iw1;->a:Lyads/nx1;

    .line 768
    iget-object p0, p0, Lyads/nx1;->a:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    double-to-float p0, v0

    .line 769
    invoke-direct {p1, p0}, Lyads/w31;-><init>(F)V

    return-object p1

    :cond_4
    invoke-static {}, Lme0;->e()V

    return-object v1
.end method

.method public static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 729
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of v1, p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_2

    .line 731
    sget v1, Lcom/yandex/mobile/ads/R$drawable;->monetization_ads_divkit_native_animation_background:I

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_2
    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eqz v2, :cond_4

    .line 732
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/yandex/mobile/ads/R$drawable;->monetization_ads_divkit_native_animation_background:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 733
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move v2, p1

    goto :goto_1

    :cond_4
    move v2, v1

    .line 734
    :goto_1
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    .line 735
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/drawable/Drawable;

    .line 736
    invoke-direct {v3, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v2, :cond_5

    .line 737
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result p0

    sub-int/2addr p0, p1

    .line 738
    sget p1, Lcom/yandex/mobile/ads/R$drawable;->monetization_ads_divkit_native_animation_background:I

    .line 739
    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    :cond_5
    return-void
.end method

.method public static a(Ljava/util/List;Lyads/fs2;Lyads/hs2;Lnl3;)V
    .locals 3

    if-eqz p0, :cond_b

    .line 770
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/m31;

    if-eqz v0, :cond_0

    .line 771
    instance-of v1, v0, Lyads/l31;

    if-eqz v1, :cond_1

    .line 772
    check-cast v0, Lyads/l31;

    .line 773
    iget-object v0, v0, Lyads/l31;->a:Lyads/t22;

    .line 774
    iget-object v0, v0, Lyads/t22;->a:Lyads/as2;

    invoke-virtual {v0, p1, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v0

    invoke-interface {p2, v0}, Lyads/hs2;->a(Lyads/tp0;)V

    goto :goto_0

    .line 775
    :cond_1
    instance-of v1, v0, Lyads/h31;

    if-eqz v1, :cond_3

    .line 776
    check-cast v0, Lyads/h31;

    .line 777
    iget-object v0, v0, Lyads/h31;->a:Lyads/bi1;

    .line 778
    iget-object v1, v0, Lyads/bi1;->a:Lyads/as2;

    invoke-virtual {v1, p1, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    invoke-interface {p2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 779
    iget-object v1, v0, Lyads/bi1;->e:Lyads/as2;

    invoke-virtual {v1, p1, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    invoke-interface {p2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 780
    iget-object v1, v0, Lyads/bi1;->b:Lyads/as2;

    invoke-virtual {v1, p1, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    invoke-interface {p2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 781
    iget-object v1, v0, Lyads/bi1;->c:Lyads/as2;

    invoke-virtual {v1, p1, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    invoke-interface {p2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 782
    iget-object v1, v0, Lyads/bi1;->f:Lyads/as2;

    invoke-virtual {v1, p1, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    invoke-interface {p2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 783
    iget-object v1, v0, Lyads/bi1;->g:Lyads/as2;

    invoke-virtual {v1, p1, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    invoke-interface {p2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 784
    iget-object v0, v0, Lyads/bi1;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 785
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/wd1;

    if-eqz v1, :cond_2

    .line 786
    instance-of v2, v1, Lyads/vd1;

    if-nez v2, :cond_2

    .line 787
    instance-of v2, v1, Lyads/ud1;

    if-eqz v2, :cond_2

    check-cast v1, Lyads/ud1;

    .line 788
    iget-object v1, v1, Lyads/ud1;->a:Lyads/z41;

    .line 789
    iget-object v1, v1, Lyads/z41;->a:Lyads/as2;

    invoke-virtual {v1, p1, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    invoke-interface {p2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    goto :goto_1

    .line 790
    :cond_3
    instance-of v1, v0, Lyads/i31;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 791
    check-cast v0, Lyads/i31;

    .line 792
    iget-object v0, v0, Lyads/i31;->a:Lyads/dp1;

    .line 793
    iget-object v1, v0, Lyads/dp1;->a:Lyads/as2;

    invoke-virtual {v1, p1, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    invoke-interface {p2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 794
    iget-object v1, v0, Lyads/dp1;->c:Lyads/ds2;

    if-eqz v1, :cond_4

    invoke-interface {v1, p1, p3}, Lyads/ds2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v2

    :cond_4
    invoke-interface {p2, v2}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 795
    iget-object v0, v0, Lyads/dp1;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 796
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/cp1;

    if-nez v1, :cond_5

    goto :goto_2

    .line 797
    :cond_5
    iget-object v2, v1, Lyads/cp1;->a:Lyads/as2;

    invoke-virtual {v2, p1, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v2

    invoke-interface {p2, v2}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 798
    iget-object v1, v1, Lyads/cp1;->b:Lyads/as2;

    invoke-virtual {v1, p1, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    invoke-interface {p2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    goto :goto_2

    .line 799
    :cond_6
    instance-of v1, v0, Lyads/k31;

    if-eqz v1, :cond_9

    .line 800
    check-cast v0, Lyads/k31;

    .line 801
    iget-object v0, v0, Lyads/k31;->a:Lyads/gw1;

    .line 802
    iget-object v1, v0, Lyads/gw1;->d:Lyads/ds2;

    if-eqz v1, :cond_7

    invoke-interface {v1, p1, p3}, Lyads/ds2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v2

    :cond_7
    invoke-interface {p2, v2}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 803
    iget-object v1, v0, Lyads/gw1;->a:Lyads/jw1;

    invoke-static {p2, v1, p1, p3}, Lyads/js2;->a(Lyads/hs2;Lyads/jw1;Lyads/fs2;Lnl3;)V

    .line 804
    iget-object v1, v0, Lyads/gw1;->b:Lyads/jw1;

    invoke-static {p2, v1, p1, p3}, Lyads/js2;->a(Lyads/hs2;Lyads/jw1;Lyads/fs2;Lnl3;)V

    .line 805
    iget-object v0, v0, Lyads/gw1;->e:Lyads/gx1;

    if-eqz v0, :cond_0

    .line 806
    instance-of v1, v0, Lyads/ex1;

    if-eqz v1, :cond_8

    .line 807
    check-cast v0, Lyads/ex1;

    .line 808
    iget-object v1, v0, Lyads/ex1;->a:Lyads/af1;

    .line 809
    iget-object v1, v1, Lyads/af1;->a:Lyads/as2;

    invoke-virtual {v1, p1, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    invoke-interface {p2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 810
    iget-object v0, v0, Lyads/ex1;->a:Lyads/af1;

    .line 811
    iget-object v0, v0, Lyads/af1;->b:Lyads/as2;

    invoke-virtual {v0, p1, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v0

    invoke-interface {p2, v0}, Lyads/hs2;->a(Lyads/tp0;)V

    goto/16 :goto_0

    .line 812
    :cond_8
    instance-of v1, v0, Lyads/fx1;

    if-eqz v1, :cond_0

    .line 813
    check-cast v0, Lyads/fx1;

    .line 814
    iget-object v0, v0, Lyads/fx1;->a:Lyads/ux1;

    .line 815
    iget-object v0, v0, Lyads/ux1;->a:Lyads/as2;

    invoke-virtual {v0, p1, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v0

    invoke-interface {p2, v0}, Lyads/hs2;->a(Lyads/tp0;)V

    goto/16 :goto_0

    .line 816
    :cond_9
    instance-of v1, v0, Lyads/j31;

    if-eqz v1, :cond_0

    .line 817
    check-cast v0, Lyads/j31;

    .line 818
    iget-object v0, v0, Lyads/j31;->a:Lyads/aq1;

    .line 819
    iget-object v1, v0, Lyads/aq1;->a:Lyads/as2;

    invoke-virtual {v1, p1, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    invoke-interface {p2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 820
    iget-object v0, v0, Lyads/aq1;->b:Lyads/cr0;

    if-nez v0, :cond_a

    goto/16 :goto_0

    .line 821
    :cond_a
    iget-object v1, v0, Lyads/cr0;->b:Lyads/as2;

    invoke-virtual {v1, p1, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    invoke-interface {p2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 822
    iget-object v1, v0, Lyads/cr0;->d:Lyads/as2;

    invoke-virtual {v1, p1, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    invoke-interface {p2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 823
    iget-object v1, v0, Lyads/cr0;->c:Lyads/as2;

    invoke-virtual {v1, p1, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    invoke-interface {p2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 824
    iget-object v0, v0, Lyads/cr0;->a:Lyads/as2;

    invoke-virtual {v0, p1, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v0

    invoke-interface {p2, v0}, Lyads/hs2;->a(Lyads/tp0;)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Landroid/view/View;Ljava/util/List;Lyads/tt;)V
    .locals 5

    .line 655
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 656
    iget-object v1, p4, Lyads/tt;->b:Lyads/fs2;

    if-eqz p3, :cond_0

    .line 657
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p3, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 658
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 659
    check-cast v3, Lyads/m31;

    .line 660
    iget-object v4, p4, Lyads/tt;->a:Lyads/vq0;

    .line 661
    invoke-static {v3, v4, v0, v1}, Lyads/e41;->a(Lyads/m31;Lyads/vq0;Landroid/util/DisplayMetrics;Lyads/fs2;)Lyads/d41;

    move-result-object v3

    .line 662
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 663
    :cond_0
    sget-object v2, Lkx2;->b:Lkx2;

    .line 664
    :cond_1
    sget p3, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_default_background_list_tag:I

    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    instance-of v0, p3, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p3, Ljava/util/List;

    goto :goto_1

    :cond_2
    move-object p3, v1

    .line 665
    :goto_1
    sget v0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_additional_background_layer_tag:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 666
    :goto_2
    invoke-static {p3, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 667
    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_3

    :cond_4
    return-void

    .line 668
    :cond_5
    :goto_3
    invoke-virtual {p0, p1, p2, v2, p4}, Lyads/e41;->b(Landroid/graphics/drawable/Drawable;Landroid/view/View;Ljava/util/List;Lyads/tt;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p0

    invoke-static {p2, p0}, Lyads/e41;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 669
    sget p0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_default_background_list_tag:I

    invoke-virtual {p2, p0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 670
    sget p0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_focused_background_list_tag:I

    invoke-virtual {p2, p0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 671
    sget p0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_additional_background_layer_tag:I

    invoke-virtual {p2, p0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/view/View;Lyads/tt;Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/util/List;)V
    .locals 7

    .line 697
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 698
    iget-object v1, p2, Lyads/tt;->a:Lyads/vq0;

    .line 699
    iget-object v2, p2, Lyads/tt;->b:Lyads/fs2;

    const/16 v3, 0xa

    if-eqz p4, :cond_0

    .line 700
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {p4, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 701
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 702
    check-cast v6, Lyads/m31;

    .line 703
    invoke-static {v6, v1, v0, v2}, Lyads/e41;->a(Lyads/m31;Lyads/vq0;Landroid/util/DisplayMetrics;Lyads/fs2;)Lyads/d41;

    move-result-object v6

    .line 704
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 705
    :cond_0
    sget-object v4, Lkx2;->b:Lkx2;

    .line 706
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {p5, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 707
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 708
    check-cast v3, Lyads/m31;

    .line 709
    invoke-static {v3, v1, v0, v2}, Lyads/e41;->a(Lyads/m31;Lyads/vq0;Landroid/util/DisplayMetrics;Lyads/fs2;)Lyads/d41;

    move-result-object v3

    .line 710
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 711
    :cond_2
    sget p5, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_default_background_list_tag:I

    invoke-virtual {p1, p5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p5

    instance-of v0, p5, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p5, Ljava/util/List;

    goto :goto_2

    :cond_3
    move-object p5, v1

    .line 712
    :goto_2
    sget v0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_focused_background_list_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_4

    check-cast v0, Ljava/util/List;

    goto :goto_3

    :cond_4
    move-object v0, v1

    .line 713
    :goto_3
    sget v2, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_additional_background_layer_tag:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    move-object v1, v2

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 714
    :cond_5
    invoke-static {p5, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_7

    .line 715
    invoke-static {v0, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_7

    .line 716
    invoke-static {v1, p3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_6

    goto :goto_4

    :cond_6
    return-void

    .line 717
    :cond_7
    :goto_4
    new-instance p5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v0, 0x101009c

    .line 718
    filled-new-array {v0}, [I

    move-result-object v0

    .line 719
    invoke-virtual {p0, p3, p1, v5, p2}, Lyads/e41;->b(Landroid/graphics/drawable/Drawable;Landroid/view/View;Ljava/util/List;Lyads/tt;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v1

    .line 720
    invoke-virtual {p5, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    if-nez p4, :cond_8

    if-eqz p3, :cond_9

    .line 721
    :cond_8
    sget-object p4, Landroid/util/StateSet;->WILD_CARD:[I

    .line 722
    invoke-virtual {p0, p3, p1, v4, p2}, Lyads/e41;->b(Landroid/graphics/drawable/Drawable;Landroid/view/View;Ljava/util/List;Lyads/tt;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p0

    .line 723
    invoke-virtual {p5, p4, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 724
    :cond_9
    invoke-static {p1, p5}, Lyads/e41;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 725
    sget p0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_default_background_list_tag:I

    invoke-virtual {p1, p0, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 726
    sget p0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_focused_background_list_tag:I

    invoke-virtual {p1, p0, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 727
    sget p0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_additional_background_layer_tag:I

    invoke-virtual {p1, p0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Lyads/tt;Landroid/view/View;Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyads/hs2;)V
    .locals 11

    move-object/from16 v7, p8

    sget-object v0, Lkx2;->b:Lkx2;

    if-nez p4, :cond_0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, p4

    :goto_0
    if-nez p5, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object/from16 v1, p5

    :goto_1
    if-nez p7, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v0, p7

    .line 672
    :goto_2
    sget v2, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_additional_background_layer_tag:I

    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    check-cast v2, Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_3
    move-object v2, v4

    .line 673
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v3, v5, :cond_5

    :cond_4
    :goto_4
    move-object v0, p0

    move-object v2, p1

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p6

    goto :goto_7

    .line 674
    :cond_5
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    move v8, v5

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    if-ltz v8, :cond_7

    .line 675
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyads/m31;

    check-cast v9, Lyads/m31;

    .line 676
    invoke-static {v9, v8}, Lyads/gb1;->a(Lyads/m31;Lyads/m31;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_4

    :cond_6
    move v8, v10

    goto :goto_5

    .line 677
    :cond_7
    invoke-static {}, Lu96;->o()V

    throw v4

    .line 678
    :cond_8
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_9

    goto :goto_4

    .line 679
    :cond_9
    invoke-interface/range {p6 .. p6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v8, v5, 0x1

    if-ltz v5, :cond_b

    .line 680
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/m31;

    check-cast v3, Lyads/m31;

    .line 681
    invoke-static {v3, v5}, Lyads/gb1;->a(Lyads/m31;Lyads/m31;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_4

    :cond_a
    move v5, v8

    goto :goto_6

    .line 682
    :cond_b
    invoke-static {}, Lu96;->o()V

    throw v4

    .line 683
    :cond_c
    invoke-static {p3, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_b

    .line 684
    :goto_7
    invoke-virtual/range {v0 .. v5}, Lyads/e41;->a(Landroid/view/View;Lyads/tt;Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/util/List;)V

    .line 685
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_8

    .line 686
    :cond_d
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/m31;

    .line 687
    invoke-static {v1}, Lyads/gb1;->a(Lyads/m31;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_a

    .line 688
    :cond_f
    :goto_8
    invoke-interface/range {p6 .. p6}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_b

    .line 689
    :cond_10
    invoke-interface/range {p6 .. p6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/m31;

    .line 690
    invoke-static {v1}, Lyads/gb1;->a(Lyads/m31;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 691
    :goto_a
    new-instance v0, Lxt9;

    move-object v1, p0

    move-object v3, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lxt9;-><init>(Lyads/e41;Landroid/view/View;Lyads/tt;Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/util/List;)V

    .line 692
    iget-object p0, p1, Lyads/tt;->b:Lyads/fs2;

    .line 693
    invoke-static {p4, p0, v7, v0}, Lyads/e41;->a(Ljava/util/List;Lyads/fs2;Lyads/hs2;Lnl3;)V

    move-object/from16 v5, p6

    .line 694
    invoke-static {v5, p0, v7, v0}, Lyads/e41;->a(Ljava/util/List;Lyads/fs2;Lyads/hs2;Lnl3;)V

    return-void

    :cond_11
    move-object/from16 v5, p6

    goto :goto_9

    :cond_12
    :goto_b
    return-void
.end method

.method public final a(Lyads/tt;Landroid/view/View;Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/util/List;Lyads/hs2;)V
    .locals 7

    sget-object v0, Lkx2;->b:Lkx2;

    if-nez p4, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p4

    :goto_0
    if-nez p5, :cond_1

    move-object p5, v0

    .line 740
    :cond_1
    sget v0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_additional_background_layer_tag:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    move-object v0, v3

    .line 741
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_3

    goto :goto_3

    .line 742
    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-ltz v4, :cond_5

    .line 743
    invoke-interface {p5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/m31;

    check-cast v5, Lyads/m31;

    .line 744
    invoke-static {v5, v4}, Lyads/gb1;->a(Lyads/m31;Lyads/m31;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    move v4, v6

    goto :goto_2

    .line 745
    :cond_5
    invoke-static {}, Lu96;->o()V

    throw v3

    .line 746
    :cond_6
    invoke-static {p3, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_7

    goto :goto_4

    .line 747
    :cond_7
    :goto_3
    invoke-virtual {p0, p3, p2, p4, p1}, Lyads/e41;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View;Ljava/util/List;Lyads/tt;)V

    .line 748
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_8

    goto :goto_4

    .line 749
    :cond_8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_9
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/m31;

    .line 750
    invoke-static {v0}, Lyads/gb1;->a(Lyads/m31;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 751
    new-instance v1, Lyt9;

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lyt9;-><init>(Lyads/e41;Landroid/view/View;Lyads/tt;Landroid/graphics/drawable/Drawable;Ljava/util/List;)V

    .line 752
    iget-object p0, v4, Lyads/tt;->b:Lyads/fs2;

    .line 753
    invoke-static {v6, p0, p6, v1}, Lyads/e41;->a(Ljava/util/List;Lyads/fs2;Lyads/hs2;Lnl3;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;Landroid/view/View;Ljava/util/List;Lyads/tt;)Landroid/graphics/drawable/LayerDrawable;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v3, p4

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    const/4 v7, 0x0

    if-nez p3, :cond_2

    if-eqz v0, :cond_1

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    filled-new-array {v0}, [Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v1

    :cond_1
    return-object v7

    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/d41;

    move-object/from16 v10, p0

    iget-object v11, v10, Lyads/e41;->a:Lyads/oi1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lyads/r31;

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v2, :cond_10

    check-cast v1, Lyads/r31;

    new-instance v2, Lyads/wc5;

    invoke-direct {v2}, Lyads/wc5;-><init>()V

    iget-wide v12, v1, Lyads/r31;->a:D

    const-wide v14, 0x406fe00000000000L    # 255.0

    mul-double/2addr v12, v14

    double-to-int v12, v12

    iget-object v13, v2, Lyads/wc5;->e:Landroid/graphics/Paint;

    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object v12, v1, Lyads/r31;->f:Lyads/vi1;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    if-eqz v12, :cond_6

    if-eq v12, v6, :cond_5

    if-eq v12, v5, :cond_4

    sget-object v12, Lyads/vc5;->b:Lyads/vc5;

    goto :goto_1

    :cond_4
    sget-object v12, Lyads/vc5;->e:Lyads/vc5;

    goto :goto_1

    :cond_5
    sget-object v12, Lyads/vc5;->c:Lyads/vc5;

    goto :goto_1

    :cond_6
    sget-object v12, Lyads/vc5;->d:Lyads/vc5;

    :goto_1
    iput-object v12, v2, Lyads/wc5;->a:Lyads/vc5;

    iget-object v12, v1, Lyads/r31;->b:Lyads/f11;

    invoke-static/range {p2 .. p2}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v13

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    if-eqz v12, :cond_d

    if-eq v12, v4, :cond_c

    if-eq v12, v6, :cond_b

    if-eq v12, v5, :cond_9

    const/4 v5, 0x4

    if-ne v12, v5, :cond_8

    if-eqz v13, :cond_7

    sget-object v5, Lyads/tc5;->b:Lyads/tc5;

    goto :goto_2

    :cond_7
    sget-object v5, Lyads/tc5;->d:Lyads/tc5;

    goto :goto_2

    :cond_8
    invoke-static {}, Lme0;->e()V

    return-object v7

    :cond_9
    if-eqz v13, :cond_a

    sget-object v5, Lyads/tc5;->d:Lyads/tc5;

    goto :goto_2

    :cond_a
    sget-object v5, Lyads/tc5;->b:Lyads/tc5;

    goto :goto_2

    :cond_b
    sget-object v5, Lyads/tc5;->d:Lyads/tc5;

    goto :goto_2

    :cond_c
    sget-object v5, Lyads/tc5;->c:Lyads/tc5;

    goto :goto_2

    :cond_d
    sget-object v5, Lyads/tc5;->b:Lyads/tc5;

    :goto_2
    iput-object v5, v2, Lyads/wc5;->b:Lyads/tc5;

    iget-object v5, v1, Lyads/r31;->c:Lyads/h11;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eq v5, v4, :cond_f

    if-eq v5, v6, :cond_e

    sget-object v4, Lyads/uc5;->b:Lyads/uc5;

    goto :goto_3

    :cond_e
    sget-object v4, Lyads/uc5;->d:Lyads/uc5;

    goto :goto_3

    :cond_f
    sget-object v4, Lyads/uc5;->c:Lyads/uc5;

    :goto_3
    iput-object v4, v2, Lyads/wc5;->c:Lyads/uc5;

    iget-object v4, v1, Lyads/r31;->d:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v6, v3, Lyads/tt;->a:Lyads/vq0;

    move-object v4, v1

    new-instance v1, Lyads/q31;

    move-object v5, v2

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v6}, Lyads/q31;-><init>(Landroid/view/View;Lyads/tt;Lyads/r31;Lyads/wc5;Lyads/vq0;)V

    invoke-interface {v11, v12, v1}, Lyads/oi1;->b(Ljava/lang/String;Lyads/ji1;)Lyads/du3;

    move-result-object v1

    iget-object v2, v3, Lyads/tt;->a:Lyads/vq0;

    invoke-virtual {v2, v1}, Lyads/vq0;->a(Lyads/du3;)V

    move-object v2, v5

    goto/16 :goto_8

    :cond_10
    instance-of v2, v1, Lyads/u31;

    if-eqz v2, :cond_11

    check-cast v1, Lyads/u31;

    iget-object v2, v3, Lyads/tt;->a:Lyads/vq0;

    new-instance v4, Lyads/bo4;

    invoke-direct {v4}, Lyads/bo4;-><init>()V

    iget-object v5, v1, Lyads/u31;->a:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lyads/t31;

    invoke-direct {v6, v2, v4, v1}, Lyads/t31;-><init>(Lyads/vq0;Lyads/bo4;Lyads/u31;)V

    invoke-interface {v11, v5, v6}, Lyads/oi1;->b(Ljava/lang/String;Lyads/ji1;)Lyads/du3;

    move-result-object v1

    invoke-virtual {v2, v1}, Lyads/vq0;->a(Lyads/du3;)V

    move-object v2, v4

    goto/16 :goto_8

    :cond_11
    instance-of v2, v1, Lyads/c41;

    if-eqz v2, :cond_12

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    check-cast v1, Lyads/c41;

    iget v1, v1, Lyads/c41;->a:I

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto/16 :goto_8

    :cond_12
    instance-of v2, v1, Lyads/s31;

    if-eqz v2, :cond_13

    new-instance v2, Lyads/lt3;

    check-cast v1, Lyads/s31;

    iget v4, v1, Lyads/s31;->a:I

    int-to-float v4, v4

    iget-object v1, v1, Lyads/s31;->b:Lyads/y30;

    invoke-direct {v2, v4, v1}, Lyads/lt3;-><init>(FLyads/y30;)V

    goto/16 :goto_8

    :cond_13
    instance-of v2, v1, Lyads/b41;

    if-eqz v2, :cond_1e

    new-instance v2, Lyads/v35;

    check-cast v1, Lyads/b41;

    iget-object v11, v1, Lyads/b41;->d:Lyads/a41;

    instance-of v12, v11, Lyads/y31;

    if-eqz v12, :cond_14

    new-instance v4, Lyads/r35;

    check-cast v11, Lyads/y31;

    iget v5, v11, Lyads/y31;->a:F

    invoke-direct {v4, v5}, Lyads/r35;-><init>(F)V

    goto :goto_5

    :cond_14
    instance-of v12, v11, Lyads/z31;

    if-eqz v12, :cond_1d

    new-instance v12, Lyads/t35;

    check-cast v11, Lyads/z31;

    iget-object v11, v11, Lyads/z31;->a:Lyads/tx1;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-eqz v11, :cond_18

    if-eq v11, v4, :cond_17

    if-eq v11, v6, :cond_16

    if-ne v11, v5, :cond_15

    sget-object v4, Lyads/s35;->e:Lyads/s35;

    goto :goto_4

    :cond_15
    invoke-static {}, Lme0;->e()V

    return-object v7

    :cond_16
    sget-object v4, Lyads/s35;->d:Lyads/s35;

    goto :goto_4

    :cond_17
    sget-object v4, Lyads/s35;->c:Lyads/s35;

    goto :goto_4

    :cond_18
    sget-object v4, Lyads/s35;->b:Lyads/s35;

    :goto_4
    invoke-direct {v12, v4}, Lyads/t35;-><init>(Lyads/s35;)V

    move-object v4, v12

    :goto_5
    iget-object v5, v1, Lyads/b41;->a:Lyads/x31;

    instance-of v6, v5, Lyads/v31;

    if-eqz v6, :cond_19

    new-instance v6, Lyads/n35;

    check-cast v5, Lyads/v31;

    iget v5, v5, Lyads/v31;->a:F

    invoke-direct {v6, v5}, Lyads/n35;-><init>(F)V

    goto :goto_6

    :cond_19
    instance-of v6, v5, Lyads/w31;

    if-eqz v6, :cond_1c

    new-instance v6, Lyads/o35;

    check-cast v5, Lyads/w31;

    iget v5, v5, Lyads/w31;->a:F

    invoke-direct {v6, v5}, Lyads/o35;-><init>(F)V

    :goto_6
    iget-object v5, v1, Lyads/b41;->b:Lyads/x31;

    instance-of v11, v5, Lyads/v31;

    if-eqz v11, :cond_1a

    new-instance v11, Lyads/n35;

    check-cast v5, Lyads/v31;

    iget v5, v5, Lyads/v31;->a:F

    invoke-direct {v11, v5}, Lyads/n35;-><init>(F)V

    goto :goto_7

    :cond_1a
    instance-of v11, v5, Lyads/w31;

    if-eqz v11, :cond_1b

    new-instance v11, Lyads/o35;

    check-cast v5, Lyads/w31;

    iget v5, v5, Lyads/w31;->a:F

    invoke-direct {v11, v5}, Lyads/o35;-><init>(F)V

    :goto_7
    iget-object v1, v1, Lyads/b41;->c:Ljava/util/List;

    invoke-static {v1}, Lqn1;->s0(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-direct {v2, v4, v6, v11, v1}, Lyads/v35;-><init>(Lyads/u35;Lyads/p35;Lyads/p35;[I)V

    :goto_8
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1b
    invoke-static {}, Lme0;->e()V

    return-object v7

    :cond_1c
    invoke-static {}, Lme0;->e()V

    return-object v7

    :cond_1d
    invoke-static {}, Lme0;->e()V

    return-object v7

    :cond_1e
    invoke-static {}, Lme0;->e()V

    return-object v7

    :cond_1f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz v0, :cond_20

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_21
    return-object v7
.end method
