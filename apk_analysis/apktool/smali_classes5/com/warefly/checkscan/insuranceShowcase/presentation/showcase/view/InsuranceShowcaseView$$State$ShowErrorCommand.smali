.class public Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView$$State$ShowErrorCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowErrorCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView;",
        ">;"
    }
.end annotation


# instance fields
.field public final isShow:Z


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView$$State;Z)V
    .locals 1

    const-string p1, "showError"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView$$State$ShowErrorCommand;->isShow:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView;)V
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView$$State$ShowErrorCommand;->isShow:Z

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView;->showError(Z)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView$$State$ShowErrorCommand;->apply(Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView;)V

    return-void
.end method
