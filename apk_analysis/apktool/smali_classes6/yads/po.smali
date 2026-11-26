.class public final Lyads/po;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/oo;


# direct methods
.method public constructor <init>(Lyads/oo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/po;->a:Lyads/oo;

    return-void
.end method


# virtual methods
.method public final a(Lyads/wx2;Lyads/fo;)V
    .locals 9

    iget-object p0, p0, Lyads/po;->a:Lyads/oo;

    iget-object v0, p0, Lyads/oo;->c:Lyads/qr3;

    iget-object v1, p0, Lyads/oo;->a:Landroid/content/Context;

    iget-object v0, v0, Lyads/qr3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lyads/mr3;

    iget-object v3, v3, Lyads/mr3;->c:Lyads/pn0;

    invoke-interface {v3, v1}, Lyads/pn0;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Lyads/mr3;

    if-eqz v2, :cond_4

    iget-object v0, p0, Lyads/oo;->d:Lyads/or3;

    iget-object v1, p0, Lyads/oo;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, v2, Lyads/mr3;->a:I

    const-class v4, Lcom/monetization/ads/nativeads/ExtendedNativeAdView;

    invoke-static {v0, v4, v3, v1}, Lyads/dc5;->a(Landroid/content/Context;Ljava/lang/Class;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lyads/oo;->e:Lyads/no;

    iget-object p0, p0, Lyads/oo;->b:Landroid/view/ViewGroup;

    iget-object v3, v1, Lyads/no;->d:Lyads/e55;

    sget-object v4, Lyads/no;->e:[Lze4;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v3, v1, Lyads/no;->b:Lyads/wf6;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, v1, Lyads/no;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    iget-object v3, v3, Lyads/wf6;->a:Lyads/c9;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v4}, Lyads/wx2;->c(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p1, v4}, Lyads/wx2;->a(Landroid/content/Context;)I

    move-result p1

    int-to-float v3, v3

    invoke-static {v4, v3}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float p1, p1

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v7, 0x1

    invoke-static {v7, p1, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-static {p1}, Lw65;->b(F)I

    move-result p1

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    :cond_2
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p1, -0x2

    invoke-direct {v4, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_1
    const/16 p1, 0xd

    invoke-virtual {v4, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v6, :cond_3

    sget-object p0, Lyads/eh6;->a:Lyads/th6;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    new-instance p1, Lyads/dh6;

    invoke-direct {p1, v6, v0}, Lyads/dh6;-><init>(Landroid/view/ViewTreeObserver$OnPreDrawListener;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_3
    iget-object p0, v2, Lyads/mr3;->b:Lyads/on0;

    iput-object p0, v1, Lyads/no;->c:Lyads/on0;

    invoke-interface {p0, v0}, Lyads/on0;->a(Landroid/view/ViewGroup;)V

    invoke-interface {p2}, Lyads/fo;->a()V

    return-void

    :cond_4
    sget-object p0, Lyads/o8;->f:Lyads/m4;

    invoke-interface {p2, p0}, Lyads/fo;->a(Lyads/m4;)V

    return-void
.end method
