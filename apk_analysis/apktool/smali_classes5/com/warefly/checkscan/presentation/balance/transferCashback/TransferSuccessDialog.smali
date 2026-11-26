.class public final Lcom/warefly/checkscan/presentation/balance/transferCashback/TransferSuccessDialog;
.super Lcom/warefly/checkscan/ui/AutoCancellableDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/ui/AutoCancellableDialog<",
        "Lcom/warefly/checkscan/databinding/DialogDoneBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic h:[Lze4;
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
.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lbn2;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/balance/transferCashback/TransferSuccessDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogDoneBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/balance/transferCashback/TransferSuccessDialog;->h:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0xbb8

    invoke-direct {p0, p1, v0, v1}, Lcom/warefly/checkscan/ui/AutoCancellableDialog;-><init>(Landroid/content/Context;J)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/TransferSuccessDialog;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/TransferSuccessDialog;->f:Ljava/lang/String;

    new-instance p1, Lbn2;

    const-class p2, Lcom/warefly/checkscan/databinding/DialogDoneBinding;

    invoke-direct {p1, p2, p0}, Lbn2;-><init>(Ljava/lang/Class;Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/TransferSuccessDialog;->g:Lbn2;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/warefly/checkscan/ui/AutoCancellableDialog;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/balance/transferCashback/TransferSuccessDialog;->h:[Lze4;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/TransferSuccessDialog;->g:Lbn2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v1, Lbn2;->d:Ljava/lang/Object;

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lcom/warefly/checkscan/databinding/DialogDoneBinding;

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogDoneBinding;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080216

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogDoneBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/TransferSuccessDialog;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogDoneBinding;->tvSubtitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/TransferSuccessDialog;->f:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method
