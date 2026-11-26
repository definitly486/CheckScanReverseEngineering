.class public final Lyads/r32;
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

    iput-object p1, p0, Lyads/r32;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 9

    check-cast p2, Lyads/s32;

    new-instance v0, Lyads/y22;

    iget-object v2, p2, Lyads/s32;->a:Lyads/zw2;

    iget-object v1, p0, Lyads/r32;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->s1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->q1:Lcl4;

    const-string v4, "animation_in"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/k11;

    iget-object v2, p2, Lyads/s32;->b:Lyads/zw2;

    iget-object p3, p0, Lyads/r32;->a:Lyads/tq3;

    iget-object v5, p3, Lyads/tq3;->s1:Lcl4;

    iget-object v6, p3, Lyads/tq3;->q1:Lcl4;

    const-string v4, "animation_out"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/k11;

    iget-object v2, p2, Lyads/s32;->c:Lyads/zw2;

    iget-object v4, p0, Lyads/r32;->a:Lyads/tq3;

    iget-object v5, v4, Lyads/tq3;->u9:Lcl4;

    iget-object v6, v4, Lyads/tq3;->s9:Lcl4;

    const-string v4, "div"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lyads/br0;

    iget-object v2, p2, Lyads/s32;->d:Lyads/zw2;

    const-string v4, "state_id"

    invoke-static {v2, v3, v4}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    iget-object v2, p2, Lyads/s32;->e:Lyads/zw2;

    iget-object p0, p0, Lyads/r32;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->m1:Lcl4;

    iget-object v6, p0, Lyads/tq3;->k1:Lcl4;

    const-string v4, "swipe_out_actions"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v5

    move-object v1, p1

    move-object v2, p3

    move-object v3, v7

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lyads/y22;-><init>(Lyads/k11;Lyads/k11;Lyads/br0;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
