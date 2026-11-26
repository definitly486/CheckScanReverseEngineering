.class public final Lyads/bx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/qv5;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/bx0;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 62
    check-cast p2, Lyads/lx0;

    invoke-virtual {p0, p1, p2, p3}, Lyads/bx0;->a(Lyads/ys4;Lyads/lx0;Lorg/json/JSONObject;)Lyads/yw0;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/lx0;Lorg/json/JSONObject;)Lyads/yw0;
    .locals 8

    new-instance v0, Lyads/yw0;

    iget-object v1, p2, Lyads/lx0;->a:Lyads/zw2;

    sget-object v2, Lyads/w36;->c:Lyads/u36;

    const-string v3, "container_id"

    invoke-static {p1, v1, p3, v3, v2}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v1

    iget-object v3, p2, Lyads/lx0;->b:Lyads/zw2;

    iget-object v2, p0, Lyads/bx0;->a:Lyads/tq3;

    iget-object v6, v2, Lyads/tq3;->m1:Lcl4;

    iget-object v7, v2, Lyads/tq3;->k1:Lcl4;

    const-string v5, "on_fail_actions"

    move-object v2, p1

    move-object v4, p3

    invoke-static/range {v2 .. v7}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object p1

    iget-object v3, p2, Lyads/lx0;->c:Lyads/zw2;

    iget-object p3, p0, Lyads/bx0;->a:Lyads/tq3;

    iget-object v6, p3, Lyads/tq3;->m1:Lcl4;

    iget-object v7, p3, Lyads/tq3;->k1:Lcl4;

    const-string v5, "on_success_actions"

    invoke-static/range {v2 .. v7}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object p3

    iget-object v3, p2, Lyads/lx0;->d:Lyads/zw2;

    iget-object p0, p0, Lyads/bx0;->a:Lyads/tq3;

    iget-object v6, p0, Lyads/tq3;->U0:Lcl4;

    iget-object v7, p0, Lyads/tq3;->S0:Lcl4;

    const-string v5, "request"

    invoke-static/range {v2 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/xw0;

    invoke-direct {v0, v1, p1, p3, p0}, Lyads/yw0;-><init>(Lyads/as2;Ljava/util/List;Ljava/util/List;Lyads/xw0;)V

    return-object v0
.end method
