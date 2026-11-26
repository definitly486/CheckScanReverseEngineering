.class public final Lij9;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Ljj9;",
        "Lcom/warefly/checkscan/databinding/ItemWithdrawalCommonBannerBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lrj9;


# direct methods
.method public constructor <init>(Lrj9;)V
    .locals 1

    sget-object v0, Lij9$a;->c:Lij9$a;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lij9;->b:Lrj9;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Ljj9;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemWithdrawalCommonBannerBinding;

    check-cast p2, Ljj9;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemWithdrawalCommonBannerBinding;->getRoot()Landroid/widget/ImageView;

    move-result-object p0

    iget-object v0, p2, Ljj9;->c:Lwi9$e;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemWithdrawalCommonBannerBinding;->getRoot()Landroid/widget/ImageView;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p0

    iget-object p2, p2, Ljj9;->b:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p2}, Lpl2;->d(F)F

    move-result p2

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemWithdrawalCommonBannerBinding;->getRoot()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06001d

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p2, v0}, Lis7;->b(FI)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lee0;->r(Landroid/graphics/drawable/ShapeDrawable;)Lee0;

    move-result-object p0

    check-cast p0, Lh37;

    new-instance p2, Ls37;

    invoke-direct {p2}, Ls37;-><init>()V

    new-instance v0, Ls81;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Le87;

    const/16 v2, 0x8

    invoke-static {v2}, Lpl2;->e(I)I

    move-result v2

    invoke-direct {v1, v2}, Le87;-><init>(I)V

    const/4 v2, 0x2

    new-array v2, v2, [Ls19;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p2, v2}, Lee0;->D([Ls19;)Lee0;

    move-result-object p2

    invoke-virtual {p0, p2}, Lh37;->G(Lee0;)Lh37;

    move-result-object p0

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/ItemWithdrawalCommonBannerBinding;->ivBanner:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lh37;->L(Landroid/widget/ImageView;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 4

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemWithdrawalCommonBannerBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemWithdrawalCommonBannerBinding;->getRoot()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lx30;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p0, p1}, Lx30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
