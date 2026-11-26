.class public final Lyads/si0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/y0;


# instance fields
.field public final a:Lyads/v46;

.field public final b:Lyads/ey4;

.field public final c:Lyads/j16;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/v46;)V
    .locals 1

    new-instance v0, Lyads/ey4;

    invoke-direct {v0, p1, p2}, Lyads/ey4;-><init>(Landroid/content/Context;Lyads/v46;)V

    new-instance p1, Lyads/j16;

    invoke-direct {p1}, Lyads/j16;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/si0;->a:Lyads/v46;

    iput-object v0, p0, Lyads/si0;->b:Lyads/ey4;

    iput-object p1, p0, Lyads/si0;->c:Lyads/j16;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lyads/u0;
    .locals 8

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lyads/si0;->a:Lyads/v46;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "fallbackUrl"

    invoke-static {v2, p1}, Lyads/v46;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lyads/si0;->c:Lyads/j16;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "fallbackTrackingUrls"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lyads/j16;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    :goto_0
    const-string v4, "preferredPackages"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v4, "preferredLinks"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    :cond_2
    :goto_1
    iget-object p0, p0, Lyads/si0;->b:Lyads/ey4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_3

    sget-object p0, Lkx2;->b:Lkx2;

    goto :goto_3

    :cond_3
    invoke-static {}, Lu96;->e()Lar4;

    move-result-object p1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v7, p0, Lyads/ey4;->a:Lyads/dy4;

    invoke-virtual {v7, v6}, Lyads/dy4;->a(Lorg/json/JSONObject;)Lyads/by4;

    move-result-object v6

    invoke-virtual {p1, v6}, Lar4;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lu96;->d(Lar4;)Lar4;

    move-result-object p0

    :goto_3
    new-instance p1, Lyads/pi0;

    invoke-direct {p1, v0, v2, v3, p0}, Lyads/pi0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object p1

    :cond_6
    const-string p0, "Native Ad json has not required attributes"

    invoke-static {p0}, Lqg;->g(Ljava/lang/String;)V

    return-object v1
.end method
