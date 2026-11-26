.class public final Lbxa;
.super Ll3b;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lfxa;


# direct methods
.method public constructor <init>(Lfxa;)V
    .locals 0

    iput-object p1, p0, Lbxa;->b:Lfxa;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lbxa;->b:Lfxa;

    iget-object p0, p0, Lfxa;->d:Lp0b;

    invoke-virtual {p0}, Lp0b;->entrySet()Ljava/util/Set;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Ldxa;

    iget-object p0, p0, Lbxa;->b:Lfxa;

    invoke-direct {v0, p0}, Ldxa;-><init>(Lfxa;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lbxa;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lbxa;->b:Lfxa;

    iget-object p0, p0, Lfxa;->e:Lyxa;

    iget-object v0, p0, Lyxa;->e:Lp0b;

    :try_start_0
    invoke-virtual {v0, p1}, Lp0b;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    iget p1, p0, Lyxa;->f:I

    sub-int/2addr p1, v0

    iput p1, p0, Lyxa;->f:I

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
