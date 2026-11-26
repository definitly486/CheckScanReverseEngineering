.class public final Lyads/ud3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/lk;


# instance fields
.field public final a:Lyads/ad3;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lyads/ad3;

    invoke-direct {v0}, Lyads/ad3;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/ud3;->a:Lyads/ad3;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2

    const-string v0, "value"

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

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Native Ad json has not required attributes"

    invoke-static {p0}, Lqg;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
