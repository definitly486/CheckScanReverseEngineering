.class public abstract Lyxa;
.super Ljya;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final transient e:Lp0b;

.field public transient f:I


# direct methods
.method public constructor <init>(Lp0b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lp0b;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaz;->zzd(Z)V

    iput-object p1, p0, Lyxa;->e:Lp0b;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Ljava/util/Collection;)Lwxa;
.end method

.method public final zzh()I
    .locals 0

    iget p0, p0, Lyxa;->f:I

    return p0
.end method

.method public final zzj(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3

    iget-object v0, p0, Lyxa;->e:Lp0b;

    invoke-virtual {v0, p1}, Lp0b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    check-cast p0, Lvwa;

    check-cast v0, Ljava/util/List;

    instance-of v1, v0, Ljava/util/RandomAccess;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Lmxa;

    invoke-direct {v1, p0, p1, v0, v2}, Lwxa;-><init>(Lyxa;Ljava/lang/Object;Ljava/util/List;Lwxa;)V

    return-object v1

    :cond_1
    new-instance v1, Lwxa;

    invoke-direct {v1, p0, p1, v0, v2}, Lwxa;-><init>(Lyxa;Ljava/lang/Object;Ljava/util/List;Lwxa;)V

    return-object v1
.end method

.method public final zzk(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3

    iget-object v0, p0, Lyxa;->e:Lp0b;

    invoke-virtual {v0, p1}, Lp0b;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v1, p0, Lyxa;->f:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lyxa;->f:I

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final zzs()V
    .locals 3

    iget-object v0, p0, Lyxa;->e:Lp0b;

    invoke-virtual {v0}, Lp0b;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lp0b;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lyxa;->f:I

    return-void
.end method

.method public final zzt(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p0, Lyxa;->e:Lp0b;

    invoke-virtual {v0, p1}, Lp0b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lyxa;->f:I

    add-int/2addr p2, v3

    iput p2, p0, Lyxa;->f:I

    invoke-virtual {v0, p1, v1}, Lp0b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    :cond_0
    const-string p0, "New Collection violated the Collection spec"

    invoke-static {p0}, Lxg;->d(Ljava/lang/Object;)V

    return v2

    :cond_1
    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lyxa;->f:I

    add-int/2addr p1, v3

    iput p1, p0, Lyxa;->f:I

    return v3

    :cond_2
    return v2
.end method
