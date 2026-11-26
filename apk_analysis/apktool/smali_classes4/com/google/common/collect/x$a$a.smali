.class public final Lcom/google/common/collect/x$a$a;
.super Lcom/google/common/collect/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/x$a;->p()Lcom/google/common/collect/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/j<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/google/common/collect/x$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/x$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/x$a$a;->d:Lcom/google/common/collect/x$a;

    invoke-direct {p0}, Lcom/google/common/collect/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/common/collect/x$a$a;->d:Lcom/google/common/collect/x$a;

    iget v0, p0, Lcom/google/common/collect/x$a;->g:I

    invoke-static {p1, v0}, Lo8;->j(II)V

    iget-object p0, p0, Lcom/google/common/collect/x$a;->f:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    aget-object v0, p0, p1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {p1, v0, p0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final i()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/x$a$a;->d:Lcom/google/common/collect/x$a;

    iget p0, p0, Lcom/google/common/collect/x$a;->g:I

    return p0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lcom/google/common/collect/j;->writeReplace()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
