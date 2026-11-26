.class public final Lio/appmetrica/analytics/productflow/impl/d;
.super Lio/appmetrica/analytics/coreapi/internal/event/AppMetricaEventData;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/productflow/impl/a;)V
    .locals 5

    invoke-direct {p0}, Lio/appmetrica/analytics/coreapi/internal/event/AppMetricaEventData;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;-><init>(I)V

    new-instance v2, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalValueSizeOrderBasedWithBytesLimitStringMapTrimmer;

    const/16 v3, 0x5000

    invoke-direct {v2, v3, v1, v1}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalValueSizeOrderBasedWithBytesLimitStringMapTrimmer;-><init>(III)V

    new-instance v1, Lio/appmetrica/analytics/productflow/impl/c;

    new-instance v3, Lio/appmetrica/analytics/productflow/impl/k;

    invoke-direct {v3, v0}, Lio/appmetrica/analytics/productflow/impl/k;-><init>(Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;)V

    new-instance v4, Lio/appmetrica/analytics/productflow/impl/p;

    invoke-direct {v4, v2}, Lio/appmetrica/analytics/productflow/impl/p;-><init>(Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalValueSizeOrderBasedWithBytesLimitStringMapTrimmer;)V

    invoke-direct {v1, v3, v4, v0}, Lio/appmetrica/analytics/productflow/impl/c;-><init>(Lio/appmetrica/analytics/productflow/impl/k;Lio/appmetrica/analytics/productflow/impl/p;Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalStringTrimmer;)V

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/productflow/impl/c;->a(Lio/appmetrica/analytics/productflow/impl/a;)Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/productflow/impl/d;->a:Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FlowResultEvent(status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/productflow/impl/a;->e()Lio/appmetrica/analytics/productflow/ProductFlowStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/appmetrica/analytics/productflow/impl/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", productOfferId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/appmetrica/analytics/productflow/impl/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/appmetrica/analytics/productflow/impl/a;->b()Lio/appmetrica/analytics/productflow/OfferPrice;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/appmetrica/analytics/productflow/impl/a;->a()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/impl/d;->b:Ljava/lang/String;

    const/16 p1, 0x2c

    iput p1, p0, Lio/appmetrica/analytics/productflow/impl/d;->c:I

    return-void
.end method


# virtual methods
.method public final getBytesTruncated()I
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/productflow/impl/d;->a:Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->getBytesTruncated()I

    move-result p0

    return p0
.end method

.method public final getData()[B
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/productflow/impl/d;->a:Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/TrimmingResult;->value:Ljava/lang/Object;

    check-cast p0, Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/productflow/impl/d;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/productflow/impl/d;->c:I

    return p0
.end method
