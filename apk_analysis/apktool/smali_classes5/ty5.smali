.class public final Lty5;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lty5$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lxy5;",
        "Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:I

.field public final c:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 3

    const v0, 0x7f0d0167

    const/4 v1, 0x0

    const v2, 0x7f0d013e

    .line 13
    invoke-direct {p0, v2, v0, v1}, Lty5;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    new-instance v0, Lty5$a;

    invoke-direct {v0, p1}, Lty5$a;-><init>(I)V

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput p2, p0, Lty5;->b:I

    iput p3, p0, Lty5;->c:I

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lxy5;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p1

    check-cast v0, Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;

    move-object/from16 v1, p2

    check-cast v1, Lxy5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lxy5;->h:Ljava/lang/String;

    iget-object v3, v1, Lxy5;->g:Ljava/lang/String;

    iget-object v4, v0, Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v5, v1, Lxy5;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;->tvValue:Landroid/widget/TextView;

    iget-object v5, v1, Lxy5;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;->tvStatus:Landroid/widget/TextView;

    iget-object v5, v1, Lxy5;->j:Lqy5;

    sget-object v6, Lty5$b;->b:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const-string v6, "#000000"

    const-string v7, ""

    const/4 v8, 0x1

    if-ne v5, v8, :cond_3

    iget-object v5, v1, Lxy5;->f:Lm88;

    sget-object v9, Lty5$b;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v9, v5

    if-eq v5, v8, :cond_2

    const/4 v9, 0x2

    if-eq v5, v9, :cond_2

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v7

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lzn1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v6, v2

    :goto_1
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_2
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_3
    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v3, v7

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lzn1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    move-object v6, v2

    :goto_3
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_4
    iget-boolean v2, v1, Lxy5;->i:Z

    iget-object v3, v0, Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;->tvExpand:Landroid/widget/TextView;

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f1404ae

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;->ivExpand:Landroid/widget/ImageView;

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    iget-object v2, v0, Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;->rvSuboperations:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f1404a6

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;->ivExpand:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    iget-object v2, v0, Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;->rvSuboperations:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    new-instance v2, La87;

    iget-boolean v3, v1, Lxy5;->i:Z

    iget-object v5, v0, Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;->ivExpand:Landroid/widget/ImageView;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lvy5;

    invoke-direct {v6, v1, v0}, Lvy5;-><init>(Lxy5;Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;)V

    new-instance v7, Lwy5;

    invoke-direct {v7, v1, v0}, Lwy5;-><init>(Lxy5;Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;)V

    invoke-direct {v2, v3, v5, v6, v7}, La87;-><init>(ZLandroid/view/View;Lll3;Lll3;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    new-instance v5, Lsy5;

    invoke-direct {v5, v2}, Lsy5;-><init>(La87;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;->rvSuboperations:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5, v8, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v9, Ljz7;

    iget-object v3, v1, Lxy5;->e:Ljava/util/List;

    if-nez v3, :cond_7

    sget-object v3, Lkx2;->b:Lkx2;

    :cond_7
    move-object v11, v3

    sget-object v13, Ljq0;->i:Ljq0;

    sget-object v14, Luy5;->f:Luy5;

    const/4 v15, 0x4

    move-object/from16 v3, p0

    iget v10, v3, Lty5;->b:I

    const/4 v12, 0x0

    invoke-direct/range {v9 .. v15}, Ljz7;-><init>(ILjava/util/List;Lrb;Lnl3;Ldm3;I)V

    invoke-virtual {v2, v9}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v2, v0, Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;->ivIcon:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v2

    iget-object v1, v1, Lxy5;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v1

    invoke-static {}, Lqs2;->h()Lqs2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lh37;->P(Lqs2;)Lh37;

    move-result-object v1

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lh37;->L(Landroid/widget/ImageView;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 2

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lty5;->c:I

    if-lez p0, :cond_0

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;->rvSuboperations:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lfy8;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfy8;-><init>(IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    return-void
.end method
