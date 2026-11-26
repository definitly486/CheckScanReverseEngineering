.class public final Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo37;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;->showData(Lhu5;)V
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
.field public final synthetic a:Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment$b;->a:Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;

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

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment$b;->a:Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;

    iget-object p2, p0, Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;->ivBanner:Lcom/warefly/checkscan/core/ui/SafeImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;->ivLoading:Lcom/warefly/checkscan/shimmer/ShimmerFrameLayout;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p4, 0x8

    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/offerLanding/databinding/FragmentOfferLandingBinding;->ivBanner:Lcom/warefly/checkscan/core/ui/SafeImageView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/SafeImageView;->setImageDrawableWithCache(Landroid/graphics/drawable/Drawable;)V

    return p3
.end method
