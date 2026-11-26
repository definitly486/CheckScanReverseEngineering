.class public final Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/shared/infoBottomSheet/databinding/BottomSheetLayoutInfoBinding;",
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
            "Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Z

.field public final f:Lud9;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/shared/infoBottomSheet/databinding/BottomSheetLayoutInfoBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet;->g:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b$a;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet;->d:Ljava/util/List;

    iput-boolean p3, p0, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet;->e:Z

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/shared/infoBottomSheet/databinding/BottomSheetLayoutInfoBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet;->f:Lud9;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet;->g:[Lze4;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v1, p0, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet;->f:Lud9;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v1, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lcom/warefly/checkscan/shared/infoBottomSheet/databinding/BottomSheetLayoutInfoBinding;

    iget-object v1, p1, Lcom/warefly/checkscan/shared/infoBottomSheet/databinding/BottomSheetLayoutInfoBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v2, p0, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet;->e:Z

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/warefly/checkscan/shared/infoBottomSheet/databinding/BottomSheetLayoutInfoBinding;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet$b;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet$b;-><init>(Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/shared/infoBottomSheet/databinding/BottomSheetLayoutInfoBinding;->rvBody:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v1, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet$a;

    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance v1, Leu1;

    new-instance v2, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/c;

    sget-object v4, Lf54;->c:Lf54;

    invoke-direct {v2, v4}, Lvd9;-><init>(Ldm3;)V

    new-array v3, v3, [Lil2;

    aput-object v2, v3, v0

    invoke-direct {v1, v3}, Leu1;-><init>([Lil2;)V

    iget-object p0, p0, Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/InfoBottomSheet;->d:Ljava/util/List;

    invoke-virtual {v1, p0}, Leu1;->submitList(Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
