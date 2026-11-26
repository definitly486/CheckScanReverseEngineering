.class public final Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo37;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;->showData(Lnt5;)V
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
.field public final synthetic a:Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;

.field public final synthetic b:Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment$d;->a:Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment$d;->b:Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;

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

    iget-object p2, p0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment$d;->a:Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;

    iget-object p3, p2, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;->appbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    sget-object p4, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;->k:[Lze4;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment$d;->b:Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;->i:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p3, p4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p2, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;->toolbarBanner:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p3, p0}, Lcom/google/android/material/appbar/AppBarLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p2, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;->ivBanner:Lcom/warefly/checkscan/core/ui/SafeImageView;

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p2, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;->ivLoading:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    const/16 p4, 0x8

    invoke-virtual {p0, p4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p2, Lcom/warefly/checkscan/databinding/FragmentCardOfferLandingBinding;->ivBanner:Lcom/warefly/checkscan/core/ui/SafeImageView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/SafeImageView;->setImageDrawableWithCache(Landroid/graphics/drawable/Drawable;)V

    return p3
.end method
