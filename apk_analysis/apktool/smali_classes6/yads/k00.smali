.class public final Lyads/k00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/lk;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7

    const-string p0, "value"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "Native Ad json has not required attributes"

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "url"

    const-string v0, "size"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v5, 0x2

    if-ge v1, v5, :cond_1

    aget-object v5, v2, v1

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lqg;->g(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1, p0}, Lyads/v46;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    new-instance v0, Lyads/j00;

    invoke-direct {v0, p1, p0}, Lyads/j00;-><init>(Ljava/lang/String;I)V

    return-object v0

    :cond_2
    invoke-static {v4}, Lqg;->g(Ljava/lang/String;)V

    return-object v3
.end method
