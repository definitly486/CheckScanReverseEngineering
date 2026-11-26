.class public abstract Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$Callback;
.super Lj72;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj72<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj72;-><init>()V

    return-void
.end method

.method private setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$Callback;->imageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string v0, "Downloading Image Cleared"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$Callback;->setImage(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$Callback;->onSuccess()V

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string v0, "Downloading Image Failed"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$Callback;->setImage(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Image loading failed!"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$Callback;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Lk29;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lk29<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    const-string p2, "Downloading Image Success!!!"

    invoke-static {p2}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$Callback;->setImage(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$Callback;->onSuccess()V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lk29;)V
    .locals 0

    .line 12
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$Callback;->onResourceReady(Landroid/graphics/drawable/Drawable;Lk29;)V

    return-void
.end method

.method public abstract onSuccess()V
.end method

.method public setImageView(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$Callback;->imageView:Landroid/widget/ImageView;

    return-void
.end method
