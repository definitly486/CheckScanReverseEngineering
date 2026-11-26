.class public final Lyads/mf1;
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

    iput-object p1, p0, Lyads/mf1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 9

    check-cast p2, Lyads/rf1;

    new-instance v0, Lyads/hf1;

    iget-object v2, p2, Lyads/rf1;->a:Lyads/zw2;

    iget-object v1, p0, Lyads/mf1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->H1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->F1:Lcl4;

    const-string v4, "background"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object p1

    iget-object v2, p2, Lyads/rf1;->b:Lyads/zw2;

    iget-object p3, p0, Lyads/mf1;->a:Lyads/tq3;

    iget-object v5, p3, Lyads/tq3;->N1:Lcl4;

    iget-object v6, p3, Lyads/tq3;->L1:Lcl4;

    const-string v4, "border"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/f51;

    iget-object v2, p2, Lyads/rf1;->c:Lyads/zw2;

    iget-object v4, p0, Lyads/mf1;->a:Lyads/tq3;

    iget-object v5, v4, Lyads/tq3;->D3:Lcl4;

    iget-object v6, v4, Lyads/tq3;->B3:Lcl4;

    const-string v4, "next_focus_ids"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lyads/gf1;

    iget-object v2, p2, Lyads/rf1;->d:Lyads/zw2;

    iget-object v4, p0, Lyads/mf1;->a:Lyads/tq3;

    iget-object v5, v4, Lyads/tq3;->m1:Lcl4;

    iget-object v6, v4, Lyads/tq3;->k1:Lcl4;

    const-string v4, "on_blur"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v8

    iget-object v2, p2, Lyads/rf1;->e:Lyads/zw2;

    iget-object p0, p0, Lyads/mf1;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->m1:Lcl4;

    iget-object v6, p0, Lyads/tq3;->k1:Lcl4;

    const-string v4, "on_focus"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v5

    move-object v1, p1

    move-object v2, p3

    move-object v3, v7

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lyads/hf1;-><init>(Ljava/util/List;Lyads/f51;Lyads/gf1;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
