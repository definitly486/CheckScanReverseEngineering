.class public final Li80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li80$a;,
        Li80$b;
    }
.end annotation


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Li80$a;

.field public final d:Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;

.field public final e:Landroid/widget/PopupWindow;

.field public final f:Landroid/widget/PopupWindow;

.field public g:Z

.field public h:Z

.field public final i:Lcl4;

.field public final j:Lcl4;

.field public final k:Lcl4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc80;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc80;-><init>(I)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    new-instance v0, Ld80;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld80;-><init>(I)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Li80$a;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li80;->b:Landroid/content/Context;

    iput-object p2, p0, Li80;->c:Li80$a;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Li80;->d:Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/skydoves/balloon/databinding/BalloonLayoutOverlayBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/skydoves/balloon/databinding/BalloonLayoutOverlayBinding;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v5

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v4, p0, Li80;->e:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Lcom/skydoves/balloon/databinding/BalloonLayoutOverlayBinding;->getRoot()Lcom/skydoves/balloon/overlay/BalloonAnchorOverlayView;

    move-result-object v6

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v5, p0, Li80;->f:Landroid/widget/PopupWindow;

    sget-object v5, Lpo4;->NONE:Lpo4;

    new-instance v6, Ly70;

    invoke-direct {v6, v2}, Ly70;-><init>(I)V

    invoke-static {v5, v6}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v6

    iput-object v6, p0, Li80;->i:Lcl4;

    new-instance v6, Lb80;

    invoke-direct {v6, p0, v2}, Lb80;-><init>(Ljava/lang/Object;I)V

    invoke-static {v5, v6}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v6

    iput-object v6, p0, Li80;->j:Lcl4;

    new-instance v6, Ljf;

    const/4 v7, 0x2

    invoke-direct {v6, p0, v7}, Ljf;-><init>(Ljava/lang/Object;I)V

    invoke-static {v5, v6}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v5

    iput-object v5, p0, Li80;->k:Lcl4;

    iget-object v5, v0, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonCard:Lcom/skydoves/balloon/radius/RadiusLayout;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    iget v6, p2, Li80$a;->m:F

    invoke-virtual {v5, v6}, Lcom/skydoves/balloon/radius/RadiusLayout;->setRadius(F)V

    iget v6, p2, Li80$a;->m:F

    invoke-virtual {v5, v6}, Lcom/skydoves/balloon/radius/RadiusLayout;->setRadius(F)V

    iget v6, p2, Li80$a;->r:F

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    invoke-virtual {v5, v2}, Lcom/skydoves/balloon/radius/RadiusLayout;->setDrawCustomShape(Z)V

    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget v7, p2, Li80$a;->l:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget v7, p2, Li80$a;->m:F

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v5, v1}, Landroidx/core/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    iget v6, p2, Li80$a;->d:I

    iget v7, p2, Li80$a;->e:I

    iget v8, p2, Li80$a;->f:I

    iget v9, p2, Li80$a;->g:I

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/skydoves/balloon/radius/RadiusLayout;->setPadding(IIII)V

    iget-object v5, v0, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v6, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    invoke-virtual {v0}, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    iget-object v5, v0, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonCard:Lcom/skydoves/balloon/radius/RadiusLayout;

    invoke-virtual {v5, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v6, p2, Li80$a;->r:F

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setElevation(F)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    iget-object v6, v0, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonText:Lcom/skydoves/balloon/vectortext/VectorTextView;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lo04;->START:Lo04;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const/high16 v8, 0x41e00000    # 28.0f

    invoke-static {v5, v8, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    invoke-static {v7}, Lw65;->b(F)I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v5, v8, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    invoke-static {v7}, Lw65;->b(F)I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v5, v8, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    invoke-static {v7}, Lw65;->b(F)I

    iget-object v7, p2, Li80$a;->q:Lo04;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v7, p2, Li80$a;->w:Z

    iget-object v8, v6, Lcom/skydoves/balloon/vectortext/VectorTextView;->v:Lgc9;

    if-eqz v8, :cond_0

    iput-boolean v7, v8, Lgc9;->e:Z

    invoke-static {v6, v8}, Lys8;->a(Landroid/widget/TextView;Lgc9;)V

    :cond_0
    iget-object v6, v0, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonText:Lcom/skydoves/balloon/vectortext/VectorTextView;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p2, Li80$a;->n:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, p2, Li80$a;->p:F

    iget v9, p2, Li80$a;->o:I

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v1, 0x11

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-virtual {v6}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v6, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v1, v0, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonCard:Lcom/skydoves/balloon/radius/RadiusLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v6, v1}, Li80;->i(Landroid/widget/TextView;Landroid/view/View;)V

    invoke-virtual {p0}, Li80;->h()V

    new-instance v1, Lh80;

    invoke-direct {v1, p0}, Lh80;-><init>(Li80;)V

    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    new-instance v1, Lj80;

    invoke-direct {v1, p0}, Lj80;-><init>(Li80;)V

    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v3}, Lcom/skydoves/balloon/databinding/BalloonLayoutOverlayBinding;->getRoot()Lcom/skydoves/balloon/overlay/BalloonAnchorOverlayView;

    move-result-object v1

    new-instance v2, Lg80;

    invoke-direct {v2, p0}, Lg80;-><init>(Li80;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Li80;->a(Landroid/view/ViewGroup;)V

    iget-object v0, p2, Li80$a;->s:Landroidx/lifecycle/LifecycleOwner;

    if-nez v0, :cond_1

    instance-of v1, p1, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    iput-object p1, p2, Li80$a;->s:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_2
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-static {v0, v1}, Lkx6;->n(II)Ly74;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Lw74;->b()Lx74;

    move-result-object v1

    :goto_0
    iget-boolean v3, v1, Lx74;->d:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lu74;->nextInt()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Li80;->a(Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static j(Li80;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lv80;

    sget-object v1, Lk80;->BOTTOM:Lk80;

    invoke-direct {v0, p1, v1}, Lv80;-><init>(Landroid/view/View;Lk80;)V

    iget-object p1, v0, Lv80;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Li80;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Le80;

    invoke-direct {v1, p0, p1, v0}, Le80;-><init>(Li80;Landroid/view/View;Lv80;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)Z
    .locals 2

    iget-boolean v0, p0, Li80;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Li80;->h:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Li80;->b:Landroid/content/Context;

    invoke-static {v0}, Loy1;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Li80;->e:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-nez p0, :cond_4

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p0

    return p0
.end method

.method public final c()V
    .locals 3

    iget-boolean v0, p0, Li80;->g:Z

    if-eqz v0, :cond_1

    new-instance v0, Lf80;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lf80;-><init>(Ljava/lang/Object;I)V

    iget-object v1, p0, Li80;->c:Li80$a;

    iget-object v1, v1, Li80$a;->t:Ll80;

    sget-object v2, Ll80;->CIRCULAR:Ll80;

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Li80;->e:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Li80$c;

    invoke-direct {v1, p0, v0}, Li80$c;-><init>(Landroid/view/View;Lf80;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Lf80;->invoke()Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final d(Landroid/view/View;)F
    .locals 12

    iget-object v0, p0, Li80;->d:Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;

    iget-object v1, v0, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ltm1;->b(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {p1}, Ltm1;->b(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Li80;->c:Li80$a;

    iget v4, v3, Li80$a;->h:I

    int-to-float v4, v4

    const/high16 v5, 0x40200000    # 2.5f

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    add-float/2addr v4, v5

    invoke-virtual {p0}, Li80;->g()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v4

    sub-float/2addr v6, v5

    sub-float/2addr v6, v5

    iget v7, v3, Li80$a;->h:I

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    iget-object v9, v3, Li80$a;->i:Lbs;

    sget-object v10, Li80$b;->b:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v10, v9

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-eq v9, v10, :cond_1

    if-ne v9, v11, :cond_0

    iget-object p0, v0, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v8

    sub-float/2addr p0, v7

    return p0

    :cond_0
    invoke-static {}, Lme0;->e()V

    return v5

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v2

    if-ge v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Li80;->g()I

    move-result v0

    add-int/2addr v0, v1

    if-ge v0, v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v8

    int-to-float v2, v2

    add-float/2addr v0, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float/2addr v0, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    add-float/2addr v9, v2

    sub-float/2addr v9, v7

    cmpg-float v2, v9, v1

    if-gtz v2, :cond_4

    return v5

    :cond_4
    cmpl-float v2, v9, v1

    if-lez v2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Li80;->g()I

    move-result v2

    if-gt p1, v2, :cond_5

    sub-float/2addr v9, v1

    return v9

    :cond_5
    iget p1, v3, Li80$a;->h:I

    mul-int/2addr p1, v11

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_6

    :goto_0
    return v4

    :cond_6
    invoke-virtual {p0}, Li80;->g()I

    move-result p0

    iget p1, v3, Li80$a;->h:I

    mul-int/2addr p1, v11

    sub-int/2addr p0, p1

    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_7

    :goto_1
    return v6

    :cond_7
    return v0
.end method

.method public final e(Landroid/view/View;)F
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Loy1;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Li80;->d:Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;

    iget-object v2, v1, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonContent:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ltm1;->b(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v0

    invoke-static {p1}, Ltm1;->b(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v0

    iget-object v0, p0, Li80;->c:Li80$a;

    iget v4, v0, Li80$a;->h:I

    int-to-float v4, v4

    const/high16 v5, 0x40200000    # 2.5f

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    add-float/2addr v4, v5

    invoke-virtual {p0}, Li80;->f()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v4

    sub-float/2addr v6, v5

    sub-float/2addr v6, v5

    iget v7, v0, Li80$a;->h:I

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    iget-object v9, v0, Li80$a;->i:Lbs;

    sget-object v10, Li80$b;->b:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v10, v9

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-eq v9, v10, :cond_2

    if-ne v9, v11, :cond_1

    iget-object p0, v1, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v8

    sub-float/2addr p0, v7

    return p0

    :cond_1
    invoke-static {}, Lme0;->e()V

    return v5

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v3

    if-ge v1, v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Li80;->f()I

    move-result v1

    add-int/2addr v1, v2

    if-ge v1, v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v8

    int-to-float v1, v3

    add-float/2addr p1, v1

    int-to-float v1, v2

    sub-float/2addr p1, v1

    sub-float/2addr p1, v7

    iget v1, v0, Li80$a;->h:I

    mul-int/2addr v1, v11

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_5

    :goto_1
    return v4

    :cond_5
    invoke-virtual {p0}, Li80;->f()I

    move-result p0

    iget v0, v0, Li80$a;->h:I

    mul-int/2addr v0, v11

    sub-int/2addr p0, v0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_6

    :goto_2
    return v6

    :cond_6
    return p1
.end method

.method public final f()I
    .locals 2

    iget-object v0, p0, Li80;->c:Li80$a;

    iget v0, v0, Li80$a;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Li80;->d:Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;

    invoke-virtual {p0}, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public final g()I
    .locals 4

    new-instance v0, Landroid/graphics/Point;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Li80;->c:Li80$a;

    iget v2, v1, Li80$a;->a:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    if-le v2, v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    iget-object p0, p0, Li80;->d:Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;

    invoke-virtual {p0}, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    const/4 v2, 0x0

    iget v1, v1, Li80$a;->b:I

    invoke-static {p0, v2, v1}, Lkx6;->f(III)I

    move-result p0

    if-le p0, v0, :cond_2

    :goto_0
    return v0

    :cond_2
    return p0
.end method

.method public final h()V
    .locals 5

    iget-object v0, p0, Li80;->c:Li80$a;

    iget v1, v0, Li80$a;->r:F

    float-to-int v1, v1

    iget-object p0, p0, Li80;->d:Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;

    iget-object p0, p0, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonContent:Landroid/widget/FrameLayout;

    iget-object v2, v0, Li80$a;->k:Lzr;

    sget-object v3, Li80$b;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_1
    :goto_0
    iget v0, v0, Li80$a;->h:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_2
    iget v0, v0, Li80$a;->h:I

    sub-int/2addr v0, v3

    if-ge v0, v1, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    invoke-virtual {p0, v1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public final i(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    const/4 v4, 0x2

    if-nez v3, :cond_7

    aget-object v1, v1, v4

    if-eqz v1, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v3, v1, v2

    if-nez v3, :cond_1

    aget-object v1, v1, v4

    if-eqz v1, :cond_c

    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v3, v1, v2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    aget-object v1, v1, v4

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-ge v3, v1, :cond_4

    move v3, v1

    :cond_4
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMinHeight(I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v3, v1, v2

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    goto :goto_2

    :cond_5
    move v3, v2

    :goto_2
    aget-object v1, v1, v4

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    :cond_6
    :goto_3
    add-int/2addr v2, v3

    add-int/2addr v0, v2

    goto :goto_8

    :cond_7
    :goto_4
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v3, v1, v2

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    goto :goto_5

    :cond_8
    move v3, v2

    :goto_5
    aget-object v1, v1, v4

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_6

    :cond_9
    move v1, v2

    :goto_6
    if-ge v3, v1, :cond_a

    move v3, v1

    :cond_a
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMinHeight(I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v3, v1, v2

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    goto :goto_7

    :cond_b
    move v3, v2

    :goto_7
    aget-object v1, v1, v4

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_3

    :cond_c
    :goto_8
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    new-instance v0, Landroid/graphics/Point;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v0, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    add-int/2addr p2, v1

    iget-object p0, p0, Li80;->c:Li80$a;

    iget v1, p0, Li80$a;->h:I

    mul-int/2addr v1, v4

    add-int/2addr v1, p2

    iget p2, p0, Li80$a;->b:I

    sub-int/2addr p2, v1

    if-le p2, v0, :cond_d

    move p2, v0

    :cond_d
    iget p0, p0, Li80$a;->a:I

    const/high16 v3, -0x80000000

    if-eq p0, v3, :cond_e

    if-gt p0, v0, :cond_e

    sub-int v2, p0, v1

    goto :goto_9

    :cond_e
    if-le v2, p2, :cond_f

    move v2, p2

    :cond_f
    :goto_9
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method

.method public final onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Li80;->h:Z

    iget-object p1, p0, Li80;->f:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object p1, p0, Li80;->e:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object p1, p0, Li80;->c:Li80$a;

    iget-object p1, p1, Li80$a;->s:Landroidx/lifecycle/LifecycleOwner;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method public final onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onPause(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method
