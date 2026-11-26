.class public final Lj80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Li80;


# direct methods
.method public constructor <init>(Li80;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj80;->b:Li80;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    iget-object p0, p0, Lj80;->b:Li80;

    iget-object v0, p0, Li80;->d:Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    invoke-virtual {p0}, Li80;->c()V

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_2

    iget-object p1, v0, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ltm1;->b(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    cmpl-float p1, p1, v2

    if-gtz p1, :cond_1

    iget-object p1, v0, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ltm1;->b(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v0, v0, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    int-to-float p1, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Li80;->c()V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
