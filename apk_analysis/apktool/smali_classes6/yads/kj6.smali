.class public final Lyads/kj6;
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
    .locals 3

    const-string p0, "value"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    check-cast p0, Lorg/json/JSONObject;

    const-string p1, "warningText"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "warningSize"

    const-wide v1, 0x3fbeb851e0000000L    # 0.11999999731779099

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float p0, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Lkx6;->d(FFF)F

    move-result p0

    new-instance v0, Lyads/r80;

    invoke-direct {v0, p1, p0}, Lyads/r80;-><init>(Ljava/lang/String;F)V

    return-object v0

    :cond_0
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_1

    new-instance p1, Lyads/r80;

    check-cast p0, Ljava/lang/String;

    invoke-direct {p1, p0}, Lyads/r80;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    const-string p0, "Native Ad json has not required attributes"

    invoke-static {p0}, Lqg;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
