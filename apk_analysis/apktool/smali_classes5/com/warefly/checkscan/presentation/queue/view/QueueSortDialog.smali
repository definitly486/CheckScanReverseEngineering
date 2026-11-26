.class public final Lcom/warefly/checkscan/presentation/queue/view/QueueSortDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/databinding/DialogSortQueueBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic f:[Lze4;
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
.field public final d:Lcom/warefly/checkscan/presentation/queue/view/QueueFragment$a;

.field public final e:Lud9;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/queue/view/QueueSortDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogSortQueueBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/queue/view/QueueSortDialog;->f:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/warefly/checkscan/presentation/queue/view/QueueFragment$a;)V
    .locals 1

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/queue/view/QueueSortDialog;->d:Lcom/warefly/checkscan/presentation/queue/view/QueueFragment$a;

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/databinding/DialogSortQueueBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/queue/view/QueueSortDialog;->e:Lud9;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/queue/view/QueueSortDialog;->f:[Lze4;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/queue/view/QueueSortDialog;->e:Lud9;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v2, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast v1, Lcom/warefly/checkscan/databinding/DialogSortQueueBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/DialogSortQueueBinding;->btnClose:Landroid/widget/ImageView;

    new-instance v3, Lhw6;

    invoke-direct {v3, p0}, Lhw6;-><init>(Lcom/warefly/checkscan/presentation/queue/view/QueueSortDialog;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object p1, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v2, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lcom/warefly/checkscan/databinding/DialogSortQueueBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogSortQueueBinding;->rvDateFilters:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v4, Ljz7;

    sget-object v1, Lmz6;->SORT_BY_DATE:Lmz6;

    sget-object v2, Lmz6;->SORT_BY_CREATION:Lmz6;

    filled-new-array {v1, v2}, [Lmz6;

    move-result-object v1

    invoke-static {v1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-instance v9, Llw6;

    invoke-direct {v9, p0}, Llw6;-><init>(Lcom/warefly/checkscan/presentation/queue/view/QueueSortDialog;)V

    const/4 v10, 0x4

    const v5, 0x7f0d0250

    const/4 v7, 0x0

    sget-object v8, Liw6;->f:Liw6;

    invoke-direct/range {v4 .. v10}, Ljz7;-><init>(ILjava/util/List;Lrb;Lnl3;Ldm3;I)V

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method
