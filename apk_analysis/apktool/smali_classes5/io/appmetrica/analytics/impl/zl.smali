.class public final Lio/appmetrica/analytics/impl/zl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/m8;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/nj;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/nj;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/nj;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/zl;-><init>(Lio/appmetrica/analytics/impl/nj;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/nj;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lio/appmetrica/analytics/impl/zl;->a:Lio/appmetrica/analytics/impl/nj;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/appmetrica/analytics/impl/yl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/Li;",
            ">;)",
            "Lio/appmetrica/analytics/impl/yl;"
        }
    .end annotation

    .line 55
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/yl;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/yl;",
            ")",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/Li;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/impl/F8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/F8;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lio/appmetrica/analytics/impl/F8;->a:I

    new-instance v2, Lio/appmetrica/analytics/impl/E8;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/E8;-><init>()V

    iput-object v2, v0, Lio/appmetrica/analytics/impl/F8;->b:Lio/appmetrica/analytics/impl/E8;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/zl;->a:Lio/appmetrica/analytics/impl/nj;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/yl;->a:Lio/appmetrica/analytics/impl/qj;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/nj;->a(Lio/appmetrica/analytics/impl/qj;)Lio/appmetrica/analytics/impl/Li;

    move-result-object p0

    iget-object p1, v0, Lio/appmetrica/analytics/impl/F8;->b:Lio/appmetrica/analytics/impl/E8;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Li;->a:Ljava/lang/Object;

    check-cast v2, Lio/appmetrica/analytics/impl/B8;

    iput-object v2, p1, Lio/appmetrica/analytics/impl/E8;->a:Lio/appmetrica/analytics/impl/B8;

    new-array p1, v1, [Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedInfo;->total([Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    move-result-object p1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Li;->b:Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    invoke-interface {p0}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;->getBytesTruncated()I

    new-instance p0, Lio/appmetrica/analytics/impl/Li;

    invoke-direct {p0, v0, p1}, Lio/appmetrica/analytics/impl/Li;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)V

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/yl;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/zl;->a(Lio/appmetrica/analytics/impl/yl;)Ljava/util/List;

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
