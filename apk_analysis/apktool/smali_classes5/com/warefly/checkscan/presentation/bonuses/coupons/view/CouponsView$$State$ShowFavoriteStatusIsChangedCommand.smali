.class public Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsView$$State$ShowFavoriteStatusIsChangedCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowFavoriteStatusIsChangedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final isFavorite:Z

.field public final isSuccessful:Z


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsView$$State;ZZ)V
    .locals 1

    const-string p1, "showFavoriteStatusIsChanged"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsView$$State$ShowFavoriteStatusIsChangedCommand;->isSuccessful:Z

    iput-boolean p3, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsView$$State$ShowFavoriteStatusIsChangedCommand;->isFavorite:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsView;)V
    .locals 1

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsView$$State$ShowFavoriteStatusIsChangedCommand;->isSuccessful:Z

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsView$$State$ShowFavoriteStatusIsChangedCommand;->isFavorite:Z

    invoke-interface {p1, v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsView;->showFavoriteStatusIsChanged(ZZ)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsView$$State$ShowFavoriteStatusIsChangedCommand;->apply(Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsView;)V

    return-void
.end method
