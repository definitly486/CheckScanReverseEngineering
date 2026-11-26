.class public final Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/databinding/DialogRegistrationCardBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic i:[Lze4;
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
.field public final d:Lhc9;

.field public final e:Lic9;

.field public final f:I

.field public final g:I

.field public final h:Lud9;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogRegistrationCardBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog;->i:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lhc9;Lic9;II)V
    .locals 1

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog;->d:Lhc9;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog;->e:Lic9;

    iput p4, p0, Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog;->f:I

    iput p5, p0, Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog;->g:I

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/databinding/DialogRegistrationCardBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog;->h:Lud9;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog;->i:[Lze4;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog;->h:Lud9;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lcom/warefly/checkscan/databinding/DialogRegistrationCardBinding;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogRegistrationCardBinding;->tvTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    iget v2, p0, Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog;->g:I

    iget v3, p0, Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog;->f:I

    if-ne v3, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogRegistrationCardBinding;->btnConfirm:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog$a;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog$a;-><init>(Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogRegistrationCardBinding;->btnCancel:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog$b;-><init>(Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
