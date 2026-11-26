.class public Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView$$State$SetHotItemsInfoCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetHotItemsInfoCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;",
        ">;"
    }
.end annotation


# instance fields
.field public final hotItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lyw3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lyw3;",
            ">;)V"
        }
    .end annotation

    const-string p1, "setHotItemsInfo"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView$$State$SetHotItemsInfoCommand;->hotItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView$$State$SetHotItemsInfoCommand;->hotItems:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;->setHotItemsInfo(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView$$State$SetHotItemsInfoCommand;->apply(Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;)V

    return-void
.end method
