.class public final Landroidx/camera/viewfinder/core/ZoomGestureDetector$gestureDetector$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/viewfinder/core/ZoomGestureDetector;-><init>(Landroid/content/Context;IILandroidx/camera/viewfinder/core/ZoomGestureDetector$OnZoomGestureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/viewfinder/core/ZoomGestureDetector;


# direct methods
.method public constructor <init>(Landroidx/camera/viewfinder/core/ZoomGestureDetector;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector$gestureDetector$1;->this$0:Landroidx/camera/viewfinder/core/ZoomGestureDetector;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector$gestureDetector$1;->this$0:Landroidx/camera/viewfinder/core/ZoomGestureDetector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->access$setAnchoredZoomStartX$p(Landroidx/camera/viewfinder/core/ZoomGestureDetector;F)V

    iget-object v0, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector$gestureDetector$1;->this$0:Landroidx/camera/viewfinder/core/ZoomGestureDetector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, p1}, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->access$setAnchoredZoomStartY$p(Landroidx/camera/viewfinder/core/ZoomGestureDetector;F)V

    iget-object p0, p0, Landroidx/camera/viewfinder/core/ZoomGestureDetector$gestureDetector$1;->this$0:Landroidx/camera/viewfinder/core/ZoomGestureDetector;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Landroidx/camera/viewfinder/core/ZoomGestureDetector;->access$setAnchoredZoomMode$p(Landroidx/camera/viewfinder/core/ZoomGestureDetector;I)V

    return p1
.end method
