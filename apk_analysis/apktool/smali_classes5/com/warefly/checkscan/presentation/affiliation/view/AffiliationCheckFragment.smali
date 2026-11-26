.class public final Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;"
    }
.end annotation


# static fields
.field public static final synthetic j:[Lze4;
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
.field public final f:Lol4;

.field public final g:Landroidx/navigation/NavArgsLazy;

.field public h:Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationInfoDialog;

.field public i:Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationResultDialog;

.field public presenter:Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;->j:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;->f:Lol4;

    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Lgb;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment$g;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment$g;-><init>(Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lne4;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;->g:Landroidx/navigation/NavArgsLazy;

    return-void
.end method


# virtual methods
.method public final clearInput()V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;->etLink:Lcom/google/android/material/textfield/TextInputEditText;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final enableCheckButton(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;->btnCheck:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public final i()I
    .locals 0

    const p0, 0x7f0d00a4

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;->j:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;->f:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;->presenter:Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;->viewToolbar:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    iget-object p2, p2, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->tvToolbarTitle:Landroid/widget/TextView;

    const v0, 0x7f14004e

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;->viewToolbar:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    iget-object p2, p2, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnFave:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;->viewToolbar:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    iget-object p2, p2, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnShare:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;->viewToolbar:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    iget-object p2, p2, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment$b;-><init>(Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;->tvSubtitle:Landroid/widget/TextView;

    const v0, 0x7f14004f

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f140050

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Lfb;

    invoke-direct {v1, p0}, Lfb;-><init>(Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0604a3

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v1, v0, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;->tvSubtitle:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;->etLink:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment$a;-><init>(Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;->btnCheck:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment$c;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment$c;-><init>(Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;->btnClearInput:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment$d;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment$d;-><init>(Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;->btnCopyPaste:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment$e;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment$e;-><init>(Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final pasteFromClipboard()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;->etLink:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;->etLink:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;
    .locals 7

    new-instance v0, Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;->g:Landroidx/navigation/NavArgsLazy;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgb;

    iget v2, v2, Lgb;->a:I

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgb;

    iget v1, v1, Lgb;->b:I

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v3

    const-class v4, Lx9;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5, v5}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx9;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v4

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v6, Luf3;

    invoke-static {v6, p0, v4, v5}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luf3;

    invoke-direct {v0, v2, v1, v3, p0}, Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;-><init>(IILx9;Luf3;)V

    return-object v0
.end method

.method public final setLinkCheckingLoading(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;->pbLinkCheckInProgress:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;->btnCheck:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;->btnCheck:Landroid/widget/TextView;

    const v0, 0x7f140041

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setNoError()V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;->tilLink:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showClearButton(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;->btnClearInput:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showHowToCopyDialog()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;->h:Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationInfoDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationInfoDialog;

    invoke-direct {v1, v0}, Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationInfoDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;->h:Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationInfoDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showNotFoundError()V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;->tilLink:Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f140046

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showNotValidLinkError()V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;->tilLink:Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f140047

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showResultDialog(Lbh6;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;->i:Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationResultDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    new-instance v0, Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationResultDialog;

    new-instance v1, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment$f;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment$f;-><init>(Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;)V

    invoke-direct {v0, p1, v1}, Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationResultDialog;-><init>(Lbh6;Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment$f;)V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;->i:Lcom/warefly/checkscan/presentation/affiliation/dialogs/AffiliationResultDialog;

    return-void
.end method

.method public final showUnexpectedError()V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentAffiliationCheckBinding;->tilLink:Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f140052

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method
