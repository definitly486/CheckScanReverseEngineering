.class public final Lio/appmetrica/analytics/billingv6/impl/a;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/billingv6/impl/b;

.field public final synthetic b:Lcom/android/billingclient/api/BillingResult;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/billingv6/impl/b;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/billingv6/impl/a;->a:Lio/appmetrica/analytics/billingv6/impl/b;

    iput-object p2, p0, Lio/appmetrica/analytics/billingv6/impl/a;->b:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 9

    iget-object v0, p0, Lio/appmetrica/analytics/billingv6/impl/a;->a:Lio/appmetrica/analytics/billingv6/impl/b;

    iget-object p0, p0, Lio/appmetrica/analytics/billingv6/impl/a;->b:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Lio/appmetrica/analytics/billingv6/impl/b;->e:Lio/appmetrica/analytics/billingv6/impl/n;

    invoke-interface {p0}, Lio/appmetrica/analytics/billingv6/impl/n;->onUpdateFinished()V

    return-void

    :cond_0
    const-string p0, "inapp"

    const-string v1, "subs"

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    new-instance v2, Lio/appmetrica/analytics/billingv6/impl/i;

    iget-object v3, v0, Lio/appmetrica/analytics/billingv6/impl/b;->a:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    iget-object v4, v0, Lio/appmetrica/analytics/billingv6/impl/b;->b:Lcom/android/billingclient/api/BillingClient;

    iget-object v5, v0, Lio/appmetrica/analytics/billingv6/impl/b;->c:Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;

    iget-object v7, v0, Lio/appmetrica/analytics/billingv6/impl/b;->d:Lio/appmetrica/analytics/billingv6/impl/d;

    iget-object v8, v0, Lio/appmetrica/analytics/billingv6/impl/b;->e:Lio/appmetrica/analytics/billingv6/impl/n;

    invoke-direct/range {v2 .. v8}, Lio/appmetrica/analytics/billingv6/impl/i;-><init>(Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;Lcom/android/billingclient/api/BillingClient;Lio/appmetrica/analytics/billinginterface/internal/library/UtilsProvider;Ljava/lang/String;Lio/appmetrica/analytics/billingv6/impl/d;Lio/appmetrica/analytics/billingv6/impl/n;)V

    iget-object v1, v7, Lio/appmetrica/analytics/billingv6/impl/d;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/appmetrica/analytics/billingv6/impl/b;->b:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lio/appmetrica/analytics/billingv6/impl/b;->b:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchaseHistoryParams;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchaseHistoryAsync(Lcom/android/billingclient/api/QueryPurchaseHistoryParams;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lio/appmetrica/analytics/billingv6/impl/b;->d:Lio/appmetrica/analytics/billingv6/impl/d;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/billingv6/impl/d;->a(Ljava/lang/Object;)V

    iget-object v1, v0, Lio/appmetrica/analytics/billingv6/impl/b;->e:Lio/appmetrica/analytics/billingv6/impl/n;

    invoke-interface {v1}, Lio/appmetrica/analytics/billingv6/impl/n;->onUpdateFinished()V

    goto :goto_0

    :cond_2
    return-void
.end method
