.class public final Lyads/x;
.super Lyads/w;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public final synthetic e:Lyads/y;


# direct methods
.method public constructor <init>(Lyads/y;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lyads/x;->e:Lyads/y;

    invoke-direct {p0, p1}, Lyads/w;-><init>(Lyads/y;)V

    return-void
.end method

.method public constructor <init>(Lyads/y;I)V
    .locals 1

    iput-object p1, p0, Lyads/x;->e:Lyads/y;

    iget-object v0, p1, Lyads/y;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lyads/w;-><init>(Lyads/y;Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ListIterator;
    .locals 2

    iget-object v0, p0, Lyads/w;->d:Lyads/y;

    invoke-virtual {v0}, Lyads/y;->b()V

    iget-object v0, p0, Lyads/w;->d:Lyads/y;

    iget-object v0, v0, Lyads/y;->c:Ljava/util/Collection;

    iget-object v1, p0, Lyads/w;->c:Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lyads/w;->b:Ljava/util/Iterator;

    check-cast p0, Ljava/util/ListIterator;

    return-object p0

    :cond_0
    invoke-static {}, Lln;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final add(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lyads/x;->e:Lyads/y;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    invoke-virtual {p0}, Lyads/x;->a()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object p0, p0, Lyads/x;->e:Lyads/y;

    iget-object p1, p0, Lyads/y;->g:Lyads/z;

    iget v1, p1, Lyads/z;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lyads/z;->f:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyads/y;->a()V

    :cond_0
    return-void
.end method

.method public final hasPrevious()Z
    .locals 0

    invoke-virtual {p0}, Lyads/x;->a()Ljava/util/ListIterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p0

    return p0
.end method

.method public final nextIndex()I
    .locals 0

    invoke-virtual {p0}, Lyads/x;->a()Ljava/util/ListIterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p0

    return p0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lyads/x;->a()Ljava/util/ListIterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final previousIndex()I
    .locals 0

    invoke-virtual {p0}, Lyads/x;->a()Ljava/util/ListIterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/ListIterator;->previousIndex()I

    move-result p0

    return p0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lyads/x;->a()Ljava/util/ListIterator;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
