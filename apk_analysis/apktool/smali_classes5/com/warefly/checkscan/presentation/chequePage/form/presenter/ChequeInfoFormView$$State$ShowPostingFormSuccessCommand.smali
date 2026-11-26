.class public Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView$$State$ShowPostingFormSuccessCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowPostingFormSuccessCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView$$State;)V
    .locals 1

    const-string p1, "showPostingFormSuccess"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;)V
    .locals 0

    .line 6
    invoke-interface {p1}, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;->showPostingFormSuccess()V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView$$State$ShowPostingFormSuccessCommand;->apply(Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;)V

    return-void
.end method
