.class public Lyads/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final b:Ljava/util/Iterator;

.field public final c:Ljava/util/Collection;

.field public final synthetic d:Lyads/y;


# direct methods
.method public constructor <init>(Lyads/y;)V
    .locals 1

    iput-object p1, p0, Lyads/w;->d:Lyads/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lyads/y;->c:Ljava/util/Collection;

    iput-object p1, p0, Lyads/w;->c:Ljava/util/Collection;

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lyads/w;->b:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lyads/y;Ljava/util/ListIterator;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lyads/w;->d:Lyads/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iget-object p1, p1, Lyads/y;->c:Ljava/util/Collection;

    iput-object p1, p0, Lyads/w;->c:Ljava/util/Collection;

    .line 29
    iput-object p2, p0, Lyads/w;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lyads/w;->d:Lyads/y;

    invoke-virtual {v0}, Lyads/y;->b()V

    iget-object v0, p0, Lyads/w;->d:Lyads/y;

    iget-object v0, v0, Lyads/y;->c:Ljava/util/Collection;

    iget-object v1, p0, Lyads/w;->c:Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lyads/w;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lln;->e()V

    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lyads/w;->d:Lyads/y;

    invoke-virtual {v0}, Lyads/y;->b()V

    iget-object v0, p0, Lyads/w;->d:Lyads/y;

    iget-object v0, v0, Lyads/y;->c:Ljava/util/Collection;

    iget-object v1, p0, Lyads/w;->c:Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lyads/w;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lln;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lyads/w;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object p0, p0, Lyads/w;->d:Lyads/y;

    iget-object v0, p0, Lyads/y;->f:Lyads/z;

    iget v1, v0, Lyads/z;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lyads/z;->f:I

    invoke-virtual {p0}, Lyads/y;->c()V

    return-void
.end method
