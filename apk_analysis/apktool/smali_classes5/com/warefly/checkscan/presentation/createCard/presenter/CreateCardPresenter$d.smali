.class public final Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$d;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->getLinkForUprid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lob0<",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$d;->f:Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lob0;

    instance-of v0, p1, Lob0$b;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$d;->f:Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;

    if-eqz p0, :cond_1

    check-cast p1, Lob0$b;

    iget-object p1, p1, Lob0$b;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;->showUpridWebDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lob0$a;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;

    if-eqz p0, :cond_1

    check-cast p1, Lob0$a;

    iget-object p1, p1, Lob0$a;->a:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;->showError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
