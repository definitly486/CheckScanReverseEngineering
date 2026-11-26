.class public abstract Lyads/ar3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 10
    invoke-static {p0, v0}, Lyads/vq3;->a(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lyads/vq3;->a(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
