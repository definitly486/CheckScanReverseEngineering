.class public final Lio/appmetrica/analytics/impl/xl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/m8;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Uf;

.field public final b:Lio/appmetrica/analytics/impl/lg;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/impl/Uf;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Uf;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/lg;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/lg;-><init>()V

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/xl;-><init>(Lio/appmetrica/analytics/impl/Uf;Lio/appmetrica/analytics/impl/lg;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Uf;Lio/appmetrica/analytics/impl/lg;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/appmetrica/analytics/impl/xl;->a:Lio/appmetrica/analytics/impl/Uf;

    .line 16
    iput-object p2, p0, Lio/appmetrica/analytics/impl/xl;->b:Lio/appmetrica/analytics/impl/lg;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/appmetrica/analytics/impl/wl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/Li;",
            ">;)",
            "Lio/appmetrica/analytics/impl/wl;"
        }
    .end annotation

    .line 77
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/wl;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/wl;",
            ")",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/Li;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/impl/F8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/F8;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Lio/appmetrica/analytics/impl/F8;->a:I

    new-instance v1, Lio/appmetrica/analytics/impl/D8;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/D8;-><init>()V

    iput-object v1, v0, Lio/appmetrica/analytics/impl/F8;->d:Lio/appmetrica/analytics/impl/D8;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/xl;->a:Lio/appmetrica/analytics/impl/Uf;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/wl;->a:Lio/appmetrica/analytics/impl/Vf;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Uf;->a(Lio/appmetrica/analytics/impl/Vf;)Lio/appmetrica/analytics/impl/Li;

    move-result-object v1

    iget-object v2, v0, Lio/appmetrica/analytics/impl/F8;->d:Lio/appmetrica/analytics/impl/D8;

    iget-object v3, v1, Lio/appmetrica/analytics/impl/Li;->a:Ljava/lang/Object;

    check-cast v3, Lio/appmetrica/analytics/impl/y8;

    iput-object v3, v2, Lio/appmetrica/analytics/impl/D8;->a:Lio/appmetrica/analytics/impl/y8;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/wl;->b:Lio/appmetrica/analytics/impl/Ag;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/xl;->b:Lio/appmetrica/analytics/impl/lg;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/lg;->a(Lio/appmetrica/analytics/impl/Ag;)Lio/appmetrica/analytics/impl/Li;

    move-result-object p0

    iget-object p1, v0, Lio/appmetrica/analytics/impl/F8;->d:Lio/appmetrica/analytics/impl/D8;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Li;->a:Ljava/lang/Object;

    check-cast v2, Lio/appmetrica/analytics/impl/A8;

    iput-object v2, p1, Lio/appmetrica/analytics/impl/D8;->b:Lio/appmetrica/analytics/impl/A8;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 p1, 0x2

    new-array p1, p1, [Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const/4 v1, 0x1

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

    check-cast p1, Lio/appmetrica/analytics/impl/wl;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/xl;->a(Lio/appmetrica/analytics/impl/wl;)Ljava/util/List;

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
