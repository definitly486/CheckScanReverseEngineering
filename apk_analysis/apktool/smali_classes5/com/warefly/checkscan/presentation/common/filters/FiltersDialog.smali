.class public final Lcom/warefly/checkscan/presentation/common/filters/FiltersDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog<",
        "Lcom/warefly/checkscan/databinding/DialogFiltersBinding;",
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
.field public final d:Ljava/lang/String;

.field public final e:Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$b;

.field public final f:Ljava/util/ArrayList;

.field public final g:Lud9;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/common/filters/FiltersDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogFiltersBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/common/filters/FiltersDialog;->h:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$b;Ljava/util/ArrayList;)V
    .locals 1

    const v0, 0x7f150174

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/common/filters/FiltersDialog;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/common/filters/FiltersDialog;->e:Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$b;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/common/filters/FiltersDialog;->f:Ljava/util/ArrayList;

    new-instance p1, Lud9;

    const-class p2, Lcom/warefly/checkscan/databinding/DialogFiltersBinding;

    invoke-direct {p1, p2, p0}, Lud9;-><init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/common/filters/FiltersDialog;->g:Lud9;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const v0, 0x7f1501ea

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :goto_1
    sget-object p1, Lcom/warefly/checkscan/presentation/common/filters/FiltersDialog;->h:[Lze4;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/common/filters/FiltersDialog;->g:Lud9;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v2, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast v1, Lcom/warefly/checkscan/databinding/DialogFiltersBinding;

    iget-object v3, v1, Lcom/warefly/checkscan/databinding/DialogFiltersBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/warefly/checkscan/presentation/common/filters/FiltersDialog;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/DialogFiltersBinding;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Llb7;

    new-instance v4, Lcom/warefly/checkscan/presentation/common/filters/FiltersDialog$a;

    invoke-direct {v4, p0}, Lcom/warefly/checkscan/presentation/common/filters/FiltersDialog$a;-><init>(Lcom/warefly/checkscan/presentation/common/filters/FiltersDialog;)V

    invoke-direct {v3, v4}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object p1, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v2, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    check-cast p1, Lcom/warefly/checkscan/databinding/DialogFiltersBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogFiltersBinding;->rvCategories:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lls3;

    new-instance v1, Lxg1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lxg1;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/common/filters/FiltersDialog;->f:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lls3;-><init>(Ljava/util/ArrayList;Lxg1;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method
