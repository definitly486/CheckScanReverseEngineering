.class public Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView$$State$ShowToastMessageCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowToastMessageCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView;",
        ">;"
    }
.end annotation


# instance fields
.field public final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView$$State;Ljava/lang/String;)V
    .locals 1

    const-string p1, "showToastMessage"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView$$State$ShowToastMessageCommand;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView$$State$ShowToastMessageCommand;->message:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView;->showToastMessage(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView$$State$ShowToastMessageCommand;->apply(Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView;)V

    return-void
.end method
