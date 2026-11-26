.class public final Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneSuccessBottomSheet;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/databinding/DialogPhoneTransferSuccessResultBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic g:[Lze4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lze4<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lud9;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneSuccessBottomSheet;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogPhoneTransferSuccessResultBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneSuccessBottomSheet;->g:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneSuccessBottomSheet;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneSuccessBottomSheet;->e:Ljava/lang/String;

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/databinding/DialogPhoneTransferSuccessResultBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneSuccessBottomSheet;->f:Lud9;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneSuccessBottomSheet;->g:[Lze4;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneSuccessBottomSheet;->f:Lud9;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lcom/warefly/checkscan/databinding/DialogPhoneTransferSuccessResultBinding;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogPhoneTransferSuccessResultBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneSuccessBottomSheet;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogPhoneTransferSuccessResultBinding;->tvDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneSuccessBottomSheet;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogPhoneTransferSuccessResultBinding;->btnAction:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneSuccessBottomSheet$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneSuccessBottomSheet$a;-><init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/dialogs/TransferPhoneSuccessBottomSheet;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
