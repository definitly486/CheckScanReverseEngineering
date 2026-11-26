.class public final Lio/appmetrica/analytics/billing/impl/g;
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
.method public final a(Lio/appmetrica/analytics/billing/impl/y;)Lio/appmetrica/analytics/billing/impl/q;
    .locals 1

    new-instance p0, Lio/appmetrica/analytics/billing/impl/q;

    invoke-direct {p0}, Lio/appmetrica/analytics/billing/impl/q;-><init>()V

    iget v0, p1, Lio/appmetrica/analytics/billing/impl/y;->a:I

    iput v0, p0, Lio/appmetrica/analytics/billing/impl/q;->a:I

    iget p1, p1, Lio/appmetrica/analytics/billing/impl/y;->b:I

    iput p1, p0, Lio/appmetrica/analytics/billing/impl/q;->b:I

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/billing/impl/q;)Lio/appmetrica/analytics/billing/impl/y;
    .locals 1

    .line 14
    new-instance p0, Lio/appmetrica/analytics/billing/impl/y;

    .line 15
    iget v0, p1, Lio/appmetrica/analytics/billing/impl/q;->a:I

    .line 16
    iget p1, p1, Lio/appmetrica/analytics/billing/impl/q;->b:I

    .line 17
    invoke-direct {p0, v0, p1}, Lio/appmetrica/analytics/billing/impl/y;-><init>(II)V

    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/billing/impl/y;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/billing/impl/g;->a(Lio/appmetrica/analytics/billing/impl/y;)Lio/appmetrica/analytics/billing/impl/q;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/appmetrica/analytics/billing/impl/q;

    new-instance p0, Lio/appmetrica/analytics/billing/impl/y;

    iget v0, p1, Lio/appmetrica/analytics/billing/impl/q;->a:I

    iget p1, p1, Lio/appmetrica/analytics/billing/impl/q;->b:I

    invoke-direct {p0, v0, p1}, Lio/appmetrica/analytics/billing/impl/y;-><init>(II)V

    return-object p0
.end method
