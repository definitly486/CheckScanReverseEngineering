.class public final Lyads/n45;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e42;

.field public final b:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lyads/e42;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/n45;->a:Lyads/e42;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lyads/n45;->b:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lyads/o45;
    .locals 6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lyads/o45;->c:Lyads/o45;

    return-object p0

    :cond_0
    invoke-static {p1}, Lqn1;->x0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lyads/n45;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/k45;

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lyads/n45;->a:Lyads/e42;

    invoke-virtual {v2, v0}, Lyads/e42;->b(Ljava/util/Set;)Lyads/w32;

    move-result-object v0

    iget-object v2, v0, Lyads/w32;->a:Ljava/util/List;

    iget-object v0, v0, Lyads/w32;->b:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/z32;

    new-instance v5, Lyads/m45;

    invoke-direct {v5, v4}, Lyads/m45;-><init>(Lyads/z32;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lyads/o45;

    invoke-direct {v0, v2, p1}, Lyads/o45;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/k45;

    iget-object v3, p0, Lyads/n45;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Lyads/k45;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget-object p0, v0, Lyads/o45;->a:Ljava/util/List;

    invoke-static {v1, p0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    iget-object p1, v0, Lyads/o45;->b:Ljava/util/List;

    new-instance v0, Lyads/o45;

    invoke-direct {v0, p0, p1}, Lyads/o45;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0

    :cond_5
    new-instance p0, Lyads/o45;

    sget-object p1, Lkx2;->b:Lkx2;

    invoke-direct {p0, v1, p1}, Lyads/o45;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public final a(Lyads/l45;)Lyads/o45;
    .locals 5

    .line 168
    iget-object v0, p1, Lyads/l45;->a:Ljava/util/List;

    .line 169
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/k45;

    .line 170
    iget-object v3, p0, Lyads/n45;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Lyads/k45;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 171
    :cond_0
    iget-object p0, p0, Lyads/n45;->a:Lyads/e42;

    .line 172
    iget-object p1, p1, Lyads/l45;->b:Lyads/mb1;

    .line 173
    iget-object p0, p0, Lyads/e42;->c:Lyads/ol5;

    .line 174
    invoke-virtual {p0, v0, p1}, Lyads/ol5;->a(Ljava/util/List;Lyads/mb1;)Lyads/mp2;

    move-result-object p0

    .line 175
    iget-object p0, p0, Lyads/mp2;->a:Ljava/util/ArrayList;

    .line 176
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 178
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 179
    check-cast v2, Lyads/z32;

    .line 180
    new-instance v3, Lyads/m45;

    invoke-direct {v3, v2}, Lyads/m45;-><init>(Lyads/z32;)V

    .line 181
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 182
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 183
    new-instance p0, Lyads/o45;

    invoke-direct {p0, v0, p1}, Lyads/o45;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public final a(Lnl3;)V
    .locals 5

    .line 184
    iget-object v0, p0, Lyads/n45;->a:Lyads/e42;

    .line 185
    invoke-virtual {v0, p1}, Lyads/e42;->a(Lnl3;)Ljava/util/LinkedHashSet;

    move-result-object p1

    .line 186
    iget-object v0, v0, Lyads/e42;->b:Lyads/uq5;

    .line 187
    sget-object v1, Lyads/mb1;->c:Lyads/mb1;

    .line 188
    new-instance v2, Lyads/vq5;

    invoke-direct {v2, p1}, Lyads/vq5;-><init>(Ljava/util/LinkedHashSet;)V

    const/4 v3, 0x1

    .line 189
    new-array v3, v3, [Lyads/tq5;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 190
    invoke-virtual {v0, v1, v3}, Lyads/uq5;->a(Lyads/mb1;[Lyads/tq5;)Lyads/mp2;

    move-result-object v0

    .line 191
    iget-object v0, v0, Lyads/mp2;->a:Ljava/util/ArrayList;

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 194
    check-cast v2, Lyads/z32;

    .line 195
    new-instance v3, Lyads/m45;

    invoke-direct {v3, v2}, Lyads/m45;-><init>(Lyads/z32;)V

    .line 196
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    iget-object v1, p0, Lyads/n45;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method
