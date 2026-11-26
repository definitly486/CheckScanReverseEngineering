.class public final Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog$$PresentersBinder$a;
.super Lpf6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf6<",
        "Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lih5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;

    check-cast p2, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequePresenter;

    iput-object p2, p1, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;->presenter:Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequePresenter;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lih5;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;->providePresenter()Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequePresenter;

    move-result-object p0

    return-object p0
.end method
