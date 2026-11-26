.class public final Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/PlaceholderPaddedListDiffHelperKt;->computeDiff(Landroidx/paging/PlaceholderPaddedList;Landroidx/paging/PlaceholderPaddedList;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)Landroidx/paging/PlaceholderPaddedDiffResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $diffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $newList:Landroidx/paging/PlaceholderPaddedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PlaceholderPaddedList<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $newSize:I

.field final synthetic $oldSize:I

.field final synthetic $this_computeDiff:Landroidx/paging/PlaceholderPaddedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PlaceholderPaddedList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/paging/PlaceholderPaddedList;Landroidx/paging/PlaceholderPaddedList;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PlaceholderPaddedList<",
            "TT;>;",
            "Landroidx/paging/PlaceholderPaddedList<",
            "TT;>;",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;II)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$this_computeDiff:Landroidx/paging/PlaceholderPaddedList;

    iput-object p2, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$newList:Landroidx/paging/PlaceholderPaddedList;

    iput-object p3, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$diffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    iput p4, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$oldSize:I

    iput p5, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$newSize:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 1

    iget-object v0, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$this_computeDiff:Landroidx/paging/PlaceholderPaddedList;

    invoke-interface {v0, p1}, Landroidx/paging/PlaceholderPaddedList;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$newList:Landroidx/paging/PlaceholderPaddedList;

    invoke-interface {v0, p2}, Landroidx/paging/PlaceholderPaddedList;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$diffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public areItemsTheSame(II)Z
    .locals 1

    iget-object v0, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$this_computeDiff:Landroidx/paging/PlaceholderPaddedList;

    invoke-interface {v0, p1}, Landroidx/paging/PlaceholderPaddedList;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$newList:Landroidx/paging/PlaceholderPaddedList;

    invoke-interface {v0, p2}, Landroidx/paging/PlaceholderPaddedList;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$diffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$this_computeDiff:Landroidx/paging/PlaceholderPaddedList;

    invoke-interface {v0, p1}, Landroidx/paging/PlaceholderPaddedList;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$newList:Landroidx/paging/PlaceholderPaddedList;

    invoke-interface {v0, p2}, Landroidx/paging/PlaceholderPaddedList;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$diffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getNewListSize()I
    .locals 0

    iget p0, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$newSize:I

    return p0
.end method

.method public getOldListSize()I
    .locals 0

    iget p0, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$oldSize:I

    return p0
.end method
