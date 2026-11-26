.class public final Lcom/tapjoy/TJPurchases;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/tapjoy/TJPurchases;

.field public static a:Ljava/lang/String;

.field public static b:I

.field public static c:D

.field public static d:D

.field public static e:J

.field public static final f:Lcom/tapjoy/TJKeyValueStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/tapjoy/TJPurchases;

    invoke-direct {v0}, Lcom/tapjoy/TJPurchases;-><init>()V

    sput-object v0, Lcom/tapjoy/TJPurchases;->INSTANCE:Lcom/tapjoy/TJPurchases;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Lcom/tapjoy/TJKeyValueStorage;

    const-string v2, "tjcPrefrences"

    invoke-direct {v1, v0, v2}, Lcom/tapjoy/TJKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/tapjoy/TJPurchases;->f:Lcom/tapjoy/TJKeyValueStorage;

    new-instance v2, Lcom/tapjoy/TJPreferencesMigration;

    const-string v3, "fiverocks"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lb36;

    const-string v5, "ptc"

    const-string v6, "pref_purchase_currency"

    invoke-direct {v3, v5, v6}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lb36;

    const-string v7, "pc"

    const-string v8, "pref_purchase_total_count"

    invoke-direct {v5, v7, v8}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lb36;

    const-string v9, "ptp"

    const-string v10, "pref_purchase_total_price"

    invoke-direct {v7, v9, v10}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Lb36;

    const-string v12, "plp"

    const-string v13, "pref_purchase_last_price"

    invoke-direct {v11, v12, v13}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Lb36;

    const-string v15, "lpt"

    const-string v4, "pref_purchase_last_time"

    invoke-direct {v14, v15, v4}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v3, v5, v7, v11, v14}, [Lb36;

    move-result-object v3

    invoke-static {v3}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object v3

    filled-new-array {v9, v12}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v1, v0, v3, v5}, Lcom/tapjoy/TJPreferencesMigration;-><init>(Lcom/tapjoy/TJKeyValueStorage;Landroid/content/SharedPreferences;Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {v2}, Lcom/tapjoy/TJPreferencesMigration;->migrateAllKeysIfExists()V

    const/4 v0, 0x0

    invoke-virtual {v1, v6, v0}, Lcom/tapjoy/TJKeyValueStorage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TJPurchases;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {v1, v8, v0}, Lcom/tapjoy/TJKeyValueStorage;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tapjoy/TJPurchases;->b:I

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v10, v2, v3}, Lcom/tapjoy/TJKeyValueStorage;->getDouble(Ljava/lang/String;D)D

    move-result-wide v11

    sput-wide v11, Lcom/tapjoy/TJPurchases;->c:D

    invoke-virtual {v1, v13, v2, v3}, Lcom/tapjoy/TJKeyValueStorage;->getDouble(Ljava/lang/String;D)D

    move-result-wide v11

    sput-wide v11, Lcom/tapjoy/TJPurchases;->d:D

    const-wide/16 v11, 0x0

    invoke-virtual {v1, v4, v11, v12}, Lcom/tapjoy/TJKeyValueStorage;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    sput-wide v14, Lcom/tapjoy/TJPurchases;->e:J

    sget-object v0, Lcom/tapjoy/TJPurchases;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tapjoy/TJPurchases;->a:Ljava/lang/String;

    invoke-virtual {v1, v6, v0}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    sget v0, Lcom/tapjoy/TJPurchases;->b:I

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    sget-wide v5, Lcom/tapjoy/TJPurchases;->c:D

    cmpg-double v0, v5, v2

    if-gtz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    sget-wide v5, Lcom/tapjoy/TJPurchases;->d:D

    cmpg-double v0, v5, v2

    if-gtz v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    sget-wide v2, Lcom/tapjoy/TJPurchases;->e:J

    cmp-long v0, v2, v11

    if-gtz v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPurchaseCurrency()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/tapjoy/TJPurchases;->a:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public final getPurchaseLastPrice()Ljava/lang/Double;
    .locals 4

    sget-wide v0, Lcom/tapjoy/TJPurchases;->d:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPurchaseLastTime()Ljava/lang/Long;
    .locals 4

    sget-wide v0, Lcom/tapjoy/TJPurchases;->e:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPurchaseTotalCount()Ljava/lang/Integer;
    .locals 0

    sget p0, Lcom/tapjoy/TJPurchases;->b:I

    if-lez p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPurchaseTotalPrice()Ljava/lang/Double;
    .locals 4

    sget-wide v0, Lcom/tapjoy/TJPurchases;->c:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final trackPurchase(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 17

    move-object/from16 v0, p2

    if-eqz p1, :cond_0

    invoke-static/range {p1 .. p1}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    if-eqz p1, :cond_1

    invoke-static/range {p1 .. p1}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    move-object v2, v1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    :goto_0
    const-string v0, "Invalid currency code"

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    return-void

    :cond_3
    if-nez v0, :cond_4

    const-string v0, "Currency price is null"

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    return-void

    :cond_4
    if-eqz p1, :cond_5

    invoke-static/range {p1 .. p1}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_5
    move-object v2, v1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    sget-object v5, Lcom/tapjoy/TJPurchases;->f:Lcom/tapjoy/TJKeyValueStorage;

    const-wide/16 v6, 0x0

    const-string v8, "pref_purchase_last_price"

    const-string v9, "pref_purchase_last_time"

    const-wide/16 v10, 0x0

    const-string v12, "pref_purchase_currency"

    const/4 v13, 0x1

    if-eqz v5, :cond_8

    const/4 v14, 0x0

    invoke-virtual {v5, v12, v14}, Lcom/tapjoy/TJKeyValueStorage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_6

    goto :goto_2

    :cond_6
    move-object v1, v14

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v14, "pref_purchase_total_price"

    const-string v15, "pref_purchase_total_count"

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v5, v15, v1}, Lcom/tapjoy/TJKeyValueStorage;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v13, v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v15, v1}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, v14, v10, v11}, Lcom/tapjoy/TJKeyValueStorage;->getDouble(Ljava/lang/String;D)D

    move-result-wide v15

    add-double/2addr v3, v15

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v5, v14, v1}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v5, v12, v2}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v15, v1}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, v14, v0}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, v9}, Lcom/tapjoy/TJKeyValueStorage;->remove(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lcom/tapjoy/TJKeyValueStorage;->remove(Ljava/lang/String;)V

    sput-wide v6, Lcom/tapjoy/TJPurchases;->e:J

    sput-wide v10, Lcom/tapjoy/TJPurchases;->d:D

    :cond_8
    :goto_3
    sput v13, Lcom/tapjoy/TJPurchases;->b:I

    sput-wide v3, Lcom/tapjoy/TJPurchases;->c:D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sput-wide v3, Lcom/tapjoy/TJPurchases;->e:J

    sput-wide v0, Lcom/tapjoy/TJPurchases;->d:D

    cmp-long v0, v3, v6

    if-gtz v0, :cond_9

    goto :goto_4

    :cond_9
    if-eqz v5, :cond_a

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v9, v0}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    :goto_4
    sget-wide v0, Lcom/tapjoy/TJPurchases;->d:D

    cmpg-double v3, v0, v10

    if-gtz v3, :cond_b

    goto :goto_5

    :cond_b
    if-eqz v5, :cond_c

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v5, v8, v0}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c
    :goto_5
    sput-object v2, Lcom/tapjoy/TJPurchases;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_6

    :cond_d
    if-eqz v5, :cond_e

    sget-object v0, Lcom/tapjoy/TJPurchases;->a:Ljava/lang/String;

    invoke-virtual {v5, v12, v0}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_e
    :goto_6
    const-string v0, "TrackPurchase called"

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V

    return-void
.end method
