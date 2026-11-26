.class public final Landroidx/paging/DistinctListsDiffDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/paging/DistinctListsDiffDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/paging/DistinctListsDiffDispatcher;

    invoke-direct {v0}, Landroidx/paging/DistinctListsDiffDispatcher;-><init>()V

    sput-object v0, Landroidx/paging/DistinctListsDiffDispatcher;->INSTANCE:Landroidx/paging/DistinctListsDiffDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final dispatchChange(Landroidx/recyclerview/widget/ListUpdateCallback;IIIILjava/lang/Object;)V
    .locals 0

    sub-int/2addr p2, p4

    if-lez p2, :cond_0

    invoke-interface {p1, p4, p2, p6}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    :cond_0
    sub-int/2addr p5, p3

    if-lez p5, :cond_1

    invoke-interface {p1, p3, p5, p6}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final dispatchDiff(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/paging/PlaceholderPaddedList;Landroidx/paging/PlaceholderPaddedList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            "Landroidx/paging/PlaceholderPaddedList<",
            "TT;>;",
            "Landroidx/paging/PlaceholderPaddedList<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Landroidx/paging/PlaceholderPaddedList;->getPlaceholdersBefore()I

    move-result v0

    invoke-interface {p3}, Landroidx/paging/PlaceholderPaddedList;->getPlaceholdersBefore()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {p2}, Landroidx/paging/PlaceholderPaddedList;->getPlaceholdersBefore()I

    move-result v1

    invoke-interface {p2}, Landroidx/paging/PlaceholderPaddedList;->getDataCount()I

    move-result v2

    add-int/2addr v2, v1

    invoke-interface {p3}, Landroidx/paging/PlaceholderPaddedList;->getPlaceholdersBefore()I

    move-result v1

    invoke-interface {p3}, Landroidx/paging/PlaceholderPaddedList;->getDataCount()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int v2, v1, v0

    if-lez v2, :cond_0

    invoke-interface {p1, v0, v2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    invoke-interface {p1, v0, v2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-interface {p2}, Landroidx/paging/PlaceholderPaddedList;->getPlaceholdersBefore()I

    move-result v0

    invoke-interface {p3}, Landroidx/paging/PlaceholderPaddedList;->getSize()I

    move-result v1

    if-le v0, v1, :cond_1

    move v7, v1

    goto :goto_0

    :cond_1
    move v7, v0

    :goto_0
    invoke-interface {p2}, Landroidx/paging/PlaceholderPaddedList;->getPlaceholdersBefore()I

    move-result v0

    invoke-interface {p2}, Landroidx/paging/PlaceholderPaddedList;->getDataCount()I

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {p3}, Landroidx/paging/PlaceholderPaddedList;->getSize()I

    move-result v0

    if-le v1, v0, :cond_2

    move v8, v0

    goto :goto_1

    :cond_2
    move v8, v1

    :goto_1
    sget-object v9, Landroidx/paging/DiffingChangePayload;->ITEM_TO_PLACEHOLDER:Landroidx/paging/DiffingChangePayload;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Landroidx/paging/DistinctListsDiffDispatcher;->dispatchChange(Landroidx/recyclerview/widget/ListUpdateCallback;IIIILjava/lang/Object;)V

    invoke-interface {p3}, Landroidx/paging/PlaceholderPaddedList;->getPlaceholdersBefore()I

    move-result p0

    invoke-interface {p2}, Landroidx/paging/PlaceholderPaddedList;->getSize()I

    move-result p1

    if-le p0, p1, :cond_3

    move v7, p1

    goto :goto_2

    :cond_3
    move v7, p0

    :goto_2
    invoke-interface {p3}, Landroidx/paging/PlaceholderPaddedList;->getPlaceholdersBefore()I

    move-result p0

    invoke-interface {p3}, Landroidx/paging/PlaceholderPaddedList;->getDataCount()I

    move-result p1

    add-int/2addr p1, p0

    invoke-interface {p2}, Landroidx/paging/PlaceholderPaddedList;->getSize()I

    move-result p0

    if-le p1, p0, :cond_4

    move v8, p0

    goto :goto_3

    :cond_4
    move v8, p1

    :goto_3
    sget-object v9, Landroidx/paging/DiffingChangePayload;->PLACEHOLDER_TO_ITEM:Landroidx/paging/DiffingChangePayload;

    invoke-direct/range {v3 .. v9}, Landroidx/paging/DistinctListsDiffDispatcher;->dispatchChange(Landroidx/recyclerview/widget/ListUpdateCallback;IIIILjava/lang/Object;)V

    invoke-interface {p3}, Landroidx/paging/PlaceholderPaddedList;->getSize()I

    move-result p0

    invoke-interface {p2}, Landroidx/paging/PlaceholderPaddedList;->getSize()I

    move-result p1

    sub-int/2addr p0, p1

    if-lez p0, :cond_5

    invoke-interface {p2}, Landroidx/paging/PlaceholderPaddedList;->getSize()I

    move-result p1

    invoke-interface {v4, p1, p0}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    return-void

    :cond_5
    if-gez p0, :cond_6

    invoke-interface {p2}, Landroidx/paging/PlaceholderPaddedList;->getSize()I

    move-result p1

    add-int/2addr p1, p0

    neg-int p0, p0

    invoke-interface {v4, p1, p0}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    :cond_6
    return-void
.end method
