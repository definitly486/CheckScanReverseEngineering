.class public abstract Lyads/re3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# instance fields
.field public transient b:Lyads/m55;

.field public transient c:Lyads/n55;

.field public transient d:Lyads/o55;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/HashMap;)Lyads/re3;
    .locals 3

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    new-instance v2, Lyads/pe3;

    invoke-direct {v2, v1}, Lyads/pe3;-><init>(I)V

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Lyads/pe3;->a(I)V

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lyads/pe3;->a(Ljava/lang/Object;Ljava/lang/Object;)Lyads/pe3;

    goto :goto_1

    :cond_2
    iget p0, v2, Lyads/pe3;->b:I

    iget-object v0, v2, Lyads/pe3;->a:[Ljava/lang/Object;

    invoke-static {p0, v0}, Lyads/p55;->a(I[Ljava/lang/Object;)Lyads/p55;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lyads/te3;
    .locals 4

    .line 65
    iget-object v0, p0, Lyads/re3;->b:Lyads/m55;

    if-nez v0, :cond_0

    .line 66
    move-object v0, p0

    check-cast v0, Lyads/p55;

    .line 67
    new-instance v1, Lyads/m55;

    iget-object v2, v0, Lyads/p55;->f:[Ljava/lang/Object;

    iget v3, v0, Lyads/p55;->g:I

    invoke-direct {v1, v0, v2, v3}, Lyads/m55;-><init>(Lyads/re3;[Ljava/lang/Object;I)V

    .line 68
    iput-object v1, p0, Lyads/re3;->b:Lyads/m55;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public final clear()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lyads/re3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lyads/re3;->d:Lyads/o55;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lyads/p55;

    new-instance v1, Lyads/o55;

    iget-object v2, v0, Lyads/p55;->f:[Ljava/lang/Object;

    iget v0, v0, Lyads/p55;->g:I

    const/4 v3, 0x1

    invoke-direct {v1, v3, v0, v2}, Lyads/o55;-><init>(II[Ljava/lang/Object;)V

    iput-object v1, p0, Lyads/re3;->d:Lyads/o55;

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Lyads/oe3;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, Lyads/re3;->a()Lyads/te3;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Lyads/re3;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p0, Lyads/te3;

    invoke-virtual {p0, p1}, Lyads/te3;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lyads/re3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lyads/re3;->a()Lyads/te3;

    move-result-object p0

    invoke-static {p0}, Lyads/tj5;->a(Ljava/util/Set;)I

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    check-cast p0, Lyads/p55;

    invoke-virtual {p0}, Lyads/p55;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 5

    iget-object v0, p0, Lyads/re3;->c:Lyads/n55;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lyads/p55;

    new-instance v1, Lyads/o55;

    iget-object v2, v0, Lyads/p55;->f:[Ljava/lang/Object;

    iget v3, v0, Lyads/p55;->g:I

    const/4 v4, 0x0

    invoke-direct {v1, v4, v3, v2}, Lyads/o55;-><init>(II[Ljava/lang/Object;)V

    new-instance v2, Lyads/n55;

    invoke-direct {v2, v0, v1}, Lyads/n55;-><init>(Lyads/re3;Lyads/o55;)V

    iput-object v2, p0, Lyads/re3;->c:Lyads/n55;

    return-object v2

    :cond_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    move-object v0, p0

    check-cast v0, Lyads/p55;

    iget v0, v0, Lyads/p55;->g:I

    const-string v1, "size"

    invoke-static {v0, v1}, Lyads/h20;->a(ILjava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    int-to-long v2, v0

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x40000000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lyads/re3;->a()Lyads/te3;

    move-result-object p0

    check-cast p0, Lyads/m55;

    invoke-virtual {p0}, Lyads/m55;->iterator()Lyads/i46;

    move-result-object p0

    const/4 v0, 0x1

    :goto_0
    move-object v2, p0

    check-cast v2, Lyads/g;

    invoke-virtual {v2}, Lyads/g;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final values()Ljava/util/Collection;
    .locals 4

    iget-object v0, p0, Lyads/re3;->d:Lyads/o55;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lyads/p55;

    new-instance v1, Lyads/o55;

    iget-object v2, v0, Lyads/p55;->f:[Ljava/lang/Object;

    iget v0, v0, Lyads/p55;->g:I

    const/4 v3, 0x1

    invoke-direct {v1, v3, v0, v2}, Lyads/o55;-><init>(II[Ljava/lang/Object;)V

    iput-object v1, p0, Lyads/re3;->d:Lyads/o55;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lyads/qe3;

    invoke-direct {v0, p0}, Lyads/qe3;-><init>(Lyads/re3;)V

    return-object v0
.end method
