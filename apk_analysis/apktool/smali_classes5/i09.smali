.class public final Li09;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/Double;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lh09;


# direct methods
.method public constructor <init>(Lh09;)V
    .locals 0

    iput-object p1, p0, Li09;->f:Lh09;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Double;

    iget-object p0, p0, Li09;->f:Lh09;

    iget-object p0, p0, Lh09;->b:Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;

    invoke-interface {p0, p1}, Lh09$a;->onAmountChanged(Ljava/lang/Double;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
