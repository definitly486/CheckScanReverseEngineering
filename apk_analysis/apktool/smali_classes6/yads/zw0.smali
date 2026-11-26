.class public final Lyads/zw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ln0;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/zw0;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lyads/yw0;

    sget-object v1, Lyads/w36;->c:Lyads/u36;

    const-string v2, "container_id"

    invoke-static {p1, p2, v2, v1}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v1

    iget-object v2, p0, Lyads/zw0;->a:Lyads/tq3;

    iget-object v2, v2, Lyads/tq3;->k1:Lcl4;

    const-string v3, "on_fail_actions"

    invoke-static {p1, p2, v3, v2}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lyads/zw0;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->k1:Lcl4;

    const-string v4, "on_success_actions"

    invoke-static {p1, p2, v4, v3}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v3

    iget-object p0, p0, Lyads/zw0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->S0:Lcl4;

    const-string v4, "request"

    invoke-static {p1, p2, v4, p0}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/xw0;

    invoke-direct {v0, v1, v2, v3, p0}, Lyads/yw0;-><init>(Lyads/as2;Ljava/util/List;Ljava/util/List;Lyads/xw0;)V

    return-object v0
.end method
