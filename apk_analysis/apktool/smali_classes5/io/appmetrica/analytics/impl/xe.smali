.class public final Lio/appmetrica/analytics/impl/xe;
.super Lio/appmetrica/analytics/ecommerce/ECommerceEvent;
.source "SourceFile"


# static fields
.field public static final d:I = 0x6

.field public static final e:I = 0x7


# instance fields
.field public final a:I

.field public final b:Lio/appmetrica/analytics/impl/ze;

.field public final c:Lio/appmetrica/analytics/impl/m8;


# direct methods
.method public constructor <init>(ILio/appmetrica/analytics/ecommerce/ECommerceOrder;)V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/ze;

    invoke-direct {v0, p2}, Lio/appmetrica/analytics/impl/ze;-><init>(Lio/appmetrica/analytics/ecommerce/ECommerceOrder;)V

    new-instance p2, Lio/appmetrica/analytics/impl/ye;

    invoke-direct {p2}, Lio/appmetrica/analytics/impl/ye;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lio/appmetrica/analytics/impl/xe;-><init>(ILio/appmetrica/analytics/impl/ze;Lio/appmetrica/analytics/impl/m8;)V

    return-void
.end method

.method public constructor <init>(ILio/appmetrica/analytics/impl/ze;Lio/appmetrica/analytics/impl/m8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/appmetrica/analytics/impl/ze;",
            "Lio/appmetrica/analytics/impl/m8;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lio/appmetrica/analytics/ecommerce/ECommerceEvent;-><init>()V

    .line 15
    iput p1, p0, Lio/appmetrica/analytics/impl/xe;->a:I

    .line 16
    iput-object p2, p0, Lio/appmetrica/analytics/impl/xe;->b:Lio/appmetrica/analytics/impl/ze;

    .line 17
    iput-object p3, p0, Lio/appmetrica/analytics/impl/xe;->c:Lio/appmetrica/analytics/impl/m8;

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

    iget-object p0, p0, Lio/appmetrica/analytics/impl/xe;->c:Lio/appmetrica/analytics/impl/m8;

    return-object p0
.end method

.method public final getPublicDescription()Ljava/lang/String;
    .locals 0

    const-string p0, "order info"

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

    iget-object v0, p0, Lio/appmetrica/analytics/impl/xe;->c:Lio/appmetrica/analytics/impl/m8;

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/coreapi/internal/data/Converter;->fromModel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OrderInfoEvent{eventType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/appmetrica/analytics/impl/xe;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/xe;->b:Lio/appmetrica/analytics/impl/ze;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", converter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/xe;->c:Lio/appmetrica/analytics/impl/m8;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
