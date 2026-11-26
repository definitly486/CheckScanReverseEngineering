.class public final Lcom/warefly/checkscan/auth/presentation/addEmail/dialogs/AddEmailSuccessBottomSheet;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/auth/databinding/BottomSheetAddEmailSuccessBinding;",
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
.field public final d:Lud9;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/auth/presentation/addEmail/dialogs/AddEmailSuccessBottomSheet;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/auth/databinding/BottomSheetAddEmailSuccessBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/auth/presentation/addEmail/dialogs/AddEmailSuccessBottomSheet;->e:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lud9;

    const-class v0, Lcom/warefly/checkscan/auth/databinding/BottomSheetAddEmailSuccessBinding;

    invoke-direct {p1, v0, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/addEmail/dialogs/AddEmailSuccessBottomSheet;->d:Lud9;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/auth/presentation/addEmail/dialogs/AddEmailSuccessBottomSheet;->e:[Lze4;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/addEmail/dialogs/AddEmailSuccessBottomSheet;->d:Lud9;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lcom/warefly/checkscan/auth/databinding/BottomSheetAddEmailSuccessBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/auth/databinding/BottomSheetAddEmailSuccessBinding;->btnAction:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/addEmail/dialogs/AddEmailSuccessBottomSheet$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/auth/presentation/addEmail/dialogs/AddEmailSuccessBottomSheet$a;-><init>(Lcom/warefly/checkscan/auth/presentation/addEmail/dialogs/AddEmailSuccessBottomSheet;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
