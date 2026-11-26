.class public abstract Lcom/google/common/collect/m;
.super Lcom/google/common/collect/i;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/m$b;,
        Lcom/google/common/collect/m$c;,
        Lcom/google/common/collect/m$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/i<",
        "TE;>;",
        "Lcom/google/common/collect/t<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final synthetic e:I


# instance fields
.field public transient c:Lcom/google/common/collect/w;

.field public transient d:Lcom/google/common/collect/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/n<",
            "Lcom/google/common/collect/t$a<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Use SerializedForm"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/j<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/m;->c:Lcom/google/common/collect/w;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/common/collect/i;->a()Lcom/google/common/collect/j;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/common/collect/w;

    iput-object v1, p0, Lcom/google/common/collect/m;->c:Lcom/google/common/collect/w;

    :cond_0
    return-object v0
.end method

.method public final b(I[Ljava/lang/Object;)I
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/collect/m;->m()Lcom/google/common/collect/n;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/i;->j()Ly69;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/t$a;

    invoke-interface {v0}, Lcom/google/common/collect/t$a;->getCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-interface {v0}, Lcom/google/common/collect/t$a;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, p1, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    invoke-interface {v0}, Lcom/google/common/collect/t$a;->getCount()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    check-cast p0, Lcom/google/common/collect/y;

    iget-object p0, p0, Lcom/google/common/collect/y;->f:Lcom/google/common/collect/v;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/v;->b(Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/m;->k()Lcom/google/common/collect/n;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/m;->m()Lcom/google/common/collect/n;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/u;->a(Lcom/google/common/collect/t;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/m;->m()Lcom/google/common/collect/n;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/d0;->c(Ljava/util/Set;)I

    move-result p0

    return p0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/m;->j()Ly69;

    move-result-object p0

    return-object p0
.end method

.method public final j()Ly69;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly69<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/m;->m()Lcom/google/common/collect/n;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/i;->j()Ly69;

    move-result-object p0

    new-instance v0, Lcom/google/common/collect/m$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/m$a;-><init>(Ly69;)V

    return-object v0
.end method

.method public abstract k()Lcom/google/common/collect/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/n<",
            "TE;>;"
        }
    .end annotation
.end method

.method public final m()Lcom/google/common/collect/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/n<",
            "Lcom/google/common/collect/t$a<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/m;->d:Lcom/google/common/collect/n;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/collect/z;->k:Lcom/google/common/collect/z;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/m$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/m$c;-><init>(Lcom/google/common/collect/m;)V

    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/m;->d:Lcom/google/common/collect/n;

    :cond_1
    return-object v0
.end method

.method public abstract n(I)Lcom/google/common/collect/v$a;
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/m;->m()Lcom/google/common/collect/n;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract writeReplace()Ljava/lang/Object;
.end method
