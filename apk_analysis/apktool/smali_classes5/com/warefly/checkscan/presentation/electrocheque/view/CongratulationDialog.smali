.class public final Lcom/warefly/checkscan/presentation/electrocheque/view/CongratulationDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew<",
        "Lcom/warefly/checkscan/databinding/DialogElectrochequeCongratulationsBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic e:[Lze4;
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
.field public final c:Ljava/lang/String;

.field public final d:Lbn2;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/electrocheque/view/CongratulationDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogElectrochequeCongratulationsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/electrocheque/view/CongratulationDialog;->e:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/electrocheque/view/CongratulationDialog;->c:Ljava/lang/String;

    new-instance p1, Lbn2;

    const-class p2, Lcom/warefly/checkscan/databinding/DialogElectrochequeCongratulationsBinding;

    invoke-direct {p1, p2, p0}, Lbn2;-><init>(Ljava/lang/Class;Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/electrocheque/view/CongratulationDialog;->d:Lbn2;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/electrocheque/view/CongratulationDialog;->e:[Lze4;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/electrocheque/view/CongratulationDialog;->d:Lbn2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lbn2;->d:Ljava/lang/Object;

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lcom/warefly/checkscan/databinding/DialogElectrochequeCongratulationsBinding;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogElectrochequeCongratulationsBinding;->tvNowYouWill:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/electrocheque/view/CongratulationDialog;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogElectrochequeCongratulationsBinding;->ivCloseBtnElectro:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/electrocheque/view/CongratulationDialog$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/electrocheque/view/CongratulationDialog$a;-><init>(Lcom/warefly/checkscan/presentation/electrocheque/view/CongratulationDialog;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
