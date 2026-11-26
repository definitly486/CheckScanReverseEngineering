.class public final Lir7;
.super Lf1;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lf1<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final c:Lir7;


# instance fields
.field public final b:Luz4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luz4<",
            "TE;*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lir7;

    sget-object v1, Luz4;->o:Luz4;

    invoke-direct {v0, v1}, Lir7;-><init>(Luz4;)V

    sput-object v0, Lir7;->c:Lir7;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Luz4;

    invoke-direct {v0}, Luz4;-><init>()V

    invoke-direct {p0}, Lf1;-><init>()V

    iput-object v0, p0, Lir7;->b:Luz4;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 13
    new-instance v0, Luz4;

    invoke-direct {v0, p1}, Luz4;-><init>(I)V

    .line 14
    invoke-direct {p0}, Lf1;-><init>()V

    .line 15
    iput-object v0, p0, Lir7;->b:Luz4;

    return-void
.end method

.method public constructor <init>(Luz4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luz4<",
            "TE;*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-direct {p0}, Lf1;-><init>()V

    .line 12
    iput-object p1, p0, Lir7;->b:Luz4;

    return-void
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Deserialization is supported via proxy only"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lir7;->b:Luz4;

    iget-boolean v0, v0, Luz4;->n:Z

    if-eqz v0, :cond_0

    new-instance v0, Lzp7;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lzp7;-><init>(Ljava/util/Collection;I)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/io/NotSerializableException;

    const-string v0, "The set cannot be serialized while it is being built."

    invoke-direct {p0, v0}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object p0, p0, Lir7;->b:Luz4;

    invoke-virtual {p0, p1}, Luz4;->a(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lir7;->b:Luz4;

    invoke-virtual {v0}, Luz4;->d()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final clear()V
    .locals 0

    iget-object p0, p0, Lir7;->b:Luz4;

    invoke-virtual {p0}, Luz4;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lir7;->b:Luz4;

    invoke-virtual {p0, p1}, Luz4;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getSize()I
    .locals 0

    iget-object p0, p0, Lir7;->b:Luz4;

    iget p0, p0, Luz4;->j:I

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lir7;->b:Luz4;

    invoke-virtual {p0}, Luz4;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lir7;->b:Luz4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Luz4$d;

    invoke-direct {v0, p0}, Luz4$c;-><init>(Luz4;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lir7;->b:Luz4;

    invoke-virtual {p0}, Luz4;->d()V

    invoke-virtual {p0, p1}, Luz4;->k(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Luz4;->p(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lir7;->b:Luz4;

    invoke-virtual {v0}, Luz4;->d()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lir7;->b:Luz4;

    invoke-virtual {v0}, Luz4;->d()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method
