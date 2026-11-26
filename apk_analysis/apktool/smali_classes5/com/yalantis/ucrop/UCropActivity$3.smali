.class Lcom/yalantis/ucrop/UCropActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$ScrollingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yalantis/ucrop/UCropActivity;->setupRotateWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yalantis/ucrop/UCropActivity;


# direct methods
.method public constructor <init>(Lcom/yalantis/ucrop/UCropActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/UCropActivity$3;->this$0:Lcom/yalantis/ucrop/UCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(FF)V
    .locals 0

    iget-object p0, p0, Lcom/yalantis/ucrop/UCropActivity$3;->this$0:Lcom/yalantis/ucrop/UCropActivity;

    invoke-static {p0}, Lcom/yalantis/ucrop/UCropActivity;->access$500(Lcom/yalantis/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object p0

    const/high16 p2, 0x42280000    # 42.0f

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/view/CropImageView;->postRotate(F)V

    return-void
.end method

.method public onScrollEnd()V
    .locals 0

    iget-object p0, p0, Lcom/yalantis/ucrop/UCropActivity$3;->this$0:Lcom/yalantis/ucrop/UCropActivity;

    invoke-static {p0}, Lcom/yalantis/ucrop/UCropActivity;->access$500(Lcom/yalantis/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->setImageToWrapCropBounds()V

    return-void
.end method

.method public onScrollStart()V
    .locals 0

    iget-object p0, p0, Lcom/yalantis/ucrop/UCropActivity$3;->this$0:Lcom/yalantis/ucrop/UCropActivity;

    invoke-static {p0}, Lcom/yalantis/ucrop/UCropActivity;->access$500(Lcom/yalantis/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/CropImageView;->cancelAllAnimations()V

    return-void
.end method
