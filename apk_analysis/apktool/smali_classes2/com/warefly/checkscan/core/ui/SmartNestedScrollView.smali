.class public Lcom/warefly/checkscan/core/ui/SmartNestedScrollView;
.super Landroidx/core/widget/NestedScrollView;
.source "SourceFile"


# instance fields
.field public b:F

.field public c:F

.field public d:F

.field public e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/SmartNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-direct {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/warefly/checkscan/core/ui/SmartNestedScrollView;->b:F

    iget v3, p0, Lcom/warefly/checkscan/core/ui/SmartNestedScrollView;->d:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v3, v2

    iput v3, p0, Lcom/warefly/checkscan/core/ui/SmartNestedScrollView;->b:F

    iget v2, p0, Lcom/warefly/checkscan/core/ui/SmartNestedScrollView;->c:F

    iget v3, p0, Lcom/warefly/checkscan/core/ui/SmartNestedScrollView;->e:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v3, v2

    iput v3, p0, Lcom/warefly/checkscan/core/ui/SmartNestedScrollView;->c:F

    iput v0, p0, Lcom/warefly/checkscan/core/ui/SmartNestedScrollView;->d:F

    iput v1, p0, Lcom/warefly/checkscan/core/ui/SmartNestedScrollView;->e:F

    iget v0, p0, Lcom/warefly/checkscan/core/ui/SmartNestedScrollView;->b:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/warefly/checkscan/core/ui/SmartNestedScrollView;->c:F

    iput v0, p0, Lcom/warefly/checkscan/core/ui/SmartNestedScrollView;->b:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/warefly/checkscan/core/ui/SmartNestedScrollView;->d:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/warefly/checkscan/core/ui/SmartNestedScrollView;->e:F

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeScroll()V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
