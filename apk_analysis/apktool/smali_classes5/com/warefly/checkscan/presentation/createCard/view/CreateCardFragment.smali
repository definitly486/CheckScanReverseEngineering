.class public final Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;"
    }
.end annotation


# static fields
.field public static final synthetic k:[Lze4;
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
.field public final f:Landroidx/navigation/NavArgsLazy;

.field public final g:I

.field public final h:Lol4;

.field public i:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

.field public j:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

.field public presenter:Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->k:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Lc62;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment$e;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment$e;-><init>(Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lne4;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->f:Landroidx/navigation/NavArgsLazy;

    const v0, 0x7f0d00bf

    iput v0, p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->g:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->h:Lol4;

    return-void
.end method


# virtual methods
.method public final dismissUpridDialog()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->j:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public final editNumberClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->p()V

    return-void
.end method

.method public final enableIssueButton(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->btnIssueCard:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->g:I

    return p0
.end method

.method public final isHaveNumber(ZZLjava/lang/String;)V
    .locals 10

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Required value was null."

    const/16 v2, 0x8

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->tvChangePhoneHint:Landroid/widget/TextView;

    new-instance v3, Landroid/text/SpannableString;

    const v4, 0x7f1402bc

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Lb62;

    invoke-direct {v4, p0}, Lb62;-><init>(Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;)V

    const-string v5, "\u0432 \u043f\u0440\u043e\u0444\u0438\u043b\u0435."

    const/4 v6, 0x6

    invoke-static {v3, v5, v0, v0, v6}, Lta8;->K(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v7

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    const/16 v9, 0x12

    invoke-virtual {v3, v4, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-static {v3, v5, v0, v0, v6}, Lta8;->K(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v0

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v0, v5, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->tvChangePhoneHint:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f1402c1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->etPhone:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->layoutPhoneCard:Lcom/warefly/checkscan/databinding/ItemPhoneCardBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/ItemPhoneCardBinding;->tvNumber:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->tvDescriptionError:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->tilPhone:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-static {v1}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->tvTitle:Landroid/widget/TextView;

    const v3, 0x7f1402c0

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->tvDescriptionError:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->layoutPhoneCard:Lcom/warefly/checkscan/databinding/ItemPhoneCardBinding;

    invoke-virtual {p2}, Lcom/warefly/checkscan/databinding/ItemPhoneCardBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08009f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->layoutPhoneCard:Lcom/warefly/checkscan/databinding/ItemPhoneCardBinding;

    iget-object p2, p2, Lcom/warefly/checkscan/databinding/ItemPhoneCardBinding;->tvNumber:Landroid/widget/TextView;

    if-eqz p3, :cond_2

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->btnIssueCard:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->tvChangePhoneHint:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->tilPhone:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->btnChangeNumber:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance p2, Llb7;

    new-instance p3, Lw8;

    const/4 v0, 0x2

    invoke-direct {p3, p0, v0}, Lw8;-><init>(Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;I)V

    invoke-direct {p2, p3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    invoke-static {v1}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->p()V

    return-void
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->o()Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->onBackClick()V

    const/4 p0, 0x0

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->k:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->h:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->presenter:Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p1, "UPRID_RESULT_KEY"

    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentKt;->clearFragmentResult(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;

    move-result-object p2

    iget-object v0, p2, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment$c;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment$c;-><init>(Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p2, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->btnIssueCard:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment$d;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment$d;-><init>(Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p2, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->etPhone:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Lp76;

    new-instance v1, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment$a;-><init>(Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;)V

    const-string v2, "+# ### ### ####"

    const/16 v3, 0xb

    invoke-direct {v0, v3, v2, v1}, Lp76;-><init>(ILjava/lang/String;Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance p2, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment$b;

    invoke-direct {p2, p0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment$b;-><init>(Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;)V

    invoke-static {p0, p1, p2}, Landroidx/fragment/app/FragmentKt;->setFragmentResultListener(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lbm3;)V

    return-void
.end method

.method public final p()V
    .locals 5

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->btnChangeNumber:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->btnIssueCard:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->tvTitle:Landroid/widget/TextView;

    const v4, 0x7f1402bf

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->layoutPhoneCard:Lcom/warefly/checkscan/databinding/ItemPhoneCardBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/ItemPhoneCardBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->tvDescriptionError:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->btnIssueCard:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->tilPhone:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;
    .locals 7

    new-instance v0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v1

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v3, Luf3;

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luf3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v3, Ljf6;

    invoke-static {v3, v2, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljf6;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v3

    const-class v5, Li3;

    invoke-static {v5, v3, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v5

    const-class v6, Lca0;

    invoke-static {v6, v5, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lca0;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->f:Landroidx/navigation/NavArgsLazy;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc62;

    iget-object v5, p0, Lc62;->a:Ld62;

    invoke-direct/range {v0 .. v5}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;-><init>(Luf3;Ljf6;Li3;Lca0;Ld62;)V

    return-object v0
.end method

.method public final showError(Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f140610

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    invoke-static {p0, p1}, Loz1;->e(Landroid/view/View;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final showIncorrectPhoneMessage(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->tilPhone:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz p1, :cond_0

    const p1, 0x7f1402ba

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showLoading(Z)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->i:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    sget-object p1, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;->d:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;

    invoke-static {p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;->b(Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;)Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->i:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_2
    return-void
.end method

.method public final showLoadingSpinner(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->n()Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->incldLoadingSpinner:Lcom/warefly/checkscan/databinding/LoadingSpinnerBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LoadingSpinnerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

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

.method public final showPhoneUsedError()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f1402d6

    invoke-static {v0, p0}, Loz1;->d(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showTimeConfirmError()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f1402bd

    invoke-static {v0, p0}, Loz1;->d(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showUpridWebDialog(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->j:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    sget-object v0, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->f:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

    invoke-direct {v0}, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;-><init>()V

    new-instance v1, Lb36;

    const-string v2, "URL_KEY"

    invoke-direct {v1, v2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->j:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    return-void
.end method
