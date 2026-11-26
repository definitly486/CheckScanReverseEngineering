.class public final Ls70;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/view/View;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lt70;

.field public final synthetic g:Lcom/warefly/checkscan/databinding/ItemRvBalanceWithdrawMethodBinding;


# direct methods
.method public constructor <init>(Lt70;Lcom/warefly/checkscan/databinding/ItemRvBalanceWithdrawMethodBinding;)V
    .locals 0

    iput-object p1, p0, Ls70;->f:Lt70;

    iput-object p2, p0, Ls70;->g:Lcom/warefly/checkscan/databinding/ItemRvBalanceWithdrawMethodBinding;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Ls70;->f:Lt70;

    iget-object p1, p1, Lt70;->b:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    iget-object p0, p0, Ls70;->g:Lcom/warefly/checkscan/databinding/ItemRvBalanceWithdrawMethodBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/ItemRvBalanceWithdrawMethodBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lp70;

    invoke-interface {p1, p0}, Lq70;->onWithdrawClick(Lp70;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
