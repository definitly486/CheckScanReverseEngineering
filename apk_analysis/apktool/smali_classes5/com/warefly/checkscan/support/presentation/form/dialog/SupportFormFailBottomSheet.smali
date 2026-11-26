.class public final Lcom/warefly/checkscan/support/presentation/form/dialog/SupportFormFailBottomSheet;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/support/databinding/BottomSheetSupportFailFormBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic f:[Lze4;
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
.field public final d:Lwe8;

.field public final e:Lud9;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/support/presentation/form/dialog/SupportFormFailBottomSheet;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/support/databinding/BottomSheetSupportFailFormBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/support/presentation/form/dialog/SupportFormFailBottomSheet;->f:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lwe8;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/warefly/checkscan/support/presentation/form/dialog/SupportFormFailBottomSheet;->d:Lwe8;

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/support/databinding/BottomSheetSupportFailFormBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/support/presentation/form/dialog/SupportFormFailBottomSheet;->e:Lud9;

    return-void
.end method


# virtual methods
.method public final e()Lcom/warefly/checkscan/support/databinding/BottomSheetSupportFailFormBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/support/presentation/form/dialog/SupportFormFailBottomSheet;->f:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Lcom/warefly/checkscan/support/presentation/form/dialog/SupportFormFailBottomSheet;->e:Lud9;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p0, Lcom/warefly/checkscan/support/databinding/BottomSheetSupportFailFormBinding;

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/warefly/checkscan/support/presentation/form/dialog/SupportFormFailBottomSheet;->d:Lwe8;

    iget-object v0, p1, Lwe8;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v0

    iget-object v1, p1, Lwe8;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/dialog/SupportFormFailBottomSheet;->e()Lcom/warefly/checkscan/support/databinding/BottomSheetSupportFailFormBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/support/databinding/BottomSheetSupportFailFormBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/dialog/SupportFormFailBottomSheet;->e()Lcom/warefly/checkscan/support/databinding/BottomSheetSupportFailFormBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/support/databinding/BottomSheetSupportFailFormBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lwe8;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/dialog/SupportFormFailBottomSheet;->e()Lcom/warefly/checkscan/support/databinding/BottomSheetSupportFailFormBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/support/databinding/BottomSheetSupportFailFormBinding;->tvDescription:Landroid/widget/TextView;

    iget-object v1, p1, Lwe8;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/dialog/SupportFormFailBottomSheet;->e()Lcom/warefly/checkscan/support/databinding/BottomSheetSupportFailFormBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/support/databinding/BottomSheetSupportFailFormBinding;->btnAction:Landroid/widget/TextView;

    iget-object p1, p1, Lwe8;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/dialog/SupportFormFailBottomSheet;->e()Lcom/warefly/checkscan/support/databinding/BottomSheetSupportFailFormBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/support/databinding/BottomSheetSupportFailFormBinding;->btnAction:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/support/presentation/form/dialog/SupportFormFailBottomSheet$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/support/presentation/form/dialog/SupportFormFailBottomSheet$a;-><init>(Lcom/warefly/checkscan/support/presentation/form/dialog/SupportFormFailBottomSheet;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
