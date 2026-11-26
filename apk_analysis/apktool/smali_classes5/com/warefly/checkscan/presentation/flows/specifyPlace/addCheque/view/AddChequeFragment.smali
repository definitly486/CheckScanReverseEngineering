.class public final Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeView;"
    }
.end annotation


# static fields
.field public static final h:Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment$a;

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
.field public final f:I

.field public final g:Lol4;

.field public presenter:Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;->i:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;->h:Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00a0

    iput v0, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final finishLoadingFNSStatus()V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->incldHeader:Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/LoadingButton;->setLoading(Z)V

    return-void
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;->o()Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->onBackPressed()V

    const/4 p0, 0x0

    return p0
.end method

.method public final loadUpdatingFNSStatus()V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->incldHeader:Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/LoadingButton;->setLoading(Z)V

    return-void
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;->i:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;->presenter:Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment$b;-><init>(Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;
    .locals 10

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v1

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v3, Luf3;

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luf3;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "WAITING_QUEUE_RECEIPT_QR_KEY"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x21

    const-string v7, "SPECIFY_REASON_KEY"

    if-lt v5, v6, :cond_0

    const-class v5, Lfi7;

    invoke-virtual {v3, v7, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    instance-of v5, v3, Lfi7;

    if-nez v5, :cond_1

    move-object v3, v4

    :cond_1
    check-cast v3, Lfi7;

    :goto_0
    check-cast v3, Lfi7;

    if-eqz v3, :cond_2

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v5

    const-class v6, Lyg1;

    invoke-static {v6, v5, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyg1;

    sget-object v6, Lp72;->g:Lba8;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v7

    const-class v8, Lfu1;

    invoke-static {v8, v7, v6, v4}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfu1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v6, "CHEQUE_REQUEST_ID_KEY"

    invoke-virtual {p0, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    invoke-direct/range {v0 .. v7}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;-><init>(Luf3;Ljava/lang/String;Lfi7;Lyg1;Lfu1;J)V

    return-object v0

    :cond_2
    const-string p0, "Specify reason can not be null"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4
.end method

.method public final setToolbarTitle(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->toolbarTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showChequeAlreadyWasScanned()V
    .locals 5

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->incldHeader:Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->tvHeader:Landroid/widget/TextView;

    const v2, 0x7f140562

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->tvReason:Landroid/widget/TextView;

    const v2, 0x7f14010c

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->tvDescription:Landroid/widget/TextView;

    const v2, 0x7f14010d

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->tvDescription:Landroid/widget/TextView;

    const/16 v2, 0x12

    invoke-static {v2}, Lpl2;->e(I)I

    move-result v3

    invoke-static {v2}, Lpl2;->e(I)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->ivInfo:Landroid/widget/ImageView;

    const v2, 0x7f0801e2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->viewDescriptionBackground:Landroid/view/View;

    const v2, 0x7f0800ed

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140540

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment$c;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment$c;-><init>(Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final showChequeInvalid()V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->incldHeader:Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->tvHeader:Landroid/widget/TextView;

    const v2, 0x7f140562

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->tvReason:Landroid/widget/TextView;

    const v2, 0x7f140485

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->tvDescription:Landroid/widget/TextView;

    const v2, 0x7f140486

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->ivInfo:Landroid/widget/ImageView;

    const v2, 0x7f0801e2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->viewDescriptionBackground:Landroid/view/View;

    const v2, 0x7f0800ed

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140540

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment$d;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment$d;-><init>(Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final showChequeNotCorrectFormat()V
    .locals 6

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->incldHeader:Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->tvHeader:Landroid/widget/TextView;

    const v3, 0x7f140562

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->tvReason:Landroid/widget/TextView;

    const v3, 0x7f140481

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->tvDescription:Landroid/widget/TextView;

    const v3, 0x7f140483

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->ivInfo:Landroid/widget/ImageView;

    const v3, 0x7f0801e2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->groupNotCorrectFormat:Landroidx/constraintlayout/widget/Group;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->viewDescriptionBackground:Landroid/view/View;

    const v4, 0x7f0800ed

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f140482

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v4, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment$f;

    invoke-direct {v4, p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment$f;-><init>(Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;)V

    invoke-direct {v2, v4}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->btnDelete:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->btnDelete:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment$e;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment$e;-><init>(Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final showCouldntDeleteCheque()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f140102

    invoke-static {v0, p0}, Loz1;->i(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showCouldntRefreshCheque()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f140106

    invoke-static {v0, p0}, Loz1;->i(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showFnsNotResponding()V
    .locals 5

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->incldHeader:Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->tvHeader:Landroid/widget/TextView;

    const v3, 0x7f140562

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->tvReason:Landroid/widget/TextView;

    const v3, 0x7f1402a5

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->tvDescription:Landroid/widget/TextView;

    const v3, 0x7f1402a7

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->ivInfo:Landroid/widget/ImageView;

    const v3, 0x7f0801c4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->viewDescriptionBackground:Landroid/view/View;

    const v3, 0x7f0800d6

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1402a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment$g;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment$g;-><init>(Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->btnDelete:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->btnDelete:Landroid/widget/ImageView;

    new-instance v1, Ln8;

    invoke-direct {v1, p0}, Ln8;-><init>(Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final showNoShopReceived()V
    .locals 5

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->incldHeader:Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->tvHeader:Landroid/widget/TextView;

    const v3, 0x7f140562

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->tvReason:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->tvDescription:Landroid/widget/TextView;

    const v3, 0x7f14047e

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->ivInfo:Landroid/widget/ImageView;

    const v3, 0x7f0801c4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->viewDescriptionBackground:Landroid/view/View;

    const v3, 0x7f0800d6

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f14047f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/RejectedReceiptLayoutBinding;->btnAction:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment$i;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment$i;-><init>(Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->btnDelete:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->btnDelete:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment$h;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment$h;-><init>(Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final showReceiptData(Lgw6;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lgw6;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;

    move-result-object v1

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->cardReceiptData:Lcom/google/android/material/card/MaterialCardView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p1, Lgw6;->f:Ljava/lang/Float;

    iget-object v4, v1, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->tvReceiptDataTitle:Landroid/widget/TextView;

    const/16 v5, 0x8

    if-eqz v2, :cond_0

    const v6, 0x7f14010b

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->tvReceiptDataSum:Landroid/widget/TextView;

    const v6, 0x7f1404d8

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v6, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, v1, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->tvReceiptDataSum:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const v2, 0x7f14054b

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, v1, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->tvReceiptDataSum:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p0, v1, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->ivReceiptDataQr:Landroid/widget/ImageView;

    iget-object v2, p1, Lgw6;->a:Ljava/lang/String;

    const/16 v4, 0x12c

    invoke-static {v4, v2}, Lfv6;->a(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, v1, Lcom/warefly/checkscan/databinding/FragmentAddChequeBinding;->layoutReceiptDataQrInfo:Lcom/warefly/checkscan/databinding/LayoutQrInfoBinding;

    iget-object v1, p0, Lcom/warefly/checkscan/databinding/LayoutQrInfoBinding;->tvFn:Landroid/widget/TextView;

    iget-object v2, p1, Lgw6;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/warefly/checkscan/databinding/LayoutQrInfoBinding;->tvFpd:Landroid/widget/TextView;

    iget-object v2, p1, Lgw6;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/warefly/checkscan/databinding/LayoutQrInfoBinding;->tvFd:Landroid/widget/TextView;

    iget-object p1, p1, Lgw6;->d:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutQrInfoBinding;->layoutInn:Lcom/warefly/checkscan/databinding/LayoutQrInfoInternetBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutQrInfoInternetBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/warefly/checkscan/databinding/LayoutQrInfoInternetBinding;->tvINN:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutQrInfoInternetBinding;->tvLegalFace:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
