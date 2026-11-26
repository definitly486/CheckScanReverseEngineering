.class public final Lio/appmetrica/analytics/impl/Vf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/Map;

.field public final e:Lio/appmetrica/analytics/impl/Nf;

.field public final f:Lio/appmetrica/analytics/impl/Nf;

.field public final g:Ljava/util/List;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/ecommerce/ECommerceProduct;)V
    .locals 8

    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->getCategoriesPath()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->arrayListCopyOfNullableCollection(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->getPayload()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->mapCopyOfNullableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->getActualPrice()Lio/appmetrica/analytics/ecommerce/ECommercePrice;

    move-result-object v0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    move-object v0, v5

    goto :goto_0

    :cond_0
    new-instance v0, Lio/appmetrica/analytics/impl/Nf;

    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->getActualPrice()Lio/appmetrica/analytics/ecommerce/ECommercePrice;

    move-result-object v6

    invoke-direct {v0, v6}, Lio/appmetrica/analytics/impl/Nf;-><init>(Lio/appmetrica/analytics/ecommerce/ECommercePrice;)V

    :goto_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->getOriginalPrice()Lio/appmetrica/analytics/ecommerce/ECommercePrice;

    move-result-object v6

    if-nez v6, :cond_1

    :goto_1
    move-object v6, v5

    goto :goto_2

    :cond_1
    new-instance v5, Lio/appmetrica/analytics/impl/Nf;

    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->getOriginalPrice()Lio/appmetrica/analytics/ecommerce/ECommercePrice;

    move-result-object v6

    invoke-direct {v5, v6}, Lio/appmetrica/analytics/impl/Nf;-><init>(Lio/appmetrica/analytics/ecommerce/ECommercePrice;)V

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->getPromocodes()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->arrayListCopyOfNullableCollection(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v7

    move-object v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lio/appmetrica/analytics/impl/Vf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lio/appmetrica/analytics/impl/Nf;Lio/appmetrica/analytics/impl/Nf;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lio/appmetrica/analytics/impl/Nf;Lio/appmetrica/analytics/impl/Nf;Ljava/util/List;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Vf;->a:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Vf;->b:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Vf;->c:Ljava/util/List;

    .line 78
    iput-object p4, p0, Lio/appmetrica/analytics/impl/Vf;->d:Ljava/util/Map;

    .line 79
    iput-object p5, p0, Lio/appmetrica/analytics/impl/Vf;->e:Lio/appmetrica/analytics/impl/Nf;

    .line 80
    iput-object p6, p0, Lio/appmetrica/analytics/impl/Vf;->f:Lio/appmetrica/analytics/impl/Nf;

    .line 81
    iput-object p7, p0, Lio/appmetrica/analytics/impl/Vf;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProductWrapper{sku=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Vf;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Vf;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', categoriesPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Vf;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Vf;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actualPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Vf;->e:Lio/appmetrica/analytics/impl/Nf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", originalPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Vf;->f:Lio/appmetrica/analytics/impl/Nf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", promocodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Vf;->g:Ljava/util/List;

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Lqg;->f(Ljava/lang/StringBuilder;Ljava/util/List;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
