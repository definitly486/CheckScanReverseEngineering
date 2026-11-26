.class public final Lio/appmetrica/analytics/impl/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Z;

.field public final b:Lio/appmetrica/analytics/impl/s6;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/impl/Z;

    new-instance v1, Lio/appmetrica/analytics/impl/Ln;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Ln;-><init>()V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Z;-><init>(Lio/appmetrica/analytics/impl/Ln;)V

    new-instance v1, Lio/appmetrica/analytics/impl/s6;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/s6;-><init>()V

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/g0;-><init>(Lio/appmetrica/analytics/impl/Z;Lio/appmetrica/analytics/impl/s6;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Z;Lio/appmetrica/analytics/impl/s6;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lio/appmetrica/analytics/impl/g0;->a:Lio/appmetrica/analytics/impl/Z;

    .line 21
    iput-object p2, p0, Lio/appmetrica/analytics/impl/g0;->b:Lio/appmetrica/analytics/impl/s6;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/f0;)Lio/appmetrica/analytics/impl/d6;
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/impl/d6;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/d6;-><init>()V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/g0;->a:Lio/appmetrica/analytics/impl/Z;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/f0;->a:Lio/appmetrica/analytics/impl/Y;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Z;->a(Lio/appmetrica/analytics/impl/Y;)Lio/appmetrica/analytics/impl/c6;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/d6;->a:Lio/appmetrica/analytics/impl/c6;

    iget-object v1, p1, Lio/appmetrica/analytics/impl/f0;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iput-object v1, v0, Lio/appmetrica/analytics/impl/d6;->b:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/g0;->b:Lio/appmetrica/analytics/impl/s6;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/f0;->c:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/we;->a(Ljava/lang/Boolean;)I

    move-result p0

    iput p0, v0, Lio/appmetrica/analytics/impl/d6;->c:I

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/d6;)Lio/appmetrica/analytics/impl/f0;
    .locals 0

    .line 32
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/f0;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/g0;->a(Lio/appmetrica/analytics/impl/f0;)Lio/appmetrica/analytics/impl/d6;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/d6;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
