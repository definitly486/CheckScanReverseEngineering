.class public final Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeSuccessBinding;",
        ">;"
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
.field public final d:Z

.field public final e:Lq6;

.field public final f:Lud9;

.field public g:Leu1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeSuccessBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet;->h:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLq6;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet;->d:Z

    iput-object p3, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet;->e:Lq6;

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeSuccessBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet;->f:Lud9;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet;->d:Z

    if-eqz p1, :cond_0

    sget-object p1, Lkd$a$j$h;->e:Lkd$a$j$h;

    invoke-virtual {p1}, Lkd;->a()V

    goto :goto_0

    :cond_0
    sget-object p1, Lkd$a$f$g;->e:Lkd$a$f$g;

    invoke-virtual {p1}, Lkd;->a()V

    :goto_0
    sget-object p1, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet;->h:[Lze4;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet;->f:Lud9;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v2, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast v1, Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeSuccessBinding;

    iget-object v3, v1, Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeSuccessBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet;->e:Lq6;

    iget-object v5, v4, Lq6;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeSuccessBinding;->tvSubtitle:Landroid/widget/TextView;

    iget-object v5, v4, Lq6;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeSuccessBinding;->tvDescription:Landroid/widget/TextView;

    iget-object v5, v4, Lq6;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v3

    iget-object v5, v4, Lq6;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v3

    iget-object v5, v1, Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeSuccessBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Lh37;->L(Landroid/widget/ImageView;)V

    aget-object p1, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v2, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeSuccessBinding;

    iget-object v2, p1, Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeSuccessBinding;->rvBadges:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Leu1;

    new-instance v5, Lok6;

    sget-object v6, Lnk6;->c:Lnk6;

    invoke-direct {v5, v6}, Lvd9;-><init>(Ldm3;)V

    const/4 v6, 0x1

    new-array v7, v6, [Lil2;

    aput-object v5, v7, v0

    invoke-direct {v3, v7}, Leu1;-><init>([Lil2;)V

    iput-object v3, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet;->g:Leu1;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeSuccessBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v3, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet$setUpBadges$1$1$2;

    invoke-direct {v3, p1, v6, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Lnm6;

    invoke-direct {p1}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet;->g:Leu1;

    if-eqz v0, :cond_2

    iget-object v2, v4, Lq6;->b:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lxp6;

    new-instance v6, Lwk6;

    invoke-direct {v6, v5}, Lwk6;-><init>(Lxp6;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Leu1;->submitList(Ljava/util/List;)V

    :cond_2
    iget-object v0, v4, Lq6;->g:Lq6$a;

    if-eqz v0, :cond_3

    iget-object p1, v1, Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeSuccessBinding;->btnAbout:Landroid/widget/TextView;

    iget-object v2, v0, Lq6$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet$a;

    invoke-direct {v3, v0, p0}, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet$a;-><init>(Lq6$a;Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-nez p1, :cond_4

    iget-object p1, v1, Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeSuccessBinding;->btnAbout:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p1, v1, Lcom/warefly/checkscan/profile/databinding/DialogProfilePromocodeSuccessBinding;->btnOk:Landroid/widget/TextView;

    iget-object v0, v4, Lq6;->f:Lq6$a;

    iget-object v0, v0, Lq6$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet$b;-><init>(Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
