.class public final Lyads/ow2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/lk;


# instance fields
.field public final a:Lyads/ud3;


# direct methods
.method public constructor <init>(Lyads/ud3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ow2;->a:Lyads/ud3;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 4

    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Native Ad json has not required attributes"

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lyads/ow2;->a:Lyads/ud3;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p0, p0, Lyads/ud3;->a:Lyads/ad3;

    invoke-virtual {p0, p1}, Lyads/ad3;->a(Lorg/json/JSONObject;)Lyads/rd3;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lqg;->g(Ljava/lang/String;)V

    return-object v2

    :cond_1
    :goto_0
    new-instance p0, Lyads/mw2;

    invoke-direct {p0, v2}, Lyads/mw2;-><init>(Lyads/rd3;)V

    return-object p0

    :cond_2
    invoke-static {v3}, Lqg;->g(Ljava/lang/String;)V

    return-object v2
.end method
