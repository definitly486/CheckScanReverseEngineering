.class public Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView$$State$ShareCardCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareCardCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;",
        ">;"
    }
.end annotation


# instance fields
.field public final cardImageLink:Ljava/lang/String;

.field public final cardLinkSuffix:Ljava/lang/String;

.field public final promoCode:Ljava/lang/String;

.field public final shareTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView$$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p1, "shareCard"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView$$State$ShareCardCommand;->cardLinkSuffix:Ljava/lang/String;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView$$State$ShareCardCommand;->shareTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView$$State$ShareCardCommand;->promoCode:Ljava/lang/String;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView$$State$ShareCardCommand;->cardImageLink:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;)V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView$$State$ShareCardCommand;->cardLinkSuffix:Ljava/lang/String;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView$$State$ShareCardCommand;->shareTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView$$State$ShareCardCommand;->promoCode:Ljava/lang/String;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView$$State$ShareCardCommand;->cardImageLink:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, p0}, Ljs7;->shareCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView$$State$ShareCardCommand;->apply(Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;)V

    return-void
.end method
