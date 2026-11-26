.class public final Lyads/tq0;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lyads/vq0;


# direct methods
.method public constructor <init>(Lyads/vq0;)V
    .locals 0

    iput-object p1, p0, Lyads/tq0;->a:Lyads/vq0;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lyads/tq0;->a:Lyads/vq0;

    iget-object p1, p0, Lyads/vq0;->K:Lyads/sg3;

    invoke-static {p0, p1}, Lyads/pq;->a(Landroid/view/View;Lyads/sg3;)V

    const/4 p0, 0x1

    return p0
.end method
