.class public final Ls78;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Ldm3<",
        "Lcom/warefly/checkscan/databinding/ItemShopsStatisticsBinding;",
        "Le67;",
        "Ljava/lang/Integer;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Ls78;->f:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemShopsStatisticsBinding;

    check-cast p2, Le67;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p1, Lcom/warefly/checkscan/databinding/ItemShopsStatisticsBinding;->tvShopStatistics:Landroid/widget/TextView;

    invoke-virtual {p2}, Le67;->a()Ld67;

    move-result-object v0

    invoke-virtual {v0}, Ld67;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Le67;->a()Ld67;

    move-result-object p3

    invoke-virtual {p3}, Ld67;->a()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p1, Lcom/warefly/checkscan/databinding/ItemShopsStatisticsBinding;->ivShopStatistics:Landroid/widget/ImageView;

    invoke-static {p3}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p3

    invoke-virtual {p2}, Le67;->a()Ld67;

    move-result-object v0

    invoke-virtual {v0}, Ld67;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Luq2;->b:Luq2$c;

    new-instance v1, Lak1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3, v0, v1}, Lee0;->A(Luq2;Llj0;)Lee0;

    move-result-object p3

    check-cast p3, Lh37;

    const/16 v0, 0x24

    invoke-static {v0}, Lpl2;->o(I)I

    move-result v1

    invoke-static {v0}, Lpl2;->o(I)I

    move-result v0

    invoke-virtual {p3, v1, v0}, Lee0;->p(II)Lee0;

    move-result-object p3

    check-cast p3, Lh37;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemShopsStatisticsBinding;->ivShopStatistics:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Lh37;->L(Landroid/widget/ImageView;)V

    :cond_0
    iget-object p3, p1, Lcom/warefly/checkscan/databinding/ItemShopsStatisticsBinding;->tvCostStatistics:Landroid/widget/TextView;

    iget-object p0, p0, Ls78;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2}, Le67;->b()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f1404d8

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemShopsStatisticsBinding;->pbCostsStatistics:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p1, p2, Le67;->c:I

    invoke-static {p1}, Lpl2;->o(I)I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
