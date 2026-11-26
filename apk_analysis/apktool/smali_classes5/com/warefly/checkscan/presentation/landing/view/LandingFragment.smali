.class public final Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/landing/view/LandingView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentLandingBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/landing/view/LandingView;"
    }
.end annotation


# static fields
.field public static final synthetic p:[Lze4;
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

.field public final h:Landroidx/navigation/NavArgsLazy;

.field public final i:Lcl4;

.field public final j:Lcl4;

.field public k:Leu1;

.field public l:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;

.field public m:Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;

.field public n:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

.field public o:Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/OfferRegistrationDialogDialog;

.field public presenter:Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentLandingBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->p:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00c9

    iput v0, p0, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentLandingBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->g:Lol4;

    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Lui4;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment$f;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment$f;-><init>(Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lne4;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->h:Landroidx/navigation/NavArgsLazy;

    sget-object v0, Lpo4;->SYNCHRONIZED:Lpo4;

    new-instance v1, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment$d;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment$d;-><init>(Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v1

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->i:Lcl4;

    new-instance v1, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment$e;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment$e;-><init>(Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->j:Lcl4;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->f:I

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentLandingBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->p:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentLandingBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->presenter:Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super/range {p0 .. p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->n()Lcom/warefly/checkscan/databinding/FragmentLandingBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentLandingBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment$a;

    invoke-direct {v3, v0}, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment$a;-><init>(Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->n()Lcom/warefly/checkscan/databinding/FragmentLandingBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentLandingBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Leu1;

    new-instance v3, Lsh4;

    sget-object v4, Lrh4;->c:Lrh4;

    invoke-direct {v3, v4}, Lvd9;-><init>(Ldm3;)V

    new-instance v4, Lqh4;

    sget-object v5, Lph4;->c:Lph4;

    invoke-direct {v4, v5}, Lvd9;-><init>(Ldm3;)V

    new-instance v5, Lqk4;

    sget-object v6, Lpk4;->c:Lpk4;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lqk4;-><init>(Ldm3;I)V

    new-instance v6, Lmk4;

    sget-object v8, Llk4;->c:Llk4;

    invoke-direct {v6, v8, v7}, Lmk4;-><init>(Ldm3;I)V

    new-instance v8, Loi4;

    sget-object v9, Lni4;->c:Lni4;

    invoke-direct {v8, v9}, Lvd9;-><init>(Ldm3;)V

    new-instance v9, Lji4;

    sget-object v10, Lii4;->c:Lii4;

    invoke-direct {v9, v10}, Lvd9;-><init>(Ldm3;)V

    new-instance v10, Lhj4;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->o()Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    move-result-object v11

    invoke-direct {v10, v11}, Lhj4;-><init>(Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;)V

    new-instance v11, Lsi4;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->o()Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    move-result-object v12

    invoke-direct {v11, v12}, Lsi4;-><init>(Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;)V

    new-instance v12, Lgi4;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->o()Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    move-result-object v13

    invoke-direct {v12, v13}, Lgi4;-><init>(Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;)V

    new-instance v13, Lai4;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->o()Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    move-result-object v14

    invoke-direct {v13, v14}, Lai4;-><init>(Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;)V

    new-instance v14, Lhk4;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->o()Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    move-result-object v15

    invoke-direct {v14, v15}, Lhk4;-><init>(Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;)V

    new-instance v15, Lqi4;

    move/from16 p1, v7

    iget-object v7, v0, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->j:Lcl4;

    invoke-interface {v7}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls05;

    invoke-direct {v15, v7}, Lqi4;-><init>(Ls05;)V

    new-instance v7, Luk4;

    move-object/from16 p2, v3

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->o()Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    move-result-object v3

    invoke-direct {v7, v3}, Luk4;-><init>(Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->o()Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    move-result-object v3

    move-object/from16 v16, v4

    iget-object v4, v0, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->i:Lcl4;

    invoke-interface {v4}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv05;

    move-object/from16 v17, v5

    new-instance v5, Llh4;

    invoke-direct {v5, v4, v3}, Llh4;-><init>(Lv05;Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;)V

    const/16 v3, 0xe

    new-array v3, v3, [Lil2;

    aput-object p2, v3, p1

    const/4 v4, 0x1

    aput-object v16, v3, v4

    const/4 v4, 0x2

    aput-object v17, v3, v4

    const/4 v4, 0x3

    aput-object v6, v3, v4

    const/4 v4, 0x4

    aput-object v8, v3, v4

    const/4 v4, 0x5

    aput-object v9, v3, v4

    const/4 v4, 0x6

    aput-object v10, v3, v4

    const/4 v4, 0x7

    aput-object v11, v3, v4

    const/16 v4, 0x8

    aput-object v12, v3, v4

    const/16 v4, 0x9

    aput-object v13, v3, v4

    const/16 v4, 0xa

    aput-object v14, v3, v4

    const/16 v4, 0xb

    aput-object v15, v3, v4

    const/16 v4, 0xc

    aput-object v7, v3, v4

    const/16 v4, 0xd

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Leu1;-><init>([Lil2;)V

    iput-object v2, v0, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->k:Leu1;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public final openCustomTab(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Li72;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;
    .locals 7

    new-instance v0, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Laj4;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laj4;

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->h:Landroidx/navigation/NavArgsLazy;

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lui4;

    iget v2, v2, Lui4;->a:I

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v4

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v5

    const-class v6, Luf3;

    invoke-static {v6, v5, v4, v3}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Luf3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v5, Ljf6;

    invoke-static {v5, p0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljf6;

    invoke-direct {v0, v1, v2, v4, p0}, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;-><init>(Laj4;ILuf3;Ljf6;)V

    return-object v0
.end method

.method public final showContent(Laj4$a;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->k:Leu1;

    if-eqz v0, :cond_0

    iget-object v1, p1, Laj4$a;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    iget-boolean p1, p1, Laj4$a;->b:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->n()Lcom/warefly/checkscan/databinding/FragmentLandingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentLandingBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    :cond_1
    new-instance v0, Lxj4;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->k:Leu1;

    if-eqz p0, :cond_2

    iget-object p0, p0, Leu1;->i:Lm8;

    const-class v2, Lyj4;

    invoke-virtual {p0, v2}, Lm8;->d(Ljava/lang/Class;)I

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    :goto_0
    invoke-direct {v0, p0}, Lxj4;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    :cond_3
    return-void
.end method

.method public final showDatePicker(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->l:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {p1, v1, v2, v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->newInstance(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;III)Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0604a3

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->setAccentColor(I)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->l:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "DatePickerDialog"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public final showImage(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->n()Lcom/warefly/checkscan/databinding/FragmentLandingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentLandingBinding;->ivBanner:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    invoke-virtual {v0, p1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->n()Lcom/warefly/checkscan/databinding/FragmentLandingBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentLandingBinding;->ivBanner:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Lh37;->L(Landroid/widget/ImageView;)V

    return-void
.end method

.method public final showOfdDialog(Lb06;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->n:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-direct {v1, v0, p1}, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;-><init>(Landroid/content/Context;Lb06;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->n:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showOfferRegistrationDialog()V
    .locals 9

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->o:Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/OfferRegistrationDialogDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/OfferRegistrationDialogDialog;

    new-instance v2, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment$b;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->o()Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    move-result-object v4

    const-string v7, "offerRegistrationConfirm()V"

    const/4 v8, 0x0

    const/4 v3, 0x0

    const-class v5, Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    const-string v6, "offerRegistrationConfirm"

    invoke-direct/range {v2 .. v8}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v3, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment$c;->f:Lcom/warefly/checkscan/presentation/landing/view/LandingFragment$c;

    invoke-direct {v1, v0, v2, v3}, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/OfferRegistrationDialogDialog;-><init>(Landroid/content/Context;Lcom/warefly/checkscan/presentation/landing/view/LandingFragment$b;Lll3;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->o:Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/OfferRegistrationDialogDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showPromoRegisterResult(Lur6;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->m:Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->h:Landroidx/navigation/NavArgsLazy;

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lui4;

    iget v2, v2, Lui4;->a:I

    invoke-direct {v1, v0, p1, v2}, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;-><init>(Landroid/content/Context;Lur6;I)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/landing/view/LandingFragment;->m:Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method
