.class public final Lyads/wo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/k66;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "null"

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p0}, Lyads/vo;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Native Ad json has attribute with broken base64 encoding"

    invoke-static {p0}, Lqg;->g(Ljava/lang/String;)V

    return-object p1

    :cond_1
    const-string p0, "Native Ad json has not required attributes"

    invoke-static {p0}, Lqg;->g(Ljava/lang/String;)V

    return-object p1
.end method
