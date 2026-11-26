.class public final Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/databinding/DialogAssignmentBinding;",
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
.field public final d:La40;

.field public final e:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lud9;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogAssignmentBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet;->g:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;La40;Lll3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "La40;",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet;->d:La40;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet;->e:Lll3;

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/databinding/DialogAssignmentBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet;->f:Lud9;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet;->g:[Lze4;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet;->f:Lud9;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v1, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lcom/warefly/checkscan/databinding/DialogAssignmentBinding;

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogAssignmentBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet;->d:La40;

    iget-object v3, v2, La40;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/DialogAssignmentBinding;->tvDescription:Landroid/widget/TextView;

    sget v3, Lsx3;->a:I

    iget-object v3, v2, La40;->b:Ljava/lang/String;

    invoke-static {v3}, Lsx3;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v3, Lx61;->a:Lx61;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v1, v2, La40;->f:Ljava/lang/Integer;

    if-nez v1, :cond_0

    iget-object v1, v2, La40;->c:Ljava/lang/String;

    :cond_0
    iget-object v3, p1, Lcom/warefly/checkscan/databinding/DialogAssignmentBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_1

    move v4, v0

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/DialogAssignmentBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v3

    invoke-virtual {v3, v1}, Lp37;->g(Ljava/lang/Object;)Lh37;

    move-result-object v1

    iget-object v3, p1, Lcom/warefly/checkscan/databinding/DialogAssignmentBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v1, v2, La40;->d:La40$a;

    iget-object v3, p1, Lcom/warefly/checkscan/databinding/DialogAssignmentBinding;->btnAction:Landroid/widget/TextView;

    iget-object v4, v1, La40$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p1, Lcom/warefly/checkscan/databinding/DialogAssignmentBinding;->btnAction:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Llb7;

    new-instance v5, Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet$a;

    invoke-direct {v5, v1, p0}, Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet$a;-><init>(La40$a;Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet;)V

    invoke-direct {v4, v5}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v2, La40;->e:La40$a;

    if-eqz v1, :cond_2

    iget-object v2, p1, Lcom/warefly/checkscan/databinding/DialogAssignmentBinding;->btnSecondAction:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/DialogAssignmentBinding;->btnSecondAction:Landroid/widget/TextView;

    iget-object v2, v1, La40$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogAssignmentBinding;->btnSecondAction:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet$b;

    invoke-direct {v2, v1, p0}, Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet$b;-><init>(La40$a;Lcom/warefly/checkscan/presentation/balance/main/dialogs/BalanceInfBottomSheet;)V

    invoke-direct {v0, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method
