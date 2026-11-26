.class public final Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field public final synthetic f:La40$a;

.field public final synthetic g:Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet;


# direct methods
.method public constructor <init>(La40$a;Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet$a;->f:La40$a;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet$a;->g:Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet$a;->f:La40$a;

    iget-object p1, p1, La40$a;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet$a;->g:Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->openUrl(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet;->e:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
