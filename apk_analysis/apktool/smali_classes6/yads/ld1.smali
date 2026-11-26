.class public final Lyads/ld1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/qv5;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Lyads/nd1;

    new-instance p0, Lyads/gd1;

    iget-object v0, p2, Lyads/nd1;->a:Lyads/zw2;

    const-string v1, "id"

    invoke-static {v0, p3, v1}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object p2, p2, Lyads/nd1;->b:Lyads/zw2;

    const-string v1, "params"

    invoke-static {p1, p2, p3, v1}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    invoke-direct {p0, v0, p1}, Lyads/gd1;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object p0
.end method
