.class public final Ltl8;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltl8$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lzl8;",
        "Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskBannerBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;)V
    .locals 1

    sget-object v0, Lsl8;->c:Lsl8;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Ltl8;->b:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lzl8;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskBannerBinding;

    check-cast p2, Lzl8;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskBannerBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lul8;

    invoke-direct {v2, p0, p2}, Lul8;-><init>(Ltl8;Lzl8;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p2, Lzl8;->d:Lb06;

    iget-object v1, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskBannerBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    iget-object v1, v1, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, v0, Lb06;->b:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskBannerBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    invoke-virtual {v0}, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->getRoot()Leightbitlab/com/blurview/BlurView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lvl8;

    invoke-direct {v2, p0, p2}, Lvl8;-><init>(Ltl8;Lzl8;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object p0, v1, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskBannerBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object p0

    iget-object p2, p2, Lzl8;->b:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskBannerBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f06001d

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lpl2;->d(F)F

    move-result v0

    invoke-static {v0, p2}, Lis7;->b(FI)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lee0;->r(Landroid/graphics/drawable/ShapeDrawable;)Lee0;

    move-result-object p0

    check-cast p0, Lh37;

    iget-object p1, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskBannerBinding;->ivBanner:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lh37;->L(Landroid/widget/ImageView;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskBannerBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskBannerBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskBannerBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lzd3;->h(Leightbitlab/com/blurview/BlurView;Landroid/view/ViewGroup;)V

    return-void
.end method
