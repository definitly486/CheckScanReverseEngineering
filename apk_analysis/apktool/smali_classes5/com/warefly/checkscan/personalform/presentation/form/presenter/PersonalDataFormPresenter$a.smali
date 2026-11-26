.class public final Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->getFirstClosestRegions(Ldu4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lb36<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$a;->f:Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lb36;

    iget-object v0, p1, Lb36;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object p1, p1, Lb36;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter$a;->f:Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->access$getPresenterScope(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;)Ly22;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/personalform/presentation/form/presenter/a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/a;-><init>(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;ILjava/lang/String;Le02;)V

    const/4 p0, 0x3

    invoke-static {v1, v3, v3, v2, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->showCitySelection()V

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
