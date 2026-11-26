.class public final Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$d;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;->setUpPaginator()V
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
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$d;->f:Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;

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

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$d;->f:Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;->access$getBalanceInteractor$p(Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;)Lb40;

    move-result-object v0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;->access$getPromocodesId$p(Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;)I

    move-result v1

    iget-object v2, v0, Lb40;->a:Ln60;

    invoke-interface {v2, v1, p1}, Ln60;->z(II)Ltb7;

    move-result-object p1

    new-instance v1, Lq40;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lq40;-><init>(Lb40;Le02;)V

    invoke-static {p1, v1}, Lse3;->a(Lhd3;Lbm3;)Lj91;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/a;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/a;-><init>(Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;Le02;)V

    new-instance v1, Ldf3;

    invoke-direct {v1, p1, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    new-instance p1, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/b;

    invoke-direct {p1, p0, v2}, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/b;-><init>(Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;Le02;)V

    new-instance v0, Lde3;

    invoke-direct {v0, v1, p1}, Lde3;-><init>(Lhd3;Ldm3;)V

    invoke-static {p0, v0}, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;->access$launchInPresenter(Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;Lhd3;)Lmb4;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
