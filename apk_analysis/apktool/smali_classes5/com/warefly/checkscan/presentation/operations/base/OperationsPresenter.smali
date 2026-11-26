.class public abstract Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/warefly/checkscan/presentation/operations/base/OperationsView;",
        ">",
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private operationsDates:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private operationsPaginator:Ls26;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls26<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;->operationsDates:Ljava/util/HashSet;

    return-void
.end method

.method public static final synthetic access$getOperationsDates$p(Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;->operationsDates:Ljava/util/HashSet;

    return-object p0
.end method


# virtual methods
.method public final initOperationsPaginator(Lnl3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Lmz7<",
            "Ljava/util/List<",
            "Lkz5$a;",
            ">;>;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ls26;

    new-instance v1, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$b;

    invoke-direct {v1, p1, p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$b;-><init>(Lnl3;Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;)V

    new-instance p1, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$a;

    new-instance v2, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$c;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;)V

    invoke-direct {p1, v2}, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$c;)V

    invoke-direct {v0, v1, p1}, Ls26;-><init>(Lnl3;Ls26$m;)V

    invoke-virtual {v0}, Ls26;->c()V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;->operationsPaginator:Ls26;

    return-void
.end method

.method public final loadPageOfOperations()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;->operationsPaginator:Ls26;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ls26;->a()V

    :cond_0
    return-void
.end method

.method public onLoadMoreOperations()V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;->loadPageOfOperations()V

    return-void
.end method

.method public onRefreshPage()V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;->refreshOperations()V

    return-void
.end method

.method public final refreshOperations()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;->operationsDates:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;->operationsPaginator:Ls26;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ls26;->c()V

    :cond_0
    return-void
.end method
