.class public final Lyads/r;
.super Lyads/u;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableMap;


# instance fields
.field public final synthetic h:Lyads/z;


# direct methods
.method public constructor <init>(Lyads/z;Ljava/util/NavigableMap;)V
    .locals 0

    iput-object p1, p0, Lyads/r;->h:Lyads/z;

    invoke-direct {p0, p1, p2}, Lyads/u;-><init>(Lyads/z;Ljava/util/SortedMap;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/SortedSet;
    .locals 2

    new-instance v0, Lyads/s;

    iget-object v1, p0, Lyads/r;->h:Lyads/z;

    invoke-virtual {p0}, Lyads/r;->c()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lyads/s;-><init>(Lyads/z;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/util/SortedMap;
    .locals 0

    invoke-virtual {p0}, Lyads/r;->c()Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public final c()Ljava/util/NavigableMap;
    .locals 0

    iget-object p0, p0, Lyads/n;->d:Ljava/util/Map;

    check-cast p0, Ljava/util/SortedMap;

    check-cast p0, Ljava/util/NavigableMap;

    return-object p0
.end method

.method public final ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    invoke-virtual {p0}, Lyads/r;->c()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lyads/n;->a(Ljava/util/Map$Entry;)Lyads/je3;

    move-result-object p0

    return-object p0
.end method

.method public final ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lyads/r;->c()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final descendingKeySet()Ljava/util/NavigableSet;
    .locals 0

    invoke-virtual {p0}, Lyads/r;->descendingMap()Ljava/util/NavigableMap;

    move-result-object p0

    check-cast p0, Lyads/r;

    invoke-super {p0}, Lyads/u;->keySet()Ljava/util/SortedSet;

    move-result-object p0

    check-cast p0, Ljava/util/NavigableSet;

    return-object p0
.end method

.method public final descendingMap()Ljava/util/NavigableMap;
    .locals 2

    new-instance v0, Lyads/r;

    iget-object v1, p0, Lyads/r;->h:Lyads/z;

    invoke-virtual {p0}, Lyads/r;->c()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lyads/r;-><init>(Lyads/z;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public final firstEntry()Ljava/util/Map$Entry;
    .locals 1

    invoke-virtual {p0}, Lyads/r;->c()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lyads/n;->a(Ljava/util/Map$Entry;)Lyads/je3;

    move-result-object p0

    return-object p0
.end method

.method public final floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    invoke-virtual {p0}, Lyads/r;->c()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lyads/n;->a(Ljava/util/Map$Entry;)Lyads/je3;

    move-result-object p0

    return-object p0
.end method

.method public final floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lyads/r;->c()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 2

    new-instance v0, Lyads/r;

    iget-object v1, p0, Lyads/r;->h:Lyads/z;

    invoke-virtual {p0}, Lyads/r;->c()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lyads/r;-><init>(Lyads/z;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public final headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, v0}, Lyads/r;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public final higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    invoke-virtual {p0}, Lyads/r;->c()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lyads/n;->a(Ljava/util/Map$Entry;)Lyads/je3;

    move-result-object p0

    return-object p0
.end method

.method public final higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lyads/r;->c()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 0

    invoke-super {p0}, Lyads/u;->keySet()Ljava/util/SortedSet;

    move-result-object p0

    check-cast p0, Ljava/util/NavigableSet;

    return-object p0
.end method

.method public final keySet()Ljava/util/SortedSet;
    .locals 0

    .line 7
    invoke-super {p0}, Lyads/u;->keySet()Ljava/util/SortedSet;

    move-result-object p0

    check-cast p0, Ljava/util/NavigableSet;

    return-object p0
.end method

.method public final lastEntry()Ljava/util/Map$Entry;
    .locals 1

    invoke-virtual {p0}, Lyads/r;->c()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lyads/n;->a(Ljava/util/Map$Entry;)Lyads/je3;

    move-result-object p0

    return-object p0
.end method

.method public final lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    invoke-virtual {p0}, Lyads/r;->c()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lyads/n;->a(Ljava/util/Map$Entry;)Lyads/je3;

    move-result-object p0

    return-object p0
.end method

.method public final lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lyads/r;->c()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final navigableKeySet()Ljava/util/NavigableSet;
    .locals 0

    invoke-super {p0}, Lyads/u;->keySet()Ljava/util/SortedSet;

    move-result-object p0

    check-cast p0, Ljava/util/NavigableSet;

    return-object p0
.end method

.method public final pollFirstEntry()Ljava/util/Map$Entry;
    .locals 7

    invoke-virtual {p0}, Lyads/yw3;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lyads/l;

    iget-object v0, v0, Lyads/l;->b:Lyads/n;

    iget-object v1, v0, Lyads/n;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Lyads/n;->a(Ljava/util/Map$Entry;)Lyads/je3;

    move-result-object v2

    iget-object v5, p0, Lyads/r;->h:Lyads/z;

    check-cast v5, Lyads/gd4;

    iget-object v5, v5, Lyads/gd4;->g:Lyads/ut5;

    invoke-interface {v5}, Lyads/ut5;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v5, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    if-eqz v4, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v0, v0, Lyads/n;->e:Lyads/z;

    iget v1, v0, Lyads/z;->f:I

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Lyads/z;->f:I

    invoke-interface {v4}, Ljava/util/Collection;->clear()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lyads/r;->h:Lyads/z;

    check-cast p0, Lyads/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    new-instance v1, Lyads/je3;

    invoke-direct {v1, v0, p0}, Lyads/je3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_2
    const-string p0, "no calls to next() since the last call to remove()"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3
.end method

.method public final pollLastEntry()Ljava/util/Map$Entry;
    .locals 7

    invoke-virtual {p0}, Lyads/r;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    check-cast v0, Lyads/yw3;

    invoke-virtual {v0}, Lyads/yw3;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lyads/l;

    iget-object v0, v0, Lyads/l;->b:Lyads/n;

    iget-object v1, v0, Lyads/n;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Lyads/n;->a(Ljava/util/Map$Entry;)Lyads/je3;

    move-result-object v2

    iget-object v5, p0, Lyads/r;->h:Lyads/z;

    check-cast v5, Lyads/gd4;

    iget-object v5, v5, Lyads/gd4;->g:Lyads/ut5;

    invoke-interface {v5}, Lyads/ut5;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v5, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    if-eqz v4, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v0, v0, Lyads/n;->e:Lyads/z;

    iget v1, v0, Lyads/z;->f:I

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Lyads/z;->f:I

    invoke-interface {v4}, Ljava/util/Collection;->clear()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lyads/r;->h:Lyads/z;

    check-cast p0, Lyads/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    new-instance v1, Lyads/je3;

    invoke-direct {v1, v0, p0}, Lyads/je3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_2
    const-string p0, "no calls to next() since the last call to remove()"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3
.end method

.method public final subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 2

    new-instance v0, Lyads/r;

    iget-object v1, p0, Lyads/r;->h:Lyads/z;

    invoke-virtual {p0}, Lyads/r;->c()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lyads/r;-><init>(Lyads/z;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public final subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, p1, v0, p2, v1}, Lyads/r;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public final tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 2

    new-instance v0, Lyads/r;

    iget-object v1, p0, Lyads/r;->h:Lyads/z;

    invoke-virtual {p0}, Lyads/r;->c()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lyads/r;-><init>(Lyads/z;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public final tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, p1, v0}, Lyads/r;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method
