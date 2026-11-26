.class public final Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FiltersNewDialog$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FiltersNewDialog;->setFiltersList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FiltersNewDialog;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FiltersNewDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FiltersNewDialog$a;->f:Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FiltersNewDialog;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FiltersNewDialog$a;->f:Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FiltersNewDialog;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FiltersNewDialog;->presenter:Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;->onFilterClick(IZ)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
