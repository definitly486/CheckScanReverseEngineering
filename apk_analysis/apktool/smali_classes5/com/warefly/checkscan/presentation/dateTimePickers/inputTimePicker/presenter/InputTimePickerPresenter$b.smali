.class public final Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter$b;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.dateTimePickers.inputTimePicker.presenter.InputTimePickerPresenter$subscribeOnTimeState$1"
    f = "InputTimePickerPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter;->subscribeOnTimeState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter$a;",
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

.field public final synthetic m:Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter$b;->m:Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter;

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

    new-instance v0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter$b;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter$b;->m:Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter$b;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter$a;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter$b;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter$b;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter$b;->l:Ljava/lang/Object;

    check-cast p1, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter$a;

    iget-object v0, p1, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter$a;->a:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter$a;->b:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter$b;->m:Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView;

    if-eqz v1, :cond_1

    invoke-static {p0, v0}, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter;->access$validateHour(Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter;->access$validateMinutes(Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/presenter/InputTimePickerPresenter;Ljava/lang/Integer;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v1, p0}, Lcom/warefly/checkscan/presentation/dateTimePickers/inputTimePicker/view/InputTimePickerView;->enableSelectButton(Z)V

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
