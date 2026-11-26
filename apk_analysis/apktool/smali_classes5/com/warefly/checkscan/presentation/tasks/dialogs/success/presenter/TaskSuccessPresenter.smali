.class public final Lcom/warefly/checkscan/presentation/tasks/dialogs/success/presenter/TaskSuccessPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/tasks/dialogs/success/presenter/TaskSuccessPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessView;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/warefly/checkscan/presentation/tasks/dialogs/success/presenter/TaskSuccessPresenter$a;

.field private static final WAIT_ENTER_ANIMATION:J = 0x190L


# instance fields
.field private final taskId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/presenter/TaskSuccessPresenter$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/presenter/TaskSuccessPresenter;->Companion:Lcom/warefly/checkscan/presentation/tasks/dialogs/success/presenter/TaskSuccessPresenter$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput p1, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/presenter/TaskSuccessPresenter;->taskId:I

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessView;->dismissDialog()V

    :cond_0
    return-void
.end method

.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    new-instance v0, Lkd$s0$f$a$f;

    iget v1, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/presenter/TaskSuccessPresenter;->taskId:I

    const-string v2, "Success"

    invoke-direct {v0, v1, v2}, Lkd$s0$f$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lkd;->a()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/presenter/TaskSuccessPresenter$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/presenter/TaskSuccessPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/tasks/dialogs/success/presenter/TaskSuccessPresenter;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method public final openDeeplink(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrlInCustomTab(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessView;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessView;->dismissDialog()V

    :cond_1
    return-void
.end method
