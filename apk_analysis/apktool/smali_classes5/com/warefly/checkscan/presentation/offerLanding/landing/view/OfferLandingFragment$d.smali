.class public final Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment$d;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;->showLandingLoadingError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment$d;->f:Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment$d;->f:Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingFragment;->presenter:Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/offerLanding/landing/presenter/OfferLandingPresenter;->loadLanding()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
