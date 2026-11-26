.class public final Lcom/google/common/collect/a0;
.super Lcom/google/common/collect/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/o<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final i:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final transient h:Lcom/google/common/collect/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/j<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/collect/a0;

    sget-object v1, Lcom/google/common/collect/j;->c:Lcom/google/common/collect/j$b;

    sget-object v1, Lcom/google/common/collect/w;->f:Lcom/google/common/collect/w;

    sget-object v2, Lhi5;->b:Lhi5;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/a0;-><init>(Lcom/google/common/collect/j;Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/common/collect/a0;->i:Lcom/google/common/collect/a0;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/j;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j<",
            "TE;>;",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/common/collect/o;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/google/common/collect/a0;->h:Lcom/google/common/collect/j;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/j<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/a0;->h:Lcom/google/common/collect/j;

    return-object p0
.end method

.method public final b(I[Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/a0;->h:Lcom/google/common/collect/j;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/j;->b(I[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/a0;->x(Ljava/lang/Object;Z)I

    move-result p1

    iget-object p0, p0, Lcom/google/common/collect/a0;->h:Lcom/google/common/collect/j;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/a0;->h:Lcom/google/common/collect/j;

    iget-object p0, p0, Lcom/google/common/collect/o;->e:Ljava/util/Comparator;

    invoke-static {v1, p1, p0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/common/collect/t;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/t;

    invoke-interface {p1}, Lcom/google/common/collect/t;->elementSet()Ljava/util/Set;

    move-result-object p1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/o;->e:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ld31;->p(Ljava/util/Comparator;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/a0;->j()Ly69;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    check-cast p0, Lo0;

    invoke-virtual {p0}, Lo0;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lo0;->next()Ljava/lang/Object;

    move-result-object v3

    :cond_3
    :goto_0
    :try_start_0
    invoke-interface {v1, v3, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_5

    invoke-virtual {p0}, Lo0;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lo0;->next()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_5
    if-nez v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_7
    if-lez v4, :cond_3

    :catch_0
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_8
    :goto_2
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final d()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/a0;->h:Lcom/google/common/collect/j;

    invoke-virtual {p0}, Lcom/google/common/collect/i;->d()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/a0;->r()Lcom/google/common/collect/j$b;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Ljava/util/Set;

    iget-object v0, p0, Lcom/google/common/collect/a0;->h:Lcom/google/common/collect/j;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/o;->e:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ld31;->p(Ljava/util/Comparator;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/a0;->j()Ly69;

    move-result-object p0

    :cond_4
    move-object v0, p0

    check-cast v0, Lo0;

    invoke-virtual {v0}, Lo0;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lo0;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v1, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_6
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_7
    invoke-virtual {p0, p1}, Lcom/google/common/collect/a0;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final f()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/a0;->h:Lcom/google/common/collect/j;

    invoke-virtual {p0}, Lcom/google/common/collect/i;->f()I

    move-result p0

    return p0
.end method

.method public final first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/common/collect/a0;->h:Lcom/google/common/collect/j;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lqz0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/a0;->w(Ljava/lang/Object;Z)I

    move-result p1

    sub-int/2addr p1, v0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/a0;->h:Lcom/google/common/collect/j;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final g()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/a0;->h:Lcom/google/common/collect/j;

    invoke-virtual {p0}, Lcom/google/common/collect/i;->g()I

    move-result p0

    return p0
.end method

.method public final higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/a0;->x(Ljava/lang/Object;Z)I

    move-result p1

    iget-object p0, p0, Lcom/google/common/collect/a0;->h:Lcom/google/common/collect/j;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final i()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/a0;->h:Lcom/google/common/collect/j;

    invoke-virtual {p0}, Lcom/google/common/collect/i;->i()Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/a0;->j()Ly69;

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

    iget-object p0, p0, Lcom/google/common/collect/a0;->h:Lcom/google/common/collect/j;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/j;->q(I)Lcom/google/common/collect/j$b;

    move-result-object p0

    return-object p0
.end method

.method public final last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/common/collect/a0;->h:Lcom/google/common/collect/j;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lqz0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/a0;->w(Ljava/lang/Object;Z)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/a0;->h:Lcom/google/common/collect/j;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final q()Lcom/google/common/collect/a0;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/o;->e:Ljava/util/Comparator;

    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/common/collect/o;->s(Ljava/util/Comparator;)Lcom/google/common/collect/a0;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Lcom/google/common/collect/a0;

    iget-object p0, p0, Lcom/google/common/collect/a0;->h:Lcom/google/common/collect/j;

    invoke-virtual {p0}, Lcom/google/common/collect/j;->w()Lcom/google/common/collect/j;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/a0;-><init>(Lcom/google/common/collect/j;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public final r()Lcom/google/common/collect/j$b;
    .locals 1

    iget-object p0, p0, Lcom/google/common/collect/a0;->h:Lcom/google/common/collect/j;

    invoke-virtual {p0}, Lcom/google/common/collect/j;->w()Lcom/google/common/collect/j;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/j;->q(I)Lcom/google/common/collect/j$b;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/a0;->h:Lcom/google/common/collect/j;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    return p0
.end method

.method public final t(Ljava/lang/Object;Z)Lcom/google/common/collect/a0;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/a0;->w(Ljava/lang/Object;Z)I

    move-result p1

    iget-object p2, p0, Lcom/google/common/collect/a0;->h:Lcom/google/common/collect/j;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/o;->e:Ljava/util/Comparator;

    if-lez p1, :cond_1

    new-instance v0, Lcom/google/common/collect/a0;

    const/4 v1, 0x0

    invoke-virtual {p2, v1, p1}, Lcom/google/common/collect/j;->y(II)Lcom/google/common/collect/j;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/google/common/collect/a0;-><init>(Lcom/google/common/collect/j;Ljava/util/Comparator;)V

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/google/common/collect/o;->s(Ljava/util/Comparator;)Lcom/google/common/collect/a0;

    move-result-object p0

    return-object p0
.end method

.method public final u(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lcom/google/common/collect/o<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/a0;->v(Ljava/lang/Object;Z)Lcom/google/common/collect/a0;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/google/common/collect/a0;->t(Ljava/lang/Object;Z)Lcom/google/common/collect/a0;

    move-result-object p0

    return-object p0
.end method

.method public final v(Ljava/lang/Object;Z)Lcom/google/common/collect/a0;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/a0;->x(Ljava/lang/Object;Z)I

    move-result p1

    iget-object p2, p0, Lcom/google/common/collect/a0;->h:Lcom/google/common/collect/j;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-nez p1, :cond_0

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/o;->e:Ljava/util/Comparator;

    if-ge p1, v0, :cond_1

    new-instance v1, Lcom/google/common/collect/a0;

    invoke-virtual {p2, p1, v0}, Lcom/google/common/collect/j;->y(II)Lcom/google/common/collect/j;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Lcom/google/common/collect/a0;-><init>(Lcom/google/common/collect/j;Ljava/util/Comparator;)V

    return-object v1

    :cond_1
    invoke-static {p0}, Lcom/google/common/collect/o;->s(Ljava/util/Comparator;)Lcom/google/common/collect/a0;

    move-result-object p0

    return-object p0
.end method

.method public final w(Ljava/lang/Object;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/common/collect/o;->e:Ljava/util/Comparator;

    iget-object p0, p0, Lcom/google/common/collect/a0;->h:Lcom/google/common/collect/j;

    invoke-static {p0, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p0

    if-ltz p0, :cond_1

    if-eqz p2, :cond_0

    add-int/lit8 p0, p0, 0x1

    :cond_0
    return p0

    :cond_1
    not-int p0, p0

    return p0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lcom/google/common/collect/o;->writeReplace()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final x(Ljava/lang/Object;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/common/collect/o;->e:Ljava/util/Comparator;

    iget-object p0, p0, Lcom/google/common/collect/a0;->h:Lcom/google/common/collect/j;

    invoke-static {p0, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p0

    if-ltz p0, :cond_1

    if-eqz p2, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    not-int p0, p0

    return p0
.end method
