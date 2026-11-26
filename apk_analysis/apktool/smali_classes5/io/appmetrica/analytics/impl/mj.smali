.class public final Lio/appmetrica/analytics/impl/mj;
.super Lio/appmetrica/analytics/impl/Ug;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Ug;-><init>(Lio/appmetrica/analytics/impl/i5;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/i5;->a()Lio/appmetrica/analytics/impl/b5;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/b5;->a()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Z
    .locals 5

    iget-object p1, p1, Lio/appmetrica/analytics/impl/a6;->p:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ug;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/i5;->u:Lio/appmetrica/analytics/impl/al;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v3, v0

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v1, Lio/appmetrica/analytics/impl/al;->b:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v0, v1, Lio/appmetrica/analytics/impl/al;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_2
    iget-object v0, v1, Lio/appmetrica/analytics/impl/al;->a:Lio/appmetrica/analytics/impl/el;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/al;->b:Ljava/util/Map;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/el;->d:Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    iget-object v3, v0, Lio/appmetrica/analytics/impl/el;->a:Ljava/lang/String;

    iget-object v4, v0, Lio/appmetrica/analytics/impl/el;->c:Lio/appmetrica/analytics/impl/dl;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/el;->b:Lio/appmetrica/analytics/impl/Zk;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Zk;->a(Ljava/util/Map;)Lio/appmetrica/analytics/impl/bl;

    move-result-object v0

    invoke-virtual {v4, v0}, Lio/appmetrica/analytics/coreutils/internal/data/BaseProtobufStateSerializer;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;->insert(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
