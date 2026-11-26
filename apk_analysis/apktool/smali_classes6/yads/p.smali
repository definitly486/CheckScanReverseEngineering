.class public final Lyads/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:Ljava/util/Map$Entry;

.field public final synthetic c:Ljava/util/Iterator;

.field public final synthetic d:Lyads/q;


# direct methods
.method public constructor <init>(Lyads/q;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lyads/p;->d:Lyads/q;

    iput-object p2, p0, Lyads/p;->c:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lyads/p;->c:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lyads/p;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lyads/p;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 4

    iget-object v0, p0, Lyads/p;->b:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lyads/p;->c:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v1, p0, Lyads/p;->d:Lyads/q;

    iget-object v1, v1, Lyads/q;->c:Lyads/z;

    iget v2, v1, Lyads/z;->f:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lyads/z;->f:I

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/p;->b:Ljava/util/Map$Entry;

    return-void

    :cond_1
    const-string p0, "no calls to next() since the last call to remove()"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method
