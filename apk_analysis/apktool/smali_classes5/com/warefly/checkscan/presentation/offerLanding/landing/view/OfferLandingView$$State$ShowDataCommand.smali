.class public Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingView$$State$ShowDataCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowDataCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingView;",
        ">;"
    }
.end annotation


# instance fields
.field public final data:Lhu5;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingView$$State;Lhu5;)V
    .locals 1

    const-string p1, "showData"

    const-class v0, Li9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingView$$State$ShowDataCommand;->data:Lhu5;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingView$$State$ShowDataCommand;->data:Lhu5;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingView;->showData(Lhu5;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingView$$State$ShowDataCommand;->apply(Lcom/warefly/checkscan/presentation/offerLanding/landing/view/OfferLandingView;)V

    return-void
.end method
