.class public final Lio/appmetrica/analytics/billingv8/impl/h;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lio/appmetrica/analytics/billingv8/impl/i;


# direct methods
.method public constructor <init>(Ljava/util/LinkedHashMap;Ljava/util/Map;Lio/appmetrica/analytics/billingv8/impl/i;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/billingv8/impl/h;->a:Ljava/util/Map;

    iput-object p2, p0, Lio/appmetrica/analytics/billingv8/impl/h;->b:Ljava/util/Map;

    iput-object p3, p0, Lio/appmetrica/analytics/billingv8/impl/h;->c:Lio/appmetrica/analytics/billingv8/impl/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/billingv8/impl/h;->a:Ljava/util/Map;

    iget-object v1, p0, Lio/appmetrica/analytics/billingv8/impl/h;->b:Ljava/util/Map;

    iget-object p0, p0, Lio/appmetrica/analytics/billingv8/impl/h;->c:Lio/appmetrica/analytics/billingv8/impl/i;

    iget-object v2, p0, Lio/appmetrica/analytics/billingv8/impl/i;->d:Ljava/lang/String;

    iget-object p0, p0, Lio/appmetrica/analytics/billingv8/impl/i;->c:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

    invoke-interface {p0}, Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;->getBillingInfoManager()Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoManager;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lio/appmetrica/analytics/billingv8/impl/m;->a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoManager;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
