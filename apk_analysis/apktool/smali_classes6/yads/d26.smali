.class public final Lyads/d26;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/gs2;

.field public final b:Lyads/ao2;

.field public final c:Lyads/bt0;

.field public final d:Ljava/util/LinkedHashMap;

.field public e:Lyads/vq0;

.field public f:Ljava/util/List;


# direct methods
.method public constructor <init>(Lyads/gs2;Lyads/ao2;Lyads/bt0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/d26;->a:Lyads/gs2;

    iput-object p2, p0, Lyads/d26;->b:Lyads/ao2;

    iput-object p3, p0, Lyads/d26;->c:Lyads/bt0;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lyads/d26;->d:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 13

    iget-object v0, p0, Lyads/d26;->f:Ljava/util/List;

    if-ne v0, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iput-object p1, p0, Lyads/d26;->f:Ljava/util/List;

    iget-object v0, p0, Lyads/d26;->e:Lyads/vq0;

    iget-object v1, p0, Lyads/d26;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v2, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lyads/d26;->a(Lyads/vq0;)V

    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/ae2;

    iget-object v3, v1, Lyads/ae2;->b:Lyads/as2;

    instance-of v4, v3, Lyads/yr2;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    move-object v4, v3

    check-cast v4, Lyads/yr2;

    move-object v7, v4

    goto :goto_1

    :cond_3
    move-object v7, v5

    :goto_1
    const-string v4, "\'"

    const-string v6, "Invalid condition: \'"

    if-nez v7, :cond_4

    iget-object v1, p0, Lyads/d26;->b:Lyads/ao2;

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "Condition is not mutable!"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v5}, Lyads/ao2;->a(Ljava/lang/RuntimeException;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lyads/d26;->a:Lyads/gs2;

    invoke-virtual {v7, v3}, Lyads/yr2;->b(Lyads/fs2;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v3, "No variables defined!"

    invoke-direct {v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    :cond_5
    if-eqz v5, :cond_6

    iget-object v3, p0, Lyads/d26;->b:Lyads/ao2;

    new-instance v7, Ljava/lang/IllegalStateException;

    iget-object v1, v1, Lyads/ae2;->b:Lyads/as2;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v7}, Lyads/ao2;->a(Ljava/lang/RuntimeException;)V

    goto :goto_0

    :cond_6
    new-instance v6, Lyads/c26;

    iget-object v8, v1, Lyads/ae2;->a:Ljava/util/List;

    iget-object v9, v1, Lyads/ae2;->c:Lyads/as2;

    iget-object v10, p0, Lyads/d26;->a:Lyads/gs2;

    iget-object v11, p0, Lyads/d26;->b:Lyads/ao2;

    iget-object v12, p0, Lyads/d26;->c:Lyads/bt0;

    invoke-direct/range {v6 .. v12}, Lyads/c26;-><init>(Lyads/yr2;Ljava/util/List;Lyads/as2;Lyads/gs2;Lyads/ao2;Lyads/bt0;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Lyads/d26;->b(Lyads/vq0;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public final a(Lyads/vq0;)V
    .locals 3

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lyads/d26;->e:Lyads/vq0;

    .line 177
    iget-object p0, p0, Lyads/d26;->d:Ljava/util/LinkedHashMap;

    .line 178
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 179
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 180
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/c26;

    .line 181
    iget-object v2, v1, Lyads/c26;->n:Ljava/util/LinkedHashSet;

    .line 182
    invoke-static {v2}, Lv39;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {v1}, Lyads/c26;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Lyads/vq0;)V
    .locals 2

    iget-object v0, p0, Lyads/d26;->e:Lyads/vq0;

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lyads/d26;->e:Lyads/vq0;

    iget-object v0, p0, Lyads/d26;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lyads/d26;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/c26;

    iget-object v1, v0, Lyads/c26;->n:Ljava/util/LinkedHashSet;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lyads/c26;->a()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
