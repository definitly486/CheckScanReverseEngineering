.class public abstract Lcom/google/common/collect/o;
.super Lcom/google/common/collect/n;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableSet;
.implements Lt48;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/o$a;,
        Lcom/google/common/collect/o$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/n<",
        "TE;>;",
        "Ljava/util/NavigableSet<",
        "TE;>;",
        "Lt48<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final synthetic g:I


# instance fields
.field public final transient e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field public transient f:Lcom/google/common/collect/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/o<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/n;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/o;->e:Ljava/util/Comparator;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Use SerializedForm"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static s(Ljava/util/Comparator;)Lcom/google/common/collect/a0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Lcom/google/common/collect/a0<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lhi5;->b:Lhi5;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/common/collect/a0;->i:Lcom/google/common/collect/a0;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/collect/a0;

    sget-object v1, Lcom/google/common/collect/j;->c:Lcom/google/common/collect/j$b;

    sget-object v1, Lcom/google/common/collect/w;->f:Lcom/google/common/collect/w;

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/a0;-><init>(Lcom/google/common/collect/j;Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/o;->v(Ljava/lang/Object;Z)Lcom/google/common/collect/a0;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lya4;->d(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/o;->e:Ljava/util/Comparator;

    return-object p0
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/o;->r()Lcom/google/common/collect/j$b;

    move-result-object p0

    return-object p0
.end method

.method public final descendingSet()Ljava/util/NavigableSet;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/o;->f:Lcom/google/common/collect/o;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/o;->q()Lcom/google/common/collect/a0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/o;->f:Lcom/google/common/collect/o;

    iput-object p0, v0, Lcom/google/common/collect/o;->f:Lcom/google/common/collect/o;

    :cond_0
    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/i;->j()Ly69;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/o;->t(Ljava/lang/Object;Z)Lcom/google/common/collect/a0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/a0;->r()Lcom/google/common/collect/j$b;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lya4;->d(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/o;->t(Ljava/lang/Object;Z)Lcom/google/common/collect/a0;

    move-result-object p0

    return-object p0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/o;->t(Ljava/lang/Object;Z)Lcom/google/common/collect/a0;

    move-result-object p0

    return-object p0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/o;->v(Ljava/lang/Object;Z)Lcom/google/common/collect/a0;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lya4;->d(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/i;->j()Ly69;

    move-result-object p0

    return-object p0
.end method

.method public last()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/o;->r()Lcom/google/common/collect/j$b;

    move-result-object p0

    invoke-virtual {p0}, Lo0;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/o;->t(Ljava/lang/Object;Z)Lcom/google/common/collect/a0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/a0;->r()Lcom/google/common/collect/j$b;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lya4;->d(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final pollFirst()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final pollLast()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public abstract q()Lcom/google/common/collect/a0;
.end method

.method public abstract r()Lcom/google/common/collect/j$b;
.end method

.method public final subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    iget-object v0, p0, Lcom/google/common/collect/o;->e:Ljava/util/Comparator;

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo8;->e(Z)V

    .line 30
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/o;->u(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/o;

    move-result-object p0

    return-object p0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/common/collect/o;->e:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lo8;->e(Z)V

    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/google/common/collect/o;->u(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/o;

    move-result-object p0

    return-object p0
.end method

.method public abstract t(Ljava/lang/Object;Z)Lcom/google/common/collect/a0;
.end method

.method public final tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/o;->v(Ljava/lang/Object;Z)Lcom/google/common/collect/a0;

    move-result-object p0

    return-object p0
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/o;->v(Ljava/lang/Object;Z)Lcom/google/common/collect/a0;

    move-result-object p0

    return-object p0
.end method

.method public abstract u(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lcom/google/common/collect/o<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract v(Ljava/lang/Object;Z)Lcom/google/common/collect/a0;
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/common/collect/o$b;

    sget-object v1, Lcom/google/common/collect/i;->b:[Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/i;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lcom/google/common/collect/o;->e:Ljava/util/Comparator;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/o$b;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;)V

    return-object v0
.end method
