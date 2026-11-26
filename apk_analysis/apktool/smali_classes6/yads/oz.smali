.class public final Lyads/oz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Landroid/view/View$OnClickListener;

.field public final b:I

.field public c:Z

.field public d:F

.field public e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/oz;->a:Landroid/view/View$OnClickListener;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/2addr p1, p1

    iput p1, p0, Lyads/oz;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lyads/oz;->a:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lyads/oz;->c:Z

    return v3

    :cond_1
    iget-boolean p1, p0, Lyads/oz;->c:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lyads/oz;->d:F

    sub-float/2addr v1, p1

    float-to-int p1, v1

    iget v0, p0, Lyads/oz;->e:F

    sub-float/2addr p2, v0

    float-to-int p2, p2

    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p2, p1

    iget p1, p0, Lyads/oz;->b:I

    if-le p2, p1, :cond_2

    iput-boolean v3, p0, Lyads/oz;->c:Z

    :cond_2
    :goto_0
    return v3

    :cond_3
    iget-boolean p2, p0, Lyads/oz;->c:Z

    if-eqz p2, :cond_4

    iget-object p0, p0, Lyads/oz;->a:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_4
    return v2

    :cond_5
    iput v1, p0, Lyads/oz;->d:F

    iput p2, p0, Lyads/oz;->e:F

    iput-boolean v2, p0, Lyads/oz;->c:Z

    return v3
.end method
