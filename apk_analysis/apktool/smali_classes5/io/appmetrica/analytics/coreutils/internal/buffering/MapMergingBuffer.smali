.class public final Lio/appmetrica/analytics/coreutils/internal/buffering/MapMergingBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreutils/internal/buffering/TaskBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/appmetrica/analytics/coreutils/internal/buffering/TaskBuffer<",
        "Ljava/util/Map<",
        "TK;+TV;>;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/buffering/MapMergingBuffer;->a:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/coreutils/internal/buffering/MapMergingBuffer;->add(Ljava/util/Map;)V

    return-void
.end method

.method public add(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;+TV;>;)V"
        }
    .end annotation

    .line 6
    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/buffering/MapMergingBuffer;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public getAndClear()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/buffering/MapMergingBuffer;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/buffering/MapMergingBuffer;->a:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ln05;->l(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/buffering/MapMergingBuffer;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/buffering/MapMergingBuffer;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method
