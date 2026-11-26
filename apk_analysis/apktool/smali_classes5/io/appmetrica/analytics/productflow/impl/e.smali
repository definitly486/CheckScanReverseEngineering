.class public final Lio/appmetrica/analytics/productflow/impl/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lio/appmetrica/analytics/productflow/OfferPrice;

.field public final d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/productflow/OfferPrice;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/impl/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/appmetrica/analytics/productflow/impl/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/appmetrica/analytics/productflow/impl/e;->c:Lio/appmetrica/analytics/productflow/OfferPrice;

    iput-object p4, p0, Lio/appmetrica/analytics/productflow/impl/e;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/productflow/impl/e;->d:Ljava/util/Map;

    return-object p0
.end method

.method public final b()Lio/appmetrica/analytics/productflow/OfferPrice;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/productflow/impl/e;->c:Lio/appmetrica/analytics/productflow/OfferPrice;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/productflow/impl/e;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/productflow/impl/e;->b:Ljava/lang/String;

    return-object p0
.end method
