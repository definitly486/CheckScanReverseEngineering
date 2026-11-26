.class public final Lio/appmetrica/analytics/impl/wl;
.super Lio/appmetrica/analytics/ecommerce/ECommerceEvent;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Vf;

.field public final b:Lio/appmetrica/analytics/impl/Ag;

.field public final c:Lio/appmetrica/analytics/impl/m8;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/ecommerce/ECommerceProduct;Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;)V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/Vf;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Vf;-><init>(Lio/appmetrica/analytics/ecommerce/ECommerceProduct;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lio/appmetrica/analytics/impl/Ag;

    invoke-direct {p1, p2}, Lio/appmetrica/analytics/impl/Ag;-><init>(Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;)V

    :goto_0
    new-instance p2, Lio/appmetrica/analytics/impl/xl;

    invoke-direct {p2}, Lio/appmetrica/analytics/impl/xl;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lio/appmetrica/analytics/impl/wl;-><init>(Lio/appmetrica/analytics/impl/Vf;Lio/appmetrica/analytics/impl/Ag;Lio/appmetrica/analytics/impl/m8;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Vf;Lio/appmetrica/analytics/impl/Ag;Lio/appmetrica/analytics/impl/m8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Vf;",
            "Lio/appmetrica/analytics/impl/Ag;",
            "Lio/appmetrica/analytics/impl/m8;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lio/appmetrica/analytics/ecommerce/ECommerceEvent;-><init>()V

    .line 24
    iput-object p1, p0, Lio/appmetrica/analytics/impl/wl;->a:Lio/appmetrica/analytics/impl/Vf;

    .line 25
    iput-object p2, p0, Lio/appmetrica/analytics/impl/wl;->b:Lio/appmetrica/analytics/impl/Ag;

    .line 26
    iput-object p3, p0, Lio/appmetrica/analytics/impl/wl;->c:Lio/appmetrica/analytics/impl/m8;

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

    iget-object p0, p0, Lio/appmetrica/analytics/impl/wl;->c:Lio/appmetrica/analytics/impl/m8;

    return-object p0
.end method

.method public final getPublicDescription()Ljava/lang/String;
    .locals 0

    const-string p0, "shown product details info"

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

    iget-object v0, p0, Lio/appmetrica/analytics/impl/wl;->c:Lio/appmetrica/analytics/impl/m8;

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/coreapi/internal/data/Converter;->fromModel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShownProductDetailInfoEvent{product="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/wl;->a:Lio/appmetrica/analytics/impl/Vf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/wl;->b:Lio/appmetrica/analytics/impl/Ag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", converter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/wl;->c:Lio/appmetrica/analytics/impl/m8;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
