.class public final Lio/appmetrica/analytics/impl/w3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/m8;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/x3;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/x3;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/x3;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/w3;-><init>(Lio/appmetrica/analytics/impl/x3;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/x3;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lio/appmetrica/analytics/impl/w3;->a:Lio/appmetrica/analytics/impl/x3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/appmetrica/analytics/impl/v3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/Li;",
            ">;)",
            "Lio/appmetrica/analytics/impl/v3;"
        }
    .end annotation

    .line 55
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/v3;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/v3;",
            ")",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/Li;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/impl/F8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/F8;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/o8;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/o8;-><init>()V

    iput-object v1, v0, Lio/appmetrica/analytics/impl/F8;->e:Lio/appmetrica/analytics/impl/o8;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/w3;->a:Lio/appmetrica/analytics/impl/x3;

    iget-object v1, p1, Lio/appmetrica/analytics/impl/v3;->b:Lio/appmetrica/analytics/impl/y3;

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/x3;->a(Lio/appmetrica/analytics/impl/y3;)Lio/appmetrica/analytics/impl/Li;

    move-result-object p0

    iget-object v1, v0, Lio/appmetrica/analytics/impl/F8;->e:Lio/appmetrica/analytics/impl/o8;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Li;->a:Ljava/lang/Object;

    check-cast v2, Lio/appmetrica/analytics/impl/p8;

    iput-object v2, v1, Lio/appmetrica/analytics/impl/o8;->a:Lio/appmetrica/analytics/impl/p8;

    iget p1, p1, Lio/appmetrica/analytics/impl/v3;->a:I

    iput p1, v0, Lio/appmetrica/analytics/impl/F8;->a:I

    const/4 p1, 0x1

    new-array p1, p1, [Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedInfo;->total([Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;->getBytesTruncated()I

    new-instance p1, Lio/appmetrica/analytics/impl/Li;

    invoke-direct {p1, v0, p0}, Lio/appmetrica/analytics/impl/Li;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/v3;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/w3;->a(Lio/appmetrica/analytics/impl/v3;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
