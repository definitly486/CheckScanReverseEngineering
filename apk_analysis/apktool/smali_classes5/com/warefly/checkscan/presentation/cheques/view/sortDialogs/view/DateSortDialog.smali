.class public final Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/DateSortDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/databinding/DateSortDialogLayoutBinding;",
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
.field public final d:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$e;

.field public final e:Lud9;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/DateSortDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DateSortDialogLayoutBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/DateSortDialog;->f:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$e;)V
    .locals 1

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/DateSortDialog;->d:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$e;

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/databinding/DateSortDialogLayoutBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/DateSortDialog;->e:Lud9;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/DateSortDialog;->f:[Lze4;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/DateSortDialog;->e:Lud9;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v2, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast v1, Lcom/warefly/checkscan/databinding/DateSortDialogLayoutBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/DateSortDialogLayoutBinding;->rvDateFilters:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v6, Ljz7;

    sget-object v3, Ls48;->PURCHASE_DATE:Ls48;

    sget-object v4, Ls48;->SCAN_DATE:Ls48;

    filled-new-array {v3, v4}, [Ls48;

    move-result-object v3

    invoke-static {v3}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    new-instance v11, Lob2;

    invoke-direct {v11, p0}, Lob2;-><init>(Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/DateSortDialog;)V

    const/4 v12, 0x4

    const v7, 0x7f0d0250

    const/4 v9, 0x0

    sget-object v10, Llb2;->f:Llb2;

    invoke-direct/range {v6 .. v12}, Ljz7;-><init>(ILjava/util/List;Lrb;Lnl3;Ldm3;I)V

    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    aget-object p1, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v2, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lcom/warefly/checkscan/databinding/DateSortDialogLayoutBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DateSortDialogLayoutBinding;->btnClose:Landroid/widget/ImageView;

    new-instance v0, Lz61;

    invoke-direct {v0, p0, v5}, Lz61;-><init>(Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
