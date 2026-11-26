.class public final Lcom/my/tracker/obfuscated/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/tracker/obfuscated/d$a;,
        Lcom/my/tracker/obfuscated/d$b;,
        Lcom/my/tracker/obfuscated/d$c;
    }
.end annotation


# instance fields
.field final a:Lcom/huawei/hms/iap/IapClient;

.field final b:Landroid/content/Context;

.field final c:Lcom/my/tracker/obfuscated/d$b;

.field d:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/iap/IapClient;Lcom/my/tracker/obfuscated/d$b;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/tracker/obfuscated/d;->a:Lcom/huawei/hms/iap/IapClient;

    iput-object p2, p0, Lcom/my/tracker/obfuscated/d;->c:Lcom/my/tracker/obfuscated/d$b;

    iput-object p3, p0, Lcom/my/tracker/obfuscated/d;->b:Landroid/content/Context;

    const-string p0, "AppGalleryHelper AppGalleryHelper created"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/my/tracker/obfuscated/d$a;
    .locals 2

    .line 199
    :try_start_0
    new-instance v0, Lcom/my/tracker/obfuscated/d$a;

    invoke-static {p0}, Lcom/huawei/hms/iap/Iap;->getIapClient(Landroid/content/Context;)Lcom/huawei/hms/iap/IapClient;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/my/tracker/obfuscated/d$a;-><init>(Lcom/huawei/hms/iap/IapClient;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 200
    const-string v0, "AppGalleryHelper: creating AppGalleryHelperBuilder failed"

    invoke-static {v0, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 8

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    invoke-static {}, Lcom/my/tracker/obfuscated/z2;->a()J

    move-result-wide v5

    const/4 v1, 0x0

    move v7, v1

    .line 204
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_1

    .line 205
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 206
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v3, p2

    move v4, p3

    .line 207
    invoke-static/range {v1 .. v6}, Lcom/my/tracker/obfuscated/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/my/tracker/obfuscated/f;

    move-result-object p2

    if-nez p2, :cond_0

    .line 208
    const-string p2, "AppGalleryHelper: failed to create AppGalleryRawPurchase"

    invoke-static {p2}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 209
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v7, v7, 0x1

    move-object p2, v3

    move p3, v4

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 6

    const-string v0, "AppGalleryHelper: "

    const-string v1, "AppGalleryHelper: start parseProductInfoToJson"

    invoke-static {v1}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    check-cast p0, Lcom/huawei/hms/iap/entity/ProductInfo;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "productId"

    invoke-virtual {p0}, Lcom/huawei/hms/iap/entity/ProductInfo;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "productName"

    invoke-virtual {p0}, Lcom/huawei/hms/iap/entity/ProductInfo;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "productDesc"

    invoke-virtual {p0}, Lcom/huawei/hms/iap/entity/ProductInfo;->getProductDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "currency"

    invoke-virtual {p0}, Lcom/huawei/hms/iap/entity/ProductInfo;->getCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "price"

    invoke-virtual {p0}, Lcom/huawei/hms/iap/entity/ProductInfo;->getPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "microsPrice"

    invoke-virtual {p0}, Lcom/huawei/hms/iap/entity/ProductInfo;->getMicrosPrice()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "priceType"

    invoke-virtual {p0}, Lcom/huawei/hms/iap/entity/ProductInfo;->getPriceType()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "originalMicroPrice"

    invoke-virtual {p0}, Lcom/huawei/hms/iap/entity/ProductInfo;->getOriginalMicroPrice()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "originalLocalPrice"

    invoke-virtual {p0}, Lcom/huawei/hms/iap/entity/ProductInfo;->getOriginalLocalPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "subPeriod"

    invoke-virtual {p0}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubPeriod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "subSpecialPrice"

    invoke-virtual {p0}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubSpecialPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "subSpecialPriceMicros"

    invoke-virtual {p0}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubSpecialPriceMicros()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "subSpecialPeriod"

    invoke-virtual {p0}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubSpecialPeriod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "subSpecialPeriodCycles"

    invoke-virtual {p0}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubSpecialPeriodCycles()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "subFreeTrialPeriod"

    invoke-virtual {p0}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubFreeTrialPeriod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "subGroupId"

    invoke-virtual {p0}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "subGroupTitle"

    invoke-virtual {p0}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubGroupTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "subProductLevel"

    invoke-virtual {p0}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubProductLevel()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "status"

    invoke-virtual {p0}, Lcom/huawei/hms/iap/entity/ProductInfo;->getStatus()I

    move-result p0

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-static {v0, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :goto_1
    invoke-static {v0, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private synthetic a(Lcom/huawei/hms/iap/entity/ProductInfoReq;Ljava/util/List;)V
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/my/tracker/obfuscated/d;->a:Lcom/huawei/hms/iap/IapClient;

    invoke-interface {p0, p1}, Lcom/huawei/hms/iap/IapClient;->obtainProductInfo(Lcom/huawei/hms/iap/entity/ProductInfoReq;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p0

    .line 267
    new-instance p1, Lfs9;

    invoke-direct {p1, p2}, Lfs9;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    .line 268
    new-instance p1, Lgs9;

    invoke-direct {p1, p2}, Lgs9;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method private synthetic a(Lcom/huawei/hms/iap/entity/ProductInfoResult;Ljava/util/List;)V
    .locals 3

    .line 273
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfoResult;->getProductInfoList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    .line 274
    const-string p1, "AppGalleryHelper: productInfoList is null, finish products loading"

    invoke-static {p1}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    .line 275
    iget-object p0, p0, Lcom/my/tracker/obfuscated/d;->c:Lcom/my/tracker/obfuscated/d$b;

    invoke-interface {p0, p2}, Lcom/my/tracker/obfuscated/d$b;->c(Ljava/util/List;)V

    return-void

    .line 276
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 277
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/iap/entity/ProductInfo;

    .line 278
    invoke-static {v1}, Lcom/my/tracker/obfuscated/d;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/my/tracker/obfuscated/f;

    .line 280
    invoke-virtual {v1}, Lcom/my/tracker/obfuscated/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/my/tracker/obfuscated/d;->a(Ljava/util/List;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 281
    invoke-virtual {v1, v2}, Lcom/my/tracker/obfuscated/f;->a(Lorg/json/JSONObject;)Lcom/my/tracker/obfuscated/f;

    goto :goto_1

    .line 282
    :cond_2
    iget-object p0, p0, Lcom/my/tracker/obfuscated/d;->c:Lcom/my/tracker/obfuscated/d$b;

    invoke-interface {p0, p2}, Lcom/my/tracker/obfuscated/d$b;->c(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic a(Lcom/my/tracker/obfuscated/d;Landroid/content/Intent;)V
    .locals 0

    .line 201
    invoke-direct {p0, p1}, Lcom/my/tracker/obfuscated/d;->b(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Exception;Ljava/util/List;)V
    .locals 1

    .line 270
    const-string v0, "AppGalleryHelper: error while loading products "

    invoke-static {v0, p1}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    iget-object p0, p0, Lcom/my/tracker/obfuscated/d;->c:Lcom/my/tracker/obfuscated/d$b;

    invoke-interface {p0, p2}, Lcom/my/tracker/obfuscated/d$b;->c(Ljava/util/List;)V

    return-void
.end method

.method private synthetic a(Ljava/util/List;Lcom/huawei/hms/iap/entity/ProductInfoResult;)V
    .locals 1

    .line 272
    new-instance v0, Les9;

    invoke-direct {v0, p0, p2, p1}, Les9;-><init>(Lcom/my/tracker/obfuscated/d;Lcom/huawei/hms/iap/entity/ProductInfoResult;Ljava/util/List;)V

    invoke-static {v0}, Lcom/my/tracker/obfuscated/m;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 2

    .line 269
    new-instance v0, Lyu;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p2, p1, v1}, Lyu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/my/tracker/obfuscated/m;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic b(Landroid/content/Intent;)V
    .locals 6

    iget-object v0, p0, Lcom/my/tracker/obfuscated/d;->a:Lcom/huawei/hms/iap/IapClient;

    invoke-interface {v0, p1}, Lcom/huawei/hms/iap/IapClient;->parsePurchaseResultInfoFromIntent(Landroid/content/Intent;)Lcom/huawei/hms/iap/entity/PurchaseResultInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/PurchaseResultInfo;->getReturnCode()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "AppGalleryHelper error: can not getting PurchaseResultInfo. resultCode "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/PurchaseResultInfo;->getInAppPurchaseData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/PurchaseResultInfo;->getInAppDataSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/PurchaseResultInfo;->getSignatureAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/my/tracker/obfuscated/z2;->a()J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-static/range {v0 .. v5}, Lcom/my/tracker/obfuscated/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/my/tracker/obfuscated/f;

    move-result-object p1

    iget-object p0, p0, Lcom/my/tracker/obfuscated/d;->c:Lcom/my/tracker/obfuscated/d$b;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/my/tracker/obfuscated/d$b;->a(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/my/tracker/obfuscated/d;Lcom/huawei/hms/iap/entity/ProductInfoResult;Ljava/util/List;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/my/tracker/obfuscated/d;->a(Lcom/huawei/hms/iap/entity/ProductInfoResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lcom/my/tracker/obfuscated/d;Lcom/huawei/hms/iap/entity/ProductInfoReq;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/my/tracker/obfuscated/d;->a(Lcom/huawei/hms/iap/entity/ProductInfoReq;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic d(Lcom/my/tracker/obfuscated/d;Ljava/lang/Exception;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/my/tracker/obfuscated/d;->a(Ljava/lang/Exception;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    const/4 p0, 0x0

    if-nez p2, :cond_0

    .line 238
    const-string p1, "AppGalleryHelper: can\'t get product by id, id is null"

    invoke-static {p1}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 239
    const-string p1, "AppGalleryHelper: can\'t get product by id, productInfoListJson is null"

    invoke-static {p1}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-object p0

    .line 240
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 241
    :try_start_0
    const-string v1, "productId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    return-object v0

    :catchall_0
    move-exception v0

    .line 242
    const-string v1, "AppGalleryHelper: error while reading product_id"

    invoke-static {v1, v0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public a()V
    .locals 5

    .line 212
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 213
    new-instance v1, Lcom/my/tracker/obfuscated/d$c;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lcom/my/tracker/obfuscated/d$c;-><init>(Lcom/my/tracker/obfuscated/d;II)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v1, Lcom/my/tracker/obfuscated/d$c;

    const/4 v4, 0x1

    invoke-direct {v1, p0, v4, v3}, Lcom/my/tracker/obfuscated/d$c;-><init>(Lcom/my/tracker/obfuscated/d;II)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v1, Lcom/my/tracker/obfuscated/d$c;

    invoke-direct {v1, p0, v3, v3}, Lcom/my/tracker/obfuscated/d$c;-><init>(Lcom/my/tracker/obfuscated/d;II)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v1, Lcom/my/tracker/obfuscated/d$c;

    const/4 v4, 0x3

    invoke-direct {v1, p0, v2, v4}, Lcom/my/tracker/obfuscated/d$c;-><init>(Lcom/my/tracker/obfuscated/d;II)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v1, Lcom/my/tracker/obfuscated/d$c;

    invoke-direct {v1, p0, v3, v4}, Lcom/my/tracker/obfuscated/d$c;-><init>(Lcom/my/tracker/obfuscated/d;II)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/my/tracker/obfuscated/d;->d:Ljava/util/Set;

    .line 219
    const-string p0, "AppGalleryHelper: purchase loaders created"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/tracker/obfuscated/d$c;

    const/4 v1, 0x0

    .line 221
    invoke-virtual {v0, v1}, Lcom/my/tracker/obfuscated/d$c;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    .line 210
    const-string v0, "AppGalleryHelper: starting getAppGalleryPurchaseByIntent"

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    .line 211
    new-instance v0, Lw89;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lw89;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/my/tracker/obfuscated/m;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/my/tracker/obfuscated/d$c;)V
    .locals 4

    .line 283
    iget-object v0, p1, Lcom/my/tracker/obfuscated/d$c;->c:Ljava/util/List;

    iget-object v1, p1, Lcom/my/tracker/obfuscated/d$c;->d:Ljava/util/List;

    iget-object v2, p1, Lcom/my/tracker/obfuscated/d$c;->e:Ljava/lang/String;

    iget v3, p1, Lcom/my/tracker/obfuscated/d$c;->b:I

    invoke-static {v0, v1, v2, v3}, Lcom/my/tracker/obfuscated/d;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/my/tracker/obfuscated/d;->c:Lcom/my/tracker/obfuscated/d$b;

    invoke-interface {v1, v0}, Lcom/my/tracker/obfuscated/d$b;->a(Ljava/util/List;)V

    .line 285
    invoke-virtual {p0, p1}, Lcom/my/tracker/obfuscated/d;->b(Lcom/my/tracker/obfuscated/d$c;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 8

    .line 222
    const-string v0, "AppGalleryHelper: start loading all products"

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 226
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/my/tracker/obfuscated/f;

    .line 227
    :try_start_0
    invoke-virtual {v3}, Lcom/my/tracker/obfuscated/f;->e()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "kind"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    if-eq v6, v5, :cond_1

    if-eq v6, v4, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    .line 229
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 231
    :goto_1
    const-string v4, "AppGalleryHelper: can not getting price type "

    invoke-static {v4, v3}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 232
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    const/4 p1, 0x0

    .line 233
    invoke-virtual {p0, v0, p1}, Lcom/my/tracker/obfuscated/d;->a(Ljava/util/List;I)V

    .line 234
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 235
    invoke-virtual {p0, v1, v5}, Lcom/my/tracker/obfuscated/d;->a(Ljava/util/List;I)V

    .line 236
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 237
    invoke-virtual {p0, v2, v4}, Lcom/my/tracker/obfuscated/d;->a(Ljava/util/List;I)V

    :cond_6
    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 5

    .line 243
    const-string v0, "AppGalleryHelper: start loading products by price"

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    .line 244
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 246
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 247
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    const/16 v4, 0xc8

    if-ge v3, v4, :cond_0

    .line 248
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/my/tracker/obfuscated/f;

    .line 249
    invoke-virtual {v3}, Lcom/my/tracker/obfuscated/f;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 252
    :cond_0
    const-string v3, "AppGalleryHelper: product id\'s have been detected"

    invoke-static {v3}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    .line 253
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 254
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/my/tracker/obfuscated/f;

    .line 255
    invoke-virtual {v3}, Lcom/my/tracker/obfuscated/f;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 256
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 258
    :cond_2
    const-string v2, "AppGalleryHelper: products deduplication done"

    invoke-static {v2}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    .line 259
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 260
    const-string v2, "AppGalleryHelper: there are still unloaded products, we are loading more"

    invoke-static {v2}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0, p1, p2}, Lcom/my/tracker/obfuscated/d;->a(Ljava/util/List;I)V

    .line 262
    :cond_3
    new-instance p1, Lcom/huawei/hms/iap/entity/ProductInfoReq;

    invoke-direct {p1}, Lcom/huawei/hms/iap/entity/ProductInfoReq;-><init>()V

    .line 263
    invoke-virtual {p1, p2}, Lcom/huawei/hms/iap/entity/ProductInfoReq;->setPriceType(I)V

    .line 264
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hms/iap/entity/ProductInfoReq;->setProductIds(Ljava/util/List;)V

    .line 265
    new-instance p2, Lds9;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v1, v0}, Lds9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p2}, Lcom/my/tracker/obfuscated/m;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/my/tracker/obfuscated/d$c;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/my/tracker/obfuscated/d;->d:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 63
    const-string p0, "AppGalleryHelper: can\'t remove OwnedPurchaseLoader, purchaseLoaders list is null"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    .line 64
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 65
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/my/tracker/obfuscated/d;->d:Ljava/util/Set;

    :cond_1
    return-void
.end method
