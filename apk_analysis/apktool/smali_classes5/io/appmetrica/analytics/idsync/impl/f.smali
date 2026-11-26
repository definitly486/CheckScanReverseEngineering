.class public final Lio/appmetrica/analytics/idsync/impl/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/idsync/impl/I;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/idsync/impl/I;

    invoke-direct {v0}, Lio/appmetrica/analytics/idsync/impl/I;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/impl/f;->a:Lio/appmetrica/analytics/idsync/impl/I;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/idsync/impl/p;)Lio/appmetrica/analytics/idsync/impl/c;
    .locals 8

    .line 53
    iget-object v0, p1, Lio/appmetrica/analytics/idsync/impl/p;->b:Lio/appmetrica/analytics/idsync/impl/o;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/idsync/impl/o;

    invoke-direct {v0}, Lio/appmetrica/analytics/idsync/impl/o;-><init>()V

    .line 54
    :cond_0
    iget-boolean p1, p1, Lio/appmetrica/analytics/idsync/impl/p;->a:Z

    .line 55
    iget-wide v1, v0, Lio/appmetrica/analytics/idsync/impl/o;->a:J

    .line 56
    iget-object v0, v0, Lio/appmetrica/analytics/idsync/impl/o;->b:[Lio/appmetrica/analytics/idsync/impl/n;

    .line 57
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v0, v5

    .line 59
    iget-object v7, p0, Lio/appmetrica/analytics/idsync/impl/f;->a:Lio/appmetrica/analytics/idsync/impl/I;

    invoke-virtual {v7, v6}, Lio/appmetrica/analytics/idsync/impl/I;->a(Lio/appmetrica/analytics/idsync/impl/n;)Lio/appmetrica/analytics/idsync/impl/G;

    move-result-object v6

    .line 60
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 61
    :cond_1
    new-instance p0, Lio/appmetrica/analytics/idsync/impl/c;

    invoke-direct {p0, p1, v1, v2, v3}, Lio/appmetrica/analytics/idsync/impl/c;-><init>(ZJLjava/util/ArrayList;)V

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/idsync/impl/c;)Lio/appmetrica/analytics/idsync/impl/p;
    .locals 7

    new-instance v0, Lio/appmetrica/analytics/idsync/impl/p;

    invoke-direct {v0}, Lio/appmetrica/analytics/idsync/impl/p;-><init>()V

    iget-boolean v1, p1, Lio/appmetrica/analytics/idsync/impl/c;->a:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/idsync/impl/p;->a:Z

    new-instance v1, Lio/appmetrica/analytics/idsync/impl/o;

    invoke-direct {v1}, Lio/appmetrica/analytics/idsync/impl/o;-><init>()V

    iget-wide v2, p1, Lio/appmetrica/analytics/idsync/impl/c;->b:J

    iput-wide v2, v1, Lio/appmetrica/analytics/idsync/impl/o;->a:J

    iget-object v2, p1, Lio/appmetrica/analytics/idsync/impl/c;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Lio/appmetrica/analytics/idsync/impl/n;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    iget-object v5, p0, Lio/appmetrica/analytics/idsync/impl/f;->a:Lio/appmetrica/analytics/idsync/impl/I;

    iget-object v6, p1, Lio/appmetrica/analytics/idsync/impl/c;->c:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/appmetrica/analytics/idsync/impl/G;

    invoke-virtual {v5, v6}, Lio/appmetrica/analytics/idsync/impl/I;->a(Lio/appmetrica/analytics/idsync/impl/G;)Lio/appmetrica/analytics/idsync/impl/n;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput-object v3, v1, Lio/appmetrica/analytics/idsync/impl/o;->b:[Lio/appmetrica/analytics/idsync/impl/n;

    iput-object v1, v0, Lio/appmetrica/analytics/idsync/impl/p;->b:Lio/appmetrica/analytics/idsync/impl/o;

    return-object v0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/idsync/impl/c;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/idsync/impl/f;->a(Lio/appmetrica/analytics/idsync/impl/c;)Lio/appmetrica/analytics/idsync/impl/p;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/idsync/impl/p;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/idsync/impl/f;->a(Lio/appmetrica/analytics/idsync/impl/p;)Lio/appmetrica/analytics/idsync/impl/c;

    move-result-object p0

    return-object p0
.end method
