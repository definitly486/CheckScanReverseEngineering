.class public abstract Lff5;
.super Lio/grpc/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lff5$b;,
        Lff5$a;
    }
.end annotation


# static fields
.field public static final k:Ljava/util/logging/Logger;

.field public static final l:I


# instance fields
.field public f:Ljava/util/ArrayList;

.field public final g:Lio/grpc/h$e;

.field public h:Z

.field public final i:Lf86;

.field public j:Lcx1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lff5;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lff5;->k:Ljava/util/logging/Logger;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    sput v0, Lff5;->l:I

    return-void
.end method

.method public constructor <init>(Lio/grpc/h$e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lff5;->f:Ljava/util/ArrayList;

    new-instance v0, Lf86;

    invoke-direct {v0}, Lf86;-><init>()V

    iput-object v0, p0, Lff5;->i:Lf86;

    const-string v0, "helper"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lff5;->g:Lio/grpc/h$e;

    sget-object p0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string p1, "Created"

    sget-object v0, Lff5;->k:Ljava/util/logging/Logger;

    invoke-virtual {v0, p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Lio/grpc/h$i;)Ljava/util/LinkedHashMap;
    .locals 8

    iget-object v0, p0, Lio/grpc/h$i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lcom/google/common/collect/q;->a(I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/d;

    invoke-virtual {p0}, Lio/grpc/h$i;->a()Lio/grpc/h$i$a;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lio/grpc/h$i$a;->a:Ljava/util/List;

    sget-object v4, Lio/grpc/a;->b:Lio/grpc/a;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v6, Ljava/util/IdentityHashMap;

    iget-object v7, v4, Lio/grpc/a;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v7}, Ljava/util/IdentityHashMap;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/IdentityHashMap;-><init>(I)V

    iget-object v4, v4, Lio/grpc/a;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v6, v4}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    sget-object v4, Lio/grpc/h;->e:Lio/grpc/a$b;

    invoke-virtual {v6, v4, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lio/grpc/a;

    invoke-direct {v4, v6}, Lio/grpc/a;-><init>(Ljava/util/IdentityHashMap;)V

    iput-object v4, v3, Lio/grpc/h$i$a;->b:Lio/grpc/a;

    const/4 v4, 0x0

    iput-object v4, v3, Lio/grpc/h$i$a;->c:Ljava/lang/Object;

    invoke-virtual {v3}, Lio/grpc/h$i$a;->a()Lio/grpc/h$i;

    move-result-object v3

    new-instance v4, Lff5$b;

    invoke-direct {v4, v1}, Lff5$b;-><init>(Lio/grpc/d;)V

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public final a(Lio/grpc/h$i;)Lh88;
    .locals 4

    const-string v0, "NameResolver returned no usable address. "

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Received resolution result: {0}"

    sget-object v3, Lff5;->k:Ljava/util/logging/Logger;

    invoke-virtual {v3, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v1, p0, Lff5;->h:Z

    invoke-static {p1}, Lff5;->e(Lio/grpc/h$i;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v1, Lh88;->m:Lh88;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p1

    invoke-virtual {p0, p1}, Lff5;->b(Lh88;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Lff5;->h:Z

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Lff5;->g(Ljava/util/LinkedHashMap;)Lh88;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v2, p0, Lff5;->h:Z

    return-object p1

    :goto_0
    iput-boolean v2, p0, Lff5;->h:Z

    throw p1
.end method

.method public final b(Lh88;)V
    .locals 2

    iget-object v0, p0, Lff5;->j:Lcx1;

    sget-object v1, Lcx1;->READY:Lcx1;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcx1;->TRANSIENT_FAILURE:Lcx1;

    new-instance v1, Lio/grpc/h$d;

    invoke-static {p1}, Lio/grpc/h$g;->a(Lh88;)Lio/grpc/h$g;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/grpc/h$d;-><init>(Lio/grpc/h$g;)V

    iget-object p0, p0, Lff5;->g:Lio/grpc/h$e;

    invoke-virtual {p0, v0, v1}, Lio/grpc/h$e;->f(Lcx1;Lio/grpc/h$k;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 5

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v1, "Shutdown"

    sget-object v2, Lff5;->k:Ljava/util/logging/Logger;

    invoke-virtual {v2, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    iget-object v0, p0, Lff5;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lff5$a;

    iget-object v3, v1, Lff5$a;->b:Lio/grpc/h;

    invoke-virtual {v3}, Lio/grpc/h;->d()V

    sget-object v3, Lcx1;->SHUTDOWN:Lcx1;

    iput-object v3, v1, Lff5$a;->c:Lcx1;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Child balancer {0} deleted"

    iget-object v1, v1, Lff5$a;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lff5;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public f(Ljava/lang/Object;)Lff5$a;
    .locals 2

    new-instance v0, Lff5$a;

    iget-object v1, p0, Lff5;->i:Lf86;

    invoke-direct {v0, p0, p1, v1}, Lff5$a;-><init>(Lff5;Ljava/lang/Object;Lf86;)V

    return-object v0
.end method

.method public final g(Ljava/util/LinkedHashMap;)Lh88;
    .locals 11

    iget-object v0, p0, Lff5;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/google/common/collect/q;->a(I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    iget-object v0, p0, Lff5;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lff5$a;

    iget-object v3, v2, Lff5$a;->a:Ljava/lang/Object;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lh88;->e:Lh88;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lff5$a;

    if-nez v5, :cond_1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lff5;->f(Ljava/lang/Object;)Lff5$a;

    move-result-object v5

    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget v5, Lff5;->l:I

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    int-to-long v9, v3

    and-long/2addr v7, v9

    rem-long/2addr v5, v7

    long-to-int v3, v5

    :goto_2
    const/4 v5, 0x1

    if-ltz v3, :cond_4

    move v6, v5

    goto :goto_3

    :cond_4
    move v6, v4

    :goto_3
    const-string v7, "number to skip cannot be negative"

    invoke-static {v6, v7}, Lo8;->f(ZLjava/lang/Object;)V

    new-instance v6, Lsa4;

    invoke-direct {v6, v2, v3}, Lsa4;-><init>(Ljava/util/ArrayList;I)V

    if-ltz v3, :cond_5

    move v7, v5

    goto :goto_4

    :cond_5
    move v7, v4

    :goto_4
    const-string v8, "limit is negative"

    invoke-static {v7, v8}, Lo8;->f(ZLjava/lang/Object;)V

    new-instance v7, Lta4;

    invoke-direct {v7, v2, v3}, Lta4;-><init>(Ljava/util/ArrayList;I)V

    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/Iterable;

    aput-object v6, v8, v4

    aput-object v7, v8, v5

    :goto_5
    if-ge v4, v3, :cond_6

    aget-object v5, v8, v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    new-instance v3, Lyh3;

    array-length v4, v8

    invoke-direct {v3, v4, v8}, Lyh3;-><init>(I[Ljava/lang/Iterable;)V

    new-instance v4, Lya4$b;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    sget-object v5, Lya4$a;->e:Lya4$a;

    iput-object v5, v4, Lya4$b;->c:Ljava/util/Iterator;

    iput-object v3, v4, Lya4$b;->d:Ljava/util/Iterator;

    :cond_7
    :goto_6
    invoke-virtual {v4}, Lya4$b;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v4}, Lya4$b;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lff5$a;

    iget-object v5, v3, Lff5$a;->a:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/h$i;

    if-eqz v5, :cond_7

    iget-object v3, v3, Lff5$a;->b:Lio/grpc/h;

    invoke-virtual {v3, v5}, Lio/grpc/h;->a(Lio/grpc/h$i;)Lh88;

    move-result-object v3

    invoke-virtual {v3}, Lh88;->f()Z

    move-result v5

    if-nez v5, :cond_7

    move-object v0, v3

    goto :goto_6

    :cond_8
    iput-object v2, p0, Lff5;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lff5;->h()V

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lff5$a;

    iget-object v1, p1, Lff5$a;->b:Lio/grpc/h;

    invoke-virtual {v1}, Lio/grpc/h;->d()V

    sget-object v1, Lcx1;->SHUTDOWN:Lcx1;

    iput-object v1, p1, Lff5$a;->c:Lcx1;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Child balancer {0} deleted"

    iget-object p1, p1, Lff5$a;->a:Ljava/lang/Object;

    sget-object v3, Lff5;->k:Ljava/util/logging/Logger;

    invoke-virtual {v3, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    :cond_9
    return-object v0
.end method

.method public abstract h()V
.end method
