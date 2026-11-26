.class public final Lio/appmetrica/analytics/impl/bh;
.super Lio/appmetrica/analytics/impl/Ug;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/impl/Y8;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;)V
    .locals 1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/i5;->j()Lio/appmetrica/analytics/impl/Y8;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/impl/bh;-><init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/Y8;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/Y8;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Ug;-><init>(Lio/appmetrica/analytics/impl/i5;)V

    .line 9
    iput-object p2, p0, Lio/appmetrica/analytics/impl/bh;->b:Lio/appmetrica/analytics/impl/Y8;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Z
    .locals 6

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/a6;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object p0, p0, Lio/appmetrica/analytics/impl/bh;->b:Lio/appmetrica/analytics/impl/Y8;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/a6;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Y8;->c:Lio/appmetrica/analytics/impl/a9;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Y8;->a()V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Y8;->c:Lio/appmetrica/analytics/impl/a9;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/a9;->b:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p0, Lio/appmetrica/analytics/impl/sa;->d:Lio/appmetrica/analytics/impl/sa;

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Y8;->c:Lio/appmetrica/analytics/impl/a9;

    iget-boolean v3, v2, Lio/appmetrica/analytics/impl/a9;->a:Z

    if-eqz v3, :cond_2

    sget-object v3, Lio/appmetrica/analytics/impl/sa;->c:Lio/appmetrica/analytics/impl/sa;

    goto :goto_0

    :cond_2
    sget-object v3, Lio/appmetrica/analytics/impl/sa;->b:Lio/appmetrica/analytics/impl/sa;

    :goto_0
    iget v4, v2, Lio/appmetrica/analytics/impl/a9;->d:I

    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_3

    iget-object v4, v2, Lio/appmetrica/analytics/impl/a9;->b:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v0, v2, Lio/appmetrica/analytics/impl/a9;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lio/appmetrica/analytics/impl/a9;->d:I

    goto :goto_1

    :cond_3
    iput-boolean v1, v2, Lio/appmetrica/analytics/impl/a9;->a:Z

    :goto_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Y8;->b:Lio/appmetrica/analytics/impl/d9;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Y8;->c:Lio/appmetrica/analytics/impl/a9;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/d9;->c:Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    iget-object v4, v0, Lio/appmetrica/analytics/impl/d9;->b:Lio/appmetrica/analytics/impl/c9;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/d9;->a:Lio/appmetrica/analytics/impl/b9;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/b9;->a(Lio/appmetrica/analytics/impl/a9;)Lio/appmetrica/analytics/impl/G9;

    move-result-object p0

    invoke-virtual {v4, p0}, Lio/appmetrica/analytics/coreutils/internal/data/BaseProtobufStateSerializer;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    const-string v0, "event_hashes"

    invoke-interface {v2, v0, p0}, Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;->insert(Ljava/lang/String;[B)V

    move-object p0, v3

    :goto_2
    iput-object p0, p1, Lio/appmetrica/analytics/impl/a6;->k:Lio/appmetrica/analytics/impl/sa;

    :cond_4
    return v1
.end method
