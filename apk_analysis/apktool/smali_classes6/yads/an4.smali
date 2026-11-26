.class public final Lyads/an4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public b:Z

.field public final c:F

.field public d:F

.field public e:F


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;F)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lyads/an4;->a:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    .line 19
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 20
    iput p2, p0, Lyads/an4;->c:F

    return-void
.end method

.method public constructor <init>(Lyads/ld5;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, v0}, Lyads/an4;-><init>(Landroid/view/ViewGroup;F)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lyads/an4;->d:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Lyads/an4;->e:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-boolean v2, p0, Lyads/an4;->b:Z

    if-nez v2, :cond_1

    iget v2, p0, Lyads/an4;->c:F

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_1

    iput-boolean v1, p0, Lyads/an4;->b:Z

    iget-object p0, p0, Lyads/an4;->a:Landroid/view/ViewGroup;

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->startNestedScroll(Landroid/view/View;I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lyads/an4;->b:Z

    iget-object p0, p0, Lyads/an4;->a:Landroid/view/ViewGroup;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lyads/an4;->d:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lyads/an4;->e:F

    return-void
.end method
