.class public final Lzr3;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field public final e:I

.field public final f:I

.field public final g:[I

.field public h:Z

.field public final i:I

.field public final j:I

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public l:I


# direct methods
.method public constructor <init>(IIII[I)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p3, p0, Lzr3;->e:I

    iput p4, p0, Lzr3;->f:I

    iput-object p5, p0, Lzr3;->g:[I

    const/high16 p4, -0x80000000

    if-ne p3, p4, :cond_0

    div-int/lit8 p2, p2, 0x2

    :cond_0
    iput p2, p0, Lzr3;->i:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lzr3;->j:I

    sget-object p1, Lkx2;->b:Lkx2;

    iput-object p1, p0, Lzr3;->k:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Lzr3;->l:I

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static/range {p1 .. p4}, Lsg;->e(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    iget-object v4, v0, Lzr3;->g:[I

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_14

    aget v8, v4, v7

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v9

    if-eq v9, v8, :cond_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    if-nez v5, :cond_1

    goto/16 :goto_d

    :cond_1
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, -0x1

    if-eq v2, v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-boolean v3, v0, Lzr3;->h:Z

    const/4 v9, 0x1

    const/4 v10, 0x3

    if-nez v3, :cond_8

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    move v11, v6

    :goto_2
    if-ge v11, v3, :cond_4

    invoke-virtual {v5, v11}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v12

    invoke-static {v4, v12}, Lyr;->C([II)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    move v11, v8

    :goto_3
    iput v11, v0, Lzr3;->l:I

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v9

    :goto_4
    if-ge v8, v3, :cond_6

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v11

    invoke-static {v4, v11}, Lyr;->C([II)Z

    move-result v11

    if-eqz v11, :cond_5

    move v8, v3

    goto :goto_5

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_6
    :goto_5
    add-int/2addr v8, v9

    iget v3, v0, Lzr3;->l:I

    sub-int/2addr v8, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v6

    :goto_6
    if-ge v4, v8, :cond_7

    iget v5, v0, Lzr3;->l:I

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    invoke-static {v10, v3}, Lqn1;->L(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v0, Lzr3;->k:Ljava/util/List;

    iput-boolean v9, v0, Lzr3;->h:Z

    :cond_8
    iget-object v3, v0, Lzr3;->k:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v6

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v8, v4, 0x1

    if-ltz v4, :cond_13

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    const/high16 v12, -0x80000000

    if-ge v11, v10, :cond_a

    move-object v11, v5

    check-cast v11, Ljava/util/Collection;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x3

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v14, v6

    :goto_8
    if-ge v14, v5, :cond_9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_9
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v5, v13

    :cond_a
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    const/4 v14, 0x2

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    iget v14, v0, Lzr3;->i:I

    iget v15, v0, Lzr3;->e:I

    iget v6, v0, Lzr3;->j:I

    const/16 p2, 0x0

    iget v7, v0, Lzr3;->f:I

    if-ne v11, v2, :cond_d

    if-eq v7, v12, :cond_b

    if-nez v4, :cond_b

    goto :goto_9

    :cond_b
    move v7, v6

    :goto_9
    iput v7, v1, Landroid/graphics/Rect;->top:I

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v15, v12, :cond_c

    iput v15, v1, Landroid/graphics/Rect;->left:I

    goto :goto_c

    :cond_c
    iput v14, v1, Landroid/graphics/Rect;->left:I

    iput v14, v1, Landroid/graphics/Rect;->right:I

    goto :goto_c

    :cond_d
    if-ne v13, v2, :cond_f

    if-eq v7, v12, :cond_e

    if-nez v4, :cond_e

    goto :goto_a

    :cond_e
    move v7, v6

    :goto_a
    iput v7, v1, Landroid/graphics/Rect;->top:I

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v15, v12, :cond_12

    iput v14, v1, Landroid/graphics/Rect;->left:I

    iput v14, v1, Landroid/graphics/Rect;->right:I

    goto :goto_c

    :cond_f
    if-ne v5, v2, :cond_12

    if-eq v7, v12, :cond_10

    if-nez v4, :cond_10

    goto :goto_b

    :cond_10
    move v7, v6

    :goto_b
    iput v7, v1, Landroid/graphics/Rect;->top:I

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v15, v12, :cond_11

    iput v15, v1, Landroid/graphics/Rect;->right:I

    goto :goto_c

    :cond_11
    iput v14, v1, Landroid/graphics/Rect;->left:I

    iput v14, v1, Landroid/graphics/Rect;->right:I

    :cond_12
    :goto_c
    move v4, v8

    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_13
    const/16 p2, 0x0

    invoke-static {}, Lu96;->o()V

    throw p2

    :cond_14
    :goto_d
    return-void
.end method
