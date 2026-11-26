.class public final Lyads/s;
.super Lyads/v;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableSet;


# instance fields
.field public final synthetic e:Lyads/z;


# direct methods
.method public constructor <init>(Lyads/z;Ljava/util/NavigableMap;)V
    .locals 0

    iput-object p1, p0, Lyads/s;->e:Lyads/z;

    invoke-direct {p0, p1, p2}, Lyads/v;-><init>(Lyads/z;Ljava/util/SortedMap;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/util/SortedMap;
    .locals 0

    invoke-virtual {p0}, Lyads/s;->b()Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/util/NavigableMap;
    .locals 0

    iget-object p0, p0, Lyads/ww3;->b:Ljava/util/Map;

    check-cast p0, Ljava/util/SortedMap;

    check-cast p0, Ljava/util/NavigableMap;

    return-object p0
.end method

.method public final ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lyads/s;->b()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final descendingIterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lyads/s;->descendingSet()Ljava/util/NavigableSet;

    move-result-object p0

    check-cast p0, Lyads/q;

    invoke-virtual {p0}, Lyads/q;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final descendingSet()Ljava/util/NavigableSet;
    .locals 2

    new-instance v0, Lyads/s;

    iget-object v1, p0, Lyads/s;->e:Lyads/z;

    invoke-virtual {p0}, Lyads/s;->b()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lyads/s;-><init>(Lyads/z;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public final floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lyads/s;->b()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2

    new-instance v0, Lyads/s;

    iget-object v1, p0, Lyads/s;->e:Lyads/z;

    invoke-virtual {p0}, Lyads/s;->b()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lyads/s;-><init>(Lyads/z;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, v0}, Lyads/s;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public final higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lyads/s;->b()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lyads/s;->b()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final pollFirst()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lyads/q;->iterator()Ljava/util/Iterator;

    move-result-object p0

    check-cast p0, Lyads/p;

    invoke-virtual {p0}, Lyads/p;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyads/p;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lyads/p;->remove()V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final pollLast()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lyads/s;->descendingSet()Ljava/util/NavigableSet;

    move-result-object p0

    check-cast p0, Lyads/q;

    invoke-virtual {p0}, Lyads/q;->iterator()Ljava/util/Iterator;

    move-result-object p0

    check-cast p0, Lyads/p;

    iget-object v0, p0, Lyads/p;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyads/p;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lyads/p;->remove()V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2

    new-instance v0, Lyads/s;

    iget-object v1, p0, Lyads/s;->e:Lyads/z;

    invoke-virtual {p0}, Lyads/s;->b()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lyads/s;-><init>(Lyads/z;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, p1, v0, p2, v1}, Lyads/s;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public final tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2

    new-instance v0, Lyads/s;

    iget-object v1, p0, Lyads/s;->e:Lyads/z;

    invoke-virtual {p0}, Lyads/s;->b()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lyads/s;-><init>(Lyads/z;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, p1, v0}, Lyads/s;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method
