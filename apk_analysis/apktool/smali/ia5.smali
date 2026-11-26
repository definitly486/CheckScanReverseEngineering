.class public final synthetic Lia5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Lcom/google/common/collect/q$b;
.implements Landroidx/camera/viewfinder/core/ZoomGestureDetector$OnZoomGestureListener;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lia5;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lia5;->b:Ljava/lang/Object;

    check-cast p0, Lh95;

    invoke-virtual {p0, p2}, Lh95;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lia5;->b:Ljava/lang/Object;

    check-cast p0, Lne1;

    invoke-virtual {p0, p1}, Lne1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onZoomEvent(Landroidx/camera/viewfinder/core/ZoomGestureDetector$ZoomEvent;)Z
    .locals 0

    iget-object p0, p0, Lia5;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/view/PreviewView;

    invoke-static {p0, p1}, Landroidx/camera/view/PreviewView;->a(Landroidx/camera/view/PreviewView;Landroidx/camera/viewfinder/core/ZoomGestureDetector$ZoomEvent;)Z

    move-result p0

    return p0
.end method
