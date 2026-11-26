.class public final Lyads/fo2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tp0;


# instance fields
.field public final b:Lyads/vq0;

.field public final c:Lyads/do2;

.field public final d:Lyads/cf2;

.field public e:Lyads/g03;

.field public f:Lyads/vn0;

.field public g:Lyads/go2;

.field public final h:Lyads/tp0;


# direct methods
.method public constructor <init>(Lyads/vq0;Lyads/do2;Lyads/cf2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/fo2;->b:Lyads/vq0;

    iput-object p2, p0, Lyads/fo2;->c:Lyads/do2;

    iput-object p3, p0, Lyads/fo2;->d:Lyads/cf2;

    new-instance p1, Lav5;

    const/4 p3, 0x3

    invoke-direct {p1, p0, p3}, Lav5;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p1}, Lyads/do2;->a(Lnl3;)Lyads/tp0;

    move-result-object p1

    iput-object p1, p0, Lyads/fo2;->h:Lyads/tp0;

    return-void
.end method

.method public static final a(Lyads/fo2;)Lj59;
    .locals 7

    .line 487
    iget-object p0, p0, Lyads/fo2;->c:Lyads/do2;

    .line 488
    iget-object v0, p0, Lyads/do2;->h:Lyads/go2;

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 489
    invoke-static/range {v0 .. v6}, Lyads/go2;->a(Lyads/go2;ZIILjava/lang/String;Ljava/lang/String;I)Lyads/go2;

    move-result-object v0

    .line 490
    iput-object v0, p0, Lyads/do2;->h:Lyads/go2;

    .line 491
    iget-object p0, p0, Lyads/do2;->c:Ljava/util/LinkedHashSet;

    .line 492
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnl3;

    .line 493
    invoke-interface {v1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 494
    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/fo2;Lyads/go2;)Lj59;
    .locals 8

    iget-object v0, p0, Lyads/fo2;->g:Lyads/go2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, v0, Lyads/go2;->a:Z

    iget-boolean v2, p1, Lyads/go2;->a:Z

    if-eq v0, v2, :cond_3

    :cond_0
    iget-object v0, p0, Lyads/fo2;->e:Lyads/g03;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lyads/fo2;->b:Lyads/vq0;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object v1, p0, Lyads/fo2;->e:Lyads/g03;

    iget-object v0, p0, Lyads/fo2;->f:Lyads/vn0;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lyads/fo2;->b:Lyads/vq0;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iput-object v1, p0, Lyads/fo2;->f:Lyads/vn0;

    :cond_3
    if-nez p1, :cond_4

    goto/16 :goto_9

    :cond_4
    iget-boolean v0, p1, Lyads/go2;->a:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lyads/fo2;->c()V

    iget-object v0, p0, Lyads/fo2;->f:Lyads/vn0;

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lyads/go2;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lyads/vn0;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lyads/fo2;->f:Lyads/vn0;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lyads/fo2;->c:Lyads/do2;

    iget-object v1, v1, Lyads/do2;->b:Lyads/vq0;

    iget-object v1, v1, Lyads/vq0;->z:Lyads/ub5;

    invoke-interface {v1}, Lyads/ub5;->c()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v1}, Lyads/ub5;->a()Lyads/ms2;

    move-result-object v1

    iget-object v1, v1, Lyads/ms2;->a:Lyads/gs2;

    iget-object v1, v1, Lyads/gs2;->d:Lyads/z66;

    const-string v4, ""

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/ms2;

    iget-object v2, v2, Lyads/ms2;->a:Lyads/gs2;

    iget-object v2, v2, Lyads/gs2;->d:Lyads/z66;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    iget-object v0, v0, Lyads/vn0;->c:Lyads/g76;

    iget-object v1, v0, Lyads/g76;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_9

    :cond_7
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v1, v0, Lyads/g76;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    iput-object v3, v0, Lyads/g76;->d:Ljava/util/Map;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/z66;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_a
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/z66;

    invoke-interface {v2}, Lyads/z66;->b()Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/u66;

    invoke-virtual {v6}, Lyads/u66;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    invoke-virtual {v0, v3}, Lyads/g76;->a(Ljava/lang/String;)Lnl3;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Lyads/z66;->a(Ljava/util/ArrayList;Lnl3;)Lyads/tp0;

    goto :goto_3

    :cond_c
    iget-object v1, v0, Lyads/g76;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v1, v0, Lyads/g76;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/z66;

    invoke-interface {v2}, Lyads/z66;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/u66;

    iget-object v5, v0, Lyads/g76;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Lyads/u66;->a()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lb36;

    invoke-direct {v7, v3, v6}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_e
    invoke-virtual {v0}, Lyads/g76;->a()V

    goto :goto_9

    :cond_f
    invoke-virtual {p1}, Lyads/go2;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    invoke-virtual {p0}, Lyads/fo2;->a()V

    goto :goto_6

    :cond_10
    iget-object v0, p0, Lyads/fo2;->e:Lyads/g03;

    if-eqz v0, :cond_11

    iget-object v2, p0, Lyads/fo2;->b:Lyads/vq0;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_11
    iput-object v1, p0, Lyads/fo2;->e:Lyads/g03;

    :goto_6
    iget-object v0, p0, Lyads/fo2;->e:Lyads/g03;

    if-eqz v0, :cond_12

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_7

    :cond_12
    move-object v0, v1

    :goto_7
    instance-of v2, v0, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_13

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    :cond_13
    if-eqz v1, :cond_17

    invoke-virtual {p1}, Lyads/go2;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p1, Lyads/go2;->c:I

    if-lez v0, :cond_14

    iget v2, p1, Lyads/go2;->b:I

    if-lez v2, :cond_14

    sget v0, Lcom/yandex/mobile/ads/R$drawable;->monetization_ads_divkit_warning_error_counter_background:I

    goto :goto_8

    :cond_14
    if-nez v0, :cond_15

    iget v2, p1, Lyads/go2;->b:I

    if-nez v2, :cond_15

    sget v0, Lcom/yandex/mobile/ads/R$drawable;->monetization_ads_divkit_neutral_counter_background:I

    goto :goto_8

    :cond_15
    if-lez v0, :cond_16

    sget v0, Lcom/yandex/mobile/ads/R$drawable;->monetization_ads_divkit_warning_counter_background:I

    goto :goto_8

    :cond_16
    sget v0, Lcom/yandex/mobile/ads/R$drawable;->monetization_ads_divkit_error_counter_background:I

    :goto_8
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    :cond_17
    :goto_9
    iput-object p1, p0, Lyads/fo2;->g:Lyads/go2;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/fo2;Landroid/view/View;)V
    .locals 9

    .line 518
    iget-object p1, p0, Lyads/fo2;->c:Lyads/do2;

    iget-object v0, p0, Lyads/fo2;->b:Lyads/vq0;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object p0, p0, Lyads/fo2;->b:Lyads/vq0;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    const/16 v1, 0x96

    .line 519
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 520
    iget-object v2, p1, Lyads/do2;->b:Lyads/vq0;

    .line 521
    iget-object v2, v2, Lyads/vq0;->l:Lyads/pq0;

    .line 522
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 523
    invoke-static {v1, v2}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result v1

    invoke-static {v1}, Lw65;->b(F)I

    move-result v1

    if-lt v0, v1, :cond_1

    if-ge p0, v1, :cond_0

    goto :goto_1

    .line 524
    :cond_0
    iget-object v2, p1, Lyads/do2;->h:Lyads/go2;

    const/4 v7, 0x0

    const/16 v8, 0x1e

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lyads/go2;->a(Lyads/go2;ZIILjava/lang/String;Ljava/lang/String;I)Lyads/go2;

    move-result-object p0

    .line 525
    iput-object p0, p1, Lyads/do2;->h:Lyads/go2;

    .line 526
    iget-object p1, p1, Lyads/do2;->c:Ljava/util/LinkedHashSet;

    .line 527
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnl3;

    .line 528
    invoke-interface {v0, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 529
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lyads/do2;->a()Ljava/lang/String;

    move-result-object p0

    .line 530
    invoke-virtual {p1, p0}, Lyads/do2;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 531
    invoke-static {p0}, Lyads/io2;->a(Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 532
    invoke-virtual {p1}, Lyads/do2;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lyads/do2;->a(Ljava/lang/String;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public static final b(Lyads/fo2;)Lj59;
    .locals 1

    iget-object v0, p0, Lyads/fo2;->g:Lyads/go2;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/fo2;->c:Lyads/do2;

    invoke-virtual {p0}, Lyads/do2;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyads/do2;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lyads/io2;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyads/do2;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyads/do2;->a(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 495
    iget-object v0, p0, Lyads/fo2;->e:Lyads/g03;

    if-eqz v0, :cond_0

    return-void

    .line 496
    :cond_0
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lyads/fo2;->b:Lyads/vq0;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 497
    sget v1, Lcom/yandex/mobile/ads/R$drawable;->monetization_ads_divkit_error_counter_background:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 498
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v1, -0x1000000

    .line 499
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x11

    .line 500
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 501
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yandex/mobile/ads/R$dimen;->monetization_ads_divkit_div_shadow_elevation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 502
    iget-object v1, p0, Lyads/fo2;->d:Lyads/cf2;

    invoke-interface {v1}, Lyads/cf2;->d()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 503
    new-instance v1, Ly20;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ly20;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    iget-object v1, p0, Lyads/fo2;->b:Lyads/vq0;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/16 v2, 0x18

    .line 505
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 506
    invoke-static {v2, v1}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result v2

    invoke-static {v2}, Lw65;->b(F)I

    move-result v2

    .line 507
    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/16 v2, 0x8

    .line 508
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 509
    invoke-static {v2, v1}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result v1

    invoke-static {v1}, Lw65;->b(F)I

    move-result v1

    .line 510
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 511
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 512
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 513
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 514
    new-instance v1, Lyads/g03;

    iget-object v2, p0, Lyads/fo2;->b:Lyads/vq0;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v1, v2, v6, v4, v5}, Lyads/g03;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 515
    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    iget-object v0, p0, Lyads/fo2;->b:Lyads/vq0;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 517
    iput-object v1, p0, Lyads/fo2;->e:Lyads/g03;

    return-void
.end method

.method public final c()V
    .locals 6

    iget-object v0, p0, Lyads/fo2;->f:Lyads/vn0;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lyads/vn0;

    iget-object v1, p0, Lyads/fo2;->b:Lyads/vq0;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lyads/fo2;->c:Lyads/do2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lyads/co2;

    iget-object v2, v2, Lyads/do2;->b:Lyads/vq0;

    invoke-direct {v3, v2}, Lyads/co2;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lvo1;

    const/4 v4, 0x6

    invoke-direct {v2, p0, v4}, Lvo1;-><init>(Ljava/lang/Object;I)V

    new-instance v4, Lxh2;

    const/4 v5, 0x4

    invoke-direct {v4, p0, v5}, Lxh2;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1, v3, v2, v4}, Lyads/vn0;-><init>(Landroid/content/Context;Lyads/co2;Lll3;Lll3;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lyads/fo2;->b:Lyads/vq0;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lyads/fo2;->f:Lyads/vn0;

    return-void
.end method

.method public final close()V
    .locals 6

    iget-object v0, p0, Lyads/fo2;->h:Lyads/tp0;

    instance-of v1, v0, Ljava/lang/AutoCloseable;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_1

    :cond_0
    instance-of v1, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v2, 0x0

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-interface {v0, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-nez v2, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_4
    instance-of v1, v0, Landroid/content/res/TypedArray;

    if-eqz v1, :cond_5

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_5
    instance-of v1, v0, Landroid/media/MediaMetadataRetriever;

    if-eqz v1, :cond_6

    check-cast v0, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    :cond_6
    instance-of v1, v0, Landroid/media/MediaDrm;

    if-eqz v1, :cond_8

    check-cast v0, Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    :cond_7
    :goto_1
    iget-object v0, p0, Lyads/fo2;->b:Lyads/vq0;

    iget-object v1, p0, Lyads/fo2;->e:Lyads/g03;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lyads/fo2;->b:Lyads/vq0;

    iget-object p0, p0, Lyads/fo2;->f:Lyads/vn0;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    :cond_8
    invoke-static {}, Lmi2;->b()V

    return-void
.end method
