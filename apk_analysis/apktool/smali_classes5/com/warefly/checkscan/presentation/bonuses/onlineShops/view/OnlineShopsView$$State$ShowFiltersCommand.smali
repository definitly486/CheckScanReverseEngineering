.class public Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView$$State$ShowFiltersCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowFiltersCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg81;",
            ">;"
        }
    .end annotation
.end field

.field public final selectedCatId:I


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView$$State;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg81;",
            ">;I)V"
        }
    .end annotation

    const-string p1, "showFilters"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView$$State$ShowFiltersCommand;->filters:Ljava/util/List;

    iput p3, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView$$State$ShowFiltersCommand;->selectedCatId:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView;)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView$$State$ShowFiltersCommand;->filters:Ljava/util/List;

    iget p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView$$State$ShowFiltersCommand;->selectedCatId:I

    invoke-interface {p1, v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView;->showFilters(Ljava/util/List;I)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView$$State$ShowFiltersCommand;->apply(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView;)V

    return-void
.end method
