.class public final Lcom/my/tracker/obfuscated/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/tracker/obfuscated/q0$b;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/Boolean;

.field private static final h:Ljava/util/Set;


# instance fields
.field final a:Lcom/android/billingclient/api/BillingClientStateListener;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Ljava/util/List;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/my/tracker/obfuscated/q0$b;

.field private final f:Lcom/android/billingclient/api/BillingClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-class v0, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/my/tracker/obfuscated/q0;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/my/tracker/obfuscated/q0;->h:Ljava/util/Set;

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sput-object v0, Lcom/my/tracker/obfuscated/q0;->h:Ljava/util/Set;

    :goto_1
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/my/tracker/obfuscated/q0$b;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/my/tracker/obfuscated/q0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/my/tracker/obfuscated/q0;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/my/tracker/obfuscated/q0;->e:Lcom/my/tracker/obfuscated/q0$b;

    invoke-static {p4}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    new-instance p4, Leh;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p4}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/my/tracker/obfuscated/q0;->f:Lcom/android/billingclient/api/BillingClient;

    iput-object p2, p0, Lcom/my/tracker/obfuscated/q0;->d:Ljava/lang/String;

    new-instance p1, Lcom/my/tracker/obfuscated/q0$a;

    invoke-direct {p1, p0, p3}, Lcom/my/tracker/obfuscated/q0$a;-><init>(Lcom/my/tracker/obfuscated/q0;Lcom/my/tracker/obfuscated/q0$b;)V

    iput-object p1, p0, Lcom/my/tracker/obfuscated/q0;->a:Lcom/android/billingclient/api/BillingClientStateListener;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/my/tracker/obfuscated/s0;
    .locals 4

    .line 146
    sget-object v0, Lcom/my/tracker/obfuscated/q0;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 147
    const-string p0, "GooglePlayProductHelper: purchase helper is disabled"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;)V

    return-object v1

    .line 148
    :cond_0
    :try_start_0
    instance-of v0, p0, Lcom/android/billingclient/api/Purchase;

    if-eqz v0, :cond_1

    .line 149
    check-cast p0, Lcom/android/billingclient/api/Purchase;

    .line 150
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/my/tracker/obfuscated/z2;->a()J

    move-result-wide v2

    invoke-static {v0, p0, v2, v3}, Lcom/my/tracker/obfuscated/s0;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/my/tracker/obfuscated/s0;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 151
    const-string v0, "GooglePlayProductHelper error: exception occurred while processing uncasted object"

    invoke-static {v0, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v1
.end method

.method private static a(Lcom/android/billingclient/api/ProductDetails;)Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "productId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v1

    const-string v2, "price_currency_code"

    const-string v3, "price_amount_micros"

    const-string v4, "price"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-object v0
.end method

.method private synthetic a(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 0

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/my/tracker/obfuscated/q0;->c(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    return-void
.end method

.method private static synthetic a(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    .line 145
    return-void
.end method

.method public static synthetic a(Lcom/my/tracker/obfuscated/q0;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 0

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/my/tracker/obfuscated/q0;->a(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    return-void
.end method

.method private static synthetic a(Ljava/util/List;Ljava/lang/String;Lcom/my/tracker/obfuscated/q0$b;Landroid/content/Context;)V
    .locals 1

    .line 162
    :try_start_0
    new-instance v0, Lcom/my/tracker/obfuscated/q0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/my/tracker/obfuscated/q0;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/my/tracker/obfuscated/q0$b;Landroid/content/Context;)V

    .line 163
    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/q0;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/q0;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 165
    const-string p1, "GooglePlayProductHelper error: error while creating ProductHelper"

    invoke-static {p1, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    :goto_0
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 p1, 0x1

    invoke-interface {p2, p1, p0}, Lcom/my/tracker/obfuscated/q0$b;->a(ILjava/util/Map;)V

    return-void
.end method

.method public static a(Ljava/util/List;ZLcom/my/tracker/obfuscated/q0$b;Landroid/content/Context;)V
    .locals 3

    .line 152
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const-string p0, "GooglePlayProductHelper: empty purchases list"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    .line 154
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 p1, 0x0

    invoke-interface {p2, p1, p0}, Lcom/my/tracker/obfuscated/q0$b;->a(ILjava/util/Map;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 155
    const-string p1, "subs"

    goto :goto_0

    :cond_1
    const-string p1, "inapp"

    .line 156
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/my/tracker/obfuscated/s0;

    .line 158
    invoke-virtual {v1}, Lcom/my/tracker/obfuscated/s0;->c()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 160
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 161
    :cond_3
    new-instance p0, Lz5a;

    invoke-direct {p0, v0, p1, p2, p3}, Lz5a;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Lcom/my/tracker/obfuscated/q0$b;Landroid/content/Context;)V

    invoke-static {p0}, Lcom/my/tracker/obfuscated/m;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic b(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 1

    .line 113
    new-instance v0, La6a;

    invoke-direct {v0, p0, p1, p2}, La6a;-><init>(Lcom/my/tracker/obfuscated/q0;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    invoke-static {v0}, Lcom/my/tracker/obfuscated/m;->a(Ljava/lang/Runnable;)V

    .line 114
    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/q0;->a()V

    return-void
.end method

.method public static synthetic b(Ljava/util/ArrayList;Ljava/lang/String;Lcom/my/tracker/obfuscated/q0$b;Landroid/content/Context;)V
    .locals 0

    .line 112
    invoke-static {p0, p1, p2, p3}, Lcom/my/tracker/obfuscated/q0;->a(Ljava/util/List;Ljava/lang/String;Lcom/my/tracker/obfuscated/q0$b;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic c(Lcom/my/tracker/obfuscated/q0;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/my/tracker/obfuscated/q0;->b(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/my/tracker/obfuscated/q0;->a(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 168
    :try_start_0
    const-string v0, "GooglePlayProductHelper: end connection with billing client"

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    .line 169
    sget-object v0, Lcom/my/tracker/obfuscated/q0;->h:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 170
    iget-object p0, p0, Lcom/my/tracker/obfuscated/q0;->f:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 171
    const-string v0, "GooglePlayProductHelper error: exception while end connection:"

    invoke-static {v0, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b()V
    .locals 4

    const-string v0, "GooglePlayProductHelper: querying for "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/my/tracker/obfuscated/q0;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/my/tracker/obfuscated/q0;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/my/tracker/obfuscated/q0;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object v0

    iget-object v1, p0, Lcom/my/tracker/obfuscated/q0;->f:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lve1;

    invoke-direct {v2, p0}, Lve1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GooglePlayProductHelper error: exception while querying details for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/my/tracker/obfuscated/q0;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/q0;->a()V

    return-void
.end method

.method public c(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 3

    iget-object v0, p0, Lcom/my/tracker/obfuscated/q0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "GooglePlayProductHelper: productDetails has already been received"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    :goto_0
    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, "{empty message}"

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "GooglePlayProductHelper: getProductDetails completed with errorCode: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", message: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/my/tracker/obfuscated/q0;->e:Lcom/my/tracker/obfuscated/q0$b;

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {p0, v2, p1}, Lcom/my/tracker/obfuscated/q0$b;->a(ILjava/util/Map;)V

    return-void

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/billingclient/api/QueryProductDetailsResult;->getProductDetailsList()Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_4

    :cond_5
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "GooglePlayProductHelper: populating map of productDetails data"

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails;

    :try_start_0
    invoke-static {v0}, Lcom/my/tracker/obfuscated/q0;->a(Lcom/android/billingclient/api/ProductDetails;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    const-string v2, "GooglePlayProductHelper error: exception while parsing productDetails"

    invoke-static {v2, v0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    iget-object p0, p0, Lcom/my/tracker/obfuscated/q0;->e:Lcom/my/tracker/obfuscated/q0$b;

    invoke-interface {p0, v1, p2}, Lcom/my/tracker/obfuscated/q0$b;->a(ILjava/util/Map;)V

    return-void

    :cond_7
    :goto_4
    const-string p1, "GooglePlayProductHelper: null list of productDetails has been received"

    invoke-static {p1}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/my/tracker/obfuscated/q0;->e:Lcom/my/tracker/obfuscated/q0$b;

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {p0, v1, p1}, Lcom/my/tracker/obfuscated/q0$b;->a(ILjava/util/Map;)V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 149
    :try_start_0
    const-string v0, "GooglePlayProductHelper: start connection with billing client"

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/my/tracker/obfuscated/q0;->f:Lcom/android/billingclient/api/BillingClient;

    iget-object v1, p0, Lcom/my/tracker/obfuscated/q0;->a:Lcom/android/billingclient/api/BillingClientStateListener;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    .line 151
    sget-object v0, Lcom/my/tracker/obfuscated/q0;->h:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 152
    const-string v0, "GooglePlayProductHelper error: exception while start connection:"

    invoke-static {v0, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method
