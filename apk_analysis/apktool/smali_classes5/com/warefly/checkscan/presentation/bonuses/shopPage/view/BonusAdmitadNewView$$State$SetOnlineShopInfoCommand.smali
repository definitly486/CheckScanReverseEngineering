.class public Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView$$State$SetOnlineShopInfoCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetOnlineShopInfoCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;",
        ">;"
    }
.end annotation


# instance fields
.field public final data:Lqx5;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView$$State;Lqx5;)V
    .locals 1

    const-string p1, "setOnlineShopInfo"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView$$State$SetOnlineShopInfoCommand;->data:Lqx5;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView$$State$SetOnlineShopInfoCommand;->data:Lqx5;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;->setOnlineShopInfo(Lqx5;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView$$State$SetOnlineShopInfoCommand;->apply(Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;)V

    return-void
.end method
