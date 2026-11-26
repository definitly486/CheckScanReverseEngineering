.class public final Lio/appmetrica/analytics/impl/xf;
.super Lio/appmetrica/analytics/impl/d8;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/d8;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Df;Lio/appmetrica/analytics/impl/Df;)Z
    .locals 3

    iget-boolean v0, p1, Lio/appmetrica/analytics/impl/Df;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p2, Lio/appmetrica/analytics/impl/Df;->c:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/d8;->a:Lio/appmetrica/analytics/impl/Qc;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Df;->e:Lio/appmetrica/analytics/impl/f8;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Qc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/d8;->a:Lio/appmetrica/analytics/impl/Qc;

    iget-object p2, p2, Lio/appmetrica/analytics/impl/Df;->e:Lio/appmetrica/analytics/impl/f8;

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/impl/Qc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-le p1, p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 44
    check-cast p1, Lio/appmetrica/analytics/impl/Df;

    check-cast p2, Lio/appmetrica/analytics/impl/Df;

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/xf;->a(Lio/appmetrica/analytics/impl/Df;Lio/appmetrica/analytics/impl/Df;)Z

    move-result p0

    return p0
.end method
