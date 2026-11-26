.class public Lcom/google/android/gms/common/data/SingleRefDataBufferIterator;
.super Lcom/google/android/gms/common/data/DataBufferIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/data/DataBufferIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/DataBufferIterator;-><init>(Lcom/google/android/gms/common/data/DataBuffer;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataBufferIterator;->hasNext()Z

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/data/DataBufferIterator;->c:I

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/common/data/DataBufferIterator;->c:I

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferIterator;->b:Lcom/google/android/gms/common/data/DataBuffer;

    invoke-interface {v0, v3}, Lcom/google/android/gms/common/data/DataBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/data/SingleRefDataBufferIterator;->d:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/common/data/DataBufferRef;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2c

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "DataBuffer reference of type "

    const-string v3, " is not movable"

    invoke-static {v1, v0, p0, v3}, Lkh;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/data/SingleRefDataBufferIterator;->d:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/data/DataBufferRef;

    iget v2, p0, Lcom/google/android/gms/common/data/DataBufferIterator;->c:I

    iget-object v4, v1, Lcom/google/android/gms/common/data/DataBufferRef;->a:Lcom/google/android/gms/common/data/DataHolder;

    if-ltz v2, :cond_2

    invoke-virtual {v4}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    iput v2, v1, Lcom/google/android/gms/common/data/DataBufferRef;->b:I

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/data/DataHolder;->getWindowIndex(I)I

    move-result v0

    iput v0, v1, Lcom/google/android/gms/common/data/DataBufferRef;->c:I

    :goto_1
    iget-object p0, p0, Lcom/google/android/gms/common/data/SingleRefDataBufferIterator;->d:Ljava/lang/Object;

    return-object p0

    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x23

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Cannot advance the iterator beyond "

    invoke-static {v0, p0, v1}, Lag;->d(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lag;->g(Ljava/lang/String;)V

    return-object v2
.end method
