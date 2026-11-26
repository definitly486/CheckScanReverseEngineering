.class public Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$ShowCardsCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowCardsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;",
        ">;"
    }
.end annotation


# instance fields
.field public final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final show:Z


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State;ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p1, "showCards"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$ShowCardsCommand;->show:Z

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$ShowCardsCommand;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;)V
    .locals 1

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$ShowCardsCommand;->show:Z

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$ShowCardsCommand;->data:Ljava/util/List;

    invoke-interface {p1, v0, p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;->showCards(ZLjava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$ShowCardsCommand;->apply(Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;)V

    return-void
.end method
