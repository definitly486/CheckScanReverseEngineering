.class public final Lcom/google/common/collect/m$c;
.super Li44;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li44<",
        "Lcom/google/common/collect/t$a<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/collect/m;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/m$c;->e:Lcom/google/common/collect/m;

    invoke-direct {p0}, Lcom/google/common/collect/n;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Use EntrySetSerializedForm"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/common/collect/t$a;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/common/collect/t$a;

    invoke-interface {p1}, Lcom/google/common/collect/t$a;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/google/common/collect/t$a;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/m$c;->e:Lcom/google/common/collect/m;

    check-cast p0, Lcom/google/common/collect/y;

    iget-object p0, p0, Lcom/google/common/collect/y;->f:Lcom/google/common/collect/v;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/v;->b(Ljava/lang/Object;)I

    move-result p0

    invoke-interface {p1}, Lcom/google/common/collect/t$a;->getCount()I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/m$c;->e:Lcom/google/common/collect/m;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/m;->n(I)Lcom/google/common/collect/v$a;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/m$c;->e:Lcom/google/common/collect/m;

    invoke-virtual {p0}, Lcom/google/common/collect/m;->hashCode()I

    move-result p0

    return p0
.end method

.method public final i()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/m$c;->e:Lcom/google/common/collect/m;

    invoke-virtual {p0}, Lcom/google/common/collect/i;->i()Z

    move-result p0

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/m$c;->e:Lcom/google/common/collect/m;

    invoke-virtual {p0}, Lcom/google/common/collect/m;->k()Lcom/google/common/collect/n;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    return p0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/common/collect/m$d;

    iget-object p0, p0, Lcom/google/common/collect/m$c;->e:Lcom/google/common/collect/m;

    invoke-direct {v0, p0}, Lcom/google/common/collect/m$d;-><init>(Lcom/google/common/collect/m;)V

    return-object v0
.end method
