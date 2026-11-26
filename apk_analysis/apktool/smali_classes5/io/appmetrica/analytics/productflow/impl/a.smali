.class public final Lio/appmetrica/analytics/productflow/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/productflow/ProductFlowStatus;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lio/appmetrica/analytics/productflow/OfferPrice;

.field public final e:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/productflow/ProductFlowStatus;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/productflow/OfferPrice;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/impl/a;->a:Lio/appmetrica/analytics/productflow/ProductFlowStatus;

    iput-object p2, p0, Lio/appmetrica/analytics/productflow/impl/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/appmetrica/analytics/productflow/impl/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lio/appmetrica/analytics/productflow/impl/a;->d:Lio/appmetrica/analytics/productflow/OfferPrice;

    iput-object p5, p0, Lio/appmetrica/analytics/productflow/impl/a;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/productflow/impl/a;->e:Ljava/util/Map;

    return-object p0
.end method

.method public final b()Lio/appmetrica/analytics/productflow/OfferPrice;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/productflow/impl/a;->d:Lio/appmetrica/analytics/productflow/OfferPrice;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/productflow/impl/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/productflow/impl/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Lio/appmetrica/analytics/productflow/ProductFlowStatus;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/productflow/impl/a;->a:Lio/appmetrica/analytics/productflow/ProductFlowStatus;

    return-object p0
.end method
