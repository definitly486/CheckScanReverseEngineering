.class public final Lyads/dh1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public b:Lll3;

.field public c:Lll3;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-boolean p1, p0, Lyads/dh1;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lll3;)V
    .locals 0

    iput-object p1, p0, Lyads/dh1;->c:Lll3;

    return-void
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lyads/dh1;->c:Lll3;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-boolean p1, p0, Lyads/dh1;->a:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lyads/dh1;->c:Lll3;

    if-nez p1, :cond_0

    iget-object p0, p0, Lyads/dh1;->b:Lll3;

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lyads/dh1;->c:Lll3;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lyads/dh1;->b:Lll3;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lyads/dh1;->c:Lll3;

    if-nez p1, :cond_0

    iget-object p0, p0, Lyads/dh1;->b:Lll3;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
