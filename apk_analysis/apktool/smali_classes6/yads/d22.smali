.class public final Lyads/d22;
.super Lyads/oh2;
.source "SourceFile"


# instance fields
.field public final b:Lyads/ef2;

.field public final c:Lyads/g36;

.field public final d:Lyads/bo2;


# direct methods
.method public constructor <init>(Lyads/v41;Lyads/ef2;Lyads/g36;Lyads/bo2;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/oh2;-><init>(Lyads/v41;)V

    iput-object p2, p0, Lyads/d22;->b:Lyads/ef2;

    iput-object p3, p0, Lyads/d22;->c:Lyads/g36;

    iput-object p4, p0, Lyads/d22;->d:Lyads/bo2;

    return-void
.end method

.method public static final a(Lyads/d22;Lyads/s22;Lyads/fs2;Lyads/tc1;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 285
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p3, p0, p2}, Lyads/jf2;->a(Lyads/tc1;Landroid/util/DisplayMetrics;Lyads/fs2;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lyads/kn5;->setThumbSecondaryDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/d22;Lyads/s22;Lyads/fs2;Lyads/w12;I)Lj59;
    .locals 1

    .line 290
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_0

    .line 291
    new-instance p4, Lyads/cw5;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object p0, p0, Lyads/d22;->b:Lyads/ef2;

    invoke-static {p3, v0, p0, p2}, Lyads/y12;->a(Lyads/w12;Landroid/util/DisplayMetrics;Lyads/ef2;Lyads/fs2;)Lyads/dn5;

    move-result-object p0

    invoke-direct {p4, p0}, Lyads/cw5;-><init>(Lyads/dn5;)V

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 292
    :goto_0
    invoke-virtual {p1, p4}, Lyads/kn5;->setThumbSecondTextDrawable(Lyads/cw5;)V

    .line 293
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/s22;Lyads/as2;Lyads/as2;Lyads/in5;Lyads/fs2;Landroid/util/DisplayMetrics;Lyads/g12;)Lj59;
    .locals 2

    if-eqz p1, :cond_0

    .line 299
    invoke-virtual {p1, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p6, p5}, Lyads/y12;->a(JLyads/g12;Landroid/util/DisplayMetrics;)I

    move-result p1

    .line 300
    iput p1, p3, Lyads/in5;->c:I

    :cond_0
    if-eqz p2, :cond_1

    .line 301
    invoke-virtual {p2, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, p6, p5}, Lyads/y12;->a(JLyads/g12;Landroid/util/DisplayMetrics;)I

    move-result p1

    .line 302
    iput p1, p3, Lyads/in5;->d:I

    .line 303
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 304
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 305
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/s22;Lyads/d22;J)Lj59;
    .locals 0

    long-to-float p2, p2

    .line 235
    invoke-virtual {p0, p2}, Lyads/kn5;->setMinValue(F)V

    .line 236
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/s22;Lyads/in5;J)Lj59;
    .locals 0

    long-to-float p2, p2

    .line 316
    iput p2, p1, Lyads/in5;->a:F

    .line 317
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 318
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 319
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/s22;Lyads/in5;Lyads/tc1;Landroid/util/DisplayMetrics;Lyads/fs2;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 306
    invoke-static {p2, p3, p4}, Lyads/jf2;->a(Lyads/tc1;Landroid/util/DisplayMetrics;Lyads/fs2;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 307
    iput-object p2, p1, Lyads/in5;->e:Landroid/graphics/drawable/Drawable;

    .line 308
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 309
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 310
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/s22;Lyads/in5;Lyads/yc1;Lyads/fs2;Landroid/util/DisplayMetrics;J)Lj59;
    .locals 0

    .line 311
    iget-object p2, p2, Lyads/yc1;->g:Lyads/as2;

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/g12;

    invoke-static {p5, p6, p2, p4}, Lyads/y12;->a(JLyads/g12;Landroid/util/DisplayMetrics;)I

    move-result p2

    .line 312
    iput p2, p1, Lyads/in5;->c:I

    .line 313
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 314
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 315
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/s22;Z)Lj59;
    .locals 0

    .line 238
    invoke-virtual {p0, p1}, Lyads/kn5;->setInteractive(Z)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static a(Lyads/s22;Lyads/x12;Lyads/fs2;)V
    .locals 12

    iget-object v0, p0, Lyads/kn5;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Lyads/x12;->u:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/v12;

    new-instance v4, Lyads/in5;

    invoke-direct {v4}, Lyads/in5;-><init>()V

    iget-object v2, p0, Lyads/kn5;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lyads/v12;->c:Lyads/as2;

    if-nez v2, :cond_1

    iget-object v2, p1, Lyads/x12;->s:Lyads/as2;

    :cond_1
    new-instance v3, Ln99;

    const/4 v5, 0x1

    invoke-direct {v3, v5, p0, v4}, Ln99;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v3}, Lyads/as2;->b(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v2

    iget-object v3, p0, Lyads/s22;->I:Lyads/xh1;

    invoke-interface {v3, v2}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v2, v1, Lyads/v12;->a:Lyads/as2;

    if-nez v2, :cond_2

    iget-object v2, p1, Lyads/x12;->r:Lyads/as2;

    :cond_2
    new-instance v3, Lms9;

    invoke-direct {v3, p0, v4}, Lms9;-><init>(Lyads/s22;Lyads/in5;)V

    invoke-virtual {v2, p2, v3}, Lyads/as2;->b(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v2

    iget-object v3, p0, Lyads/s22;->I:Lyads/xh1;

    invoke-interface {v3, v2}, Lyads/hs2;->a(Lyads/tp0;)V

    move v2, v5

    iget-object v5, v1, Lyads/v12;->b:Lyads/yc1;

    const/4 v3, 0x0

    if-nez v5, :cond_3

    iput v3, v4, Lyads/in5;->c:I

    iput v3, v4, Lyads/in5;->d:I

    move-object v3, p0

    move-object v7, p2

    goto/16 :goto_7

    :cond_3
    iget-object v7, v5, Lyads/yc1;->e:Lyads/as2;

    if-nez v7, :cond_5

    iget-object v8, v5, Lyads/yc1;->b:Lyads/as2;

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    :goto_2
    move-object v9, v7

    goto :goto_3

    :cond_6
    iget-object v7, v5, Lyads/yc1;->c:Lyads/as2;

    goto :goto_2

    :goto_3
    if-eqz v2, :cond_7

    iget-object v2, v5, Lyads/yc1;->b:Lyads/as2;

    :goto_4
    move-object v10, v2

    goto :goto_5

    :cond_7
    iget-object v2, v5, Lyads/yc1;->d:Lyads/as2;

    goto :goto_4

    :goto_5
    if-eqz v9, :cond_8

    new-instance v2, Lkq8;

    const/4 v8, 0x1

    move-object v3, p0

    move-object v7, v6

    move-object v6, p2

    invoke-direct/range {v2 .. v8}, Lkq8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v11, v7

    move-object v7, v6

    move-object v6, v11

    invoke-virtual {v9, v7, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    iget-object p2, v3, Lyads/s22;->I:Lyads/xh1;

    invoke-interface {p2, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    goto :goto_6

    :cond_8
    move-object v3, p0

    move-object v7, p2

    :goto_6
    if-eqz v10, :cond_9

    new-instance v2, Lns9;

    move-object v11, v7

    move-object v7, v6

    move-object v6, v11

    invoke-direct/range {v2 .. v7}, Lns9;-><init>(Lyads/s22;Lyads/in5;Lyads/yc1;Lyads/fs2;Landroid/util/DisplayMetrics;)V

    move-object v11, v7

    move-object v7, v6

    move-object v6, v11

    invoke-virtual {v10, v7, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    iget-object p2, v3, Lyads/s22;->I:Lyads/xh1;

    invoke-interface {p2, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    :cond_9
    iget-object p0, v5, Lyads/yc1;->g:Lyads/as2;

    new-instance v2, Los9;

    move-object v8, v6

    move-object v5, v10

    move-object v6, v4

    move-object v4, v9

    invoke-direct/range {v2 .. v8}, Los9;-><init>(Lyads/s22;Lyads/as2;Lyads/as2;Lyads/in5;Lyads/fs2;Landroid/util/DisplayMetrics;)V

    move-object v4, v6

    move-object v6, v8

    invoke-virtual {p0, v7, v2}, Lyads/as2;->b(Lyads/fs2;Lnl3;)Lyads/tp0;

    :goto_7
    iget-object p0, v1, Lyads/v12;->d:Lyads/tc1;

    if-nez p0, :cond_a

    iget-object p0, p1, Lyads/x12;->I:Lyads/tc1;

    :cond_a
    move-object v5, p0

    new-instance v2, Lps9;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lps9;-><init>(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lyads/fs2;I)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {v2, p0}, Lps9;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v5, v7, v2}, Lyads/js2;->a(Lyads/hs2;Lyads/tc1;Lyads/fs2;Lnl3;)V

    iget-object p2, v1, Lyads/v12;->e:Lyads/tc1;

    if-nez p2, :cond_b

    iget-object p2, p1, Lyads/x12;->J:Lyads/tc1;

    :cond_b
    move-object v5, p2

    new-instance v2, Lqs9;

    invoke-direct/range {v2 .. v7}, Lqs9;-><init>(Lyads/s22;Lyads/in5;Lyads/tc1;Landroid/util/DisplayMetrics;Lyads/fs2;)V

    invoke-virtual {v2, p0}, Lqs9;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v5, v7, v2}, Lyads/js2;->a(Lyads/hs2;Lyads/tc1;Lyads/fs2;Lnl3;)V

    move-object p0, v3

    move-object p2, v7

    goto/16 :goto_0

    :cond_c
    :goto_8
    return-void
.end method

.method public static final b(Lyads/d22;Lyads/s22;Lyads/fs2;Lyads/tc1;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p3, p0, p2}, Lyads/jf2;->a(Lyads/tc1;Landroid/util/DisplayMetrics;Lyads/fs2;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lyads/kn5;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final b(Lyads/d22;Lyads/s22;Lyads/fs2;Lyads/w12;I)Lj59;
    .locals 1

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_0

    .line 52
    new-instance p4, Lyads/cw5;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object p0, p0, Lyads/d22;->b:Lyads/ef2;

    invoke-static {p3, v0, p0, p2}, Lyads/y12;->a(Lyads/w12;Landroid/util/DisplayMetrics;Lyads/ef2;Lyads/fs2;)Lyads/dn5;

    move-result-object p0

    invoke-direct {p4, p0}, Lyads/cw5;-><init>(Lyads/dn5;)V

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 53
    :goto_0
    invoke-virtual {p1, p4}, Lyads/kn5;->setThumbTextDrawable(Lyads/cw5;)V

    .line 54
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final b(Lyads/s22;Lyads/d22;J)Lj59;
    .locals 0

    long-to-float p2, p2

    .line 55
    invoke-virtual {p0, p2}, Lyads/kn5;->setMaxValue(F)V

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final b(Lyads/s22;Lyads/in5;J)Lj59;
    .locals 0

    long-to-float p2, p2

    .line 68
    iput p2, p1, Lyads/in5;->b:F

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 71
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final b(Lyads/s22;Lyads/in5;Lyads/tc1;Landroid/util/DisplayMetrics;Lyads/fs2;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 58
    invoke-static {p2, p3, p4}, Lyads/jf2;->a(Lyads/tc1;Landroid/util/DisplayMetrics;Lyads/fs2;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 59
    iput-object p2, p1, Lyads/in5;->f:Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 62
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final b(Lyads/s22;Lyads/in5;Lyads/yc1;Lyads/fs2;Landroid/util/DisplayMetrics;J)Lj59;
    .locals 0

    .line 63
    iget-object p2, p2, Lyads/yc1;->g:Lyads/as2;

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/g12;

    invoke-static {p5, p6, p2, p4}, Lyads/y12;->a(JLyads/g12;Landroid/util/DisplayMetrics;)I

    move-result p2

    .line 64
    iput p2, p1, Lyads/in5;->d:I

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 67
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final c(Lyads/d22;Lyads/s22;Lyads/fs2;Lyads/tc1;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_0

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p3, p0, p2}, Lyads/jf2;->a(Lyads/tc1;Landroid/util/DisplayMetrics;Lyads/fs2;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lyads/kn5;->setActiveTickMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final d(Lyads/d22;Lyads/s22;Lyads/fs2;Lyads/tc1;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_0

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p3, p0, p2}, Lyads/jf2;->a(Lyads/tc1;Landroid/util/DisplayMetrics;Lyads/fs2;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lyads/kn5;->setInactiveTickMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final e(Lyads/d22;Lyads/s22;Lyads/fs2;Lyads/tc1;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p3, p0, p2}, Lyads/jf2;->a(Lyads/tc1;Landroid/util/DisplayMetrics;Lyads/fs2;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lyads/kn5;->setActiveTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final f(Lyads/d22;Lyads/s22;Lyads/fs2;Lyads/tc1;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p3, p0, p2}, Lyads/jf2;->a(Lyads/tc1;Landroid/util/DisplayMetrics;Lyads/fs2;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lyads/kn5;->setInactiveTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/view/View;Lyads/tt;Lyads/p41;Lyads/p41;Lyads/n32;)V
    .locals 0

    .line 234
    check-cast p1, Lyads/s22;

    check-cast p3, Lyads/x12;

    check-cast p4, Lyads/x12;

    invoke-virtual {p0, p1, p2, p3}, Lyads/d22;->a(Lyads/s22;Lyads/tt;Lyads/x12;)V

    return-void
.end method

.method public final a(Lyads/s22;Lyads/fs2;Lyads/tc1;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    .line 288
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p3, v0, p2}, Lyads/jf2;->a(Lyads/tc1;Landroid/util/DisplayMetrics;Lyads/fs2;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lyads/kn5;->setThumbSecondaryDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    new-instance v0, Lrs9;

    invoke-direct {v0, p0, p1, p2, p3}, Lrs9;-><init>(Lyads/d22;Lyads/s22;Lyads/fs2;Lyads/tc1;)V

    invoke-static {p1, p3, p2, v0}, Lyads/js2;->a(Lyads/hs2;Lyads/tc1;Lyads/fs2;Lnl3;)V

    return-void
.end method

.method public final a(Lyads/s22;Lyads/fs2;Lyads/w12;)V
    .locals 7

    if-eqz p3, :cond_0

    .line 294
    new-instance v0, Lyads/cw5;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget-object v2, p0, Lyads/d22;->b:Lyads/ef2;

    invoke-static {p3, v1, v2, p2}, Lyads/y12;->a(Lyads/w12;Landroid/util/DisplayMetrics;Lyads/ef2;Lyads/fs2;)Lyads/dn5;

    move-result-object v1

    invoke-direct {v0, v1}, Lyads/cw5;-><init>(Lyads/dn5;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 295
    :goto_0
    invoke-virtual {p1, v0}, Lyads/kn5;->setThumbSecondTextDrawable(Lyads/cw5;)V

    if-nez p3, :cond_1

    return-void

    .line 296
    :cond_1
    iget-object v0, p3, Lyads/w12;->i:Lyads/as2;

    new-instance v1, Lus9;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lus9;-><init>(Lyads/oh2;Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v4, v1}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    .line 297
    iget-object p1, v3, Lyads/s22;->I:Lyads/xh1;

    .line 298
    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final a(Lyads/s22;Lyads/tt;Lyads/x12;)V
    .locals 7

    .line 239
    iget-object v0, p2, Lyads/tt;->b:Lyads/fs2;

    .line 240
    iget-object v1, p0, Lyads/d22;->d:Lyads/bo2;

    .line 241
    iget-object v2, p2, Lyads/tt;->a:Lyads/vq0;

    .line 242
    iget-object v3, v2, Lyads/vq0;->O:Lyads/qb1;

    .line 243
    iget-object v2, v2, Lyads/vq0;->Q:Lyads/db1;

    .line 244
    invoke-virtual {v1, v2, v3}, Lyads/bo2;->a(Lyads/db1;Lyads/qb1;)Lyads/ao2;

    const/4 v1, 0x0

    .line 245
    invoke-virtual {p1, v1}, Lyads/kn5;->setInterceptionAngle(F)V

    .line 246
    iget-object v1, p3, Lyads/x12;->s:Lyads/as2;

    new-instance v2, Lzb5;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p1, p0}, Lzb5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Lyads/as2;->b(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    .line 247
    iget-object v2, p1, Lyads/s22;->I:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 248
    iget-object v1, p3, Lyads/x12;->r:Lyads/as2;

    new-instance v2, Lts9;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1, p0}, Lts9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Lyads/as2;->b(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    .line 249
    iget-object v2, p1, Lyads/s22;->I:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 250
    iget-object v1, p3, Lyads/x12;->o:Lyads/as2;

    new-instance v2, Lom4;

    const/4 v4, 0x3

    invoke-direct {v2, p1, v4}, Lom4;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v0, v2}, Lyads/as2;->b(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    .line 251
    iget-object v2, p1, Lyads/s22;->I:Lyads/xh1;

    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 252
    iget-object v1, p1, Lyads/kn5;->b:Lyads/gp4;

    .line 253
    iput v3, v1, Lyads/gp4;->d:I

    .line 254
    iget v2, v1, Lyads/gp4;->c:I

    .line 255
    iget-object v4, v1, Lyads/gp4;->b:Ljava/util/ArrayList;

    const/4 v5, 0x0

    if-nez v2, :cond_0

    .line 256
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 257
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 258
    iget-boolean v4, v1, Lyads/gp4;->e:Z

    if-eqz v2, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    move v6, v3

    :goto_0
    or-int/2addr v4, v6

    iput-boolean v4, v1, Lyads/gp4;->e:Z

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    .line 259
    iget-object v6, v1, Lyads/gp4;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 260
    :cond_2
    :goto_2
    iget-object v1, p3, Lyads/x12;->E:Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_3

    .line 261
    :cond_3
    new-instance v2, Lyads/c22;

    invoke-direct {v2, p1, p0, p2}, Lyads/c22;-><init>(Lyads/s22;Lyads/d22;Lyads/tt;)V

    .line 262
    iget-object v4, p0, Lyads/d22;->c:Lyads/g36;

    invoke-virtual {v4, p2, v1, v2}, Lyads/j36;->a(Lyads/tt;Ljava/lang/String;Lyads/i36;)Lyads/tp0;

    move-result-object v1

    .line 263
    iget-object v2, p1, Lyads/s22;->I:Lyads/xh1;

    .line 264
    invoke-interface {v2, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 265
    :goto_3
    iget-object v1, p2, Lyads/tt;->b:Lyads/fs2;

    .line 266
    iget-object v2, p3, Lyads/x12;->C:Lyads/tc1;

    invoke-virtual {p0, p1, v1, v2}, Lyads/d22;->b(Lyads/s22;Lyads/fs2;Lyads/tc1;)V

    .line 267
    iget-object v1, p2, Lyads/tt;->b:Lyads/fs2;

    .line 268
    iget-object v2, p3, Lyads/x12;->D:Lyads/w12;

    invoke-virtual {p0, p1, v1, v2}, Lyads/d22;->b(Lyads/s22;Lyads/fs2;Lyads/w12;)V

    .line 269
    iget-object v1, p3, Lyads/x12;->B:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 270
    invoke-virtual {p1, v5}, Lyads/kn5;->setThumbSecondaryDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 271
    invoke-virtual {p1, v5, v3}, Lyads/kn5;->setThumbSecondaryValue(Ljava/lang/Float;Z)V

    goto :goto_4

    .line 272
    :cond_4
    iget-object v2, p2, Lyads/tt;->b:Lyads/fs2;

    .line 273
    new-instance v3, Lyads/a22;

    invoke-direct {v3, p1, p0, p2}, Lyads/a22;-><init>(Lyads/s22;Lyads/d22;Lyads/tt;)V

    .line 274
    iget-object v4, p0, Lyads/d22;->c:Lyads/g36;

    invoke-virtual {v4, p2, v1, v3}, Lyads/j36;->a(Lyads/tt;Ljava/lang/String;Lyads/i36;)Lyads/tp0;

    move-result-object p2

    .line 275
    iget-object v1, p1, Lyads/s22;->I:Lyads/xh1;

    .line 276
    invoke-interface {v1, p2}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 277
    iget-object p2, p3, Lyads/x12;->z:Lyads/tc1;

    if-eqz p2, :cond_5

    invoke-virtual {p0, p1, v2, p2}, Lyads/d22;->a(Lyads/s22;Lyads/fs2;Lyads/tc1;)V

    sget-object v5, Lj59;->a:Lj59;

    :cond_5
    if-nez v5, :cond_6

    .line 278
    iget-object p2, p3, Lyads/x12;->C:Lyads/tc1;

    invoke-virtual {p0, p1, v2, p2}, Lyads/d22;->a(Lyads/s22;Lyads/fs2;Lyads/tc1;)V

    .line 279
    :cond_6
    iget-object p2, p3, Lyads/x12;->A:Lyads/w12;

    invoke-virtual {p0, p1, v2, p2}, Lyads/d22;->a(Lyads/s22;Lyads/fs2;Lyads/w12;)V

    .line 280
    :goto_4
    iget-object p2, p3, Lyads/x12;->I:Lyads/tc1;

    invoke-virtual {p0, p1, v0, p2}, Lyads/d22;->e(Lyads/s22;Lyads/fs2;Lyads/tc1;)V

    .line 281
    iget-object p2, p3, Lyads/x12;->J:Lyads/tc1;

    invoke-virtual {p0, p1, v0, p2}, Lyads/d22;->f(Lyads/s22;Lyads/fs2;Lyads/tc1;)V

    .line 282
    iget-object p2, p3, Lyads/x12;->F:Lyads/tc1;

    invoke-virtual {p0, p1, v0, p2}, Lyads/d22;->c(Lyads/s22;Lyads/fs2;Lyads/tc1;)V

    .line 283
    iget-object p2, p3, Lyads/x12;->G:Lyads/tc1;

    invoke-virtual {p0, p1, v0, p2}, Lyads/d22;->d(Lyads/s22;Lyads/fs2;Lyads/tc1;)V

    .line 284
    invoke-static {p1, p3, v0}, Lyads/d22;->a(Lyads/s22;Lyads/x12;Lyads/fs2;)V

    return-void
.end method

.method public final b(Lyads/s22;Lyads/fs2;Lyads/tc1;)V
    .locals 7

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p3, v0, p2}, Lyads/jf2;->a(Lyads/tc1;Landroid/util/DisplayMetrics;Lyads/fs2;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lyads/kn5;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    new-instance v1, Lyr8;

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lyr8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v3, v5, v4, v1}, Lyads/js2;->a(Lyads/hs2;Lyads/tc1;Lyads/fs2;Lnl3;)V

    return-void
.end method

.method public final b(Lyads/s22;Lyads/fs2;Lyads/w12;)V
    .locals 3

    if-eqz p3, :cond_0

    new-instance v0, Lyads/cw5;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget-object v2, p0, Lyads/d22;->b:Lyads/ef2;

    invoke-static {p3, v1, v2, p2}, Lyads/y12;->a(Lyads/w12;Landroid/util/DisplayMetrics;Lyads/ef2;Lyads/fs2;)Lyads/dn5;

    move-result-object v1

    invoke-direct {v0, v1}, Lyads/cw5;-><init>(Lyads/dn5;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lyads/kn5;->setThumbTextDrawable(Lyads/cw5;)V

    if-nez p3, :cond_1

    return-void

    :cond_1
    iget-object v0, p3, Lyads/w12;->i:Lyads/as2;

    new-instance v1, Lws9;

    invoke-direct {v1, p0, p1, p2, p3}, Lws9;-><init>(Lyads/d22;Lyads/s22;Lyads/fs2;Lyads/w12;)V

    invoke-virtual {v0, p2, v1}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    iget-object p1, p1, Lyads/s22;->I:Lyads/xh1;

    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final c(Lyads/s22;Lyads/fs2;Lyads/tc1;)V
    .locals 1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p3, v0, p2}, Lyads/jf2;->a(Lyads/tc1;Landroid/util/DisplayMetrics;Lyads/fs2;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lyads/kn5;->setActiveTickMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lss9;

    invoke-direct {v0, p0, p1, p2, p3}, Lss9;-><init>(Lyads/d22;Lyads/s22;Lyads/fs2;Lyads/tc1;)V

    invoke-static {p1, p3, p2, v0}, Lyads/js2;->a(Lyads/hs2;Lyads/tc1;Lyads/fs2;Lnl3;)V

    return-void
.end method

.method public final d(Lyads/s22;Lyads/fs2;Lyads/tc1;)V
    .locals 7

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p3, v0, p2}, Lyads/jf2;->a(Lyads/tc1;Landroid/util/DisplayMetrics;Lyads/fs2;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lyads/kn5;->setInactiveTickMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lxs9;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lxs9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v3, v5, v4, v1}, Lyads/js2;->a(Lyads/hs2;Lyads/tc1;Lyads/fs2;Lnl3;)V

    return-void
.end method

.method public final e(Lyads/s22;Lyads/fs2;Lyads/tc1;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p3, v0, p2}, Lyads/jf2;->a(Lyads/tc1;Landroid/util/DisplayMetrics;Lyads/fs2;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lyads/kn5;->setActiveTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lvs9;

    invoke-direct {v0, p0, p1, p2, p3}, Lvs9;-><init>(Lyads/d22;Lyads/s22;Lyads/fs2;Lyads/tc1;)V

    invoke-static {p1, p3, p2, v0}, Lyads/js2;->a(Lyads/hs2;Lyads/tc1;Lyads/fs2;Lnl3;)V

    return-void
.end method

.method public final f(Lyads/s22;Lyads/fs2;Lyads/tc1;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p3, v0, p2}, Lyads/jf2;->a(Lyads/tc1;Landroid/util/DisplayMetrics;Lyads/fs2;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lyads/kn5;->setInactiveTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lys9;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lys9;-><init>(Lyads/oh2;Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v3, v5, v4, v1}, Lyads/js2;->a(Lyads/hs2;Lyads/tc1;Lyads/fs2;Lnl3;)V

    return-void
.end method
