.class public final Lyads/kd5;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lyads/ld5;


# direct methods
.method public constructor <init>(Lyads/ld5;)V
    .locals 0

    iput-object p1, p0, Lyads/kd5;->a:Lyads/ld5;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEdgeDragStarted(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    iget-object p0, p0, Lyads/kd5;->a:Lyads/ld5;

    and-int/lit8 p2, p1, 0x2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lyads/ld5;->f:Z

    return-void
.end method

.method public final tryCaptureView(Landroid/view/View;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
