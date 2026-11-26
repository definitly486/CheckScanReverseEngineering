.class public final Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogFragment<",
        "Lcom/warefly/checkscan/databinding/DialogRequestPushPermissionBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog$a;

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
.field public final c:Lgl4;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogRequestPushPermissionBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog;->e:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog;->d:Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0d0089

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogFragment;-><init>(I)V

    new-instance v0, Lgl4;

    const-class v1, Lcom/warefly/checkscan/databinding/DialogRequestPushPermissionBinding;

    invoke-direct {v0, v1}, Lgl4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog;->c:Lgl4;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const v0, 0x7f1501cb

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog;->e:[Lze4;

    const/4 p2, 0x0

    aget-object v0, p1, p2

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog;->c:Lgl4;

    invoke-virtual {v1, p0, v0}, Lgl4;->a(Landroidx/fragment/app/DialogFragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/databinding/DialogRequestPushPermissionBinding;

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogRequestPushPermissionBinding;->btnNegative:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog$b;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog$b;-><init>(Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object p1, p1, p2

    invoke-virtual {v1, p0, p1}, Lgl4;->a(Landroidx/fragment/app/DialogFragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/databinding/DialogRequestPushPermissionBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogRequestPushPermissionBinding;->btnPositive:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog$c;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog$c;-><init>(Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
