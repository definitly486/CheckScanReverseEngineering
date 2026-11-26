.class public final Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->showCategories(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lga3;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$b;->f:Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lga3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$b;->f:Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment;->o()Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;

    move-result-object p0

    new-instance v0, Lpy5;

    iget v1, p1, Lga3;->a:I

    iget-object p1, p1, Lga3;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lpy5;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->onCategorySelected(Lpy5;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
