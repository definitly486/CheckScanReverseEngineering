.class public final Lio/appmetrica/analytics/impl/Q3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Map;Lio/appmetrica/analytics/impl/vm;Lio/appmetrica/analytics/impl/N3;)Z
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/impl/F3;

    sget-object v1, Lio/appmetrica/analytics/impl/f8;->d:Lio/appmetrica/analytics/impl/f8;

    invoke-direct {v0, p0, v1}, Lio/appmetrica/analytics/impl/F3;-><init>(Ljava/util/Map;Lio/appmetrica/analytics/impl/f8;)V

    invoke-virtual {p2, v0}, Lio/appmetrica/analytics/impl/b8;->a(Lio/appmetrica/analytics/impl/g8;)Lio/appmetrica/analytics/impl/g8;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/F3;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/F3;->a:Ljava/util/Map;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Map;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p1, p1, Lio/appmetrica/analytics/impl/vm;->m:Ljava/lang/String;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/Vm;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
