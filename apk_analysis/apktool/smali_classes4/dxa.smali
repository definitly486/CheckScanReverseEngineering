.class public final Ldxa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final b:Ljava/util/Iterator;

.field public c:Ljava/util/Collection;

.field public final synthetic d:Lfxa;


# direct methods
.method public constructor <init>(Lfxa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldxa;->d:Lfxa;

    iget-object p1, p1, Lfxa;->d:Lp0b;

    invoke-virtual {p1}, Lp0b;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Ldxa;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Ldxa;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Ldxa;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iput-object v1, p0, Ldxa;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object p0, p0, Ldxa;->d:Lfxa;

    iget-object p0, p0, Lfxa;->e:Lyxa;

    check-cast p0, Lvwa;

    check-cast v0, Ljava/util/List;

    instance-of v2, v0, Ljava/util/RandomAccess;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lmxa;

    invoke-direct {v2, p0, v1, v0, v3}, Lwxa;-><init>(Lyxa;Ljava/lang/Object;Ljava/util/List;Lwxa;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lwxa;

    invoke-direct {v2, p0, v1, v0, v3}, Lwxa;-><init>(Lyxa;Ljava/lang/Object;Ljava/util/List;Lwxa;)V

    :goto_0
    new-instance p0, Lk1b;

    invoke-direct {p0, v1, v2}, Lk1b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Ldxa;->c:Ljava/util/Collection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaz;->zzf(ZLjava/lang/Object;)V

    iget-object v0, p0, Ldxa;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Ldxa;->d:Lfxa;

    iget-object v0, v0, Lfxa;->e:Lyxa;

    iget v1, v0, Lyxa;->f:I

    iget-object v2, p0, Ldxa;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lyxa;->f:I

    iget-object v0, p0, Ldxa;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldxa;->c:Ljava/util/Collection;

    return-void
.end method
