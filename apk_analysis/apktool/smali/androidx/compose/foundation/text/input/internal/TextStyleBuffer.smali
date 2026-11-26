.class public final Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private gapEnd:I

.field private gapStart:I

.field private final intervalTree:Landroidx/compose/foundation/text/input/internal/IntIntervalTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/foundation/text/input/internal/IntIntervalTree<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;-><init>(Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/input/internal/TextStyleBuffer<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->intervalTree:Landroidx/compose/foundation/text/input/internal/IntIntervalTree;

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;-><init>(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;-><init>(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;ILjh2;)V

    :goto_0
    iput-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->intervalTree:Landroidx/compose/foundation/text/input/internal/IntIntervalTree;

    if-eqz p1, :cond_1

    iget v0, p1, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    iput v0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    iget p1, p1, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    iput p1, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    return-void

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    const/16 p1, 0x3e8

    iput p1, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;ILjh2;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 40
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;-><init>(Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/ArrayList;Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;Ljava/lang/Object;II)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->getStyles$lambda$0(Ljava/util/List;Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;Ljava/lang/Object;II)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/ArrayList;Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;Ljava/lang/Object;II)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->getAllStyles$lambda$0(Ljava/util/List;Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;Ljava/lang/Object;II)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private final deleteAfterGap(I)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->intervalTree:Landroidx/compose/foundation/text/input/internal/IntIntervalTree;

    iget v1, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    add-int v2, v1, p1

    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->access$getTempArray(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;)Landroidx/collection/MutableIntList;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v4

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v5

    invoke-static {v4, v5}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_e

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v4

    if-lt v4, v1, :cond_e

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v4

    if-le v4, v2, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v4

    :goto_0
    move v6, v5

    :goto_1
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v7

    invoke-static {v4, v7}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v7

    if-nez v7, :cond_e

    const/4 v7, 0x1

    if-eqz v6, :cond_c

    const/4 v8, 0x2

    if-eq v6, v7, :cond_5

    if-eq v6, v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v9

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v10

    invoke-static {v9, v10}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v6

    invoke-static {v4, v6}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    goto :goto_2

    :cond_3
    move v6, v8

    :cond_4
    :goto_2
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v4

    goto :goto_1

    :cond_5
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/Node;->constructor-impl(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getStart-330cO7A(I)I

    move-result v7

    iget v9, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    add-int v10, v9, p1

    if-ge v7, v10, :cond_6

    if-gt v9, v7, :cond_6

    add-int v7, v9, p1

    :cond_6
    invoke-virtual {v0, v6, v7}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setStart-9hnwElY(II)V

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getEnd-330cO7A(I)I

    move-result v7

    iget v9, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    add-int v10, v9, p1

    if-ge v7, v10, :cond_7

    if-gt v9, v7, :cond_7

    add-int v7, v9, p1

    :cond_7
    invoke-virtual {v0, v6, v7}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setEnd-9hnwElY(II)V

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v7

    iget v9, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    add-int v10, v9, p1

    if-ge v7, v10, :cond_8

    if-gt v9, v7, :cond_8

    add-int v7, v9, p1

    :cond_8
    invoke-virtual {v0, v6, v7}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setMin-9hnwElY(II)V

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v7

    iget v9, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    add-int v10, v9, p1

    if-ge v7, v10, :cond_9

    if-gt v9, v7, :cond_9

    add-int v7, v9, p1

    :cond_9
    invoke-virtual {v0, v6, v7}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setMax-9hnwElY(II)V

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getEnd-330cO7A(I)I

    move-result v7

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getStart-330cO7A(I)I

    move-result v9

    if-gt v7, v9, :cond_a

    invoke-virtual {v0, v3, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->add-ZlWbn38(Landroidx/collection/MutableIntList;I)V

    :cond_a
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v6

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v7

    invoke-static {v6, v7}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v6

    if-lt v6, v1, :cond_b

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v6

    if-gt v6, v2, :cond_b

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v4

    goto/16 :goto_0

    :cond_b
    move v6, v8

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v6

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v8

    invoke-static {v6, v8}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v6

    if-lt v6, v1, :cond_d

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v4

    goto/16 :goto_0

    :cond_d
    move v6, v7

    goto/16 :goto_1

    :cond_e
    :goto_3
    iget-object v1, v3, Landroidx/collection/IntList;->content:[I

    iget v2, v3, Landroidx/collection/IntList;->_size:I

    move v4, v5

    :goto_4
    if-ge v4, v2, :cond_f

    aget v6, v1, v4

    invoke-static {v6}, Landroidx/compose/foundation/text/input/internal/Node;->constructor-impl(I)I

    move-result v6

    invoke-static {v0, v6, v5}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->access$removeNode-9hnwElY(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_f
    invoke-virtual {v3}, Landroidx/collection/MutableIntList;->clear()V

    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->access$cleanDeletedNodesIfNeeded(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;)V

    iget v0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    return-void
.end method

.method private final deleteBeforeGap(I)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    sub-int v1, v0, p1

    iget-object v2, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->intervalTree:Landroidx/compose/foundation/text/input/internal/IntIntervalTree;

    invoke-static {v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->access$getTempArray(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;)Landroidx/collection/MutableIntList;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v5

    invoke-static {v4, v5}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_e

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v4

    if-lt v4, v1, :cond_e

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v4

    if-le v4, v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v4

    :goto_0
    move v6, v5

    :goto_1
    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v7

    invoke-static {v4, v7}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v7

    if-nez v7, :cond_e

    const/4 v7, 0x1

    if-eqz v6, :cond_c

    const/4 v8, 0x2

    if-eq v6, v7, :cond_5

    if-eq v6, v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v9

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v10

    invoke-static {v9, v10}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v2, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v6

    invoke-static {v4, v6}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    goto :goto_2

    :cond_3
    move v6, v8

    :cond_4
    :goto_2
    invoke-virtual {v2, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v4

    goto :goto_1

    :cond_5
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/Node;->constructor-impl(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getStart-330cO7A(I)I

    move-result v7

    if-gt v1, v7, :cond_6

    iget v9, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    if-ge v7, v9, :cond_6

    iget v7, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    :cond_6
    invoke-virtual {v2, v6, v7}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setStart-9hnwElY(II)V

    invoke-virtual {v2, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getEnd-330cO7A(I)I

    move-result v7

    if-gt v1, v7, :cond_7

    iget v9, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    if-ge v7, v9, :cond_7

    iget v7, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    :cond_7
    invoke-virtual {v2, v6, v7}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setEnd-9hnwElY(II)V

    invoke-virtual {v2, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v7

    if-gt v1, v7, :cond_8

    iget v9, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    if-ge v7, v9, :cond_8

    iget v7, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    :cond_8
    invoke-virtual {v2, v6, v7}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setMin-9hnwElY(II)V

    invoke-virtual {v2, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v7

    if-gt v1, v7, :cond_9

    iget v9, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    if-ge v7, v9, :cond_9

    iget v7, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    :cond_9
    invoke-virtual {v2, v6, v7}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setMax-9hnwElY(II)V

    invoke-virtual {v2, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getEnd-330cO7A(I)I

    move-result v7

    invoke-virtual {v2, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getStart-330cO7A(I)I

    move-result v9

    if-gt v7, v9, :cond_a

    invoke-virtual {v2, v3, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->add-ZlWbn38(Landroidx/collection/MutableIntList;I)V

    :cond_a
    invoke-virtual {v2, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v6

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v7

    invoke-static {v6, v7}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v2, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v6

    if-lt v6, v1, :cond_b

    invoke-virtual {v2, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v6

    if-gt v6, v0, :cond_b

    invoke-virtual {v2, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v4

    goto/16 :goto_0

    :cond_b
    move v6, v8

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v2, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v6

    invoke-virtual {v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v8

    invoke-static {v6, v8}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v2, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v6

    if-lt v6, v1, :cond_d

    invoke-virtual {v2, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v4

    goto/16 :goto_0

    :cond_d
    move v6, v7

    goto/16 :goto_1

    :cond_e
    :goto_3
    iget-object v0, v3, Landroidx/collection/IntList;->content:[I

    iget v1, v3, Landroidx/collection/IntList;->_size:I

    move v4, v5

    :goto_4
    if-ge v4, v1, :cond_f

    aget v6, v0, v4

    invoke-static {v6}, Landroidx/compose/foundation/text/input/internal/Node;->constructor-impl(I)I

    move-result v6

    invoke-static {v2, v6, v5}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->access$removeNode-9hnwElY(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_f
    invoke-virtual {v3}, Landroidx/collection/MutableIntList;->clear()V

    invoke-static {v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->access$cleanDeletedNodesIfNeeded(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;)V

    iget v0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    return-void
.end method

.method private final deleteText(II)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    if-ge p1, v0, :cond_0

    if-gt p2, v0, :cond_0

    sub-int/2addr v0, p2

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->moveGapLeft(I)V

    sub-int/2addr p2, p1

    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->deleteBeforeGap(I)V

    return-void

    :cond_0
    if-ge p1, v0, :cond_1

    if-lt p2, v0, :cond_1

    sub-int p1, v0, p1

    sub-int/2addr p2, v0

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->deleteBeforeGap(I)V

    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->deleteAfterGap(I)V

    return-void

    :cond_1
    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->moveGapRight(I)V

    sub-int/2addr p2, p1

    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->deleteAfterGap(I)V

    return-void
.end method

.method private final enlargeGapIfNeeded(I)V
    .locals 11

    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->intervalTree:Landroidx/compose/foundation/text/input/internal/IntIntervalTree;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->getGapLength()I

    move-result v0

    if-lt v0, p1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->getGapLength()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x3e8

    iget-object p1, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->intervalTree:Landroidx/compose/foundation/text/input/internal/IntIntervalTree;

    iget v1, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    invoke-static {p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->access$getTempArray(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;)Landroidx/collection/MutableIntList;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v3

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_f

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v3

    invoke-virtual {p1, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v3

    if-lt v3, v1, :cond_f

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v3

    invoke-virtual {p1, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v3

    const v5, 0x7fffffff

    if-le v3, v5, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v3

    :goto_1
    move v6, v4

    :goto_2
    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v7

    invoke-static {v3, v7}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v7

    if-nez v7, :cond_f

    const/4 v7, 0x1

    if-eqz v6, :cond_d

    const/4 v8, 0x2

    if-eq v6, v7, :cond_6

    if-eq v6, v8, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v9

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v10

    invoke-static {v9, v10}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {p1, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v6

    invoke-static {v3, v6}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    goto :goto_3

    :cond_4
    move v6, v8

    :cond_5
    :goto_3
    invoke-virtual {p1, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v3

    goto :goto_2

    :cond_6
    invoke-static {v3}, Landroidx/compose/foundation/text/input/internal/Node;->constructor-impl(I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getStart-330cO7A(I)I

    move-result v7

    iget v9, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    if-lt v7, v9, :cond_7

    add-int/2addr v7, v0

    :cond_7
    invoke-virtual {p1, v6, v7}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setStart-9hnwElY(II)V

    invoke-virtual {p1, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getEnd-330cO7A(I)I

    move-result v7

    iget v9, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    if-lt v7, v9, :cond_8

    add-int/2addr v7, v0

    :cond_8
    invoke-virtual {p1, v6, v7}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setEnd-9hnwElY(II)V

    invoke-virtual {p1, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v7

    iget v9, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    if-lt v7, v9, :cond_9

    add-int/2addr v7, v0

    :cond_9
    invoke-virtual {p1, v6, v7}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setMin-9hnwElY(II)V

    invoke-virtual {p1, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v7

    iget v9, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    if-lt v7, v9, :cond_a

    add-int/2addr v7, v0

    :cond_a
    invoke-virtual {p1, v6, v7}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setMax-9hnwElY(II)V

    invoke-virtual {p1, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getEnd-330cO7A(I)I

    move-result v7

    invoke-virtual {p1, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getStart-330cO7A(I)I

    move-result v9

    if-gt v7, v9, :cond_b

    invoke-virtual {p1, v2, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->add-ZlWbn38(Landroidx/collection/MutableIntList;I)V

    :cond_b
    invoke-virtual {p1, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v6

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v7

    invoke-static {v6, v7}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {p1, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v6

    if-lt v6, v1, :cond_c

    invoke-virtual {p1, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v6

    if-gt v6, v5, :cond_c

    invoke-virtual {p1, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v3

    goto/16 :goto_1

    :cond_c
    move v6, v8

    goto/16 :goto_2

    :cond_d
    invoke-virtual {p1, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v6

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v8

    invoke-static {v6, v8}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {p1, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v6

    if-lt v6, v1, :cond_e

    invoke-virtual {p1, v3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v3

    goto/16 :goto_1

    :cond_e
    move v6, v7

    goto/16 :goto_2

    :cond_f
    :goto_4
    iget-object v1, v2, Landroidx/collection/IntList;->content:[I

    iget v3, v2, Landroidx/collection/IntList;->_size:I

    move v5, v4

    :goto_5
    if-ge v5, v3, :cond_10

    aget v6, v1, v5

    invoke-static {v6}, Landroidx/compose/foundation/text/input/internal/Node;->constructor-impl(I)I

    move-result v6

    invoke-static {p1, v6, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->access$removeNode-9hnwElY(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_10
    invoke-virtual {v2}, Landroidx/collection/MutableIntList;->clear()V

    invoke-static {p1}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->access$cleanDeletedNodesIfNeeded(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;)V

    iget p1, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    return-void
.end method

.method private final gapBufferToOriginalIndex(I)I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->getGapLength()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private static final getAllStyles$lambda$0(Ljava/util/List;Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;Ljava/lang/Object;II)Lj59;
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {p1, p3}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapBufferToOriginalIndex(I)I

    move-result p3

    invoke-direct {p1, p4}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapBufferToOriginalIndex(I)I

    move-result p1

    invoke-direct {v0, p2, p3, p1}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final getGapLength()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    iget p0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    sub-int/2addr v0, p0

    return v0
.end method

.method private static final getStyles$lambda$0(Ljava/util/List;Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;Ljava/lang/Object;II)Lj59;
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {p1, p3}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapBufferToOriginalIndex(I)I

    move-result p3

    invoke-direct {p1, p4}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapBufferToOriginalIndex(I)I

    move-result p1

    invoke-direct {v0, p2, p3, p1}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final moveGapLeft(I)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->intervalTree:Landroidx/compose/foundation/text/input/internal/IntIntervalTree;

    iget v1, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    sub-int v2, v1, p1

    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->access$getTempArray(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;)Landroidx/collection/MutableIntList;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v4

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v5

    invoke-static {v4, v5}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_e

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v4

    if-lt v4, v2, :cond_e

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v4

    if-le v4, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v4

    :goto_0
    move v6, v5

    :goto_1
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v7

    invoke-static {v4, v7}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v7

    if-nez v7, :cond_e

    const/4 v7, 0x1

    if-eqz v6, :cond_c

    const/4 v8, 0x2

    if-eq v6, v7, :cond_5

    if-eq v6, v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v9

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v10

    invoke-static {v9, v10}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v6

    invoke-static {v4, v6}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    goto :goto_2

    :cond_3
    move v6, v8

    :cond_4
    :goto_2
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v4

    goto :goto_1

    :cond_5
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/Node;->constructor-impl(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getStart-330cO7A(I)I

    move-result v7

    iget v9, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    sub-int v10, v9, p1

    if-ge v7, v9, :cond_6

    if-gt v10, v7, :cond_6

    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->getGapLength()I

    move-result v9

    add-int/2addr v7, v9

    :cond_6
    invoke-virtual {v0, v6, v7}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setStart-9hnwElY(II)V

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getEnd-330cO7A(I)I

    move-result v7

    iget v9, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    sub-int v10, v9, p1

    if-ge v7, v9, :cond_7

    if-gt v10, v7, :cond_7

    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->getGapLength()I

    move-result v9

    add-int/2addr v7, v9

    :cond_7
    invoke-virtual {v0, v6, v7}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setEnd-9hnwElY(II)V

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v7

    iget v9, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    sub-int v10, v9, p1

    if-ge v7, v9, :cond_8

    if-gt v10, v7, :cond_8

    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->getGapLength()I

    move-result v9

    add-int/2addr v7, v9

    :cond_8
    invoke-virtual {v0, v6, v7}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setMin-9hnwElY(II)V

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v7

    iget v9, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    sub-int v10, v9, p1

    if-ge v7, v9, :cond_9

    if-gt v10, v7, :cond_9

    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->getGapLength()I

    move-result v9

    add-int/2addr v7, v9

    :cond_9
    invoke-virtual {v0, v6, v7}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setMax-9hnwElY(II)V

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getEnd-330cO7A(I)I

    move-result v7

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getStart-330cO7A(I)I

    move-result v9

    if-gt v7, v9, :cond_a

    invoke-virtual {v0, v3, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->add-ZlWbn38(Landroidx/collection/MutableIntList;I)V

    :cond_a
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v6

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v7

    invoke-static {v6, v7}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v6

    if-lt v6, v2, :cond_b

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v6

    if-gt v6, v1, :cond_b

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v4

    goto/16 :goto_0

    :cond_b
    move v6, v8

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v6

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v8

    invoke-static {v6, v8}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v6

    if-lt v6, v2, :cond_d

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v4

    goto/16 :goto_0

    :cond_d
    move v6, v7

    goto/16 :goto_1

    :cond_e
    :goto_3
    iget-object v1, v3, Landroidx/collection/IntList;->content:[I

    iget v2, v3, Landroidx/collection/IntList;->_size:I

    move v4, v5

    :goto_4
    if-ge v4, v2, :cond_f

    aget v6, v1, v4

    invoke-static {v6}, Landroidx/compose/foundation/text/input/internal/Node;->constructor-impl(I)I

    move-result v6

    invoke-static {v0, v6, v5}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->access$removeNode-9hnwElY(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_f
    invoke-virtual {v3}, Landroidx/collection/MutableIntList;->clear()V

    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->access$cleanDeletedNodesIfNeeded(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;)V

    iget v0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    iget v0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    return-void
.end method

.method private final moveGapRight(I)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->intervalTree:Landroidx/compose/foundation/text/input/internal/IntIntervalTree;

    iget v1, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    add-int v2, v1, p1

    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->access$getTempArray(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;)Landroidx/collection/MutableIntList;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v4

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v5

    invoke-static {v4, v5}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_e

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v4

    if-lt v4, v1, :cond_e

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v4

    if-le v4, v2, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRoot-27flxzM()I

    move-result v4

    :goto_0
    move v6, v5

    :goto_1
    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v7

    invoke-static {v4, v7}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v7

    if-nez v7, :cond_e

    const/4 v7, 0x1

    if-eqz v6, :cond_c

    const/4 v8, 0x2

    if-eq v6, v7, :cond_5

    if-eq v6, v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v9

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v10

    invoke-static {v9, v10}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v6

    invoke-static {v4, v6}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    goto :goto_2

    :cond_3
    move v6, v8

    :cond_4
    :goto_2
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getParent-bLpG9ms(I)I

    move-result v4

    goto :goto_1

    :cond_5
    invoke-static {v4}, Landroidx/compose/foundation/text/input/internal/Node;->constructor-impl(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getStart-330cO7A(I)I

    move-result v7

    iget v9, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    add-int v10, v9, p1

    if-ge v7, v10, :cond_6

    if-gt v9, v7, :cond_6

    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->getGapLength()I

    move-result v9

    sub-int/2addr v7, v9

    :cond_6
    invoke-virtual {v0, v6, v7}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setStart-9hnwElY(II)V

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getEnd-330cO7A(I)I

    move-result v7

    iget v9, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    add-int v10, v9, p1

    if-ge v7, v10, :cond_7

    if-gt v9, v7, :cond_7

    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->getGapLength()I

    move-result v9

    sub-int/2addr v7, v9

    :cond_7
    invoke-virtual {v0, v6, v7}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setEnd-9hnwElY(II)V

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v7

    iget v9, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    add-int v10, v9, p1

    if-ge v7, v10, :cond_8

    if-gt v9, v7, :cond_8

    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->getGapLength()I

    move-result v9

    sub-int/2addr v7, v9

    :cond_8
    invoke-virtual {v0, v6, v7}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setMin-9hnwElY(II)V

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v7

    iget v9, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    add-int v10, v9, p1

    if-ge v7, v10, :cond_9

    if-gt v9, v7, :cond_9

    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->getGapLength()I

    move-result v9

    sub-int/2addr v7, v9

    :cond_9
    invoke-virtual {v0, v6, v7}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->setMax-9hnwElY(II)V

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getEnd-330cO7A(I)I

    move-result v7

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getStart-330cO7A(I)I

    move-result v9

    if-gt v7, v9, :cond_a

    invoke-virtual {v0, v3, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->add-ZlWbn38(Landroidx/collection/MutableIntList;I)V

    :cond_a
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v6

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v7

    invoke-static {v6, v7}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v6

    if-lt v6, v1, :cond_b

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMin-330cO7A(I)I

    move-result v6

    if-gt v6, v2, :cond_b

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getRight-bLpG9ms(I)I

    move-result v4

    goto/16 :goto_0

    :cond_b
    move v6, v8

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v6

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getTerminator-27flxzM()I

    move-result v8

    invoke-static {v6, v8}, Landroidx/compose/foundation/text/input/internal/Node;->equals-impl0(II)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getMax-330cO7A(I)I

    move-result v6

    if-lt v6, v1, :cond_d

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->getLeft-bLpG9ms(I)I

    move-result v4

    goto/16 :goto_0

    :cond_d
    move v6, v7

    goto/16 :goto_1

    :cond_e
    :goto_3
    iget-object v1, v3, Landroidx/collection/IntList;->content:[I

    iget v2, v3, Landroidx/collection/IntList;->_size:I

    move v4, v5

    :goto_4
    if-ge v4, v2, :cond_f

    aget v6, v1, v4

    invoke-static {v6}, Landroidx/compose/foundation/text/input/internal/Node;->constructor-impl(I)I

    move-result v6

    invoke-static {v0, v6, v5}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->access$removeNode-9hnwElY(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_f
    invoke-virtual {v3}, Landroidx/collection/MutableIntList;->clear()V

    invoke-static {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->access$cleanDeletedNodesIfNeeded(Landroidx/compose/foundation/text/input/internal/IntIntervalTree;)V

    iget v0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    iget v0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    return-void
.end method

.method private final originalIndexToGapBuffer(I)I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->getGapLength()I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public final addStyle(Ljava/lang/Object;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->originalIndexToGapBuffer(I)I

    move-result p2

    invoke-direct {p0, p3}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->originalIndexToGapBuffer(I)I

    move-result p3

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->intervalTree:Landroidx/compose/foundation/text/input/internal/IntIntervalTree;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->addInterval(Ljava/lang/Object;II)Z

    move-result p0

    return p0
.end method

.method public final clear()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->intervalTree:Landroidx/compose/foundation/text/input/internal/IntIntervalTree;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->intervalTree:Landroidx/compose/foundation/text/input/internal/IntIntervalTree;

    check-cast p1, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;

    iget-object p1, p1, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->intervalTree:Landroidx/compose/foundation/text/input/internal/IntIntervalTree;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getAllStyles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->intervalTree:Landroidx/compose/foundation/text/input/internal/IntIntervalTree;

    new-instance v2, Lvs8;

    invoke-direct {v2, v0, p0}, Lvs8;-><init>(Ljava/util/ArrayList;Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;)V

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->forAllIntervals(Ldm3;)V

    return-object v0
.end method

.method public final getGapEnd()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    return p0
.end method

.method public final getGapStart()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    return p0
.end method

.method public final getStyles(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "TT;>;>;"
        }
    .end annotation

    if-le p1, p2, :cond_0

    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->originalIndexToGapBuffer(I)I

    move-result p1

    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->originalIndexToGapBuffer(I)I

    move-result p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->intervalTree:Landroidx/compose/foundation/text/input/internal/IntIntervalTree;

    new-instance v2, Lws8;

    invoke-direct {v2, v0, p0}, Lws8;-><init>(Ljava/util/ArrayList;Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;)V

    invoke-virtual {v1, p1, p2, v2}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->forEachIntervalInRange(IILdm3;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->intervalTree:Landroidx/compose/foundation/text/input/internal/IntIntervalTree;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->hashCode()I

    move-result p0

    return p0
.end method

.method public final removeStyle(Ljava/lang/Object;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    invoke-direct {p0, p2}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->originalIndexToGapBuffer(I)I

    move-result p2

    invoke-direct {p0, p3}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->originalIndexToGapBuffer(I)I

    move-result p3

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->intervalTree:Landroidx/compose/foundation/text/input/internal/IntIntervalTree;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->removeInterval(Ljava/lang/Object;II)Z

    move-result p0

    return p0
.end method

.method public final replaceText(III)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->intervalTree:Landroidx/compose/foundation/text/input/internal/IntIntervalTree;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/input/internal/IntIntervalTree;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sub-int v0, p2, p1

    sub-int v0, p3, v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->enlargeGapIfNeeded(I)V

    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->deleteText(II)V

    iget p1, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    const/4 p0, 0x1

    return p0
.end method

.method public final setGapEnd(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapEnd:I

    return-void
.end method

.method public final setGapStart(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/text/input/internal/TextStyleBuffer;->gapStart:I

    return-void
.end method
