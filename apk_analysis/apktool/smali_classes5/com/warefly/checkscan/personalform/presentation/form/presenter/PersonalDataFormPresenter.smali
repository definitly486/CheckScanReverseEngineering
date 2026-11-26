.class public final Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lm66$a;
.implements Ll56$a;
.implements Lr66$a;
.implements Lp56$a;
.implements Lu56$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView;",
        ">;",
        "Lm66$a;",
        "Ll56$a;",
        "Lr66$a;",
        "Lp56$a;",
        "Lu56$a;"
    }
.end annotation


# instance fields
.field private final afterOnboarding:Z

.field private final interactor:Lw66;

.field private final personalFormOutsideInteractor:Ld76;

.field private final preferencesRepository:Ljf6;

.field private final router:Li66;


# direct methods
.method public constructor <init>(Lw66;Ljf6;ZLi66;Ld76;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->interactor:Lw66;

    iput-object p2, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->preferencesRepository:Ljf6;

    iput-boolean p3, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->afterOnboarding:Z

    iput-object p4, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->router:Li66;

    iput-object p5, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->personalFormOutsideInteractor:Ld76;

    return-void
.end method

.method public static final synthetic access$getAfterOnboarding$p(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->afterOnboarding:Z

    return p0
.end method

.method public static final synthetic access$getFirstClosestRegions(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;Ldu4;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->getFirstClosestRegions(Ldu4;)V

    return-void
.end method

.method public static final synthetic access$getInteractor$p(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;)Lw66;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->interactor:Lw66;

    return-object p0
.end method

.method public static final synthetic access$getPersonalFormOutsideInteractor$p(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;)Ld76;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->personalFormOutsideInteractor:Ld76;

    return-object p0
.end method

.method public static final synthetic access$getPresenterScope(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;)Ly22;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRouter$p(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;)Li66;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->router:Li66;

    return-object p0
.end method

.method public static synthetic e(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->showCitySelection$lambda$3(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$i;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->updateLocation$lambda$1(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$h;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->updateLocation$lambda$0(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method private final getFirstClosestRegions(Ldu4;)V
    .locals 3

    iget-object p1, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->personalFormOutsideInteractor:Ld76;

    invoke-interface {p1}, Ld76;->a()Lp08;

    move-result-object p1

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {p1, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$a;-><init>(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object p1

    invoke-static {p0, p1, v1, v2, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final showCitySelection$lambda$3(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->interactor:Lw66;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lw66;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static final updateLocation$lambda$0(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final updateLocation$lambda$1(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onBackClicked()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->interactor:Lw66;

    iget-object v0, v0, Lw66;->d:Lz68;

    invoke-virtual {v0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a;

    iget-boolean v1, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->afterOnboarding:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView;->showOnboardingWarning(Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a;)V

    :cond_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->router:Li66;

    invoke-interface {p0}, Li66;->a()V

    return-void
.end method

.method public onChipClicked(Lj56;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->interactor:Lw66;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lw66;->c(Lj56;)V

    invoke-virtual {p0}, Lw66;->a()V

    return-void
.end method

.method public onCityChangeClicked()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v0}, Ljf6;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->showCitySelection()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView;->requestGeoPermission()V

    :cond_1
    iget-object p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->preferencesRepository:Ljf6;

    invoke-interface {p0}, Ljf6;->a0()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->onDestroy()V

    iget-object p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->interactor:Lw66;

    iget-object v0, p0, Lw66;->e:Lz68;

    :cond_0
    invoke-virtual {v0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    sget-object v2, Lkx2;->b:Lkx2;

    invoke-virtual {v0, v1, v2}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lw66;->f:Lz68;

    :cond_1
    invoke-virtual {v1}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p0, v0}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void
.end method

.method public onDropDownClicked(Ls56$a;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->interactor:Lw66;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lw66;->b(Ls56$a;)V

    invoke-virtual {p0}, Lw66;->a()V

    return-void
.end method

.method public onEmailChangeClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->router:Li66;

    invoke-interface {p0}, Li66;->f()V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 4

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$b;-><init>(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;Le02;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v1, v3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    iget-object v0, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->interactor:Lw66;

    iget-object v0, v0, Lw66;->e:Lz68;

    invoke-static {v0}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$c;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$c;-><init>(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;Le02;)V

    new-instance v3, Ldf3;

    invoke-direct {v3, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    iget-object v0, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->interactor:Lw66;

    iget-object v0, v0, Lw66;->f:Lz68;

    invoke-static {v0}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$d;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$d;-><init>(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final onLaterClicked(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->router:Li66;

    invoke-interface {p0}, Li66;->b()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->personalFormOutsideInteractor:Ld76;

    invoke-interface {p1}, Ld76;->b()V

    iget-object p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->router:Li66;

    invoke-interface {p0}, Li66;->e()V

    return-void
.end method

.method public final onOpenUrlClicked(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrlInCustomTab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$e;-><init>(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method public final onSaveClicked()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->interactor:Lw66;

    iget-boolean v1, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->afterOnboarding:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lx66;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lx66;-><init>(Lw66;ZLe02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v2}, Ltb7;-><init>(Lbm3;)V

    new-instance v1, Ly66;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v3}, Lpg8;-><init>(ILe02;)V

    new-instance v2, Lde3;

    invoke-direct {v2, v0, v1}, Lde3;-><init>(Lhd3;Ldm3;)V

    new-instance v0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$f;

    invoke-direct {v0, p0, v3}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$f;-><init>(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;Le02;)V

    new-instance v1, Lce3;

    invoke-direct {v1, v2, v0}, Lce3;-><init>(Lhd3;Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$g;

    invoke-direct {v0, p0, v3}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$g;-><init>(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v1, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onTextFieldChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v4, p3

    invoke-static/range {p1 .. p3}, Lx7;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->interactor:Lw66;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v12, Lw66;->e:Lz68;

    :goto_0
    invoke-virtual {v13}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v5, -0x1

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpz3;

    instance-of v6, v3, Lf56;

    if-eqz v6, :cond_0

    check-cast v3, Lf56;

    iget-object v3, v3, Lf56;->d:Ljava/lang/String;

    move-object/from16 v6, p1

    invoke-static {v3, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_0
    move-object/from16 v6, p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v6, p1

    move v2, v5

    :goto_2
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v0

    check-cast v3, Lf56;

    iget-object v7, v3, Lf56;->e:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v8, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpz3;

    instance-of v10, v9, Lt66;

    if-eqz v10, :cond_3

    check-cast v9, Lt66;

    invoke-interface {v9}, Lw56;->getKey()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, p2

    invoke-static {v9, v10}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v5, v8

    goto :goto_4

    :cond_3
    move-object/from16 v10, p2

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v10, p2

    :goto_4
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v8, v0

    check-cast v8, Lt66;

    invoke-interface {v8}, Lt66;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    move v11, v0

    goto :goto_5

    :cond_6
    const/4 v11, 0x1

    :goto_5
    invoke-static {v4}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Lw56;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v16, 0x1

    goto :goto_6

    :cond_7
    const/16 v16, 0x0

    :goto_6
    instance-of v1, v8, Ln56;

    if-eqz v1, :cond_b

    :try_start_0
    sget-object v0, Lqb2;->b:Ljava/time/format/DateTimeFormatter;

    sget-object v9, Lqb2;->a:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v9, v4}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lct4;->Companion:Lct4$a;

    invoke-static {v9, v0}, Lct4$a;->a(Lct4$a;Ljava/lang/String;)Lct4;

    move-result-object v0

    iget-object v9, v0, Lct4;->b:Ljava/time/LocalDate;

    invoke-virtual {v9}, Ljava/time/LocalDate;->getYear()I

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move/from16 v18, v1

    const/16 v1, 0x78a

    if-lt v9, v1, :cond_9

    :try_start_1
    iget-object v0, v0, Lct4;->b:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v9, 0x1

    :try_start_2
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    if-le v0, v1, :cond_8

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_a

    :catchall_1
    move-exception v0

    :goto_7
    const/4 v9, 0x1

    goto :goto_a

    :cond_9
    const/4 v9, 0x1

    :goto_8
    move v0, v9

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_b

    :catchall_2
    move-exception v0

    move/from16 v18, v1

    goto :goto_7

    :goto_a
    new-instance v1, Lk57$a;

    invoke-direct {v1, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_b
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    instance-of v9, v0, Lk57$a;

    if-eqz v9, :cond_a

    move-object v0, v1

    :cond_a
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_c

    :cond_b
    move/from16 v18, v1

    const/4 v0, 0x0

    :goto_c
    if-eqz v11, :cond_d

    if-nez v16, :cond_d

    if-eqz v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x1

    :goto_e
    if-eqz v18, :cond_e

    check-cast v8, Ln56;

    move v9, v2

    move v2, v1

    iget-object v1, v8, Ln56;->a:Ljava/lang/String;

    move-object v11, v3

    iget-boolean v3, v8, Ln56;->c:Z

    move/from16 v16, v5

    iget-boolean v5, v8, Ln56;->e:Z

    iget-object v6, v8, Ln56;->f:Ljava/lang/String;

    move-object/from16 v17, v7

    iget-object v7, v8, Ln56;->g:Ljava/lang/String;

    iget-object v0, v8, Ln56;->h:Ljava/lang/String;

    move/from16 v18, v9

    iget-object v9, v8, Ln56;->i:Ljava/lang/String;

    iget-object v10, v8, Ln56;->j:Ljava/lang/String;

    iget-object v8, v8, Ln56;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v19, v11

    move-object v11, v8

    move-object v8, v0

    new-instance v0, Ln56;

    move-object/from16 p0, v14

    move/from16 v14, v16

    move-object/from16 v16, v12

    move/from16 v12, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v13

    move-object/from16 v13, v19

    invoke-direct/range {v0 .. v11}, Ln56;-><init>(Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_e
    move-object/from16 v18, v7

    move-object/from16 v16, v12

    move-object/from16 v17, v13

    move-object/from16 p0, v14

    move v12, v2

    move-object v13, v3

    move v14, v5

    move v2, v1

    instance-of v0, v8, Ld66;

    if-eqz v0, :cond_10

    check-cast v8, Ld66;

    iget-object v1, v8, Ld66;->a:Ljava/lang/String;

    iget-boolean v3, v8, Ld66;->c:Z

    iget-boolean v5, v8, Ld66;->e:Z

    iget-object v6, v8, Ld66;->f:Ljava/lang/String;

    iget-object v7, v8, Ld66;->g:Ljava/lang/String;

    iget-object v0, v8, Ld66;->h:Ljava/lang/String;

    iget-object v9, v8, Ld66;->i:Ljava/lang/String;

    iget-object v10, v8, Ld66;->j:Ljava/lang/String;

    iget-object v11, v8, Ld66;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v8, v0

    new-instance v0, Ld66;

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v11}, Ld66;-><init>(Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    move-object/from16 v7, v18

    check-cast v7, Ljava/util/Collection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v14, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lj59;->a:Lj59;

    invoke-static {v13, v1}, Lf56;->d(Lf56;Ljava/util/ArrayList;)Lf56;

    move-result-object v0

    invoke-virtual {v15, v12, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p0

    move-object/from16 v1, v17

    invoke-virtual {v1, v2, v15}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual/range {v16 .. v16}, Lw66;->a()V

    return-void

    :cond_f
    move-object/from16 v4, p3

    move-object v13, v1

    move-object/from16 v12, v16

    goto/16 :goto_0

    :cond_10
    invoke-static {}, Lme0;->e()V

    return-void
.end method

.method public final showCitySelection()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->router:Li66;

    new-instance v1, Le66;

    invoke-direct {v1, p0}, Le66;-><init>(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;)V

    invoke-interface {v0, v1}, Li66;->d(Le66;)V

    iget-object p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->router:Li66;

    invoke-interface {p0}, Li66;->c()V

    return-void
.end method

.method public final updateLocation()V
    .locals 6

    iget-object v0, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->personalFormOutsideInteractor:Ld76;

    invoke-interface {v0}, Ld76;->c()Ltq5;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Ltq5;->g(Lhe7;)Lxr5;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltq5;->e(Lhe7;)Lqr5;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$h;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$h;-><init>(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;)V

    new-instance v2, Lue1;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lue1;-><init>(Lgh4;I)V

    new-instance v1, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$i;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$i;-><init>(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;)V

    new-instance v4, Lb4;

    invoke-direct {v4, v1, v3}, Lb4;-><init>(Lgh4;I)V

    new-instance v1, Lhh4;

    sget-object v5, Lrm3;->c:Lrm3$d;

    invoke-direct {v1, v2, v4, v5}, Lhh4;-><init>(Lqx1;Lqx1;Lh6;)V

    invoke-virtual {v0, v1}, Ltq5;->a(Lls5;)V

    const/4 v0, 0x0

    invoke-static {p0, v1, v0, v3, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
