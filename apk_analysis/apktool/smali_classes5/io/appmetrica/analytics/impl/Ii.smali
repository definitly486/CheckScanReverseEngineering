.class public final Lio/appmetrica/analytics/impl/Ii;
.super Lio/appmetrica/analytics/impl/X2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/y2;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/X2;-><init>(Lio/appmetrica/analytics/impl/y2;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/po;Lio/appmetrica/analytics/impl/ro;Lio/appmetrica/analytics/impl/x2;)Lio/appmetrica/analytics/impl/ro;
    .locals 1

    check-cast p3, Lio/appmetrica/analytics/impl/Md;

    invoke-virtual {p3}, Lio/appmetrica/analytics/impl/Md;->a()Lio/appmetrica/analytics/impl/ro;

    move-result-object p2

    iget-object p3, p2, Lio/appmetrica/analytics/impl/ro;->c:Lio/appmetrica/analytics/impl/so;

    const/4 v0, 0x1

    iput-boolean v0, p3, Lio/appmetrica/analytics/impl/so;->b:Z

    iget-object p0, p0, Lio/appmetrica/analytics/impl/X2;->a:Lio/appmetrica/analytics/impl/y2;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/y2;->a(Lio/appmetrica/analytics/impl/po;Lio/appmetrica/analytics/impl/ro;)Lio/appmetrica/analytics/impl/ro;

    move-result-object p0

    return-object p0
.end method
