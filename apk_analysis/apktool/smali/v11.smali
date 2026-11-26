.class public final Lv11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroidx/camera/view/PreviewView;

.field public final synthetic d:Lu11;

.field public final synthetic e:Landroidx/camera/core/CameraControl;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/camera/view/PreviewView;Lu11;Landroidx/camera/core/CameraControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv11;->b:Landroid/view/View;

    iput-object p2, p0, Lv11;->c:Landroidx/camera/view/PreviewView;

    iput-object p3, p0, Lv11;->d:Lu11;

    iput-object p4, p0, Lv11;->e:Landroidx/camera/core/CameraControl;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lv11;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v0, Lw11;

    iget-object v1, p0, Lv11;->d:Lu11;

    iget-object v2, p0, Lv11;->e:Landroidx/camera/core/CameraControl;

    iget-object p0, p0, Lv11;->c:Landroidx/camera/view/PreviewView;

    invoke-direct {v0, v1, p0, v2}, Lw11;-><init>(Lu11;Landroidx/camera/view/PreviewView;Landroidx/camera/core/CameraControl;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method
