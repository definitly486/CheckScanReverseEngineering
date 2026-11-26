.class public final Lio/appmetrica/analytics/impl/y3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Vf;

.field public final b:Ljava/math/BigDecimal;

.field public final c:Lio/appmetrica/analytics/impl/Nf;

.field public final d:Lio/appmetrica/analytics/impl/Ag;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/ecommerce/ECommerceCartItem;)V
    .locals 4

    new-instance v0, Lio/appmetrica/analytics/impl/Vf;

    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceCartItem;->getProduct()Lio/appmetrica/analytics/ecommerce/ECommerceProduct;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Vf;-><init>(Lio/appmetrica/analytics/ecommerce/ECommerceProduct;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceCartItem;->getQuantity()Ljava/math/BigDecimal;

    move-result-object v1

    new-instance v2, Lio/appmetrica/analytics/impl/Nf;

    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceCartItem;->getRevenue()Lio/appmetrica/analytics/ecommerce/ECommercePrice;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/Nf;-><init>(Lio/appmetrica/analytics/ecommerce/ECommercePrice;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceCartItem;->getReferrer()Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v3, Lio/appmetrica/analytics/impl/Ag;

    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceCartItem;->getReferrer()Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;

    move-result-object p1

    invoke-direct {v3, p1}, Lio/appmetrica/analytics/impl/Ag;-><init>(Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;)V

    move-object p1, v3

    :goto_0
    invoke-direct {p0, v0, v1, v2, p1}, Lio/appmetrica/analytics/impl/y3;-><init>(Lio/appmetrica/analytics/impl/Vf;Ljava/math/BigDecimal;Lio/appmetrica/analytics/impl/Nf;Lio/appmetrica/analytics/impl/Ag;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Vf;Ljava/math/BigDecimal;Lio/appmetrica/analytics/impl/Nf;Lio/appmetrica/analytics/impl/Ag;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lio/appmetrica/analytics/impl/y3;->a:Lio/appmetrica/analytics/impl/Vf;

    .line 46
    iput-object p2, p0, Lio/appmetrica/analytics/impl/y3;->b:Ljava/math/BigDecimal;

    .line 47
    iput-object p3, p0, Lio/appmetrica/analytics/impl/y3;->c:Lio/appmetrica/analytics/impl/Nf;

    .line 48
    iput-object p4, p0, Lio/appmetrica/analytics/impl/y3;->d:Lio/appmetrica/analytics/impl/Ag;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CartItemWrapper{product="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/y3;->a:Lio/appmetrica/analytics/impl/Vf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", quantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/y3;->b:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", revenue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/y3;->c:Lio/appmetrica/analytics/impl/Nf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/y3;->d:Lio/appmetrica/analytics/impl/Ag;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
