.class public final Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogFragment<",
        "Lcom/warefly/checkscan/core/ui/databinding/DialogTwoButtonsBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons$a;

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

    const-class v1, Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/core/ui/databinding/DialogTwoButtonsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;->e:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;->d:Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0d009b

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogFragment;-><init>(I)V

    new-instance v0, Lgl4;

    const-class v1, Lcom/warefly/checkscan/core/ui/databinding/DialogTwoButtonsBinding;

    invoke-direct {v0, v1}, Lgl4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;->c:Lgl4;

    return-void
.end method


# virtual methods
.method public final d(Z)V
    .locals 4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-instance v0, Lb36;

    const-string v1, "DIALOG_TWO_BUTTONS_REQUEST_KEY"

    invoke-direct {v0, v1, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "DIALOG_TAG"

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v3, Lb36;

    invoke-direct {v3, v2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0, v3}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, v1, p1}, Landroidx/fragment/app/FragmentKt;->setFragmentResult(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;->e:[Lze4;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget-object p2, p0, Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;->c:Lgl4;

    invoke-virtual {p2, p0, p1}, Lgl4;->a(Landroidx/fragment/app/DialogFragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/core/ui/databinding/DialogTwoButtonsBinding;

    iget-object p2, p1, Lcom/warefly/checkscan/core/ui/databinding/DialogTwoButtonsBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "TITLE_ARG"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/warefly/checkscan/core/ui/databinding/DialogTwoButtonsBinding;->tvDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "DESCRIPTION_ARG"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/warefly/checkscan/core/ui/databinding/DialogTwoButtonsBinding;->buttonTop:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "TOP_BUTTON_TITLE_ARG"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/warefly/checkscan/core/ui/databinding/DialogTwoButtonsBinding;->buttonBottom:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "BOTTOM_BUTTON_TITLE_ARG"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/warefly/checkscan/core/ui/databinding/DialogTwoButtonsBinding;->buttonTop:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons$b;-><init>(Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/core/ui/databinding/DialogTwoButtonsBinding;->buttonBottom:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons$c;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons$c;-><init>(Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
