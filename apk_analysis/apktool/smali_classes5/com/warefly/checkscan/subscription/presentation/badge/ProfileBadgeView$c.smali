.class public final Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$c;
.super Lj72;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->setProfilePic(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj72<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$c;->b:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;

    invoke-direct {p0}, Lj72;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Lj72;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$c;->b:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final onResourceReady(Ljava/lang/Object;Lk29;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$c;->b:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V

    iput-object p1, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->c:Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
