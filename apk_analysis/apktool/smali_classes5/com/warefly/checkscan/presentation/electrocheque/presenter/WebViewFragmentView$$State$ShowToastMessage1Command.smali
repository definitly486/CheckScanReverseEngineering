.class public Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView$$State$ShowToastMessage1Command;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowToastMessage1Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView;",
        ">;"
    }
.end annotation


# instance fields
.field public final message:I


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView$$State;I)V
    .locals 1

    const-string p1, "showToastMessage"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput p2, p0, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView$$State$ShowToastMessage1Command;->message:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView;)V
    .locals 0

    .line 6
    iget p0, p0, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView$$State$ShowToastMessage1Command;->message:I

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView;->showToastMessage(I)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView$$State$ShowToastMessage1Command;->apply(Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView;)V

    return-void
.end method
