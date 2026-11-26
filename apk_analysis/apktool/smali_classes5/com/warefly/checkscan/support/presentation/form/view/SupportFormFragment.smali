.class public final Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;",
        ">;",
        "Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;"
    }
.end annotation


# static fields
.field public static final j:Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment$a;

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
.field public final f:I

.field public final g:Lol4;

.field public h:Lcom/warefly/checkscan/support/presentation/form/dialog/SupportFormSuccessBottomSheet;

.field public i:Lcom/warefly/checkscan/support/presentation/form/dialog/SupportFormFailBottomSheet;

.field public presenter:Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->k:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->j:Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00fa

    iput v0, p0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final flashCheckboxError()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x32

    invoke-static {v0, v1, v2}, Lr7;->a(Landroid/app/Activity;J)V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->n()Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->cbEmailAgreement:Lcom/warefly/checkscan/core/ui/CheckBox;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f0800ef

    invoke-static {p0, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {v0, p0}, Lpm;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->o()Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->onBackClicked()V

    const/4 p0, 0x0

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->k:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->presenter:Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;

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

    new-instance p1, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment$b;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment$b;-><init>(Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lmk3;

    invoke-direct {v1, p2, p0, p1}, Lmk3;-><init>(Landroid/view/Window;Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;Lbm3;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->n()Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->ivBtnBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lxq0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lxq0;-><init>(Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;I)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->n()Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->btnConfirm:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lv8;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2}, Lv8;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->n()Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->cbEmailAgreement:Lcom/warefly/checkscan/core/ui/CheckBox;

    new-instance p2, Lqe8;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lqe8;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->n()Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;->btnTryAgain:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v3, Lw8;

    invoke-direct {v3, p0, v2}, Lw8;-><init>(Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;I)V

    invoke-direct {p2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->n()Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->etName:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance p2, Lse8;

    invoke-direct {p2, p0, v0}, Lse8;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->n()Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->etEmail:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance p2, Lre8;

    invoke-direct {p2, p0}, Lre8;-><init>(Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->n()Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->etDescription:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance p2, Lx8;

    invoke-direct {p2, p0, v1}, Lx8;-><init>(Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;I)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;
    .locals 10

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Ljf6;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljf6;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Liw2;

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Liw2;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Ls47;

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ls47;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lqf8;

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lqf8;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lj83;

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lj83;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v0, Lxo7;

    invoke-static {v0, p0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Lxo7;

    new-instance v3, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;

    invoke-direct/range {v3 .. v9}, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;-><init>(Liw2;Ljf6;Ls47;Lqf8;Lj83;Lxo7;)V

    return-object v3
.end method

.method public final setButtonLoading(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->n()Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->btnConfirm:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/LoadingButton;->setLoading(Z)V

    return-void
.end method

.method public final setCheckbox(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->n()Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->cbEmailAgreement:Lcom/warefly/checkscan/core/ui/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public final setDescriptionFocus()V
    .locals 3

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->n()Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->etDescription:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Loe8;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Loe8;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final setEmailField(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->n()Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->etEmail:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setEmailFocus()V
    .locals 3

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->n()Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->etEmail:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Lq96;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lq96;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final setNameField(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->n()Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->etName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setNameFocus()V
    .locals 3

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->n()Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->etName:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Lkl3;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lkl3;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final setScreenInfo(Lni3;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->n()Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->tvNameHint:Landroid/widget/TextView;

    iget-object v1, p1, Lni3;->c:Lni3$a;

    iget-object v2, v1, Lni3$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->etName:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, v1, Lni3$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->tvEmailHint:Landroid/widget/TextView;

    iget-object v1, p1, Lni3;->d:Lni3$a;

    iget-object v2, v1, Lni3$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->etEmail:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, v1, Lni3$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->cbEmailAgreement:Lcom/warefly/checkscan/core/ui/CheckBox;

    iget-object v1, p1, Lni3;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->tvDescriptionHint:Landroid/widget/TextView;

    iget-object v1, p1, Lni3;->e:Lni3$a;

    iget-object v2, v1, Lni3$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->etDescription:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, v1, Lni3$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->btnConfirm:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iget-object p1, p1, Lni3;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showDescriptionError(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->n()Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->tilDescription:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    if-eqz p1, :cond_0

    const p1, 0x7f140628

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showEmailError(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->n()Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->tilEmail:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    if-eqz p1, :cond_0

    const p1, 0x7f14062c

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showError(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->n()Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

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

.method public final showFailBottomSheet(Lwe8;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->i:Lcom/warefly/checkscan/support/presentation/form/dialog/SupportFormFailBottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/support/presentation/form/dialog/SupportFormFailBottomSheet;

    invoke-direct {v1, v0, p1}, Lcom/warefly/checkscan/support/presentation/form/dialog/SupportFormFailBottomSheet;-><init>(Landroid/content/Context;Lwe8;)V

    iput-object v1, p0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->i:Lcom/warefly/checkscan/support/presentation/form/dialog/SupportFormFailBottomSheet;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showLoading(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->n()Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->incldLoading:Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

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

.method public final showSuccessBottomSheet(Lwe8;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->h:Lcom/warefly/checkscan/support/presentation/form/dialog/SupportFormSuccessBottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/support/presentation/form/dialog/SupportFormSuccessBottomSheet;

    invoke-direct {v1, v0, p1}, Lcom/warefly/checkscan/support/presentation/form/dialog/SupportFormSuccessBottomSheet;-><init>(Landroid/content/Context;Lwe8;)V

    iput-object v1, p0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->h:Lcom/warefly/checkscan/support/presentation/form/dialog/SupportFormSuccessBottomSheet;

    new-instance p1, Lpe8;

    invoke-direct {p1, p0}, Lpe8;-><init>(Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;)V

    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method
