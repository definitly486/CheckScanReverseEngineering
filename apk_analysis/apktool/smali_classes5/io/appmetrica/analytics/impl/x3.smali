.class public final Lio/appmetrica/analytics/impl/x3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Uf;

.field public final b:Lio/appmetrica/analytics/impl/J7;

.field public final c:Lio/appmetrica/analytics/impl/Lf;

.field public final d:Lio/appmetrica/analytics/impl/lg;


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lio/appmetrica/analytics/impl/Uf;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Uf;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/J7;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/J7;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/impl/Lf;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Lf;-><init>()V

    new-instance v3, Lio/appmetrica/analytics/impl/lg;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/lg;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/x3;-><init>(Lio/appmetrica/analytics/impl/Uf;Lio/appmetrica/analytics/impl/J7;Lio/appmetrica/analytics/impl/Lf;Lio/appmetrica/analytics/impl/lg;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Uf;Lio/appmetrica/analytics/impl/J7;Lio/appmetrica/analytics/impl/Lf;Lio/appmetrica/analytics/impl/lg;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lio/appmetrica/analytics/impl/x3;->a:Lio/appmetrica/analytics/impl/Uf;

    .line 26
    iput-object p2, p0, Lio/appmetrica/analytics/impl/x3;->b:Lio/appmetrica/analytics/impl/J7;

    .line 27
    iput-object p3, p0, Lio/appmetrica/analytics/impl/x3;->c:Lio/appmetrica/analytics/impl/Lf;

    .line 28
    iput-object p4, p0, Lio/appmetrica/analytics/impl/x3;->d:Lio/appmetrica/analytics/impl/lg;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/y3;)Lio/appmetrica/analytics/impl/Li;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/y3;",
            ")",
            "Lio/appmetrica/analytics/impl/Li;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/impl/p8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/p8;-><init>()V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/x3;->a:Lio/appmetrica/analytics/impl/Uf;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/y3;->a:Lio/appmetrica/analytics/impl/Vf;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Uf;->a(Lio/appmetrica/analytics/impl/Vf;)Lio/appmetrica/analytics/impl/Li;

    move-result-object v1

    iget-object v2, v1, Lio/appmetrica/analytics/impl/Li;->a:Ljava/lang/Object;

    check-cast v2, Lio/appmetrica/analytics/impl/y8;

    iput-object v2, v0, Lio/appmetrica/analytics/impl/p8;->a:Lio/appmetrica/analytics/impl/y8;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/x3;->b:Lio/appmetrica/analytics/impl/J7;

    iget-object v3, p1, Lio/appmetrica/analytics/impl/y3;->b:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/J7;->a(Ljava/math/BigDecimal;)Lio/appmetrica/analytics/impl/r8;

    move-result-object v2

    iput-object v2, v0, Lio/appmetrica/analytics/impl/p8;->c:Lio/appmetrica/analytics/impl/r8;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/x3;->c:Lio/appmetrica/analytics/impl/Lf;

    iget-object v3, p1, Lio/appmetrica/analytics/impl/y3;->c:Lio/appmetrica/analytics/impl/Nf;

    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/Lf;->a(Lio/appmetrica/analytics/impl/Nf;)Lio/appmetrica/analytics/impl/Li;

    move-result-object v2

    iget-object v3, v2, Lio/appmetrica/analytics/impl/Li;->a:Ljava/lang/Object;

    check-cast v3, Lio/appmetrica/analytics/impl/x8;

    iput-object v3, v0, Lio/appmetrica/analytics/impl/p8;->d:Lio/appmetrica/analytics/impl/x8;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/y3;->d:Lio/appmetrica/analytics/impl/Ag;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/x3;->d:Lio/appmetrica/analytics/impl/lg;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/lg;->a(Lio/appmetrica/analytics/impl/Ag;)Lio/appmetrica/analytics/impl/Li;

    move-result-object p0

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Li;->a:Ljava/lang/Object;

    check-cast p1, Lio/appmetrica/analytics/impl/A8;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/p8;->b:Lio/appmetrica/analytics/impl/A8;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 p1, 0x3

    new-array p1, p1, [Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    const/4 v3, 0x0

    aput-object v1, p1, v3

    const/4 v1, 0x1

    aput-object v2, p1, v1

    const/4 v1, 0x2

    aput-object p0, p1, v1

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedInfo;->total([Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;->getBytesTruncated()I

    new-instance p1, Lio/appmetrica/analytics/impl/Li;

    invoke-direct {p1, v0, p0}, Lio/appmetrica/analytics/impl/Li;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;)V

    return-object p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/Li;)Lio/appmetrica/analytics/impl/y3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Li;",
            ")",
            "Lio/appmetrica/analytics/impl/y3;"
        }
    .end annotation

    .line 86
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/y3;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/x3;->a(Lio/appmetrica/analytics/impl/y3;)Lio/appmetrica/analytics/impl/Li;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/Li;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
