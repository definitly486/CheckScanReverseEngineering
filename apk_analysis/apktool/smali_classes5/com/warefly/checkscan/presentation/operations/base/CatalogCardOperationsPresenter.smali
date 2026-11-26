.class public final Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter;
.super Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter<",
        "Lcom/warefly/checkscan/presentation/operations/base/OperationsView;",
        ">;"
    }
.end annotation


# instance fields
.field private final cardId:J

.field private final operationsInteractor:Lkz5;


# direct methods
.method public constructor <init>(JLkz5;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;-><init>()V

    iput-wide p1, p0, Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter;->cardId:J

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter;->operationsInteractor:Lkz5;

    return-void
.end method

.method public static final synthetic access$getCardId$p(Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter;)J
    .locals 2

    iget-wide v0, p0, Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter;->cardId:J

    return-wide v0
.end method

.method public static final synthetic access$getOperationsInteractor$p(Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter;)Lkz5;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter;->operationsInteractor:Lkz5;

    return-object p0
.end method


# virtual methods
.method public onFirstViewAttach()V
    .locals 1

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    new-instance v0, Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter;)V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;->initOperationsPaginator(Lnl3;)V

    sget-object v0, Lj59;->a:Lj59;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;->refreshOperations()V

    return-void
.end method
