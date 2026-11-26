.class public final Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneFailBottomSheet$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneFailBottomSheet;->onCreate(Landroid/os/Bundle;)V
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
.field public final synthetic f:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneFailBottomSheet;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneFailBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneFailBottomSheet$b;->f:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneFailBottomSheet;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneFailBottomSheet$b;->f:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneFailBottomSheet;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneFailBottomSheet;->d:Lxz8$a;

    iget-object p1, p1, Lxz8$a;->e:Lxz8$a$a;

    iget-object p1, p1, Lxz8$a$a;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->openUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    sget-object p1, Lj59;->a:Lj59;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
