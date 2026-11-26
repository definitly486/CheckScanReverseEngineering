.class public final Lrd1;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Llh1;",
        "Lcom/warefly/checkscan/databinding/ItemChequeBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lxh1;

.field public final c:Lyh1;


# direct methods
.method public constructor <init>(Lxh1;Lyh1;)V
    .locals 1

    sget-object v0, Lpd1;->c:Lpd1;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lrd1;->b:Lxh1;

    iput-object p2, p0, Lrd1;->c:Lyh1;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Llh1;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemChequeBinding;

    check-cast p2, Llh1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemChequeBinding;->tvShopName:Landroid/widget/TextView;

    iget-object v1, p2, Llh1;->a:Lhd1;

    invoke-virtual {v1}, Lhd1;->h()Llu7;

    move-result-object v2

    invoke-virtual {v2}, Llu7;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lpb2;->a:Lpb2;

    invoke-virtual {v1}, Lhd1;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lpb2;->f(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iget-object v2, p1, Lcom/warefly/checkscan/databinding/ItemChequeBinding;->tvDateTime:Landroid/widget/TextView;

    sget-object v3, Lpb2;->h:Lfh8;

    invoke-virtual {v3}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemChequeBinding;->tvSum:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemChequeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lhd1;->i()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f1404d8

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemChequeBinding;->ivWarning:Landroid/widget/ImageView;

    iget-boolean v2, v1, Lhd1;->g:Z

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1}, Lhd1;->e()Ljh1$a;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lhd1;->e()Ljh1$a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p1, Lcom/warefly/checkscan/databinding/ItemChequeBinding;->tvStock:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lhd1;->e()Ljh1$a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljh1$a;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljh1$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f080451

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljh1$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lds2;->a(Landroid/graphics/drawable/Drawable;I)V

    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemChequeBinding;->tvStock:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemChequeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lqd1;

    invoke-direct {v2, p0, p2, v4}, Lqd1;-><init>(Lvd9;Lpz3;I)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemChequeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    new-instance v0, Lod1;

    invoke-direct {v0, p0, p2}, Lod1;-><init>(Lrd1;Llh1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
