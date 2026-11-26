.class public Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeView$$State$ShowChequeNotCorrectFormatCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowChequeNotCorrectFormatCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeView$$State;)V
    .locals 1

    const-string p1, "showChequeNotCorrectFormat"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeView;)V
    .locals 0

    .line 6
    invoke-interface {p1}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeView;->showChequeNotCorrectFormat()V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeView$$State$ShowChequeNotCorrectFormatCommand;->apply(Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeView;)V

    return-void
.end method
