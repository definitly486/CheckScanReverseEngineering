.class public Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$ScrollNextSpecialsCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScrollNextSpecialsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;",
        ">;"
    }
.end annotation


# instance fields
.field public final pos:I


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State;I)V
    .locals 1

    const-string p1, "scrollNextSpecials"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput p2, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$ScrollNextSpecialsCommand;->pos:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;)V
    .locals 0

    .line 6
    iget p0, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$ScrollNextSpecialsCommand;->pos:I

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;->scrollNextSpecials(I)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$ScrollNextSpecialsCommand;->apply(Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;)V

    return-void
.end method
