.class public Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidadvance/topsnackbar/TSnackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnackbarLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout$a;,
        Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout$b;
    }
.end annotation


# instance fields
.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/Button;

.field public final d:I

.field public final e:I

.field public f:Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout$b;

.field public g:Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lsw6;->a:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->d:I

    const/4 v2, 0x7

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->e:I

    const/4 v1, 0x6

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d034b

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public final a(III)Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-ne v0, p2, :cond_2

    iget-object v0, p0, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    if-eq v0, p3, :cond_1

    goto :goto_1

    :cond_1
    return p1

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->b:Landroid/widget/TextView;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isPaddingRelative(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result p1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v0

    invoke-static {p0, p1, p2, v0, p3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    return v1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/view/View;->setPadding(IIII)V

    return v1
.end method

.method public getActionView()Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->c:Landroid/widget/Button;

    return-object p0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->g:Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout$a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 5

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->g:Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout$a;

    if-eqz p0, :cond_3

    check-cast p0, Lcom/androidadvance/topsnackbar/c;

    iget-object v0, p0, Lcom/androidadvance/topsnackbar/c;->a:Lcom/androidadvance/topsnackbar/TSnackbar;

    invoke-static {}, Lcom/androidadvance/topsnackbar/a;->c()Lcom/androidadvance/topsnackbar/a;

    move-result-object v1

    iget-object v0, v0, Lcom/androidadvance/topsnackbar/TSnackbar;->d:Lcom/androidadvance/topsnackbar/TSnackbar$b;

    iget-object v2, v1, Lcom/androidadvance/topsnackbar/a;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/androidadvance/topsnackbar/a;->d(Lcom/androidadvance/topsnackbar/a$b;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    iget-object v1, v1, Lcom/androidadvance/topsnackbar/a;->d:Lcom/androidadvance/topsnackbar/a$c;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/androidadvance/topsnackbar/a$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    :cond_2
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    sget-object v0, Lcom/androidadvance/topsnackbar/TSnackbar;->e:Landroid/os/Handler;

    new-instance v1, Lji8;

    invoke-direct {v1, p0}, Lji8;-><init>(Lcom/androidadvance/topsnackbar/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0a0620

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->b:Landroid/widget/TextView;

    const v0, 0x7f0a061f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->c:Landroid/widget/Button;

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object p0, p0, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->f:Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout$b;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/androidadvance/topsnackbar/d;

    iget-object p0, p0, Lcom/androidadvance/topsnackbar/d;->a:Lcom/androidadvance/topsnackbar/TSnackbar;

    invoke-virtual {p0}, Lcom/androidadvance/topsnackbar/TSnackbar;->a()V

    iget-object p0, p0, Lcom/androidadvance/topsnackbar/TSnackbar;->b:Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->setOnLayoutChangeListener(Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout$b;)V

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 7

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget v0, p0, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->d:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-le v1, v0, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07014d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07014c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-eqz v2, :cond_2

    iget v5, p0, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->e:I

    if-lez v5, :cond_2

    iget-object v6, p0, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->c:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-le v6, v5, :cond_2

    sub-int v1, v0, v1

    invoke-virtual {p0, v4, v0, v1}, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->a(III)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    invoke-virtual {p0, v3, v0, v0}, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->a(III)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_4
    return-void
.end method

.method public setOnAttachStateChangeListener(Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout$a;)V
    .locals 0

    iput-object p1, p0, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->g:Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout$a;

    return-void
.end method

.method public setOnLayoutChangeListener(Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout$b;)V
    .locals 0

    iput-object p1, p0, Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;->f:Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout$b;

    return-void
.end method
