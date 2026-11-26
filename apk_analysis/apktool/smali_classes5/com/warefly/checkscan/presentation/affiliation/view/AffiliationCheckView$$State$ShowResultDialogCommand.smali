.class public Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView$$State$ShowResultDialogCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowResultDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;",
        ">;"
    }
.end annotation


# instance fields
.field public final result:Lbh6;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView$$State;Lbh6;)V
    .locals 1

    const-string p1, "showResultDialog"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView$$State$ShowResultDialogCommand;->result:Lbh6;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView$$State$ShowResultDialogCommand;->result:Lbh6;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;->showResultDialog(Lbh6;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView$$State$ShowResultDialogCommand;->apply(Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;)V

    return-void
.end method
