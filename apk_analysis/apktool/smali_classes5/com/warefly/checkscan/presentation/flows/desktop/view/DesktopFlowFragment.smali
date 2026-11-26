.class public final Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;"
    }
.end annotation


# static fields
.field public static final synthetic s:[Lze4;
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
.field public final j:I

.field public final k:Landroidx/navigation/NavArgsLazy;

.field public final l:Lcl4;

.field public final m:Lfh8;

.field public final n:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public o:I

.field public final p:Lol4;

.field public presenter:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

.field public final q:Lg27;

.field public r:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->s:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;-><init>()V

    const v0, 0x7f0d00c1

    iput v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->j:I

    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Lyl2;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$h;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$h;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lne4;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->k:Landroidx/navigation/NavArgsLazy;

    sget-object v0, Lpo4;->SYNCHRONIZED:Lpo4;

    new-instance v1, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$g;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$g;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->l:Lcl4;

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$b;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->m:Lfh8;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    new-instance v1, Lhm;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lhm;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->n:Landroidx/activity/result/ActivityResultLauncher;

    const/4 v0, -0x1

    iput v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->o:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p:Lol4;

    new-instance v0, Lg27;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->q:Lg27;

    return-void
.end method

.method public static r(Lri8;)I
    .locals 1

    sget-object v0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const p0, 0x7f0a02b1

    return p0

    :pswitch_1
    const p0, 0x7f0a066f

    return p0

    :pswitch_2
    const p0, 0x7f0a00b5

    return p0

    :pswitch_3
    const p0, 0x7f0a0245

    return p0

    :pswitch_4
    const p0, 0x7f0a00e4

    return p0

    :pswitch_5
    const p0, 0x7f0a01f2

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final e(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xd

    invoke-static {v1, p1, v0}, Loi9;->a(ILandroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->desktopContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljh;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Ljh;-><init>(I)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method public final hideFloatingButton()V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->btnWithdraw:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->j:I

    return p0
.end method

.method public final k()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    instance-of v0, v1, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;

    if-eqz v0, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->k()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->q()Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->onBackFromTabClicked()V

    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;->onResume()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->q()Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->onResume()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->bottomNavigation:Lcom/warefly/checkscan/ui/bottomnavigationscan/BottomNavigationScan;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/material/navigation/NavigationBarView;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->btnNotifications:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lp42;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lp42;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->btnProfile:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lnk1;

    invoke-direct {v0, p0, v2}, Lnk1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->incldNoInternetView:Lcom/warefly/checkscan/databinding/LayoutNoInternetBinding;

    iget-object p2, p2, Lcom/warefly/checkscan/databinding/LayoutNoInternetBinding;->tvNoInternetButton:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lo42;

    invoke-direct {v1, p0, v2}, Lo42;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->btnScan:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lvf1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lvf1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->s:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    return-object p0
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;->n()Lba8;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Luf3;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Luf3;

    invoke-static/range {p0 .. p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lc4;

    invoke-static {v1, v0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lc4;

    invoke-static/range {p0 .. p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Ljf6;

    invoke-static {v1, v0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljf6;

    invoke-static/range {p0 .. p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lpp5;

    invoke-static {v1, v0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lpp5;

    invoke-static/range {p0 .. p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lp51;

    invoke-static {v1, v0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lp51;

    invoke-static/range {p0 .. p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lzl2;

    invoke-static {v1, v0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lzl2;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->k:Landroidx/navigation/NavArgsLazy;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyl2;

    iget-object v1, v1, Lyl2;->a:Lcom/warefly/checkscan/presentation/Deeplink$Desktop;

    invoke-static {v0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v4, Lnh9;

    invoke-static {v4, v2, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lnh9;

    invoke-static {v0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v4, Lic8;

    invoke-static {v4, v2, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lic8;

    invoke-static {v0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v4, Lqm5;

    invoke-static {v4, v2, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lqm5;

    invoke-static {v0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v4, Lda7;

    invoke-static {v4, v2, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lda7;

    invoke-static {v0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v4, Lkz;

    invoke-static {v4, v2, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lkz;

    invoke-static {v0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v4, Lg6;

    invoke-static {v4, v2, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lg6;

    invoke-static {v0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v4, Lx37;

    invoke-static {v4, v2, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lx37;

    invoke-static {v0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v2, Lmo7;

    invoke-static {v2, v0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lmo7;

    new-instance v4, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    move-object/from16 v17, v1

    invoke-direct/range {v4 .. v19}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;-><init>(Luf3;Lc4;Ljf6;Lpp5;Lp51;Lzl2;Lnh9;Lic8;Lda7;Lkz;Lg6;Lqm5;Lcom/warefly/checkscan/presentation/Deeplink$Desktop;Lx37;Lmo7;)V

    return-object v4
.end method

.method public final q()Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->presenter:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final requestPushPermission()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v2}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->requestSystemPermission()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->q()Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->pushPermissionNotAllowed()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final requestSystemPermission()V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->n:Landroidx/activity/result/ActivityResultLauncher;

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public final setAvatar(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->btnProfile:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->setProfilePic(Ljava/lang/Object;)V

    return-void
.end method

.method public final setBadgeType(Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->btnProfile:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->setBadgeType(Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;)V

    return-void
.end method

.method public final setBottomItem(Lri8;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->bottomNavigation:Lcom/warefly/checkscan/ui/bottomnavigationscan/BottomNavigationScan;

    invoke-static {p1}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->r(Lri8;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setSelectedItemId(I)V

    return-void
.end method

.method public final setBottomSelectedIcon(Lri8;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->bottomNavigation:Lcom/warefly/checkscan/ui/bottomnavigationscan/BottomNavigationScan;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    invoke-static {p1}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->r(Lri8;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public final setBottomTabs(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->bottomNavigation:Lcom/warefly/checkscan/ui/bottomnavigationscan/BottomNavigationScan;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0a0245

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    xor-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0a02b1

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    new-instance p1, Lvd0;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v1}, Lvd0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setOnItemSelectedListener(Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V

    return-void
.end method

.method public final setTab(Lri8;Lcom/warefly/checkscan/presentation/Deeplink$Desktop;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/String;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    new-instance v2, Landroidx/fragment/app/FragmentFactory;

    invoke-direct {v2}, Landroidx/fragment/app/FragmentFactory;-><init>()V

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;-><init>()V

    new-instance v3, Luq0;

    invoke-direct {v3, p1, p0, p2}, Luq0;-><init>(Lri8;Ljava/lang/String;Lcom/warefly/checkscan/presentation/Deeplink$Desktop;)V

    invoke-virtual {v3}, Luq0;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const p0, 0x7f0a023c

    invoke-virtual {v0, p0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-object p0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public final setUpChequesToolbar()V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->toolbarContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f140656

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object p0

    iget-object v3, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->tvToolbar:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->tvToolbar:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->ivMainToolbar:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->btnNotifications:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setUpDefaultToolbar()V
    .locals 3

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->toolbarContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->tvToolbar:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->ivMainToolbar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->btnNotifications:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setUpDiscountToolbar()V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->toolbarContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f140658

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object p0

    iget-object v3, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->tvToolbar:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->tvToolbar:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->ivMainToolbar:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->tvToolbar:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->btnNotifications:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->ivBellRedDot:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setUpScanButtonImage(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v0

    invoke-virtual {v0, p1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p1

    const v0, 0x7f08013b

    invoke-virtual {p1, v0}, Lee0;->h(I)Lee0;

    move-result-object p1

    check-cast p1, Lh37;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->btnScan:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p1, p0}, Lh37;->L(Landroid/widget/ImageView;)V

    return-void
.end method

.method public final showBottomBanner(Lhc0$a;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->l:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lzb0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->q()Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    move-result-object v0

    new-instance v3, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$c;

    invoke-direct {v3, v0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$c;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->q()Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    move-result-object v0

    new-instance v4, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$d;

    invoke-direct {v4, v0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$d;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lzb0;->a(Lhc0$a;Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$c;Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$d;Landroidx/lifecycle/LifecycleOwner;Landroid/content/Context;)V

    return-void
.end method

.method public final showCoinAnim()V
    .locals 7

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object v0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->bottomNavigation:Lcom/warefly/checkscan/ui/bottomnavigationscan/BottomNavigationScan;

    invoke-virtual {v1}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f0a00b5

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->m:Lfh8;

    invoke-virtual {v2}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    new-instance v3, Landroid/text/SpannableString;

    const-string v4, "\u0411\u0430\u043b\u0430\u043d\u0441"

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x6

    const/16 v5, 0x21

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const v2, 0x7f080221

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->menuCostyl:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->animPlaceholder:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->animPlaceholder:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v1

    const-class v2, Lup3;

    invoke-virtual {v1, v2}, Lp37;->a(Ljava/lang/Class;)Lh37;

    move-result-object v1

    sget-object v2, Lp37;->m:Ls37;

    invoke-virtual {v1, v2}, Lh37;->G(Lee0;)Lh37;

    move-result-object v1

    const/high16 v2, 0x7f130000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lh37;->N(Ljava/lang/Object;)Lh37;

    move-result-object v2

    invoke-virtual {v1, v2}, Lh37;->H(Lh37;)Lh37;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$e;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$e;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;)V

    invoke-virtual {v1, v2}, Lh37;->M(Lo37;)Lh37;

    move-result-object v1

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->animPlaceholder:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lh37;->L(Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->q()Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->animCoinShowed()V

    return-void
.end method

.method public final showFloatingButton(Led3;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->btnWithdraw:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p1, Led3;->c:Ljava/lang/String;

    const-string v3, ".gif"

    invoke-static {v2, v3, v1}, Lra8;->u(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v3, 0x88

    invoke-static {v3}, Lpl2;->e(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v1

    const-class v3, Lup3;

    invoke-virtual {v1, v3}, Lp37;->a(Ljava/lang/Class;)Lh37;

    move-result-object v1

    sget-object v3, Lp37;->m:Ls37;

    invoke-virtual {v1, v3}, Lh37;->G(Lee0;)Lh37;

    move-result-object v1

    invoke-virtual {v1, v2}, Lh37;->N(Ljava/lang/Object;)Lh37;

    move-result-object v1

    invoke-virtual {v1, v0}, Lh37;->L(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lo2;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v3, 0x9e

    invoke-static {v3}, Lpl2;->e(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v1

    invoke-virtual {v1, v2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v1

    invoke-virtual {v1, v0}, Lh37;->L(Landroid/widget/ImageView;)V

    :goto_0
    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$f;

    invoke-direct {v2, p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$f;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;Led3;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    invoke-static {v3}, Lo2;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final showNoInternetConnection(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->desktopContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->incldNoInternetView:Lcom/warefly/checkscan/databinding/LayoutNoInternetBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutNoInternetBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showOrdAdDialog(Lb06;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->r:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-direct {v1, v0, p1}, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;-><init>(Landroid/content/Context;Lb06;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->r:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showPushPermissionDialog()V
    .locals 1

    sget-object v0, Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog;->d:Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog;

    invoke-direct {v0}, Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog;-><init>()V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->l(Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogFragment;)V

    return-void
.end method

.method public final showScanButton(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->btnScan:Lcom/google/android/material/imageview/ShapeableImageView;

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

.method public final showTasksAnimatedBadge(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->bottomNavigation:Lcom/warefly/checkscan/ui/bottomnavigationscan/BottomNavigationScan;

    const v0, 0x7f0a066f

    invoke-virtual {p0, v0, p1}, Lcom/warefly/checkscan/ui/bottomnavigationscan/BottomNavigationScan;->setAnimatedBadge(IZ)V

    return-void
.end method

.method public final showToolbar(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->toolbarContent:Landroidx/constraintlayout/widget/ConstraintLayout;

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

.method public final showUnreadNotificationsBadge(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->ivBellRedDot:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lpm;->c(Landroid/widget/ImageView;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->p()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;->ivBellRedDot:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showUpdateAvailable()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->q:Lg27;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lg27;->b:Ljava/lang/Object;

    check-cast v1, Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;

    invoke-direct {v1, v0, v2}, Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lg27;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method
