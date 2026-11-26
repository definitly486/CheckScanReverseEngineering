.class public Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView$$State$ShowShopInChequesCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowShopInChequesCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final products:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lfn5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lfn5;",
            ">;)V"
        }
    .end annotation

    const-string p1, "showShopInCheques"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView$$State$ShowShopInChequesCommand;->products:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView$$State$ShowShopInChequesCommand;->products:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView;->showShopInCheques(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView$$State$ShowShopInChequesCommand;->apply(Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView;)V

    return-void
.end method
