.class public final Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;->initOperationsPaginator(Lnl3;)V
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
        "Ljava/lang/Object;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/lang/Integer;",
            "Lmz7<",
            "Ljava/util/List<",
            "Lkz5$a;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final synthetic g:Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnl3;Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;)V
    .locals 0
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
            ">;>;>;",
            "Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$b;->f:Lnl3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$b;->g:Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;

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

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$b;->f:Lnl3;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmz7;

    new-instance v0, Lcom/warefly/checkscan/presentation/operations/base/a;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$b;->g:Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/operations/base/a;-><init>(Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;)V

    new-instance p0, La9;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, La9;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lp08;

    invoke-direct {v0, p1, p0}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object p0, Lne7;->c:Lhe7;

    invoke-virtual {v0, p0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p0

    return-object p0
.end method
