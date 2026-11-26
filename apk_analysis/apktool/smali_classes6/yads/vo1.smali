.class public final Lyads/vo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv5;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 4

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result p0

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object p1

    new-instance v0, Lyads/xo1;

    const-string v1, "height_variable_name"

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, p0, v2}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object v1

    const-string v3, "width_variable_name"

    invoke-static {p1, p2, v3, p0, v2}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lyads/xo1;-><init>(Lyads/zw2;Lyads/zw2;)V

    return-object v0
.end method
