.class public final Le0b;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lp0b;


# direct methods
.method public constructor <init>(Lp0b;)V
    .locals 0

    iput-object p1, p0, Le0b;->b:Lp0b;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Le0b;->b:Lp0b;

    invoke-virtual {p0}, Lp0b;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Le0b;->b:Lp0b;

    invoke-virtual {p0, p1}, Lp0b;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Le0b;->b:Lp0b;

    invoke-virtual {p0}, Lp0b;->e()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lrya;

    invoke-direct {v0, p0}, Lrya;-><init>(Lp0b;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object p0, p0, Le0b;->b:Lp0b;

    invoke-virtual {p0}, Lp0b;->e()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lp0b;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lp0b;->k:Ljava/lang/Object;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Le0b;->b:Lp0b;

    invoke-virtual {p0}, Lp0b;->size()I

    move-result p0

    return p0
.end method
