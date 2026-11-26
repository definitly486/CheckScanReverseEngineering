.class public final Landroidx/paging/PagingDataEvent$Prepend;
.super Landroidx/paging/PagingDataEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/PagingDataEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Prepend"
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

.field private final newPlaceholdersBefore:I

.field private final oldPlaceholdersBefore:I


# direct methods
.method public constructor <init>(Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/paging/PagingDataEvent;-><init>(Ljh2;)V

    iput-object p1, p0, Landroidx/paging/PagingDataEvent$Prepend;->inserted:Ljava/util/List;

    iput p2, p0, Landroidx/paging/PagingDataEvent$Prepend;->newPlaceholdersBefore:I

    iput p3, p0, Landroidx/paging/PagingDataEvent$Prepend;->oldPlaceholdersBefore:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/paging/PagingDataEvent$Prepend;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/paging/PagingDataEvent$Prepend;->inserted:Ljava/util/List;

    check-cast p1, Landroidx/paging/PagingDataEvent$Prepend;

    iget-object v1, p1, Landroidx/paging/PagingDataEvent$Prepend;->inserted:Ljava/util/List;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/paging/PagingDataEvent$Prepend;->newPlaceholdersBefore:I

    iget v1, p1, Landroidx/paging/PagingDataEvent$Prepend;->newPlaceholdersBefore:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroidx/paging/PagingDataEvent$Prepend;->oldPlaceholdersBefore:I

    iget p1, p1, Landroidx/paging/PagingDataEvent$Prepend;->oldPlaceholdersBefore:I

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

    iget-object p0, p0, Landroidx/paging/PagingDataEvent$Prepend;->inserted:Ljava/util/List;

    return-object p0
.end method

.method public final getNewPlaceholdersBefore()I
    .locals 0

    iget p0, p0, Landroidx/paging/PagingDataEvent$Prepend;->newPlaceholdersBefore:I

    return p0
.end method

.method public final getOldPlaceholdersBefore()I
    .locals 0

    iget p0, p0, Landroidx/paging/PagingDataEvent$Prepend;->oldPlaceholdersBefore:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/paging/PagingDataEvent$Prepend;->inserted:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Landroidx/paging/PagingDataEvent$Prepend;->newPlaceholdersBefore:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    iget p0, p0, Landroidx/paging/PagingDataEvent$Prepend;->oldPlaceholdersBefore:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PagingDataEvent.Prepend loaded "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/paging/PagingDataEvent$Prepend;->inserted:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " items (\n                    |   first item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/paging/PagingDataEvent$Prepend;->inserted:Ljava/util/List;

    invoke-static {v1}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n                    |   last item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/paging/PagingDataEvent$Prepend;->inserted:Ljava/util/List;

    invoke-static {v1}, Lqn1;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n                    |   newPlaceholdersBefore: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/paging/PagingDataEvent$Prepend;->newPlaceholdersBefore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n                    |   oldPlaceholdersBefore: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/paging/PagingDataEvent$Prepend;->oldPlaceholdersBefore:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n                    |)\n                    |"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lna8;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
