.class public final Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$c;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.tasks.daily.presenter.DailyTaskPresenter$onGetRewardClicked$2"
    f = "DailyTaskPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;->onGetRewardClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Ldm3<",
        "Lid3<",
        "-",
        "Ld82$a;",
        ">;",
        "Ljava/lang/Throwable;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic l:Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$c;->l:Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Le02;

    new-instance p1, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$c;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$c;->l:Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;

    invoke-direct {p1, p0, p3}, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter$c;->l:Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskView;->showButtonLoading(Z)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
