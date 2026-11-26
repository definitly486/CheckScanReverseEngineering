.class Lcom/yalantis/ucrop/UCropFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$ScrollingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yalantis/ucrop/UCropFragment;->setupScaleWidget(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yalantis/ucrop/UCropFragment;


# direct methods
.method public constructor <init>(Lcom/yalantis/ucrop/UCropFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/UCropFragment$6;->this$0:Lcom/yalantis/ucrop/UCropFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(FF)V
    .locals 3

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment$6;->this$0:Lcom/yalantis/ucrop/UCropFragment;

    const v1, 0x466a6000    # 15000.0f

    if-lez p2, :cond_0

    invoke-static {v0}, Lcom/yalantis/ucrop/UCropFragment;->access$500(Lcom/yalantis/ucrop/UCropFragment;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object p2

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment$6;->this$0:Lcom/yalantis/ucrop/UCropFragment;

    invoke-static {v0}, Lcom/yalantis/ucrop/UCropFragment;->access$500(Lcom/yalantis/ucrop/UCropFragment;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentScale()F

    move-result v0

    iget-object v2, p0, Lcom/yalantis/ucrop/UCropFragment$6;->this$0:Lcom/yalantis/ucrop/UCropFragment;

    invoke-static {v2}, Lcom/yalantis/ucrop/UCropFragment;->access$500(Lcom/yalantis/ucrop/UCropFragment;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yalantis/ucrop/view/CropImageView;->getMaxScale()F

    move-result v2

    iget-object p0, p0, Lcom/yalantis/ucrop/UCropFragment$6;->this$0:Lcom/yalantis/ucrop/UCropFragment;

    invoke-static {p0}, Lcom/yalantis/ucrop/UCropFragment;->access$500(Lcom/yalantis/ucrop/UCropFragment;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getMinScale()F

    move-result p0

    sub-float/2addr v2, p0

    div-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    invoke-virtual {p2, v2}, Lcom/yalantis/ucrop/view/CropImageView;->zoomInImage(F)V

    return-void

    :cond_0
    invoke-static {v0}, Lcom/yalantis/ucrop/UCropFragment;->access$500(Lcom/yalantis/ucrop/UCropFragment;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object p2

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment$6;->this$0:Lcom/yalantis/ucrop/UCropFragment;

    invoke-static {v0}, Lcom/yalantis/ucrop/UCropFragment;->access$500(Lcom/yalantis/ucrop/UCropFragment;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/TransformImageView;->getCurrentScale()F

    move-result v0

    iget-object v2, p0, Lcom/yalantis/ucrop/UCropFragment$6;->this$0:Lcom/yalantis/ucrop/UCropFragment;

    invoke-static {v2}, Lcom/yalantis/ucrop/UCropFragment;->access$500(Lcom/yalantis/ucrop/UCropFragment;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yalantis/ucrop/view/CropImageView;->getMaxScale()F

    move-result v2

    iget-object p0, p0, Lcom/yalantis/ucrop/UCropFragment$6;->this$0:Lcom/yalantis/ucrop/UCropFragment;

    invoke-static {p0}, Lcom/yalantis/ucrop/UCropFragment;->access$500(Lcom/yalantis/ucrop/UCropFragment;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->getMinScale()F

    move-result p0

    sub-float/2addr v2, p0

    div-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    invoke-virtual {p2, v2}, Lcom/yalantis/ucrop/view/CropImageView;->zoomOutImage(F)V

    return-void
.end method

.method public onScrollEnd()V
    .locals 0

    iget-object p0, p0, Lcom/yalantis/ucrop/UCropFragment$6;->this$0:Lcom/yalantis/ucrop/UCropFragment;

    invoke-static {p0}, Lcom/yalantis/ucrop/UCropFragment;->access$500(Lcom/yalantis/ucrop/UCropFragment;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->setImageToWrapCropBounds()V

    return-void
.end method

.method public onScrollStart()V
    .locals 0

    iget-object p0, p0, Lcom/yalantis/ucrop/UCropFragment$6;->this$0:Lcom/yalantis/ucrop/UCropFragment;

    invoke-static {p0}, Lcom/yalantis/ucrop/UCropFragment;->access$500(Lcom/yalantis/ucrop/UCropFragment;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->cancelAllAnimations()V

    return-void
.end method
