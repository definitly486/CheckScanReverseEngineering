.class public final Lyads/cl5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/io4;


# static fields
.field public static final c:Ljava/util/List;


# instance fields
.field public final a:Ljava/util/Map;

.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lyads/dk5;->b:Lyads/dk5;

    sget-object v1, Lyads/dk5;->c:Lyads/dk5;

    filled-new-array {v0, v1}, [Lyads/dk5;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/cl5;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lyads/c16;Lyads/c16;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lyads/dk5;->b:Lyads/dk5;

    new-instance v1, Lb36;

    invoke-direct {v1, v0, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lyads/dk5;->c:Lyads/dk5;

    new-instance v0, Lb36;

    invoke-direct {v0, p1, p2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v0}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lyads/cl5;->a:Ljava/util/Map;

    return-void
.end method

.method public static final a(Lyads/dk5;)Ljava/util/List;
    .locals 0

    .line 105
    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lyads/lo4;

    iget-object v2, v2, Lyads/lo4;->a:Lyads/a16;

    iget-object v2, v2, Lyads/a16;->d:Lyads/dk5;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Lgf0;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Lgf0;-><init>(I)V

    invoke-static {v0, p1}, Ll05;->a(Ljava/util/Map;Lgf0;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/dk5;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lyads/cl5;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/io4;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lyads/io4;->a(Ljava/util/List;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final a(Lyads/d9;)V
    .locals 1

    .line 117
    iget-object p0, p0, Lyads/cl5;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 118
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/io4;

    .line 119
    invoke-interface {v0, p1}, Lyads/io4;->a(Lyads/d9;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lyads/dk5;Ljava/util/List;Lyads/g66;)V
    .locals 3

    .line 106
    iget-boolean v0, p0, Lyads/cl5;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lyads/cl5;->b:Z

    .line 108
    invoke-static {p1, p2}, Lqn1;->i0(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 110
    sget-object v2, Lyads/cl5;->c:Ljava/util/List;

    check-cast v2, Ljava/util/List;

    invoke-static {v1, v2}, Lqn1;->g0(Ljava/lang/Iterable;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 111
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/dk5;

    .line 112
    invoke-virtual {p0, v2, p3}, Lyads/cl5;->a(Lyads/dk5;Lyads/g66;)V

    .line 113
    invoke-virtual {p0, v2, v0, p3}, Lyads/cl5;->a(Lyads/dk5;Ljava/util/List;Lyads/g66;)V

    goto :goto_0

    .line 114
    :cond_0
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 115
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/dk5;

    if-ne v1, p1, :cond_2

    goto :goto_2

    .line 116
    :cond_3
    :goto_1
    iget-object p0, p0, Lyads/cl5;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/io4;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1, p2, p3}, Lyads/io4;->a(Lyads/dk5;Ljava/util/List;Lyads/g66;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final a(Lyads/dk5;Lyads/f66;)V
    .locals 0

    .line 104
    iget-object p0, p0, Lyads/cl5;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/io4;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lyads/io4;->a(Lyads/dk5;Lyads/f66;)V

    :cond_0
    return-void
.end method

.method public final a(Lyads/dk5;Lyads/g66;)V
    .locals 0

    .line 103
    iget-object p0, p0, Lyads/cl5;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/io4;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lyads/io4;->a(Lyads/dk5;Lyads/g66;)V

    :cond_0
    return-void
.end method

.method public final invalidate()V
    .locals 1

    iget-object p0, p0, Lyads/cl5;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/io4;

    invoke-interface {v0}, Lyads/io4;->invalidate()V

    goto :goto_0

    :cond_0
    return-void
.end method
