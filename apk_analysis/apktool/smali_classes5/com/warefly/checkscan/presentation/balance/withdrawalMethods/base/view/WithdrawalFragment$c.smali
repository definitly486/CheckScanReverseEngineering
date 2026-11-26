.class public final Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;->showInfoDialog(La40;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment<",
            "TT;TP;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment<",
            "TT;TP;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment$c;->f:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment$c;->f:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;->h:Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
