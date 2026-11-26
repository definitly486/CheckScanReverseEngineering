.class public final Lcom/google/common/collect/y$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final b:[Ljava/lang/Object;

.field public final c:[I


# direct methods
.method public constructor <init>(Lcom/google/common/collect/y;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/common/collect/m;->m()Lcom/google/common/collect/n;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/y$b;->b:[Ljava/lang/Object;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/common/collect/y$b;->c:[I

    invoke-virtual {p1}, Lcom/google/common/collect/m;->m()Lcom/google/common/collect/n;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/t$a;

    iget-object v2, p0, Lcom/google/common/collect/y$b;->b:[Ljava/lang/Object;

    invoke-interface {v1}, Lcom/google/common/collect/t$a;->a()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/common/collect/y$b;->c:[I

    invoke-interface {v1}, Lcom/google/common/collect/t$a;->getCount()I

    move-result v1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public readResolve()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/google/common/collect/m$b;

    iget-object v1, p0, Lcom/google/common/collect/y$b;->b:[Ljava/lang/Object;

    array-length v2, v1

    invoke-direct {v0, v2}, Lcom/google/common/collect/m$b;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    iget-object v4, p0, Lcom/google/common/collect/y$b;->c:[I

    aget v4, v4, v2

    invoke-virtual {v0, v4, v3}, Lcom/google/common/collect/m$b;->c(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/m$b;->d()Lcom/google/common/collect/y;

    move-result-object p0

    return-object p0
.end method
