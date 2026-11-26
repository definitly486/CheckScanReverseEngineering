.class public final Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter;->onFirstViewAttach()V
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
.field public final synthetic f:Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter$a;->f:Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter$a;->f:Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter;->access$getOperationsInteractor$p(Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter;)Lkz5;

    move-result-object v0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter;->access$getCardId$p(Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter;)J

    move-result-wide v1

    iget-object p0, v0, Lkz5;->a:Loz5;

    invoke-interface {p0, p1, v1, v2}, Loz5;->d(IJ)Lmz7;

    move-result-object p0

    new-instance p1, Lnz5;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lgh4;-><init>(I)V

    new-instance v0, Lfl0;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lfl0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lp08;

    invoke-direct {p1, p0, v0}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object p1
.end method
