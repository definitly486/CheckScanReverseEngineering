.class public final Lw36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final b:Lp36;

.field public final c:Lq36;

.field public d:Lbk8;


# direct methods
.method public constructor <init>(Lby3;)V
    .locals 1

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 164
    sget-object p1, Lq36;->c:Lq36;

    iput-object p1, p0, Lw36;->c:Lq36;

    .line 165
    new-instance p1, Lp36;

    const/4 v0, 0x0

    .line 166
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    iput-object p1, p0, Lw36;->b:Lp36;

    return-void
.end method

.method public constructor <init>(Lw36;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    new-instance v0, Lby3;

    invoke-direct {v0}, Lby3;-><init>()V

    new-instance v0, Lp36;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lw36;->b:Lp36;

    new-instance v0, Lq36;

    iget-object v1, p1, Lw36;->c:Lq36;

    iget-boolean v2, v1, Lq36;->a:Z

    iget-boolean v1, v1, Lq36;->b:Z

    invoke-direct {v0, v2, v1}, Lq36;-><init>(ZZ)V

    iput-object v0, p0, Lw36;->c:Lq36;

    new-instance v0, Lbk8;

    invoke-virtual {p1}, Lw36;->e()Lbk8;

    move-result-object p1

    iget-object v1, p1, Lbk8;->b:Lbk8;

    iget-object v2, p1, Lbk8;->a:Ljava/util/HashMap;

    iget-object p1, p1, Lbk8;->c:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v3

    :goto_0
    invoke-direct {v0, v1, p1}, Lbk8;-><init>(Lbk8;Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljj8;

    invoke-virtual {v4}, Ljj8;->e()Ljj8;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, v0, Lbk8;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    :goto_3
    iput-object v0, p0, Lw36;->d:Lbk8;

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lw36;

    invoke-direct {v0, p0}, Lw36;-><init>(Lw36;)V

    return-object v0
.end method

.method public final e()Lbk8;
    .locals 3

    iget-object v0, p0, Lw36;->d:Lbk8;

    if-nez v0, :cond_0

    new-instance v0, Lbk8;

    sget-object v1, Lbk8;->d:Lbk8;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbk8;-><init>(Lbk8;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lw36;->d:Lbk8;

    :cond_0
    return-object v0
.end method
