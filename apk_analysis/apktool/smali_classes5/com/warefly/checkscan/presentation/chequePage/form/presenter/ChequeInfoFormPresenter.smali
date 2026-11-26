.class public final Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;",
        ">;"
    }
.end annotation


# instance fields
.field private final chequeId:I

.field private final chequeInteractor:Lxd1;

.field private final validator:Li3;


# direct methods
.method public constructor <init>(ILxd1;Li3;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput p1, p0, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;->chequeId:I

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;->chequeInteractor:Lxd1;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;->validator:Li3;

    return-void
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;->onPostInfoClicked$lambda$5$lambda$4$lambda$2(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;->onPostInfoClicked$lambda$5$lambda$4$lambda$3(Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;)V

    return-void
.end method

.method private static final onPostInfoClicked$lambda$5$lambda$4$lambda$2(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onPostInfoClicked$lambda$5$lambda$4$lambda$3(Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;->showPostingForm(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onDataChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;->validator:Li3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    iget-object v0, v0, Li3;->e:Lg17;

    invoke-static {p1}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg17;->e(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;

    if-eqz p1, :cond_0

    invoke-interface {p1, v3}, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;->showInvalidFullNameError(Z)V

    :cond_0
    iget-object p1, p0, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;->validator:Li3;

    invoke-virtual {p1, p2}, Li3;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;

    if-eqz p0, :cond_3

    invoke-interface {p0, v3}, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;->setPostingFormEnabled(Z)V

    invoke-interface {p0, v2}, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;->showInvalidPhoneError(Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;

    if-eqz p0, :cond_3

    invoke-interface {p0, v3}, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;->showInvalidFullNameError(Z)V

    invoke-interface {p0, v3}, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;->showInvalidPhoneError(Z)V

    invoke-interface {p0, v2}, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;->setPostingFormEnabled(Z)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;

    if-eqz p0, :cond_3

    invoke-interface {p0, v3}, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;->setPostingFormEnabled(Z)V

    invoke-interface {p0, v2}, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;->showInvalidFullNameError(Z)V

    :cond_3
    return-void
.end method

.method public final declared-synchronized onPostInfoClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;->validator:Li3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;->validator:Li3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Li3;->e:Lg17;

    invoke-static {p1}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg17;->e(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_2

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v3

    check-cast v3, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v3, v4}, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;->showInvalidFullNameError(Z)V

    :cond_1
    iget-object v3, p0, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;->validator:Li3;

    invoke-virtual {v3, p2}, Li3;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, p2

    :cond_2
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v3

    check-cast v3, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;

    if-eqz v3, :cond_3

    invoke-interface {v3, v4}, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormView;->showInvalidPhoneError(Z)V

    :cond_3
    iget-object v3, p0, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;->chequeInteractor:Lxd1;

    iget v5, p0, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;->chequeId:I

    iget-object v6, p0, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;->validator:Li3;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Li3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v3, Lxd1;->a:Lcf1;

    invoke-interface {v6, v5, v0, v2}, Lcf1;->f(ILjava/lang/String;Ljava/lang/String;)Lh08;

    move-result-object v0

    new-instance v2, Lwd1;

    invoke-direct {v2, v3, v4}, Lwd1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Lqp1;->e(Lh6;)Loq1;

    move-result-object v0

    sget-object v2, Lne7;->c:Lhe7;

    invoke-virtual {v0, v2}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object v4

    new-instance v0, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;)V

    new-instance v5, Lcl0;

    invoke-direct {v5, v0, v1}, Lcl0;-><init>(Lnl3;I)V

    sget-object v6, Lrm3;->d:Lrm3$e;

    sget-object v7, Lrm3;->c:Lrm3$d;

    new-instance v3, Loq1;

    move-object v8, v7

    invoke-direct/range {v3 .. v8}, Loq1;-><init>(Lqp1;Lqx1;Lqx1;Lh6;Lh6;)V

    new-instance v0, Ldl0;

    invoke-direct {v0, p0, v1}, Ldl0;-><init>(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;I)V

    new-instance v1, Lzp1;

    invoke-direct {v1, v3, v0}, Lzp1;-><init>(Lqp1;Lh6;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;)V

    new-instance v2, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter$c;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;)V

    invoke-static {v1, v2, v0}, Lyb8;->e(Lqp1;Lll3;Lnl3;)Lcp2;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;->onDataChanged(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lj59;->a:Lj59;

    :goto_1
    if-nez v0, :cond_6

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;->onDataChanged(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
