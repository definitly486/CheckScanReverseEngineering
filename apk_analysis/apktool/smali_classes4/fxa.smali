.class public final Lfxa;
.super Ly3b;
.source "SourceFile"


# instance fields
.field public final transient d:Lp0b;

.field public final synthetic e:Lyxa;


# direct methods
.method public constructor <init>(Lyxa;Lp0b;)V
    .locals 0

    iput-object p1, p0, Lfxa;->e:Lyxa;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p2, p0, Lfxa;->d:Lp0b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lwxa;
    .locals 3

    iget-object v0, p0, Lfxa;->d:Lp0b;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1}, Lp0b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lfxa;->e:Lyxa;

    check-cast p0, Lvwa;

    check-cast v0, Ljava/util/List;

    instance-of v2, v0, Ljava/util/RandomAccess;

    if-eqz v2, :cond_1

    new-instance v2, Lmxa;

    invoke-direct {v2, p0, p1, v0, v1}, Lwxa;-><init>(Lyxa;Ljava/lang/Object;Ljava/util/List;Lwxa;)V

    goto :goto_1

    :cond_1
    new-instance v2, Lwxa;

    invoke-direct {v2, p0, p1, v0, v1}, Lwxa;-><init>(Lyxa;Ljava/lang/Object;Ljava/util/List;Lwxa;)V

    :goto_1
    return-object v2
.end method

.method public final clear()V
    .locals 4

    iget-object v0, p0, Lfxa;->e:Lyxa;

    iget-object v1, v0, Lyxa;->e:Lp0b;

    iget-object p0, p0, Lfxa;->d:Lp0b;

    if-ne p0, v1, :cond_0

    invoke-virtual {v0}, Lyxa;->zzs()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lp0b;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v3, v1}, Lyxa;->a(Ljava/lang/Object;Ljava/util/Collection;)Lwxa;

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v3, "no calls to next() since the last call to remove()"

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaz;->zzf(ZLjava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    iget v1, v0, Lyxa;->f:I

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Lyxa;->f:I

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lfxa;->d:Lp0b;

    :try_start_0
    invoke-virtual {p0, p1}, Lp0b;->containsKey(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    iget-object p0, p0, Lfxa;->d:Lp0b;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lfxa;->a(Ljava/lang/Object;)Lwxa;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lfxa;->d:Lp0b;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lfxa;->e:Lyxa;

    invoke-virtual {p0}, Ljya;->zzw()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lfxa;->d:Lp0b;

    invoke-virtual {v0, p1}, Lp0b;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lfxa;->e:Lyxa;

    iget v1, p0, Lyxa;->f:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lyxa;->f:I

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lfxa;->d:Lp0b;

    invoke-virtual {p0}, Lp0b;->size()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfxa;->d:Lp0b;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
