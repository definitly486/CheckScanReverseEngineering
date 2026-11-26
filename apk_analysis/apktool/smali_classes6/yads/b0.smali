.class public final Lyads/b0;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lyads/gd4;


# direct methods
.method public constructor <init>(Lyads/gd4;)V
    .locals 0

    iput-object p1, p0, Lyads/b0;->b:Lyads/gd4;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    iget-object p0, p0, Lyads/b0;->b:Lyads/gd4;

    iget-object v0, p0, Lyads/z;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lyads/z;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lyads/z;->f:I

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object p0, p0, Lyads/b0;->b:Lyads/gd4;

    invoke-virtual {p0}, Lyads/j;->a()Lyads/n;

    move-result-object p0

    invoke-virtual {p0}, Lyads/yw3;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Lyads/xw3;

    invoke-virtual {p0}, Lyads/xw3;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Lyads/b0;->b:Lyads/gd4;

    new-instance v0, Lyads/k;

    invoke-direct {v0, p0}, Lyads/k;-><init>(Lyads/gd4;)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lyads/b0;->b:Lyads/gd4;

    iget p0, p0, Lyads/z;->f:I

    return p0
.end method
