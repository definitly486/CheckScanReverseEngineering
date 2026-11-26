.class public final Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet$$PresentersBinder$a;
.super Lpf6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf6<",
        "Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lih5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;

    check-cast p2, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/presenter/TaskSuccessPresenter;

    iput-object p2, p1, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;->presenter:Lcom/warefly/checkscan/presentation/tasks/dialogs/success/presenter/TaskSuccessPresenter;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lih5;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;->providePresenter()Lcom/warefly/checkscan/presentation/tasks/dialogs/success/presenter/TaskSuccessPresenter;

    move-result-object p0

    return-object p0
.end method
