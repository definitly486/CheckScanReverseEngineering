.class public final synthetic Lby1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lby1;->b:I

    iput-object p1, p0, Lby1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lby1;->b:I

    iget-object p0, p0, Lby1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/camera/core/processing/SurfaceEdge;

    invoke-static {p0}, Landroidx/camera/core/processing/SurfaceEdge;->a(Landroidx/camera/core/processing/SurfaceEdge;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/video/internal/encoder/EncoderCallback;

    invoke-interface {p0}, Landroidx/camera/video/internal/encoder/EncoderCallback;->onEncodePaused()V

    return-void

    :pswitch_1
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lcom/google/android/material/datepicker/DateSelector;->p(Landroid/view/View;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-static {p0}, Landroidx/core/widget/ContentLoadingProgressBar;->b(Landroidx/core/widget/ContentLoadingProgressBar;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
