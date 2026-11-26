.class public final Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter$a;
.super Lb0;
.source "SourceFile"

# interfaces
.implements Ls22;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;->onAddEmailClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter$a;->c:Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;

    sget-object p1, Ls22$a;->b:Ls22$a;

    invoke-direct {p0, p1}, Lb0;-><init>(Lo22$b;)V

    return-void
.end method


# virtual methods
.method public final handleException(Lo22;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter$a;->c:Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailView;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailView;->showButtonLoading(Z)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailView;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailView;->showEmailUnknownError()V

    :cond_1
    return-void
.end method
