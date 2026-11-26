.class public final Lio/appmetrica/analytics/impl/yl;
.super Lio/appmetrica/analytics/ecommerce/ECommerceEvent;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/qj;

.field public final b:Lio/appmetrica/analytics/impl/m8;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/ecommerce/ECommerceScreen;)V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/qj;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/qj;-><init>(Lio/appmetrica/analytics/ecommerce/ECommerceScreen;)V

    new-instance p1, Lio/appmetrica/analytics/impl/zl;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/zl;-><init>()V

    invoke-direct {p0, v0, p1}, Lio/appmetrica/analytics/impl/yl;-><init>(Lio/appmetrica/analytics/impl/qj;Lio/appmetrica/analytics/impl/m8;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/qj;Lio/appmetrica/analytics/impl/m8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/qj;",
            "Lio/appmetrica/analytics/impl/m8;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lio/appmetrica/analytics/ecommerce/ECommerceEvent;-><init>()V

    .line 15
    iput-object p1, p0, Lio/appmetrica/analytics/impl/yl;->a:Lio/appmetrica/analytics/impl/qj;

    .line 16
    iput-object p2, p0, Lio/appmetrica/analytics/impl/yl;->b:Lio/appmetrica/analytics/impl/m8;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/m8;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/impl/m8;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/yl;->b:Lio/appmetrica/analytics/impl/m8;

    return-object p0
.end method

.method public final getPublicDescription()Ljava/lang/String;
    .locals 0

    const-string p0, "shown screen info"

    return-object p0
.end method

.method public final toProto()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/Li;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/appmetrica/analytics/impl/yl;->b:Lio/appmetrica/analytics/impl/m8;

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/coreapi/internal/data/Converter;->fromModel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShownScreenInfoEvent{screen="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/yl;->a:Lio/appmetrica/analytics/impl/qj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", converter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/yl;->b:Lio/appmetrica/analytics/impl/m8;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
