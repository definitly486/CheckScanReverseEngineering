.class public final Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->onFirstViewAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/util/List<",
        "+",
        "Lpy5;",
        ">;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter$c;->f:Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter$c;->f:Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->access$setOperationsCategories$p(Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;Ljava/util/List;)V

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->access$getFilterId$p(Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->access$openPageByFilter(Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;I)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;->showCouldntLoadCategories(Z)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;->showCategoriesLoaded(Z)V

    :cond_1
    invoke-static {p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->access$initOperationsPaginator(Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
