.class public final Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView$a;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog$b;->f:Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog$b;->f:Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;->presenter:Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequePresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequePresenter;->onShareOptionClicked(Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView$a;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
