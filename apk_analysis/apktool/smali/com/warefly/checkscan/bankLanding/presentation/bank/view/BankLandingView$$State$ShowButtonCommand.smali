.class public Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingView$$State$ShowButtonCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowButtonCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingView;",
        ">;"
    }
.end annotation


# instance fields
.field public final isShow:Z


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingView$$State;Z)V
    .locals 1

    const-string p1, "showButton"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingView$$State$ShowButtonCommand;->isShow:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingView;)V
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingView$$State$ShowButtonCommand;->isShow:Z

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingView;->showButton(Z)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingView$$State$ShowButtonCommand;->apply(Lcom/warefly/checkscan/bankLanding/presentation/bank/view/BankLandingView;)V

    return-void
.end method
