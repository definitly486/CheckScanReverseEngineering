.class public final Lcom/my/tracker/obfuscated/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/json/JSONObject;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:J

.field private f:Lorg/json/JSONObject;

.field private g:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/my/tracker/obfuscated/s0;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/my/tracker/obfuscated/s0;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/my/tracker/obfuscated/s0;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/my/tracker/obfuscated/s0;->d:Z

    iput-wide p5, p0, Lcom/my/tracker/obfuscated/s0;->e:J

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;J)Lcom/my/tracker/obfuscated/s0;
    .locals 4

    const-string v0, "RawPurchase: empty productId in data "

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "productId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {v2, p1, p2, p3}, Lcom/my/tracker/obfuscated/s0;->a(Lorg/json/JSONObject;Ljava/lang/String;J)Lcom/my/tracker/obfuscated/s0;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_0
    const-string p1, "RawPurchase error: creating object failed"

    invoke-static {p1, p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;J)Lcom/my/tracker/obfuscated/s0;
    .locals 8

    .line 49
    const-string v0, "productId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    const-string v0, "autoRenewing"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    .line 51
    new-instance v1, Lcom/my/tracker/obfuscated/s0;

    move-object v2, p0

    move-object v3, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/my/tracker/obfuscated/s0;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Lcom/my/tracker/obfuscated/s0;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/my/tracker/obfuscated/s0;->g:Ljava/lang/Long;

    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/my/tracker/obfuscated/s0;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/my/tracker/obfuscated/s0;->f:Lorg/json/JSONObject;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/my/tracker/obfuscated/s0;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/obfuscated/s0;->g:Ljava/lang/Long;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/obfuscated/s0;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d()Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/obfuscated/s0;->a:Lorg/json/JSONObject;

    return-object p0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/obfuscated/s0;->f:Lorg/json/JSONObject;

    return-object p0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/my/tracker/obfuscated/s0;->e:J

    return-wide v0
.end method

.method public g()Z
    .locals 0

    iget-boolean p0, p0, Lcom/my/tracker/obfuscated/s0;->d:Z

    return p0
.end method
