.class public final Lcom/my/tracker/obfuscated/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/tracker/obfuscated/r0$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/my/tracker/obfuscated/i0;

.field final c:Lcom/my/tracker/obfuscated/i0$c;


# direct methods
.method private constructor <init>(Lcom/my/tracker/obfuscated/i0;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lll0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lll0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/my/tracker/obfuscated/r0;->c:Lcom/my/tracker/obfuscated/i0$c;

    iput-object p1, p0, Lcom/my/tracker/obfuscated/r0;->b:Lcom/my/tracker/obfuscated/i0;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/my/tracker/obfuscated/r0;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Lcom/my/tracker/obfuscated/i0;Landroid/content/Context;)Lcom/my/tracker/obfuscated/r0;
    .locals 1

    .line 72
    new-instance v0, Lcom/my/tracker/obfuscated/r0;

    invoke-direct {v0, p0, p1}, Lcom/my/tracker/obfuscated/r0;-><init>(Lcom/my/tracker/obfuscated/i0;Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/my/tracker/obfuscated/r0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/my/tracker/obfuscated/r0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 76
    invoke-static {}, Lcom/my/tracker/obfuscated/z2;->a()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/my/tracker/obfuscated/s0;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/my/tracker/obfuscated/s0;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object p2, p0, Lcom/my/tracker/obfuscated/r0;->b:Lcom/my/tracker/obfuscated/i0;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/my/tracker/obfuscated/r0;->c:Lcom/my/tracker/obfuscated/i0$c;

    invoke-virtual {p2, p1, p0}, Lcom/my/tracker/obfuscated/i0;->a(Ljava/util/List;Lcom/my/tracker/obfuscated/i0$c;)V

    return-void
.end method

.method private synthetic a(Ljava/util/List;)V
    .locals 2

    .line 84
    const-string v0, "GooglePlayPurchaseHandler: iterating over unchecked list of objects"

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 87
    invoke-static {v1}, Lcom/my/tracker/obfuscated/q0;->a(Ljava/lang/Object;)Lcom/my/tracker/obfuscated/s0;

    move-result-object v1

    if-nez v1, :cond_0

    .line 88
    const-string v1, "GooglePlayPurchaseHandler: null purchase data after processing"

    invoke-static {v1}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 91
    const-string p0, "GooglePlayPurchaseHandler: skip empty purchases list"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    .line 92
    :cond_2
    iget-object p1, p0, Lcom/my/tracker/obfuscated/r0;->b:Lcom/my/tracker/obfuscated/i0;

    iget-object p0, p0, Lcom/my/tracker/obfuscated/r0;->c:Lcom/my/tracker/obfuscated/i0$c;

    invoke-virtual {p1, v0, p0}, Lcom/my/tracker/obfuscated/i0;->a(Ljava/util/List;Lcom/my/tracker/obfuscated/i0$c;)V

    return-void
.end method

.method public static synthetic b(Lcom/my/tracker/obfuscated/r0;Ljava/util/List;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/my/tracker/obfuscated/r0;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/my/tracker/obfuscated/r0;->b:Lcom/my/tracker/obfuscated/i0;

    iget-object p0, p0, Lcom/my/tracker/obfuscated/r0;->c:Lcom/my/tracker/obfuscated/i0$c;

    invoke-virtual {v0, p0}, Lcom/my/tracker/obfuscated/i0;->a(Lcom/my/tracker/obfuscated/i0$c;)V

    return-void
.end method

.method public a(ILandroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/my/tracker/obfuscated/q0;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "GooglePlayPurchaseHandler error: classes com.android.billingclient:billing aren\'t found"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const-string p0, "GooglePlayPurchaseHandler: result code isn\'t equal to RESULT_OK"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    const-string p0, "GooglePlayPurchaseHandler: empty intent has been received"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "INAPP_PURCHASE_DATA"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "GooglePlayPurchaseHandler: empty purchase data in intent"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    const-string p0, "GooglePlayPurchaseHandler: null data signature in intent"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance v0, Lk7a;

    invoke-direct {v0, p0, p1, p2}, Lk7a;-><init>(Lcom/my/tracker/obfuscated/r0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/my/tracker/obfuscated/m;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ILjava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 78
    const-string p0, "GooglePlayPurchaseHandler: response code isn\'t equal to BILLING_OK_RESPONSE_CODE"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_3

    .line 79
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    sget-object p1, Lcom/my/tracker/obfuscated/q0;->g:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    .line 81
    const-string p0, "GooglePlayPurchaseHandler error: classes com.android.billingclient:billing aren\'t found"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;)V

    return-void

    .line 82
    :cond_2
    new-instance p1, Leu3;

    const/4 v0, 0x4

    invoke-direct {p1, v0, p0, p2}, Leu3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/my/tracker/obfuscated/m;->a(Ljava/lang/Runnable;)V

    return-void

    .line 83
    :cond_3
    :goto_0
    const-string p0, "GooglePlayPurchaseHandler: null or empty purchases list has been received"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 1

    .line 93
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 94
    const-string p0, "GooglePlayPurchaseHandler: empty inapp raw purchases list"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    .line 95
    :cond_0
    const-string p0, "GooglePlayPurchaseHandler: empty subs raw purchases list"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-void

    .line 96
    :cond_1
    new-instance v0, Lcom/my/tracker/obfuscated/r0$a;

    invoke-direct {v0, p0, p1}, Lcom/my/tracker/obfuscated/r0$a;-><init>(Lcom/my/tracker/obfuscated/r0;Ljava/util/List;)V

    iget-object p0, p0, Lcom/my/tracker/obfuscated/r0;->a:Landroid/content/Context;

    invoke-static {p1, p2, v0, p0}, Lcom/my/tracker/obfuscated/q0;->a(Ljava/util/List;ZLcom/my/tracker/obfuscated/q0$b;Landroid/content/Context;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/my/tracker/obfuscated/r0;->b:Lcom/my/tracker/obfuscated/i0;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/my/tracker/obfuscated/i0;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 6

    const-string v0, "GooglePlayPurchaseHandler: processing raw purchases"

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/my/tracker/obfuscated/s0;

    invoke-virtual {v2}, Lcom/my/tracker/obfuscated/s0;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/my/tracker/obfuscated/s0;->g()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GooglePlayPurchaseHandler: inapp raw purchase, product id: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GooglePlayPurchaseHandler: subs raw purchase, product id: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/my/tracker/obfuscated/r0;->a(Ljava/util/List;Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/my/tracker/obfuscated/r0;->a(Ljava/util/List;Z)V

    return-void
.end method
