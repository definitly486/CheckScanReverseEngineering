.class public final Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;"
    }
.end annotation


# static fields
.field public static final synthetic n:[Lze4;
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

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljo0;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljo0;",
            ">;"
        }
    .end annotation
.end field

.field public j:La87;

.field public k:Los7;

.field public final l:Landroidx/navigation/NavArgsLazy;

.field public m:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

.field public presenter:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->n:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00df

    iput v0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->g:Lol4;

    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Lx96;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$m;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$m;-><init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lne4;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->l:Landroidx/navigation/NavArgsLazy;

    return-void
.end method


# virtual methods
.method public final enableTransfer(ZJ)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->n()Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->btnWithdraw:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$b;

    invoke-direct {v1, p1, p2, p3, p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$b;-><init>(Landroid/widget/TextView;JLcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->n()Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->btnWithdraw:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final hideTransfer()V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->n()Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->btnWithdraw:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->f:I

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->n:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->presenter:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, Los7;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->n()Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->viewToolbar:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    iget-object p2, p2, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnShare:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$d;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$d;-><init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;)V

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$e;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$e;-><init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;)V

    invoke-direct {p1, p2, v1, v0}, Los7;-><init>(Landroid/view/View;Lnl3;Lll3;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->k:Los7;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->n()Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->viewToolbar:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$c;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$c;-><init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;
    .locals 8

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->l:Landroidx/navigation/NavArgsLazy;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx96;

    iget-wide v1, v1, Lx96;->a:J

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v3

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v4

    const-class v5, Luf3;

    const/4 v6, 0x0

    invoke-static {v5, v4, v3, v6}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luf3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v4

    const-class v5, Lio0;

    invoke-static {v5, v4, v6, v6}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio0;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v5

    const-class v7, Lc4;

    invoke-static {v7, v5, v6, v6}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc4;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v7, Ljf6;

    invoke-static {v7, p0, v6, v6}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Ljf6;

    invoke-direct/range {v0 .. v6}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;-><init>(JLuf3;Lio0;Lc4;Ljf6;)V

    return-object v0
.end method

.method public final shareCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {p1, p2, p3, p4}, Lm2;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->k:Los7;

    if-eqz v0, :cond_0

    const v1, 0x7f1400bc

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, v1, p3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$f;

    invoke-direct {v5, p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$f;-><init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;)V

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Los7;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lll3;)Lrx1;

    move-result-object p1

    const-string p2, "ShareCard"

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->f(Lcp2;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "shareCardBehavior"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final showAgreement(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->n()Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->viewDescription:Lcom/warefly/checkscan/databinding/LayoutDescriptionBinding;

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/LayoutDescriptionBinding;->tvHeader:Landroid/widget/TextView;

    const v2, 0x7f1400bb

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/LayoutDescriptionBinding;->tvDescription:Landroid/widget/TextView;

    invoke-static {p1}, Lsx3;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p1, Lx61;->a:Lx61;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public final showCouldntGetAgreement()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f1400b9

    invoke-static {v0, p0}, Loz1;->g(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showCouldntGetTerms()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f1400b9

    invoke-static {v0, p0}, Loz1;->g(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showCouldntLoadProgram()V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->n()Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->viewToolbar:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnShare:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->viewLoadingFailed:Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

    invoke-virtual {v1}, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->viewLoadingFailed:Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->tvMessage:Landroid/widget/TextView;

    const v2, 0x7f140034

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->viewLoadingFailed:Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->btnTryAgain:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$g;

    invoke-direct {v3, p0, v0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$g;-><init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final showCouldntUpdateBalance()V
    .locals 3

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->n()Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->viewHeading:Lcom/warefly/checkscan/databinding/LayoutPlaceHeadingBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/LayoutPlaceHeadingBinding;->tvValue:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->pbUpdateBalance:Landroidx/core/widget/ContentLoadingProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043e\u0431\u043d\u043e\u0432\u0438\u0442\u044c \u0431\u0430\u043b\u0430\u043d\u0441"

    invoke-static {p0, v0}, Loz1;->h(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final showLoadingDialog(Z)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->m:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;->d:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;

    invoke-static {p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;->b(Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;)Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->m:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    :cond_1
    return-void
.end method

.method public final showLoadingProgram(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->n()Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->viewLoading:Lcom/warefly/checkscan/databinding/LayoutPartnerLoadingPlaceholderBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutPartnerLoadingPlaceholderBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showProgram(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsFragment;

    invoke-direct {v1}, Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsFragment;-><init>()V

    new-instance v2, Lu61;

    invoke-direct {v2, p1, p2}, Lu61;-><init>(J)V

    invoke-virtual {v2}, Lu61;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget-object p1, Lj59;->a:Lj59;

    const p1, 0x7f0a02aa

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->n()Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;

    move-result-object p0

    iget-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->viewHeading:Lcom/warefly/checkscan/databinding/LayoutPlaceHeadingBinding;

    if-eqz p6, :cond_0

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/LayoutPlaceHeadingBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p2

    invoke-virtual {p2, p6}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p2

    invoke-static {}, Lqs2;->h()Lqs2;

    move-result-object p6

    invoke-virtual {p2, p6}, Lh37;->P(Lqs2;)Lh37;

    move-result-object p2

    iget-object p6, p1, Lcom/warefly/checkscan/databinding/LayoutPlaceHeadingBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {p2, p6}, Lh37;->L(Landroid/widget/ImageView;)V

    :cond_0
    iget-object p2, p1, Lcom/warefly/checkscan/databinding/LayoutPlaceHeadingBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutPlaceHeadingBinding;->tvValue:Landroid/widget/TextView;

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->viewToolbar:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->tvToolbarTitle:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->viewToolbar:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnShare:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final showTerms(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljo0;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showTerms "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showTerms"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->n()Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->viewRewards:Lcom/warefly/checkscan/databinding/LayoutRewardListingBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutRewardListingBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->termsHeading:Lcom/warefly/checkscan/databinding/LayoutTermsHeadingBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutTermsHeadingBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-void

    :cond_0
    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->termsHeading:Lcom/warefly/checkscan/databinding/LayoutTermsHeadingBinding;

    invoke-virtual {v1}, Lcom/warefly/checkscan/databinding/LayoutTermsHeadingBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v4, Ljz7;

    sget-object v9, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$k;->f:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$k;

    const/4 v10, 0x4

    const v5, 0x7f0d0180

    const/4 v7, 0x0

    sget-object v8, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$j;->f:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$j;

    move-object v6, p1

    invoke-direct/range {v4 .. v10}, Ljz7;-><init>(ILjava/util/List;Lrb;Lnl3;Ldm3;I)V

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->viewRewards:Lcom/warefly/checkscan/databinding/LayoutRewardListingBinding;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/LayoutRewardListingBinding;->rvTerms:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/warefly/checkscan/util/UnscrollableLinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x1

    invoke-direct {v1, v5, v7, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/LayoutRewardListingBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iput-object v6, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->i:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v5, 0x5

    if-gt v0, v5, :cond_2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->h:Ljava/util/List;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/LayoutRewardListingBinding;->btnMoreTerms:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutRewardListingBinding;->overlapShadow:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string p0, "allTerms"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v0, p1, Lcom/warefly/checkscan/databinding/LayoutRewardListingBinding;->overlapShadow:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {v6, v3, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->h:Ljava/util/List;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/LayoutRewardListingBinding;->btnMoreTerms:Landroid/widget/ImageView;

    new-instance v2, La87;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$h;

    invoke-direct {v5, p1, p0, v4}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$h;-><init>(Lcom/warefly/checkscan/databinding/LayoutRewardListingBinding;Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;Ljz7;)V

    new-instance v6, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$i;

    invoke-direct {v6, p1, p0, v4}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$i;-><init>(Lcom/warefly/checkscan/databinding/LayoutRewardListingBinding;Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;Ljz7;)V

    invoke-direct {v2, v3, v0, v5, v6}, La87;-><init>(ZLandroid/view/View;Lll3;Lll3;)V

    iput-object v2, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->j:La87;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutRewardListingBinding;->btnMoreTerms:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$l;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$l;-><init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;)V

    invoke-direct {v0, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->h:Ljava/util/List;

    if-eqz p0, :cond_3

    invoke-virtual {v4, p0}, Ljz7;->b(Ljava/util/List;)V

    return-void

    :cond_3
    const-string p0, "shownTerms"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    throw v1
.end method

.method public final showUpdatingBalance()V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->n()Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->pbUpdateBalance:Landroidx/core/widget/ContentLoadingProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->viewHeading:Lcom/warefly/checkscan/databinding/LayoutPlaceHeadingBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutPlaceHeadingBinding;->tvValue:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final updateBalance(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->n()Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->viewHeading:Lcom/warefly/checkscan/databinding/LayoutPlaceHeadingBinding;

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/LayoutPlaceHeadingBinding;->tvValue:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->pbUpdateBalance:Landroidx/core/widget/ContentLoadingProgressBar;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
