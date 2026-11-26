.class public final Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;",
        ">;",
        "Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;"
    }
.end annotation


# static fields
.field public static final l:Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment$a;

.field public static final synthetic m:[Lze4;
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

.field public final h:Lfh8;

.field public i:Leu1;

.field public j:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

.field public k:Lcom/warefly/checkscan/auth/presentation/main/dialogs/AgreementDialog;

.field public presenter:Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->m:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->l:Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00de

    iput v0, p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->g:Lol4;

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment$b;-><init>(Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    iput-object v1, p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->h:Lfh8;

    return-void
.end method


# virtual methods
.method public final dismissLoadingDialog()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->j:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public final flashAgreementsError()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x32

    invoke-static {v0, v1, v2}, Lr7;->a(Landroid/app/Activity;J)V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->rvAgreements:Landroidx/recyclerview/widget/RecyclerView;

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

    iget p0, p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->o()Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->onBackClicked()V

    const/4 p0, 0x0

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->m:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->presenter:Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;

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

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->btnShowInviteCode:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Li30;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Li30;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lj30;

    invoke-direct {v1, p0, v2}, Lj30;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->btnSupport:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lu76;

    invoke-direct {v1, p0}, Lu76;-><init>(Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->btnSupportBottom:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lv76;

    invoke-direct {v1, p0}, Lv76;-><init>(Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->btnNext:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lrj1;

    invoke-direct {v0, p0, v2}, Lrj1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->etPhone:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Lp76;

    new-instance v1, Lw76;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lw76;-><init>(Ljava/lang/Object;I)V

    const/16 v4, 0xa

    const-string v5, "### ### ## ##"

    invoke-direct {v0, v4, v5, v1}, Lp76;-><init>(ILjava/lang/String;Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p1, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->etInviteCode:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Lx76;

    invoke-direct {v0, p0}, Lx76;-><init>(Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p1, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->etPhone:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Ls76;

    invoke-direct {v0, p1, v3}, Ls76;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v4, 0x32

    invoke-virtual {p2, v0, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->nestedScrolledView:Landroidx/core/widget/NestedScrollView;

    new-instance p2, Lt76;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->rvAgreements:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Leu1;

    new-instance v0, Lob;

    iget-object v1, p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->h:Lfh8;

    invoke-virtual {v1}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv05;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->o()Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lob;-><init>(Lv05;Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;)V

    new-array v1, v2, [Lil2;

    aput-object v0, v1, v3

    invoke-direct {p2, v1}, Leu1;-><init>([Lil2;)V

    iput-object p2, p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->i:Leu1;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p1, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment$c;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment$c;-><init>(Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;)V

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

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;
    .locals 14

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v0

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Luf3;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Luf3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lfx;

    invoke-static {v1, v0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lfx;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "INVITE_CODE_KEY"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, v3

    :goto_0
    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Ls83;

    invoke-static {v1, v0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ls83;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lt83;

    invoke-static {v1, v0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lt83;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lq76;

    invoke-static {v1, v0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lq76;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lix7;

    invoke-static {v1, v0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lix7;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lka4;

    invoke-static {v1, v0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lka4;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v0, Lhr7;

    invoke-static {v0, p0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    move-object v13, p0

    check-cast v13, Lhr7;

    new-instance v4, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;

    invoke-direct/range {v4 .. v13}, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;-><init>(Luf3;Lfx;Ljava/lang/String;Lq76;Lt83;Ls83;Lix7;Lka4;Lhr7;)V

    return-object v4
.end method

.method public final setInviteCodeFiled(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->etInviteCode:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showAgreementBottomSheet(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->k:Lcom/warefly/checkscan/auth/presentation/main/dialogs/AgreementDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    sget-object v0, Lcom/warefly/checkscan/auth/presentation/main/dialogs/AgreementDialog;->d:Lcom/warefly/checkscan/auth/presentation/main/dialogs/AgreementDialog$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/main/dialogs/AgreementDialog;

    invoke-direct {v0}, Lcom/warefly/checkscan/auth/presentation/main/dialogs/AgreementDialog;-><init>()V

    new-instance v1, Lb36;

    const-string v2, "URL_KEY"

    invoke-direct {v1, v2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    iput-object v0, p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->k:Lcom/warefly/checkscan/auth/presentation/main/dialogs/AgreementDialog;

    return-void
.end method

.method public final showAgreements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lub;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->i:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final showInviteCodeField()V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->btnShowInviteCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->groupInviteCode:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showInviteCodeFieldError(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->tilInviteCode:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    if-eqz p1, :cond_0

    const p1, 0x7f14008d

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showLoadingDialog()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->j:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    sget-object v0, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;->d:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;

    invoke-static {v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;->b(Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;)Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    iput-object v0, p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->j:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    return-void
.end method

.method public final showPhoneFieldError(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->tilPhone:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    if-eqz p1, :cond_0

    const p1, 0x7f140092

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showSkipButton()V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->btnSupport:Landroid/widget/TextView;

    const v2, 0x7f140095

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->btnSupport:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment$d;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment$d;-><init>(Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->btnSupportBottom:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showUnknownError()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f14008b

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final showUserPolicy(Lz99;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->btnPersonalDataPolicy:Landroid/widget/TextView;

    iget-object v1, p1, Lz99;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment$e;

    invoke-direct {v2, p0, p1}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment$e;-><init>(Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;Lz99;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
