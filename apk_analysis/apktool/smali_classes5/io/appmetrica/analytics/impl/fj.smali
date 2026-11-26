.class public final Lio/appmetrica/analytics/impl/fj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/F9;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Z8;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p1, Lio/appmetrica/analytics/impl/Z8;->h:Lio/appmetrica/analytics/impl/pb;

    if-nez p0, :cond_0

    sget-object p0, Lio/appmetrica/analytics/impl/dg;->a:Ljava/util/Map;

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p1, Lio/appmetrica/analytics/impl/dg;->c:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method
