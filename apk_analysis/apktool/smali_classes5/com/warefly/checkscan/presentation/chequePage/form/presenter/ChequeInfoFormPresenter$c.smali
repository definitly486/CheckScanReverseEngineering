.class public final Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;->onPostInfoClicked(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter$c;->f:Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter$c;->f:Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;->showPostingFormSuccess()V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
