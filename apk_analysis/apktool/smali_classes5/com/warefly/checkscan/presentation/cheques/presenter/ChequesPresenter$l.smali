.class public final Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$l;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->loadScreenContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lgc;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$l;->f:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lgc;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$l;->f:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lgc;->a:Ljava/lang/String;

    iget-object v2, p1, Lgc;->b:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->access$createSpannedAlfaProgressString(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p0

    iget v2, p1, Lgc;->c:I

    iget-boolean p1, p1, Lgc;->d:Z

    invoke-interface {v0, v1, p0, v2, p1}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;->showAlfaProgressCheques(Ljava/lang/String;Landroid/text/SpannableString;IZ)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
