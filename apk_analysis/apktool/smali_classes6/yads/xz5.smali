.class public final Lyads/xz5;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lyads/yz5;


# direct methods
.method public constructor <init>(Lyads/yz5;)V
    .locals 0

    iput-object p1, p0, Lyads/xz5;->a:Lyads/yz5;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lyads/xz5;->a:Lyads/yz5;

    const/4 p1, 0x0

    iput-object p1, p0, Lyads/yz5;->a:Landroid/graphics/Point;

    const/4 p0, 0x1

    return p0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p0, p0, Lyads/xz5;->a:Lyads/yz5;

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lyads/yz5;->a:Landroid/graphics/Point;

    const/4 p0, 0x1

    return p0
.end method
