.class public final Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo37;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->replaceLoadShopButton(Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo37;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;

.field public final synthetic b:Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$h;->a:Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$h;->b:Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;

    return-void
.end method


# virtual methods
.method public final onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lwk8;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lwk8<",
            "TT;>;Z)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public final onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lwk8;Ly82;Z)Z
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    sget-object p4, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->n:[Lze4;

    iget-object p4, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$h;->a:Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;

    iget-object p4, p4, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->i:Lfh8;

    invoke-virtual {p4}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    move-result p4

    int-to-float p2, p2

    div-float/2addr p4, p2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p4, p2

    if-lez p2, :cond_0

    int-to-float p2, p3

    goto :goto_0

    :cond_0
    int-to-float p2, p3

    mul-float/2addr p2, p4

    :goto_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment$h;->b:Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;->ivShopScreenshot:Lcom/warefly/checkscan/core/ui/SafeImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    check-cast p3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-static {p2}, Lw65;->b(F)I

    move-result p2

    iput p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/SafeImageView;->setImageDrawableWithCache(Landroid/graphics/drawable/Drawable;)V

    return p4

    :cond_1
    const-string p0, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    return p4
.end method
