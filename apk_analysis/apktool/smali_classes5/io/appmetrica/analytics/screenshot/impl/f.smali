.class public final Lio/appmetrica/analytics/screenshot/impl/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/screenshot/impl/w;)Lio/appmetrica/analytics/screenshot/impl/N;
    .locals 0

    .line 10
    new-instance p0, Lio/appmetrica/analytics/screenshot/impl/N;

    .line 11
    iget-boolean p1, p1, Lio/appmetrica/analytics/screenshot/impl/w;->a:Z

    .line 12
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/screenshot/impl/N;-><init>(Z)V

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/screenshot/impl/N;)Lio/appmetrica/analytics/screenshot/impl/w;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/screenshot/impl/w;

    invoke-direct {p0}, Lio/appmetrica/analytics/screenshot/impl/w;-><init>()V

    iget-boolean p1, p1, Lio/appmetrica/analytics/screenshot/impl/N;->a:Z

    iput-boolean p1, p0, Lio/appmetrica/analytics/screenshot/impl/w;->a:Z

    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/screenshot/impl/N;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/screenshot/impl/f;->a(Lio/appmetrica/analytics/screenshot/impl/N;)Lio/appmetrica/analytics/screenshot/impl/w;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/screenshot/impl/w;

    new-instance p0, Lio/appmetrica/analytics/screenshot/impl/N;

    iget-boolean p1, p1, Lio/appmetrica/analytics/screenshot/impl/w;->a:Z

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/screenshot/impl/N;-><init>(Z)V

    return-object p0
.end method
