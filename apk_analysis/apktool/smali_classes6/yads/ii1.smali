.class public final Lyads/ii1;
.super Lyads/oh2;
.source "SourceFile"


# instance fields
.field public final b:Lyads/oi1;

.field public final c:Lyads/jv1;

.field public final d:Lyads/bo2;


# direct methods
.method public constructor <init>(Lyads/v41;Lyads/oi1;Lyads/jv1;Lyads/bo2;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/oh2;-><init>(Lyads/v41;)V

    iput-object p2, p0, Lyads/ii1;->b:Lyads/oi1;

    iput-object p3, p0, Lyads/ii1;->c:Lyads/jv1;

    iput-object p4, p0, Lyads/ii1;->d:Lyads/bo2;

    return-void
.end method

.method public static final a(Lyads/ii1;Lyads/yi1;Lyads/tt;Lyads/zh1;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 318
    iget-object p3, p3, Lyads/zh1;->t:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3}, Lyads/ii1;->a(Lyads/yi1;Lyads/tt;Ljava/util/List;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/ii1;Lyads/yi1;Lyads/tt;Lyads/zh1;Lyads/ao2;Landroid/net/Uri;)Lj59;
    .locals 0

    .line 355
    invoke-virtual {p0, p1, p2, p3, p4}, Lyads/ii1;->a(Lyads/yi1;Lyads/tt;Lyads/zh1;Lyads/ao2;)Z

    .line 356
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/ii1;Lyads/yi1;Lyads/vi1;)Lj59;
    .locals 0

    .line 276
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    invoke-static {p2}, Lyads/jf2;->a(Lyads/vi1;)Lyads/qj;

    move-result-object p0

    invoke-virtual {p1, p0}, Lyads/sj;->setImageScale(Lyads/qj;)V

    .line 278
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/ii1;Lyads/yi1;Lyads/zh1;Lyads/fs2;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 294
    iget-object p4, p2, Lyads/zh1;->o:Lyads/as2;

    invoke-virtual {p4, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lyads/f11;

    .line 295
    iget-object p2, p2, Lyads/zh1;->p:Lyads/as2;

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/h11;

    .line 296
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    invoke-static {p4, p2}, Lyads/jf2;->a(Lyads/f11;Lyads/h11;)I

    move-result p0

    invoke-virtual {p1, p0}, Lyads/sj;->setGravity(I)V

    .line 298
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/yi1;Landroid/graphics/Bitmap;)Lj59;
    .locals 0

    .line 319
    invoke-virtual {p0, p1}, Lyads/iu3;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 320
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/yi1;Landroid/graphics/drawable/Drawable;)Lj59;
    .locals 1

    .line 326
    invoke-virtual {p0}, Lyads/iu3;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lyads/iu3;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    invoke-virtual {p0, p1}, Lyads/iu3;->setPlaceholder(Landroid/graphics/drawable/Drawable;)V

    .line 328
    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/yi1;Lyads/ii1;Lyads/tt;Lyads/zh1;Lyads/fs2;Lyads/ao2;Ljava/lang/Object;)Lj59;
    .locals 6

    .line 321
    invoke-virtual {p0}, Lyads/iu3;->l()Z

    move-result p6

    if-eqz p6, :cond_0

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    .line 322
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    invoke-virtual {p0}, Lyads/iu3;->l()Z

    move-result p6

    if-nez p6, :cond_1

    iget-object p6, p3, Lyads/zh1;->x:Lyads/as2;

    invoke-virtual {p6, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p4, 0x1

    :goto_0
    move-object v1, p0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    goto :goto_0

    .line 324
    :goto_1
    invoke-virtual/range {v0 .. v5}, Lyads/ii1;->a(Lyads/yi1;Lyads/tt;Lyads/zh1;ZLyads/ao2;)V

    .line 325
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/yi1;Lyads/ii1;Lyads/tt;Lyads/zh1;Lyads/fs2;Lyads/hd3;)Lj59;
    .locals 1

    .line 329
    invoke-virtual {p0}, Lyads/iu3;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    instance-of v0, p5, Lyads/gd3;

    if-eqz v0, :cond_1

    .line 331
    check-cast p5, Lyads/gd3;

    .line 332
    iget-object p5, p5, Lyads/gd3;->a:Landroid/graphics/Bitmap;

    .line 333
    invoke-virtual {p0, p5}, Lyads/iu3;->setCurrentBitmapWithoutFilters$mobileads_externalRelease(Landroid/graphics/Bitmap;)V

    .line 334
    iget-object p5, p3, Lyads/zh1;->t:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p2, p5}, Lyads/ii1;->a(Lyads/yi1;Lyads/tt;Ljava/util/List;)V

    .line 335
    invoke-virtual {p0}, Lyads/iu3;->n()V

    .line 336
    iget-object p1, p3, Lyads/zh1;->P:Lyads/as2;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p3, Lyads/zh1;->Q:Lyads/as2;

    invoke-virtual {p2, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/y41;

    invoke-static {p0, p1, p2}, Lyads/ii1;->a(Lyads/iu3;Ljava/lang/Integer;Lyads/y41;)V

    .line 337
    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/ii1;Lyads/yi1;Lyads/zh1;Lyads/fs2;Lyads/hu;)V
    .locals 4

    .line 232
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 234
    iget-object p0, p2, Lyads/zh1;->i:Lyads/od1;

    .line 235
    iget-object p2, p2, Lyads/zh1;->g:Lyads/as2;

    .line 236
    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    double-to-float p2, v0

    if-eqz p0, :cond_1

    .line 237
    sget-object v0, Lyads/hu;->c:Lyads/hu;

    if-ne p4, v0, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    iget-object p4, p0, Lyads/od1;->b:Lyads/as2;

    .line 239
    invoke-virtual {p4, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 240
    iget-object p4, p0, Lyads/od1;->c:Lyads/as2;

    .line 241
    invoke-virtual {p4, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lyads/o11;

    invoke-static {p4}, Lyads/jf2;->a(Lyads/o11;)Landroid/view/animation/Interpolator;

    move-result-object p4

    .line 242
    iget-object v2, p0, Lyads/od1;->a:Lyads/as2;

    invoke-virtual {v2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 243
    iget-object p0, p0, Lyads/od1;->d:Lyads/as2;

    .line 244
    invoke-virtual {p0, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 246
    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 247
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 248
    invoke-virtual {p0, p4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 249
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    return-void

    .line 250
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static a(Lyads/iu3;Ljava/lang/Integer;Lyads/y41;)V
    .locals 1

    .line 357
    invoke-virtual {p0}, Lyads/iu3;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lyads/iu3;->m()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    if-eqz p1, :cond_7

    .line 358
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 359
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_6

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 360
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_1
    invoke-static {}, Lme0;->e()V

    return-void

    .line 361
    :cond_2
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 362
    :cond_3
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 363
    :cond_4
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 364
    :cond_5
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 365
    :cond_6
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 366
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void

    :cond_7
    const/4 p1, 0x0

    .line 367
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public static a(Lyads/yi1;Lyads/tt;Ljava/util/List;)V
    .locals 3

    .line 228
    iget-object v0, p0, Lyads/iu3;->g:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 229
    invoke-virtual {p0, p1}, Lyads/iu3;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 230
    :cond_0
    new-instance v1, Llr8;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Llr8;-><init>(Ljava/lang/Object;I)V

    .line 231
    invoke-static {p0, p1, v0, p2, v1}, Lyads/tq;->a(Landroid/view/View;Lyads/tt;Landroid/graphics/Bitmap;Ljava/util/List;Lnl3;)V

    return-void
.end method

.method public static final b(Lyads/ii1;Lyads/yi1;Lyads/zh1;Lyads/fs2;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 60
    iget-object p4, p2, Lyads/zh1;->P:Lyads/as2;

    if-eqz p4, :cond_0

    invoke-virtual {p4, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    iget-object p2, p2, Lyads/zh1;->Q:Lyads/as2;

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/y41;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p4, p2}, Lyads/ii1;->a(Lyads/iu3;Ljava/lang/Integer;Lyads/y41;)V

    .line 61
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/View;Lyads/tt;Lyads/p41;Lyads/p41;)V
    .locals 15

    .line 251
    move-object/from16 v0, p1

    check-cast v0, Lyads/yi1;

    move-object/from16 v12, p3

    check-cast v12, Lyads/zh1;

    move-object/from16 v13, p4

    check-cast v13, Lyads/zh1;

    .line 252
    iget-object v2, v12, Lyads/zh1;->b:Lyads/xr0;

    .line 253
    iget-object v3, v12, Lyads/zh1;->d:Ljava/util/List;

    .line 254
    iget-object v4, v12, Lyads/zh1;->D:Ljava/util/List;

    .line 255
    iget-object v5, v12, Lyads/zh1;->r:Ljava/util/List;

    .line 256
    iget-object v6, v12, Lyads/zh1;->z:Ljava/util/List;

    .line 257
    iget-object v7, v12, Lyads/zh1;->y:Ljava/util/List;

    .line 258
    iget-object v8, v12, Lyads/zh1;->J:Ljava/util/List;

    .line 259
    iget-object v9, v12, Lyads/zh1;->I:Ljava/util/List;

    .line 260
    iget-object v10, v12, Lyads/zh1;->c:Lyads/k11;

    .line 261
    iget-object v11, v12, Lyads/zh1;->m:Lyads/as2;

    move-object/from16 v1, p2

    .line 262
    invoke-static/range {v0 .. v11}, Lyads/pq;->a(Landroid/view/View;Lyads/tt;Lyads/xr0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyads/k11;Lyads/as2;)V

    .line 263
    iget-object v2, v1, Lyads/tt;->a:Lyads/vq0;

    .line 264
    iget-object v6, v1, Lyads/tt;->b:Lyads/fs2;

    .line 265
    iget-object v3, p0, Lyads/ii1;->d:Lyads/bo2;

    .line 266
    iget-object v4, v2, Lyads/vq0;->O:Lyads/qb1;

    .line 267
    iget-object v2, v2, Lyads/vq0;->Q:Lyads/db1;

    .line 268
    invoke-virtual {v3, v2, v4}, Lyads/bo2;->a(Lyads/db1;Lyads/qb1;)Lyads/ao2;

    move-result-object v5

    .line 269
    iget-object v2, v12, Lyads/zh1;->j:Lyads/b31;

    if-eqz v13, :cond_0

    iget-object v3, v13, Lyads/zh1;->j:Lyads/b31;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 270
    :goto_0
    invoke-static {v0, v2, v3, v6}, Lyads/tq;->a(Landroid/view/View;Lyads/b31;Lyads/b31;Lyads/fs2;)V

    .line 271
    invoke-virtual {p0, v0, v12, v13, v6}, Lyads/ii1;->b(Lyads/yi1;Lyads/zh1;Lyads/zh1;Lyads/fs2;)V

    .line 272
    invoke-virtual {p0, v0, v12, v13, v6}, Lyads/ii1;->a(Lyads/yi1;Lyads/zh1;Lyads/zh1;Lyads/fs2;)V

    move-object v2, v1

    move-object v3, v12

    move-object v4, v13

    move-object v1, v0

    move-object v0, p0

    .line 273
    invoke-virtual/range {v0 .. v5}, Lyads/ii1;->a(Lyads/yi1;Lyads/tt;Lyads/zh1;Lyads/zh1;Lyads/ao2;)V

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    .line 274
    invoke-virtual {p0, v2, v3, v4, v6}, Lyads/ii1;->c(Lyads/yi1;Lyads/zh1;Lyads/zh1;Lyads/fs2;)V

    .line 275
    invoke-virtual {p0, v2, v1, v3, v4}, Lyads/ii1;->a(Lyads/yi1;Lyads/tt;Lyads/zh1;Lyads/zh1;)V

    return-void
.end method

.method public final a(Lyads/yi1;Lyads/tt;Lyads/zh1;Lyads/zh1;)V
    .locals 8

    iget-object v0, p3, Lyads/zh1;->t:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p4, :cond_1

    iget-object v2, p4, Lyads/zh1;->t:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-static {v0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p3, Lyads/zh1;->t:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v2

    move v4, v3

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-ltz v5, :cond_4

    check-cast v6, Lyads/wd1;

    if-eqz v4, :cond_3

    if-eqz p4, :cond_2

    iget-object v4, p4, Lyads/zh1;->t:Ljava/util/List;

    if-eqz v4, :cond_2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/wd1;

    goto :goto_3

    :cond_2
    move-object v4, v1

    :goto_3
    invoke-static {v6, v4}, Lyads/gb1;->a(Lyads/wd1;Lyads/wd1;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_4

    :cond_3
    move v4, v2

    :goto_4
    move v5, v7

    goto :goto_2

    :cond_4
    invoke-static {}, Lu96;->o()V

    throw v1

    :cond_5
    move v4, v3

    :cond_6
    if-eqz v4, :cond_7

    goto/16 :goto_a

    :cond_7
    iget-object p4, p3, Lyads/zh1;->t:Ljava/util/List;

    invoke-static {p1, p2, p4}, Lyads/ii1;->a(Lyads/yi1;Lyads/tt;Ljava/util/List;)V

    iget-object p4, p3, Lyads/zh1;->t:Ljava/util/List;

    if-eqz p4, :cond_e

    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_7

    :cond_8
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_9
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/wd1;

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    instance-of v1, v0, Lyads/vd1;

    if-eqz v1, :cond_b

    :goto_5
    move v0, v3

    goto :goto_6

    :cond_b
    instance-of v1, v0, Lyads/ud1;

    if-eqz v1, :cond_c

    check-cast v0, Lyads/ud1;

    iget-object v0, v0, Lyads/ud1;->a:Lyads/z41;

    iget-object v0, v0, Lyads/z41;->a:Lyads/as2;

    instance-of v0, v0, Lyads/xr2;

    :goto_6
    if-nez v0, :cond_9

    goto :goto_8

    :cond_c
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_d
    :goto_7
    move v2, v3

    :goto_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_e
    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, p4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_f

    goto :goto_a

    :cond_f
    new-instance p4, Ldz9;

    invoke-direct {p4, p0, p1, p2, p3}, Ldz9;-><init>(Lyads/ii1;Lyads/yi1;Lyads/tt;Lyads/zh1;)V

    iget-object p0, p3, Lyads/zh1;->t:Ljava/util/List;

    if-eqz p0, :cond_11

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/wd1;

    instance-of v0, p3, Lyads/ud1;

    if-eqz v0, :cond_10

    check-cast p3, Lyads/ud1;

    iget-object p3, p3, Lyads/ud1;->a:Lyads/z41;

    iget-object p3, p3, Lyads/z41;->a:Lyads/as2;

    iget-object v0, p2, Lyads/tt;->b:Lyads/fs2;

    invoke-virtual {p3, v0, p4}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p3

    iget-object v0, p1, Lyads/yi1;->m:Lyads/xh1;

    invoke-interface {v0, p3}, Lyads/hs2;->a(Lyads/tp0;)V

    goto :goto_9

    :cond_11
    :goto_a
    return-void
.end method

.method public final a(Lyads/yi1;Lyads/tt;Lyads/zh1;Lyads/zh1;Lyads/ao2;)V
    .locals 10

    move-object v5, p5

    .line 338
    iget-object v0, p3, Lyads/zh1;->B:Lyads/as2;

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    iget-object v2, p4, Lyads/zh1;->B:Lyads/as2;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v0

    .line 339
    iget-object v2, p3, Lyads/zh1;->K:Lyads/as2;

    if-eqz p4, :cond_1

    iget-object v3, p4, Lyads/zh1;->K:Lyads/as2;

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-static {v2, v3}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    .line 340
    iget-object v2, p3, Lyads/zh1;->G:Lyads/as2;

    if-eqz p4, :cond_2

    iget-object v1, p4, Lyads/zh1;->G:Lyads/as2;

    :cond_2
    invoke-static {v2, v1}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p4

    if-nez p4, :cond_3

    goto :goto_2

    :cond_3
    move p4, v7

    goto :goto_3

    :cond_4
    :goto_2
    move p4, v6

    .line 341
    :goto_3
    iget-object v1, p3, Lyads/zh1;->K:Lyads/as2;

    invoke-static {v1}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 342
    iget-object v1, p3, Lyads/zh1;->G:Lyads/as2;

    .line 343
    instance-of v1, v1, Lyads/xr2;

    if-eqz v1, :cond_5

    move v1, v6

    goto :goto_4

    :cond_5
    move v1, v7

    .line 344
    :goto_4
    invoke-virtual {p1}, Lyads/iu3;->l()Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz p4, :cond_6

    move p4, v6

    goto :goto_5

    :cond_6
    move p4, v7

    :goto_5
    if-eqz p4, :cond_7

    if-nez v1, :cond_7

    .line 345
    invoke-virtual {p0, p1, p2, p3, p5}, Lyads/ii1;->b(Lyads/yi1;Lyads/tt;Lyads/zh1;Lyads/ao2;)V

    :cond_7
    if-nez v0, :cond_8

    .line 346
    iget-object v0, p3, Lyads/zh1;->B:Lyads/as2;

    invoke-static {v0}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 347
    iget-object v8, p3, Lyads/zh1;->B:Lyads/as2;

    .line 348
    iget-object v9, p2, Lyads/tt;->b:Lyads/fs2;

    .line 349
    new-instance v0, Lbz9;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lbz9;-><init>(Lyads/ii1;Lyads/yi1;Lyads/tt;Lyads/zh1;Lyads/ao2;)V

    move-object v4, v0

    invoke-virtual {v8, v9, v4}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v4

    .line 350
    iget-object v8, p1, Lyads/yi1;->m:Lyads/xh1;

    invoke-interface {v8, v4}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 351
    :cond_8
    invoke-virtual {p0, p1, p2, p3, p5}, Lyads/ii1;->a(Lyads/yi1;Lyads/tt;Lyads/zh1;Lyads/ao2;)Z

    move-result v4

    if-nez v4, :cond_a

    if-eqz p4, :cond_a

    .line 352
    iget-object p4, p2, Lyads/tt;->b:Lyads/fs2;

    .line 353
    invoke-virtual {p1}, Lyads/iu3;->l()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p3, Lyads/zh1;->x:Lyads/as2;

    invoke-virtual {v4, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_9

    move v4, v6

    :goto_6
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    goto :goto_7

    :cond_9
    move v4, v7

    goto :goto_6

    .line 354
    :goto_7
    invoke-virtual/range {v0 .. v5}, Lyads/ii1;->a(Lyads/yi1;Lyads/tt;Lyads/zh1;ZLyads/ao2;)V

    :cond_a
    return-void
.end method

.method public final a(Lyads/yi1;Lyads/tt;Lyads/zh1;ZLyads/ao2;)V
    .locals 14

    move-object/from16 v4, p3

    move-object/from16 v3, p2

    .line 223
    iget-object v5, v3, Lyads/tt;->b:Lyads/fs2;

    .line 224
    iget-object v6, p0, Lyads/ii1;->c:Lyads/jv1;

    .line 225
    iget-object v0, v4, Lyads/zh1;->K:Lyads/as2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    move-object v9, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 226
    :goto_1
    iget-object v0, v4, Lyads/zh1;->G:Lyads/as2;

    invoke-virtual {v0, v5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 227
    new-instance v12, Lv00;

    const/4 v0, 0x5

    invoke-direct {v12, p1, v0}, Lv00;-><init>(Ljava/lang/Object;I)V

    new-instance v13, Lfz9;

    move-object v2, p0

    move-object v1, p1

    move-object v0, v13

    invoke-direct/range {v0 .. v5}, Lfz9;-><init>(Lyads/yi1;Lyads/ii1;Lyads/tt;Lyads/zh1;Lyads/fs2;)V

    move/from16 v11, p4

    move-object/from16 v8, p5

    move-object v7, v1

    invoke-virtual/range {v6 .. v13}, Lyads/jv1;->a(Lyads/iu3;Lyads/ao2;Ljava/lang/String;IZLnl3;Lnl3;)V

    return-void
.end method

.method public final a(Lyads/yi1;Lyads/zh1;Lyads/zh1;Lyads/fs2;)V
    .locals 3

    .line 279
    iget-object v0, p2, Lyads/zh1;->o:Lyads/as2;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object v2, p3, Lyads/zh1;->o:Lyads/as2;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p2, Lyads/zh1;->p:Lyads/as2;

    if-eqz p3, :cond_1

    iget-object v1, p3, Lyads/zh1;->p:Lyads/as2;

    :cond_1
    invoke-static {v0, v1}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 281
    :cond_2
    iget-object p3, p2, Lyads/zh1;->o:Lyads/as2;

    invoke-virtual {p3, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/f11;

    .line 282
    iget-object v0, p2, Lyads/zh1;->p:Lyads/as2;

    invoke-virtual {v0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/h11;

    .line 283
    invoke-static {p3, v0}, Lyads/jf2;->a(Lyads/f11;Lyads/h11;)I

    move-result p3

    invoke-virtual {p1, p3}, Lyads/sj;->setGravity(I)V

    .line 284
    iget-object p3, p2, Lyads/zh1;->o:Lyads/as2;

    .line 285
    instance-of v0, p3, Lyads/xr2;

    if-eqz v0, :cond_3

    .line 286
    iget-object v0, p2, Lyads/zh1;->p:Lyads/as2;

    .line 287
    instance-of v0, v0, Lyads/xr2;

    if-eqz v0, :cond_3

    :goto_1
    return-void

    .line 288
    :cond_3
    new-instance v0, Laz9;

    invoke-direct {v0, p0, p1, p2, p4}, Laz9;-><init>(Lyads/ii1;Lyads/yi1;Lyads/zh1;Lyads/fs2;)V

    .line 289
    invoke-virtual {p3, p4, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    .line 290
    iget-object p3, p1, Lyads/yi1;->m:Lyads/xh1;

    .line 291
    invoke-interface {p3, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 292
    iget-object p0, p2, Lyads/zh1;->p:Lyads/as2;

    invoke-virtual {p0, p4, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    .line 293
    iget-object p1, p1, Lyads/yi1;->m:Lyads/xh1;

    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final a(Lyads/yi1;Lyads/tt;Lyads/zh1;Lyads/ao2;)Z
    .locals 10

    .line 299
    iget-object v6, p2, Lyads/tt;->b:Lyads/fs2;

    .line 300
    iget-object v0, p3, Lyads/zh1;->B:Lyads/as2;

    invoke-virtual {v0, v6}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/net/Uri;

    .line 301
    iget-object v0, p1, Lyads/yi1;->n:Landroid/net/Uri;

    .line 302
    invoke-static {v7, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    return v4

    .line 303
    :cond_0
    invoke-virtual {p1}, Lyads/iu3;->l()Z

    move-result v0

    const/4 v8, 0x1

    if-nez v0, :cond_1

    iget-object v0, p3, Lyads/zh1;->x:Lyads/as2;

    invoke-virtual {v0, v6}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v4, v8

    .line 304
    :cond_1
    invoke-virtual {p1}, Lyads/iu3;->o()V

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 306
    iget-object v0, p1, Lyads/iu3;->h:Lyads/du3;

    if-eqz v0, :cond_2

    .line 307
    invoke-interface {v0}, Lyads/du3;->cancel()V

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 308
    invoke-virtual/range {v0 .. v5}, Lyads/ii1;->a(Lyads/yi1;Lyads/tt;Lyads/zh1;ZLyads/ao2;)V

    .line 309
    invoke-virtual {p1, v7}, Lyads/yi1;->setImageUrl$mobileads_externalRelease(Landroid/net/Uri;)V

    .line 310
    iget-object v9, p0, Lyads/ii1;->b:Lyads/oi1;

    .line 311
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v6

    .line 312
    iget-object v6, p2, Lyads/tt;->a:Lyads/vq0;

    .line 313
    new-instance v0, Lyads/hi1;

    move-object v2, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lyads/hi1;-><init>(Lyads/yi1;Lyads/ii1;Lyads/tt;Lyads/zh1;Lyads/fs2;Lyads/vq0;)V

    .line 314
    invoke-interface {v9, v7, v0}, Lyads/oi1;->b(Ljava/lang/String;Lyads/ji1;)Lyads/du3;

    move-result-object v0

    .line 315
    iget-object v2, p2, Lyads/tt;->a:Lyads/vq0;

    .line 316
    invoke-virtual {v2, v0}, Lyads/vq0;->a(Lyads/du3;)V

    .line 317
    invoke-virtual {p1, v0}, Lyads/iu3;->setLoadReference$mobileads_externalRelease(Lyads/du3;)V

    return v8
.end method

.method public final b(Lyads/yi1;Lyads/tt;Lyads/zh1;Lyads/ao2;)V
    .locals 7

    .line 53
    iget-object v5, p2, Lyads/tt;->b:Lyads/fs2;

    .line 54
    new-instance v0, Lez9;

    move-object v2, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lez9;-><init>(Lyads/yi1;Lyads/ii1;Lyads/tt;Lyads/zh1;Lyads/fs2;Lyads/ao2;)V

    .line 55
    iget-object p0, v4, Lyads/zh1;->K:Lyads/as2;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v5, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 56
    :goto_0
    iget-object p1, v1, Lyads/yi1;->m:Lyads/xh1;

    .line 57
    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 58
    iget-object p0, v4, Lyads/zh1;->G:Lyads/as2;

    invoke-virtual {p0, v5, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    .line 59
    iget-object p1, v1, Lyads/yi1;->m:Lyads/xh1;

    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final b(Lyads/yi1;Lyads/zh1;Lyads/zh1;Lyads/fs2;)V
    .locals 1

    iget-object v0, p2, Lyads/zh1;->N:Lyads/as2;

    if-eqz p3, :cond_0

    iget-object p3, p3, Lyads/zh1;->N:Lyads/as2;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {v0, p3}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    iget-object p3, p2, Lyads/zh1;->N:Lyads/as2;

    invoke-virtual {p3, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/vi1;

    invoke-static {p3}, Lyads/jf2;->a(Lyads/vi1;)Lyads/qj;

    move-result-object p3

    invoke-virtual {p1, p3}, Lyads/sj;->setImageScale(Lyads/qj;)V

    iget-object p2, p2, Lyads/zh1;->N:Lyads/as2;

    instance-of p3, p2, Lyads/xr2;

    if-eqz p3, :cond_2

    :goto_1
    return-void

    :cond_2
    new-instance p3, Lzk9;

    const/4 v0, 0x1

    invoke-direct {p3, v0, p0, p1}, Lzk9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p4, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    iget-object p1, p1, Lyads/yi1;->m:Lyads/xh1;

    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final c(Lyads/yi1;Lyads/zh1;Lyads/zh1;Lyads/fs2;)V
    .locals 3

    iget-object v0, p2, Lyads/zh1;->P:Lyads/as2;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object v2, p3, Lyads/zh1;->P:Lyads/as2;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lyads/zh1;->Q:Lyads/as2;

    if-eqz p3, :cond_1

    iget-object p3, p3, Lyads/zh1;->Q:Lyads/as2;

    goto :goto_1

    :cond_1
    move-object p3, v1

    :goto_1
    invoke-static {v0, p3}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_3

    :cond_2
    iget-object p3, p2, Lyads/zh1;->P:Lyads/as2;

    if-eqz p3, :cond_3

    invoke-virtual {p3, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    goto :goto_2

    :cond_3
    move-object p3, v1

    :goto_2
    iget-object v0, p2, Lyads/zh1;->Q:Lyads/as2;

    invoke-virtual {v0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/y41;

    invoke-static {p1, p3, v0}, Lyads/ii1;->a(Lyads/iu3;Ljava/lang/Integer;Lyads/y41;)V

    iget-object p3, p2, Lyads/zh1;->P:Lyads/as2;

    invoke-static {p3}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p2, Lyads/zh1;->Q:Lyads/as2;

    instance-of p3, p3, Lyads/xr2;

    if-eqz p3, :cond_4

    :goto_3
    return-void

    :cond_4
    new-instance p3, Lcz9;

    invoke-direct {p3, p0, p1, p2, p4}, Lcz9;-><init>(Lyads/ii1;Lyads/yi1;Lyads/zh1;Lyads/fs2;)V

    iget-object p0, p2, Lyads/zh1;->P:Lyads/as2;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p4, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    :cond_5
    iget-object p0, p1, Lyads/yi1;->m:Lyads/xh1;

    invoke-interface {p0, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p0, p2, Lyads/zh1;->Q:Lyads/as2;

    invoke-virtual {p0, p4, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    iget-object p1, p1, Lyads/yi1;->m:Lyads/xh1;

    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method
