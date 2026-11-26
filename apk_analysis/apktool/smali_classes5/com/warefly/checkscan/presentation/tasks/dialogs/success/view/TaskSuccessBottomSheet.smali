.class public final Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/tasks/databinding/DialogTaskSuccessBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessView;"
    }
.end annotation


# static fields
.field public static final synthetic h:[Lze4;
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
.field public final d:I

.field public final e:Lno8;

.field public final f:Lud9;

.field public g:Leu1;

.field public presenter:Lcom/warefly/checkscan/presentation/tasks/dialogs/success/presenter/TaskSuccessPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/tasks/databinding/DialogTaskSuccessBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;->h:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILno8;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput p2, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;->d:I

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;->e:Lno8;

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/tasks/databinding/DialogTaskSuccessBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;->f:Lud9;

    return-void
.end method


# virtual methods
.method public final e()Lcom/warefly/checkscan/tasks/databinding/DialogTaskSuccessBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;->h:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;->f:Lud9;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p0, Lcom/warefly/checkscan/tasks/databinding/DialogTaskSuccessBinding;

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;->e()Lcom/warefly/checkscan/tasks/databinding/DialogTaskSuccessBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/DialogTaskSuccessBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;->e:Lno8;

    iget-object v2, v1, Lno8;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/DialogTaskSuccessBinding;->tvSubtitle:Landroid/widget/TextView;

    iget-object v2, v1, Lno8;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/DialogTaskSuccessBinding;->tvDescription:Landroid/widget/TextView;

    iget-object v2, v1, Lno8;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v0

    iget-object v2, v1, Lno8;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    iget-object v2, p1, Lcom/warefly/checkscan/tasks/databinding/DialogTaskSuccessBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lh37;->L(Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;->e()Lcom/warefly/checkscan/tasks/databinding/DialogTaskSuccessBinding;

    move-result-object v0

    iget-object v2, v0, Lcom/warefly/checkscan/tasks/databinding/DialogTaskSuccessBinding;->rvBadges:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Leu1;

    new-instance v4, Lql8;

    sget-object v5, Lpl8;->c:Lpl8;

    invoke-direct {v4, v5}, Lvd9;-><init>(Ldm3;)V

    const/4 v5, 0x1

    new-array v6, v5, [Lil2;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-direct {v3, v6}, Leu1;-><init>([Lil2;)V

    iput-object v3, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;->g:Leu1;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/tasks/databinding/DialogTaskSuccessBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet$setUpBadges$1$1$2;

    invoke-direct {v3, v0, v5, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Loo8;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;->g:Leu1;

    if-eqz v2, :cond_0

    iget-object v3, v1, Lno8;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    iget-object v2, v1, Lno8;->g:Lno8$a;

    if-eqz v2, :cond_1

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/DialogTaskSuccessBinding;->btnAbout:Landroid/widget/TextView;

    iget-object v3, v2, Lno8$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Llb7;

    new-instance v4, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet$a;

    invoke-direct {v4, v2, p0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet$a;-><init>(Lno8$a;Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;)V

    invoke-direct {v3, v4}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/DialogTaskSuccessBinding;->btnAbout:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p1, p1, Lcom/warefly/checkscan/tasks/databinding/DialogTaskSuccessBinding;->btnOk:Landroid/widget/TextView;

    iget-object v0, v1, Lno8;->f:Lno8$a;

    iget-object v0, v0, Lno8$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet$b;-><init>(Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/tasks/dialogs/success/presenter/TaskSuccessPresenter;
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/presenter/TaskSuccessPresenter;

    iget p0, p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;->d:I

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/presenter/TaskSuccessPresenter;-><init>(I)V

    return-object v0
.end method

.method public final showConfetti()V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/success/view/TaskSuccessBottomSheet;->e()Lcom/warefly/checkscan/tasks/databinding/DialogTaskSuccessBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/tasks/databinding/DialogTaskSuccessBinding;->incldConfetti:Lcom/warefly/checkscan/core/ui/databinding/ConfettiLayoutBinding;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lkv1;->a(Lcom/warefly/checkscan/core/ui/databinding/ConfettiLayoutBinding;)V

    return-void
.end method

.method public final vibrate()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x190

    invoke-static {p0, v0, v1}, Lr7;->a(Landroid/app/Activity;J)V

    :cond_0
    return-void
.end method
