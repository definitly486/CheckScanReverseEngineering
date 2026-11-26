.class public final Lio/appmetrica/analytics/impl/O3;
.super Lio/appmetrica/analytics/impl/d8;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/d8;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/F3;Lio/appmetrica/analytics/impl/F3;)Z
    .locals 3

    iget-object v0, p2, Lio/appmetrica/analytics/impl/F3;->a:Ljava/util/Map;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lio/appmetrica/analytics/impl/F3;->a:Ljava/util/Map;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object p1, p1, Lio/appmetrica/analytics/impl/F3;->b:Lio/appmetrica/analytics/impl/f8;

    sget-object v0, Lio/appmetrica/analytics/impl/f8;->d:Lio/appmetrica/analytics/impl/f8;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/d8;->a:Lio/appmetrica/analytics/impl/Qc;

    if-ne p1, v0, :cond_2

    invoke-virtual {v2, p1}, Lio/appmetrica/analytics/impl/Qc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/d8;->a:Lio/appmetrica/analytics/impl/Qc;

    iget-object p2, p2, Lio/appmetrica/analytics/impl/F3;->b:Lio/appmetrica/analytics/impl/f8;

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/impl/Qc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-lt p1, p0, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p1}, Lio/appmetrica/analytics/impl/Qc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/d8;->a:Lio/appmetrica/analytics/impl/Qc;

    iget-object p2, p2, Lio/appmetrica/analytics/impl/F3;->b:Lio/appmetrica/analytics/impl/f8;

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/impl/Qc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-le p1, p0, :cond_3

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 83
    check-cast p1, Lio/appmetrica/analytics/impl/F3;

    check-cast p2, Lio/appmetrica/analytics/impl/F3;

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/O3;->a(Lio/appmetrica/analytics/impl/F3;Lio/appmetrica/analytics/impl/F3;)Z

    move-result p0

    return p0
.end method
