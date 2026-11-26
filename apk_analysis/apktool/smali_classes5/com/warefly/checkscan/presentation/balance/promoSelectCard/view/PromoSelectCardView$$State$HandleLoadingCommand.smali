.class public Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardView$$State$HandleLoadingCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandleLoadingCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardView;",
        ">;"
    }
.end annotation


# instance fields
.field public final isLoading:Z


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardView$$State;Z)V
    .locals 1

    const-string p1, "handleLoading"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardView$$State$HandleLoadingCommand;->isLoading:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardView;)V
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardView$$State$HandleLoadingCommand;->isLoading:Z

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;->handleLoading(Z)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardView$$State$HandleLoadingCommand;->apply(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardView;)V

    return-void
.end method
