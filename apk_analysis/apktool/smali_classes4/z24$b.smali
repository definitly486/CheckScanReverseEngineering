.class public final Lz24$b;
.super Lcom/google/common/collect/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/i<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final transient c:Lz24;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz24<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz24;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz24<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/i;-><init>()V

    iput-object p1, p0, Lz24$b;->c:Lz24;

    return-void
.end method


# virtual methods
.method public final b(I[Ljava/lang/Object;)I
    .locals 1

    iget-object p0, p0, Lz24$b;->c:Lz24;

    iget-object p0, p0, Lz24;->f:Lcom/google/common/collect/l;

    invoke-virtual {p0}, Lcom/google/common/collect/l;->m()Lcom/google/common/collect/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/i;->j()Ly69;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/i;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/i;->b(I[Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lz24$b;->c:Lz24;

    invoke-virtual {p0, p1}, Lz24;->d(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lz24$b;->j()Ly69;

    move-result-object p0

    return-object p0
.end method

.method public final j()Ly69;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly69<",
            "TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lz24$b;->c:Lz24;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ly24;

    invoke-direct {v0, p0}, Ly24;-><init>(Lz24;)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lz24$b;->c:Lz24;

    iget p0, p0, Lz24;->g:I

    return p0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lcom/google/common/collect/i;->writeReplace()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
