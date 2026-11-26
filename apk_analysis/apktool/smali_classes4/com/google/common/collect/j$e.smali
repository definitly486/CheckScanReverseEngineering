.class public final Lcom/google/common/collect/j$e;
.super Lcom/google/common/collect/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/j<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final transient d:I

.field public final transient e:I

.field public final synthetic f:Lcom/google/common/collect/j;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/j;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/j$e;->f:Lcom/google/common/collect/j;

    invoke-direct {p0}, Lcom/google/common/collect/j;-><init>()V

    iput p2, p0, Lcom/google/common/collect/j$e;->d:I

    iput p3, p0, Lcom/google/common/collect/j$e;->e:I

    return-void
.end method


# virtual methods
.method public final d()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/j$e;->f:Lcom/google/common/collect/j;

    invoke-virtual {p0}, Lcom/google/common/collect/i;->d()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final f()I
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/j$e;->f:Lcom/google/common/collect/j;

    invoke-virtual {v0}, Lcom/google/common/collect/i;->g()I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/j$e;->d:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/google/common/collect/j$e;->e:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/j$e;->f:Lcom/google/common/collect/j;

    invoke-virtual {v0}, Lcom/google/common/collect/i;->g()I

    move-result v0

    iget p0, p0, Lcom/google/common/collect/j$e;->d:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/j$e;->e:I

    invoke-static {p1, v0}, Lo8;->j(II)V

    iget v0, p0, Lcom/google/common/collect/j$e;->d:I

    add-int/2addr p1, v0

    iget-object p0, p0, Lcom/google/common/collect/j$e;->f:Lcom/google/common/collect/j;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final i()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/j;->q(I)Lcom/google/common/collect/j$b;

    move-result-object p0

    return-object p0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/j;->q(I)Lcom/google/common/collect/j$b;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/common/collect/j;->q(I)Lcom/google/common/collect/j$b;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/j$e;->e:I

    return p0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/j$e;->y(II)Lcom/google/common/collect/j;

    move-result-object p0

    return-object p0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lcom/google/common/collect/j;->writeReplace()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final y(II)Lcom/google/common/collect/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/j<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/j$e;->e:I

    invoke-static {p1, p2, v0}, Lo8;->o(III)V

    iget v0, p0, Lcom/google/common/collect/j$e;->d:I

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    iget-object p0, p0, Lcom/google/common/collect/j$e;->f:Lcom/google/common/collect/j;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/j;->y(II)Lcom/google/common/collect/j;

    move-result-object p0

    return-object p0
.end method
