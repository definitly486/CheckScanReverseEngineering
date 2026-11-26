.class public final Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalCardsDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/databinding/DialogWithdrawalCardsBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic g:[Lze4;
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
.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgj9;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Lwi9;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lud9;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalCardsDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogWithdrawalCardsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalCardsDialog;->g:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lgj9;",
            ">;",
            "Lnl3<",
            "-",
            "Lwi9;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalCardsDialog;->d:Ljava/util/List;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalCardsDialog;->e:Lnl3;

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/databinding/DialogWithdrawalCardsBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalCardsDialog;->f:Lud9;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalCardsDialog;->g:[Lze4;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalCardsDialog;->f:Lud9;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v1, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lcom/warefly/checkscan/databinding/DialogWithdrawalCardsBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogWithdrawalCardsBinding;->rvCards:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Leu1;

    new-instance v2, Lfj9;

    new-instance v3, Lw76;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lw76;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v2, v3}, Lfj9;-><init>(Lw76;)V

    const/4 v3, 0x1

    new-array v4, v3, [Lil2;

    aput-object v2, v4, v0

    invoke-direct {v1, v4}, Leu1;-><init>([Lil2;)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalCardsDialog;->d:Ljava/util/List;

    invoke-virtual {v1, p0}, Leu1;->submitList(Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p0, Lhj9;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method
