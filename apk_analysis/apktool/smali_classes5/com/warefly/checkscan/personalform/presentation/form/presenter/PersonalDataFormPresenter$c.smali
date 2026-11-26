.class public final Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$c;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.personalform.presentation.form.presenter.PersonalDataFormPresenter$onFirstViewAttach$2"
    f = "PersonalDataFormPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->onFirstViewAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ljava/util/List<",
        "+",
        "Lpz3;",
        ">;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$c;->m:Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$c;

    iget-object p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$c;->m:Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$c;-><init>(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$c;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$c;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$c;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$c;->l:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$c;->m:Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView;->showItems(Ljava/util/List;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
