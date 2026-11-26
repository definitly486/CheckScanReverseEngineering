.class public final Lhf8;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhf8$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Ljf8;",
        "Lcom/warefly/checkscan/support/databinding/ItemSupportQuestionBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;)V
    .locals 1

    sget-object v0, Lgf8;->c:Lgf8;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lhf8;->b:Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Ljf8;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcom/warefly/checkscan/support/databinding/ItemSupportQuestionBinding;

    move-object/from16 v2, p2

    check-cast v2, Ljf8;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, v2, Ljf8;->b:Z

    invoke-virtual {v1}, Lcom/warefly/checkscan/support/databinding/ItemSupportQuestionBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Llb7;

    new-instance v6, Lif8;

    invoke-direct {v6, v0, v2}, Lif8;-><init>(Lhf8;Ljf8;)V

    invoke-direct {v5, v6}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v1, Lcom/warefly/checkscan/support/databinding/ItemSupportQuestionBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v5, v2, Ljf8;->a:Lff8;

    iget-object v6, v5, Lff8;->b:Ljava/lang/String;

    iget-object v7, v5, Lff8;->d:Ljava/util/ArrayList;

    iget-object v8, v5, Lff8;->e:Lod8;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v5, Lff8;->c:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v6, v1, Lcom/warefly/checkscan/support/databinding/ItemSupportQuestionBinding;->tvDescription:Landroid/widget/TextView;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lsr0;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/4 v10, 0x1

    iget-object v11, v0, Lhf8;->b:Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;

    const-class v12, Lsv6;

    const-string v13, "onQuestionTextLinkClicked"

    const-string v14, "onQuestionTextLinkClicked(Ljava/lang/String;)V"

    invoke-direct/range {v9 .. v16}, Lsr0;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {v6, v4, v9}, Lat8;->a(Landroid/widget/TextView;Ljava/lang/String;Lnl3;)V

    :cond_0
    iget-object v6, v1, Lcom/warefly/checkscan/support/databinding/ItemSupportQuestionBinding;->btnAction:Landroid/widget/TextView;

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    iget-object v10, v8, Lod8;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v10, v9

    :goto_0
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v8, :cond_2

    iget-object v6, v8, Lod8;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v6, v9

    :goto_1
    iget-object v10, v1, Lcom/warefly/checkscan/support/databinding/ItemSupportQuestionBinding;->btnAction:Landroid/widget/TextView;

    if-eqz v6, :cond_3

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Llb7;

    new-instance v11, Ls88;

    const/4 v12, 0x1

    invoke-direct {v11, v0, v2, v12}, Ls88;-><init>(Lvd9;Lpz3;I)V

    invoke-direct {v6, v11}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v10, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v10, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    iget-object v0, v1, Lcom/warefly/checkscan/support/databinding/ItemSupportQuestionBinding;->rvChildren:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v6, v0, Leu1;

    if-eqz v6, :cond_4

    check-cast v0, Leu1;

    goto :goto_3

    :cond_4
    move-object v0, v9

    :goto_3
    if-eqz v0, :cond_d

    if-eqz v3, :cond_5

    sget-object v2, Lkx2;->b:Lkx2;

    :goto_4
    move/from16 v17, v3

    goto/16 :goto_9

    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lwd8;

    iget-object v13, v2, Ljf8;->c:Ljava/util/Set;

    iget v14, v12, Lwd8;->a:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    invoke-static {}, Lu96;->e()Lar4;

    move-result-object v15

    new-instance v6, Lae8;

    move-object/from16 p1, v9

    iget v9, v5, Lff8;->a:I

    move-object/from16 p2, v2

    iget-object v2, v12, Lwd8;->b:Ljava/lang/String;

    invoke-direct {v6, v2, v9, v14, v13}, Lae8;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {v15, v6}, Lar4;->add(Ljava/lang/Object;)Z

    if-eqz v13, :cond_a

    iget-object v2, v12, Lwd8;->c:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v13, v6, 0x1

    if-ltz v6, :cond_8

    check-cast v9, Lnd8;

    move-object/from16 v16, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v17, v3

    const-string v3, "_block_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    instance-of v3, v9, Lnd8$b;

    if-eqz v3, :cond_6

    new-instance v3, Lee8;

    check-cast v9, Lnd8$b;

    iget-object v6, v9, Lnd8$b;->a:Ljava/lang/String;

    invoke-direct {v3, v2, v6}, Lee8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_6
    instance-of v3, v9, Lnd8$a;

    if-eqz v3, :cond_7

    new-instance v3, Lvd8;

    check-cast v9, Lnd8$a;

    iget-object v6, v9, Lnd8$a;->a:Ljava/lang/String;

    invoke-direct {v3, v2, v6}, Lvd8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    invoke-virtual {v15, v3}, Lar4;->add(Ljava/lang/Object;)Z

    move v6, v13

    move-object/from16 v2, v16

    move/from16 v3, v17

    goto :goto_6

    :cond_7
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_8
    invoke-static {}, Lu96;->o()V

    throw p1

    :cond_9
    move/from16 v17, v3

    iget-object v2, v12, Lwd8;->d:Lod8;

    if-eqz v2, :cond_b

    new-instance v3, Lsd8;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "_button"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v2}, Lsd8;-><init>(Ljava/lang/String;Lod8;)V

    invoke-virtual {v15, v3}, Lar4;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    move/from16 v17, v3

    :cond_b
    :goto_8
    invoke-static {v15}, Lu96;->d(Lar4;)Lar4;

    move-result-object v2

    invoke-static {v2, v10}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    move-object/from16 v9, p1

    move-object/from16 v2, p2

    move/from16 v3, v17

    goto/16 :goto_5

    :cond_c
    move-object v2, v10

    goto/16 :goto_4

    :goto_9
    invoke-virtual {v0, v2}, Leu1;->submitList(Ljava/util/List;)V

    goto :goto_a

    :cond_d
    move/from16 v17, v3

    :goto_a
    iget-object v0, v1, Lcom/warefly/checkscan/support/databinding/ItemSupportQuestionBinding;->tvDescription:Landroid/widget/TextView;

    const/16 v2, 0x8

    if-eqz v17, :cond_e

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/warefly/checkscan/support/databinding/ItemSupportQuestionBinding;->rvChildren:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/warefly/checkscan/support/databinding/ItemSupportQuestionBinding;->btnAction:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/warefly/checkscan/support/databinding/ItemSupportQuestionBinding;->ivOpen:Landroid/widget/ImageView;

    const v1, 0x7f08020d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_10

    invoke-static {v4}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_b

    :cond_f
    const/4 v3, 0x0

    goto :goto_c

    :cond_10
    :goto_b
    move v3, v2

    :goto_c
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/warefly/checkscan/support/databinding/ItemSupportQuestionBinding;->rvChildren:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    const/4 v3, 0x0

    goto :goto_d

    :cond_11
    move v3, v2

    :goto_d
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/warefly/checkscan/support/databinding/ItemSupportQuestionBinding;->btnAction:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v8, :cond_12

    const/4 v6, 0x0

    goto :goto_e

    :cond_12
    move v6, v2

    :goto_e
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/warefly/checkscan/support/databinding/ItemSupportQuestionBinding;->ivOpen:Landroid/widget/ImageView;

    const v1, 0x7f080205

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 7

    check-cast p1, Lcom/warefly/checkscan/support/databinding/ItemSupportQuestionBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/support/databinding/ItemSupportQuestionBinding;->rvChildren:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Leu1;

    new-instance v2, Lzd8;

    iget-object p0, p0, Lhf8;->b:Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;

    invoke-direct {v2, p0}, Lzd8;-><init>(Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;)V

    new-instance v3, Lde8;

    invoke-direct {v3, p0}, Lde8;-><init>(Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;)V

    new-instance v4, Lud8;

    sget-object v5, Ltd8;->c:Ltd8;

    invoke-direct {v4, v5}, Lvd9;-><init>(Ldm3;)V

    new-instance v5, Lrd8;

    invoke-direct {v5, p0}, Lrd8;-><init>(Lcom/warefly/checkscan/support/presentation/questions/presenter/SupportQuestionsPresenter;)V

    const/4 p0, 0x4

    new-array p0, p0, [Lil2;

    const/4 v6, 0x0

    aput-object v2, p0, v6

    const/4 v2, 0x1

    aput-object v3, p0, v2

    const/4 v3, 0x2

    aput-object v4, p0, v3

    const/4 v3, 0x3

    aput-object v5, p0, v3

    invoke-direct {v1, p0}, Leu1;-><init>([Lil2;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Lcom/warefly/checkscan/support/databinding/ItemSupportQuestionBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method
