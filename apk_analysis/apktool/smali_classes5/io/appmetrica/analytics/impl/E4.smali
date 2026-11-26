.class public final Lio/appmetrica/analytics/impl/E4;
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

    if-eqz p2, :cond_1

    iget-object v0, p2, Lio/appmetrica/analytics/impl/ro;->c:Lio/appmetrica/analytics/impl/so;

    iget-boolean v0, v0, Lio/appmetrica/analytics/impl/so;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lio/appmetrica/analytics/impl/so;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/so;-><init>()V

    iput-object p0, p2, Lio/appmetrica/analytics/impl/ro;->c:Lio/appmetrica/analytics/impl/so;

    return-object p2

    :cond_1
    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/X2;->a:Lio/appmetrica/analytics/impl/y2;

    check-cast p3, Lio/appmetrica/analytics/impl/Md;

    invoke-virtual {p3}, Lio/appmetrica/analytics/impl/Md;->a()Lio/appmetrica/analytics/impl/ro;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/y2;->a(Lio/appmetrica/analytics/impl/po;Lio/appmetrica/analytics/impl/ro;)Lio/appmetrica/analytics/impl/ro;

    move-result-object p0

    return-object p0
.end method
