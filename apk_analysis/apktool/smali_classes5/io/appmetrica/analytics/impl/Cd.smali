.class public final Lio/appmetrica/analytics/impl/Cd;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/tb;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/tb;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Cd;->a:Lio/appmetrica/analytics/impl/tb;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/kd;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Cd;->a:Lio/appmetrica/analytics/impl/tb;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/kd;->b:Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;

    invoke-interface {p1, p0}, Lio/appmetrica/analytics/coreapi/internal/data/Parser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
