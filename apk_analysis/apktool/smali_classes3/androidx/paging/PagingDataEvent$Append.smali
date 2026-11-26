.class public final Landroidx/paging/PagingDataEvent$Append;
.super Landroidx/paging/PagingDataEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/PagingDataEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Append"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/paging/PagingDataEvent<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final inserted:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final newPlaceholdersAfter:I

.field private final oldPlaceholdersAfter:I

.field private final startIndex:I


# direct methods
.method public constructor <init>(ILjava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+TT;>;II)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/paging/PagingDataEvent;-><init>(Ljh2;)V

    iput p1, p0, Landroidx/paging/PagingDataEvent$Append;->startIndex:I

    iput-object p2, p0, Landroidx/paging/PagingDataEvent$Append;->inserted:Ljava/util/List;

    iput p3, p0, Landroidx/paging/PagingDataEvent$Append;->newPlaceholdersAfter:I

    iput p4, p0, Landroidx/paging/PagingDataEvent$Append;->oldPlaceholdersAfter:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/paging/PagingDataEvent$Append;

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/paging/PagingDataEvent$Append;->startIndex:I

    check-cast p1, Landroidx/paging/PagingDataEvent$Append;

    iget v1, p1, Landroidx/paging/PagingDataEvent$Append;->startIndex:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/paging/PagingDataEvent$Append;->inserted:Ljava/util/List;

    iget-object v1, p1, Landroidx/paging/PagingDataEvent$Append;->inserted:Ljava/util/List;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/paging/PagingDataEvent$Append;->newPlaceholdersAfter:I

    iget v1, p1, Landroidx/paging/PagingDataEvent$Append;->newPlaceholdersAfter:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroidx/paging/PagingDataEvent$Append;->oldPlaceholdersAfter:I

    iget p1, p1, Landroidx/paging/PagingDataEvent$Append;->oldPlaceholdersAfter:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getInserted()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/PagingDataEvent$Append;->inserted:Ljava/util/List;

    return-object p0
.end method

.method public final getNewPlaceholdersAfter()I
    .locals 0

    iget p0, p0, Landroidx/paging/PagingDataEvent$Append;->newPlaceholdersAfter:I

    return p0
.end method

.method public final getOldPlaceholdersAfter()I
    .locals 0

    iget p0, p0, Landroidx/paging/PagingDataEvent$Append;->oldPlaceholdersAfter:I

    return p0
.end method

.method public final getStartIndex()I
    .locals 0

    iget p0, p0, Landroidx/paging/PagingDataEvent$Append;->startIndex:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/paging/PagingDataEvent$Append;->startIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    iget-object v1, p0, Landroidx/paging/PagingDataEvent$Append;->inserted:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Landroidx/paging/PagingDataEvent$Append;->newPlaceholdersAfter:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    iget p0, p0, Landroidx/paging/PagingDataEvent$Append;->oldPlaceholdersAfter:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PagingDataEvent.Append loaded "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/paging/PagingDataEvent$Append;->inserted:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " items (\n                    |   startIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/paging/PagingDataEvent$Append;->startIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n                    |   first item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/paging/PagingDataEvent$Append;->inserted:Ljava/util/List;

    invoke-static {v1}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n                    |   last item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/paging/PagingDataEvent$Append;->inserted:Ljava/util/List;

    invoke-static {v1}, Lqn1;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n                    |   newPlaceholdersBefore: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/paging/PagingDataEvent$Append;->newPlaceholdersAfter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n                    |   oldPlaceholdersBefore: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/paging/PagingDataEvent$Append;->oldPlaceholdersAfter:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n                    |)\n                    |"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lna8;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
