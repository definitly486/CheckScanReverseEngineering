.class public final Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;
.super Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentBalanceBinding;",
        "Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;",
        ">;",
        "Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView;"
    }
.end annotation


# static fields
.field public static final u:Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment$a;

.field public static final synthetic v:[Lze4;
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
.field public final m:I

.field public final n:Lol4;

.field public final o:Ljava/lang/String;

.field public final p:I

.field public presenter:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

.field public q:Lk07;

.field public r:Lcom/warefly/checkscan/presentation/balance/main/dialogs/AboutAccrualCashbackDialog;

.field public s:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

.field public t:Leu1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentBalanceBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->v:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->u:Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;-><init>()V

    const v0, 0x7f0d00a7

    iput v0, p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->m:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentBalanceBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->n:Lol4;

    const-string v0, "BALANCE_FRAGMENT_TAG"

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->o:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-static {v0}, Lpl2;->e(I)I

    move-result v0

    iput v0, p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->p:I

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->m:I

    return p0
.end method

.method public final bridge synthetic n()Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->r()Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    move-result-object p0

    return-object p0
.end method

.method public final o()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->o:Ljava/lang/String;

    return-object p0
.end method

.method public final onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->q:Lk07;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lk07;->b(Z)V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 34

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super/range {p0 .. p2}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->q()Lcom/warefly/checkscan/databinding/FragmentBalanceBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentBalanceBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->q()Lcom/warefly/checkscan/databinding/FragmentBalanceBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentBalanceBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Leu1;

    new-instance v3, Ld70;

    sget-object v4, Lc70;->c:Lc70;

    invoke-direct {v3, v4}, Lvd9;-><init>(Ldm3;)V

    new-instance v4, Ls20;

    sget-object v5, Lr20;->c:Lr20;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ls20;-><init>(Ldm3;I)V

    new-instance v5, Ly10;

    sget-object v7, Lx10;->c:Lx10;

    invoke-direct {v5, v7, v6}, Ly10;-><init>(Ldm3;I)V

    new-instance v7, La60;

    sget-object v8, Lz50;->c:Lz50;

    invoke-direct {v7, v8}, Lvd9;-><init>(Ldm3;)V

    new-instance v8, Le30;

    sget-object v9, Lz20;->c:Lz20;

    invoke-direct {v8, v9}, Lvd9;-><init>(Ldm3;)V

    new-instance v9, Lr10;

    sget-object v10, Lq10;->c:Lq10;

    invoke-direct {v9, v10, v6}, Lr10;-><init>(Ldm3;I)V

    new-instance v10, Lw20;

    sget-object v11, Lv20;->c:Lv20;

    invoke-direct {v10, v11, v6}, Lw20;-><init>(Ldm3;I)V

    new-instance v11, Lv10;

    sget-object v12, Lu10;->c:Lu10;

    invoke-direct {v11, v12, v6}, Lv10;-><init>(Ldm3;I)V

    new-instance v12, Ls50;

    sget-object v13, Lr50;->c:Lr50;

    invoke-direct {v12, v13}, Lvd9;-><init>(Ldm3;)V

    new-instance v13, Lb20;

    sget-object v14, La20;->c:La20;

    invoke-direct {v13, v14, v6}, Lb20;-><init>(Ldm3;I)V

    new-instance v14, Lc50;

    sget-object v15, Lb50;->c:Lb50;

    invoke-direct {v14, v15}, Lvd9;-><init>(Ldm3;)V

    new-instance v15, Lz40;

    sget-object v6, Ly40;->c:Ly40;

    invoke-direct {v15, v6}, Lvd9;-><init>(Ldm3;)V

    new-instance v6, Lf50;

    move-object/from16 p2, v3

    sget-object v3, Le50;->c:Le50;

    move-object/from16 v16, v4

    const/4 v4, 0x0

    invoke-direct {v6, v3, v4}, Lf50;-><init>(Ldm3;I)V

    new-instance v3, Li50;

    move-object/from16 v17, v5

    sget-object v5, Lh50;->c:Lh50;

    invoke-direct {v3, v5, v4}, Li50;-><init>(Ldm3;I)V

    new-instance v4, Lu30;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->r()Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    move-result-object v5

    invoke-direct {v4, v5}, Lu30;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V

    new-instance v5, Lk30;

    move-object/from16 v18, v3

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->r()Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    move-result-object v3

    invoke-direct {v5, v3}, Lk30;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V

    new-instance v3, Lm50;

    move-object/from16 v19, v4

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->r()Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    move-result-object v4

    invoke-direct {v3, v4}, Lm50;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V

    new-instance v4, Lw50;

    move-object/from16 v20, v3

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->r()Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    move-result-object v3

    invoke-direct {v4, v3}, Lw50;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V

    new-instance v3, Lo20;

    move-object/from16 v21, v4

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->r()Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    move-result-object v4

    invoke-direct {v3, v4}, Lo20;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V

    new-instance v4, Ln70;

    move-object/from16 v22, v3

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->r()Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    move-result-object v3

    invoke-direct {v4, v3}, Ln70;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V

    new-instance v3, Lj20;

    move-object/from16 v23, v4

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->r()Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    move-result-object v4

    invoke-direct {v3, v4}, Lj20;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V

    new-instance v4, Lt70;

    move-object/from16 v24, v3

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->r()Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    move-result-object v3

    invoke-direct {v4, v3}, Lt70;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V

    new-instance v3, Li70;

    move-object/from16 v25, v4

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->r()Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    move-result-object v4

    invoke-direct {v3, v4}, Li70;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V

    new-instance v4, Ly30;

    move-object/from16 v26, v3

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->r()Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    move-result-object v3

    invoke-direct {v4, v3}, Ly30;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V

    new-instance v3, Le20;

    move-object/from16 v27, v4

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->r()Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    move-result-object v4

    invoke-direct {v3, v4}, Le20;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V

    new-instance v4, Lk60;

    move-object/from16 v28, v3

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->r()Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    move-result-object v3

    invoke-direct {v4, v3}, Lk60;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V

    new-instance v3, Ln50;

    move-object/from16 v29, v4

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->r()Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    move-result-object v4

    invoke-direct {v3, v4}, Ln50;-><init>(Lrj9;)V

    new-instance v4, Lx70;

    move-object/from16 v30, v3

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->r()Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    move-result-object v3

    invoke-direct {v4, v3}, Lx70;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V

    new-instance v3, Ln30;

    move-object/from16 v31, v4

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->r()Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    move-result-object v4

    invoke-direct {v3, v4}, Ln30;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V

    new-instance v4, Lz60;

    move-object/from16 v32, v3

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->r()Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    move-result-object v3

    invoke-direct {v4, v3}, Lz60;-><init>(Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;)V

    const/16 v3, 0x1e

    new-array v3, v3, [Lil2;

    const/16 v33, 0x0

    aput-object p2, v3, v33

    const/16 v33, 0x1

    aput-object v16, v3, v33

    const/16 v16, 0x2

    aput-object v17, v3, v16

    const/16 v16, 0x3

    aput-object v7, v3, v16

    const/4 v7, 0x4

    aput-object v8, v3, v7

    const/4 v7, 0x5

    aput-object v9, v3, v7

    const/4 v7, 0x6

    aput-object v10, v3, v7

    const/4 v7, 0x7

    aput-object v11, v3, v7

    const/16 v7, 0x8

    aput-object v12, v3, v7

    const/16 v7, 0x9

    aput-object v13, v3, v7

    const/16 v7, 0xa

    aput-object v14, v3, v7

    const/16 v7, 0xb

    aput-object v15, v3, v7

    const/16 v7, 0xc

    aput-object v6, v3, v7

    const/16 v6, 0xd

    aput-object v18, v3, v6

    const/16 v6, 0xe

    aput-object v19, v3, v6

    const/16 v6, 0xf

    aput-object v5, v3, v6

    const/16 v5, 0x10

    aput-object v20, v3, v5

    const/16 v5, 0x11

    aput-object v21, v3, v5

    const/16 v5, 0x12

    aput-object v22, v3, v5

    const/16 v5, 0x13

    aput-object v23, v3, v5

    const/16 v5, 0x14

    aput-object v24, v3, v5

    const/16 v5, 0x15

    aput-object v25, v3, v5

    const/16 v5, 0x16

    aput-object v26, v3, v5

    const/16 v5, 0x17

    aput-object v27, v3, v5

    const/16 v5, 0x18

    aput-object v28, v3, v5

    const/16 v5, 0x19

    aput-object v29, v3, v5

    const/16 v5, 0x1a

    aput-object v30, v3, v5

    const/16 v5, 0x1b

    aput-object v31, v3, v5

    const/16 v5, 0x1c

    aput-object v32, v3, v5

    const/16 v5, 0x1d

    aput-object v4, v3, v5

    invoke-direct {v2, v3}, Leu1;-><init>([Lil2;)V

    iput-object v2, v0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->t:Leu1;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->q()Lcom/warefly/checkscan/databinding/FragmentBalanceBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentBalanceBinding;->toolbar:Lcom/warefly/checkscan/databinding/LayoutToolbarBalanceBinding;

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/LayoutToolbarBalanceBinding;->btnAction:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Llb7;

    new-instance v4, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment$d;

    invoke-direct {v4, v0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment$d;-><init>(Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;)V

    invoke-direct {v3, v4}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lcom/warefly/checkscan/databinding/LayoutToolbarBalanceBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const v3, 0x7f140464

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/LayoutToolbarBalanceBinding;->tvSupport:Landroidx/appcompat/widget/AppCompatTextView;

    const v2, 0x7f140468

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->q()Lcom/warefly/checkscan/databinding/FragmentBalanceBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentBalanceBinding;->swipeToRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v2, Lu20;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4}, Lu20;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    new-instance v1, Lk07;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->q()Lcom/warefly/checkscan/databinding/FragmentBalanceBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/warefly/checkscan/databinding/FragmentBalanceBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment$b;

    invoke-direct {v3, v0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment$b;-><init>(Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;)V

    new-instance v4, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment$c;

    invoke-direct {v4, v0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment$c;-><init>(Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;)V

    const v5, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v2, v3, v4, v5}, Lk07;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lnl3;Lnl3;F)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v2

    invoke-virtual {v1, v2}, Lk07;->b(Z)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lk07;->a(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v1, v0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->q:Lk07;

    return-void
.end method

.method public final openMail(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    sget-object p1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Lk57$a;

    invoke-direct {p2, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0x7f140606

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;
    .locals 13

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lb40;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lb40;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Luw5;

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Luw5;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lmo7;

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lmo7;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lzl2;

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lzl2;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v0

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v3, Luf3;

    invoke-static {v3, v1, v0, v2}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Luf3;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "OPEN_ALFA"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    move v12, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Ljf6;

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljf6;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lmk1;

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lmk1;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v0, Liw2;

    invoke-static {v0, p0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    move-object v11, p0

    check-cast v11, Liw2;

    new-instance v3, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    invoke-direct/range {v3 .. v12}, Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;-><init>(Lb40;Luw5;Lmo7;Lzl2;Luf3;Ljf6;Lmk1;Liw2;Z)V

    return-object v3
.end method

.method public final q()Lcom/warefly/checkscan/databinding/FragmentBalanceBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->v:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->n:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentBalanceBinding;

    return-object p0
.end method

.method public final r()Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->presenter:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final showAboutAccrualCashbackDialog(Lw00;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->r:Lcom/warefly/checkscan/presentation/balance/main/dialogs/AboutAccrualCashbackDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p1, Lw00;->a:Ljava/lang/String;

    iget-object p1, p1, Lw00;->b:Ljava/lang/String;

    new-instance v2, Lcom/warefly/checkscan/presentation/balance/main/dialogs/AboutAccrualCashbackDialog;

    invoke-direct {v2, v0, p1, v1}, Lcom/warefly/checkscan/presentation/balance/main/dialogs/AboutAccrualCashbackDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    iput-object v2, p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->r:Lcom/warefly/checkscan/presentation/balance/main/dialogs/AboutAccrualCashbackDialog;

    :cond_1
    return-void
.end method

.method public final showContent(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lpz3;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->t:Leu1;

    if-eqz v1, :cond_0

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->q()Lcom/warefly/checkscan/databinding/FragmentBalanceBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/FragmentBalanceBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    :cond_1
    new-instance v2, Lqw3;

    const/16 v4, 0x10

    invoke-direct {v2, v4, v4}, Lqw3;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    :cond_2
    new-instance v2, Lhy8;

    iget-object v4, v0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->t:Leu1;

    const/high16 v5, -0x80000000

    if-eqz v4, :cond_3

    iget-object v4, v4, Leu1;->i:Lm8;

    const-class v6, Lb60;

    invoke-virtual {v4, v6}, Lm8;->d(Ljava/lang/Class;)I

    move-result v4

    goto :goto_0

    :cond_3
    move v4, v5

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v4, v0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->t:Leu1;

    if-eqz v4, :cond_4

    iget-object v4, v4, Leu1;->i:Lm8;

    const-class v7, Lf30;

    invoke-virtual {v4, v7}, Lm8;->d(Ljava/lang/Class;)I

    move-result v4

    goto :goto_1

    :cond_4
    move v4, v5

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v4, v0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->t:Leu1;

    if-eqz v4, :cond_5

    iget-object v4, v4, Leu1;->i:Lm8;

    const-class v8, Lx20;

    invoke-virtual {v4, v8}, Lm8;->d(Ljava/lang/Class;)I

    move-result v4

    goto :goto_2

    :cond_5
    move v4, v5

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v4, v0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->t:Leu1;

    if-eqz v4, :cond_6

    iget-object v4, v4, Leu1;->i:Lm8;

    const-class v9, Lt20;

    invoke-virtual {v4, v9}, Lm8;->d(Ljava/lang/Class;)I

    move-result v4

    goto :goto_3

    :cond_6
    move v4, v5

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v4, v0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->t:Leu1;

    if-eqz v4, :cond_7

    iget-object v4, v4, Leu1;->i:Lm8;

    const-class v10, Lz30;

    invoke-virtual {v4, v10}, Lm8;->d(Ljava/lang/Class;)I

    move-result v4

    goto :goto_4

    :cond_7
    move v4, v5

    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v4, v0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->t:Leu1;

    if-eqz v4, :cond_8

    iget-object v4, v4, Leu1;->i:Lm8;

    const-class v11, Lx50;

    invoke-virtual {v4, v11}, Lm8;->d(Ljava/lang/Class;)I

    move-result v4

    goto :goto_5

    :cond_8
    move v4, v5

    :goto_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v4, v0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->t:Leu1;

    if-eqz v4, :cond_9

    iget-object v4, v4, Leu1;->i:Lm8;

    const-class v12, Lo70;

    invoke-virtual {v4, v12}, Lm8;->d(Ljava/lang/Class;)I

    move-result v4

    goto :goto_6

    :cond_9
    move v4, v5

    :goto_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v4, v0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->t:Leu1;

    if-eqz v4, :cond_a

    iget-object v4, v4, Leu1;->i:Lm8;

    const-class v13, Lu70;

    invoke-virtual {v4, v13}, Lm8;->d(Ljava/lang/Class;)I

    move-result v4

    goto :goto_7

    :cond_a
    move v4, v5

    :goto_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v4, v0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->t:Leu1;

    if-eqz v4, :cond_b

    iget-object v4, v4, Leu1;->i:Lm8;

    const-class v14, Lk20;

    invoke-virtual {v4, v14}, Lm8;->d(Ljava/lang/Class;)I

    move-result v4

    goto :goto_8

    :cond_b
    move v4, v5

    :goto_8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v4, v0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->t:Leu1;

    if-eqz v4, :cond_c

    iget-object v4, v4, Leu1;->i:Lm8;

    const-class v15, Lp20;

    invoke-virtual {v4, v15}, Lm8;->d(Ljava/lang/Class;)I

    move-result v4

    goto :goto_9

    :cond_c
    move v4, v5

    :goto_9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-object v4, v0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->t:Leu1;

    if-eqz v4, :cond_d

    iget-object v4, v4, Leu1;->i:Lm8;

    const-class v5, Lt50;

    invoke-virtual {v4, v5}, Lm8;->d(Ljava/lang/Class;)I

    move-result v5

    :cond_d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    filled-new-array/range {v6 .. v16}, [Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget v0, v0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->p:I

    invoke-direct {v2, v0, v4}, Lhy8;-><init>(ILjava/util/List;)V

    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    return-void
.end method

.method public final showManagementAlfaDialogCabinet(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog;->e:Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog;

    invoke-direct {v0}, Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog;-><init>()V

    new-instance v1, Lb36;

    const-string v2, "CABINET_URL_KEY"

    invoke-direct {v1, v2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    return-void
.end method

.method public final showOrdDialog(Lb06;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->s:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-direct {v1, v0, p1}, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;-><init>(Landroid/content/Context;Lb06;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->s:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final startTransferToBankCard(J)V
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog;->d:Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog;

    invoke-direct {v0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-instance p2, Lb36;

    const-string v1, "CARD_ID_KEY"

    invoke-direct {p2, v1, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {p2}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    return-void
.end method

.method public final startTransferToPhone()V
    .locals 4

    sget-object v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->f:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;

    invoke-direct {v0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;-><init>()V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v2, Lb36;

    const-string v3, "IS_UPRID_DISABLE"

    invoke-direct {v2, v3, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2}, [Lb36;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    return-void
.end method

.method public final turnOffRefreshing()V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceFragment;->q()Lcom/warefly/checkscan/databinding/FragmentBalanceBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentBalanceBinding;->swipeToRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
