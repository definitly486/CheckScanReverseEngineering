.class public Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$ShowChequeProductsCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowChequeProductsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;",
        ">;"
    }
.end annotation


# instance fields
.field public final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lra4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lra4;",
            ">;)V"
        }
    .end annotation

    const-string p1, "showChequeProducts"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$ShowChequeProductsCommand;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$ShowChequeProductsCommand;->items:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;->showChequeProducts(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$ShowChequeProductsCommand;->apply(Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;)V

    return-void
.end method
