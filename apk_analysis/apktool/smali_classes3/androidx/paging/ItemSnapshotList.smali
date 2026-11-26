.class public final Landroidx/paging/ItemSnapshotList;
.super Lu0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lu0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final placeholdersAfter:I

.field private final placeholdersBefore:I


# direct methods
.method public constructor <init>(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lu0;-><init>()V

    iput p1, p0, Landroidx/paging/ItemSnapshotList;->placeholdersBefore:I

    iput p2, p0, Landroidx/paging/ItemSnapshotList;->placeholdersAfter:I

    iput-object p3, p0, Landroidx/paging/ItemSnapshotList;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget v1, p0, Landroidx/paging/ItemSnapshotList;->placeholdersBefore:I

    if-ge p1, v1, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Landroidx/paging/ItemSnapshotList;->placeholdersBefore:I

    iget-object v2, p0, Landroidx/paging/ItemSnapshotList;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    if-ge p1, v2, :cond_1

    if-gt v1, p1, :cond_1

    iget-object v0, p0, Landroidx/paging/ItemSnapshotList;->items:Ljava/util/List;

    iget p0, p0, Landroidx/paging/ItemSnapshotList;->placeholdersBefore:I

    sub-int/2addr p1, p0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    iget v1, p0, Landroidx/paging/ItemSnapshotList;->placeholdersBefore:I

    iget-object v2, p0, Landroidx/paging/ItemSnapshotList;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lv;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    if-gt v2, p1, :cond_2

    return-object v0

    :cond_2
    const-string v0, "Illegal attempt to access index "

    const-string v1, " in ItemSnapshotList of size "

    invoke-static {p1, v0, v1}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lv;->size()I

    move-result p0

    invoke-static {p0, p1}, Lbj;->d(ILjava/lang/StringBuilder;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/ItemSnapshotList;->items:Ljava/util/List;

    return-object p0
.end method

.method public final getPlaceholdersAfter()I
    .locals 0

    iget p0, p0, Landroidx/paging/ItemSnapshotList;->placeholdersAfter:I

    return p0
.end method

.method public final getPlaceholdersBefore()I
    .locals 0

    iget p0, p0, Landroidx/paging/ItemSnapshotList;->placeholdersBefore:I

    return p0
.end method

.method public getSize()I
    .locals 2

    iget v0, p0, Landroidx/paging/ItemSnapshotList;->placeholdersBefore:I

    iget-object v1, p0, Landroidx/paging/ItemSnapshotList;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    iget p0, p0, Landroidx/paging/ItemSnapshotList;->placeholdersAfter:I

    add-int/2addr v1, p0

    return v1
.end method
