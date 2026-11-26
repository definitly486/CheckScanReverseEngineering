.class public Lio/appmetrica/analytics/productflow/OfferReferrer$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/productflow/OfferReferrer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/appmetrica/analytics/productflow/OfferReferrer;
    .locals 4

    new-instance v0, Lio/appmetrica/analytics/productflow/OfferReferrer;

    iget-object v1, p0, Lio/appmetrica/analytics/productflow/OfferReferrer$Builder;->a:Ljava/lang/String;

    iget-object v2, p0, Lio/appmetrica/analytics/productflow/OfferReferrer$Builder;->b:Ljava/lang/String;

    iget-object p0, p0, Lio/appmetrica/analytics/productflow/OfferReferrer$Builder;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lio/appmetrica/analytics/productflow/OfferReferrer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public withIdentifier(Ljava/lang/String;)Lio/appmetrica/analytics/productflow/OfferReferrer$Builder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/OfferReferrer$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public withScreen(Ljava/lang/String;)Lio/appmetrica/analytics/productflow/OfferReferrer$Builder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/OfferReferrer$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public withType(Ljava/lang/String;)Lio/appmetrica/analytics/productflow/OfferReferrer$Builder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/OfferReferrer$Builder;->a:Ljava/lang/String;

    return-object p0
.end method
