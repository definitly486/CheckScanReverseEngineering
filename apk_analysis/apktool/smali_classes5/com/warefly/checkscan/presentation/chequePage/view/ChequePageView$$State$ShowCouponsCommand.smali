.class public Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$ShowCouponsCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowCouponsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;",
        ">;"
    }
.end annotation


# instance fields
.field public final coupons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final height:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State;Ljava/util/List;Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const-string p1, "showCoupons"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$ShowCouponsCommand;->coupons:Ljava/util/List;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$ShowCouponsCommand;->height:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$ShowCouponsCommand;->coupons:Ljava/util/List;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$ShowCouponsCommand;->height:Ljava/lang/Integer;

    invoke-interface {p1, v0, p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;->showCoupons(Ljava/util/List;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$ShowCouponsCommand;->apply(Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;)V

    return-void
.end method
