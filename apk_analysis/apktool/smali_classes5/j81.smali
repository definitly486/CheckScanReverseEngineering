.class public final Lj81;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lk81;",
        "Lcom/warefly/checkscan/databinding/ItemCategoryInChequeBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lne1;


# direct methods
.method public constructor <init>(Lne1;)V
    .locals 1

    sget-object v0, Li81;->c:Li81;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lj81;->b:Lne1;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lk81;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemCategoryInChequeBinding;

    check-cast p2, Lk81;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemCategoryInChequeBinding;->tvCategoryName:Landroid/widget/TextView;

    iget-object v1, p2, Lk81;->a:Lc81;

    invoke-virtual {v1}, Lc81;->a()Lp71;

    move-result-object v2

    invoke-virtual {v2}, Lp71;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemCategoryInChequeBinding;->tvCategorySum:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemCategoryInChequeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lc81;->b()J

    move-result-wide v3

    long-to-float v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f1404d8

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemCategoryInChequeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    new-instance v1, Lh81;

    invoke-direct {v1, p0, p2}, Lh81;-><init>(Lj81;Lk81;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemCategoryInChequeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
