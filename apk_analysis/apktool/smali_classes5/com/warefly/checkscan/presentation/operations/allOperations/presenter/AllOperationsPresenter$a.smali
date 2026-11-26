.class public final Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->initOperationsPaginator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/Integer;",
        "Lmz7<",
        "Ljava/util/List<",
        "+",
        "Lkz5$a;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter$a;->f:Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter$a;->f:Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->access$getInteractor$p(Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;)Lkz5;

    move-result-object v0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->access$getSelectedCategory$p(Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;)Lpy5;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lpy5;->a()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iget-object v0, v0, Lkz5;->a:Loz5;

    invoke-interface {v0, p0, p1}, Loz5;->a(II)Lmz7;

    move-result-object p0

    new-instance p1, Lmz5;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lgh4;-><init>(I)V

    new-instance v0, Lud1;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lud1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lp08;

    invoke-direct {p1, p0, v0}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object p1
.end method
