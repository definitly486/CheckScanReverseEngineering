.class public final Lyads/eu0;
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

    iput-object p1, p0, Lyads/eu0;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7

    check-cast p2, Lyads/fu0;

    new-instance v0, Lyads/bu0;

    iget-object v2, p2, Lyads/fu0;->a:Lyads/zw2;

    iget-object v1, p0, Lyads/eu0;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->m1:Lcl4;

    iget-object v6, v1, Lyads/tq3;->k1:Lcl4;

    const-string v4, "on_fail_actions"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object p1

    iget-object v2, p2, Lyads/fu0;->b:Lyads/zw2;

    iget-object p0, p0, Lyads/eu0;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->m1:Lcl4;

    iget-object v6, p0, Lyads/tq3;->k1:Lcl4;

    const-string v4, "on_success_actions"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object p0

    iget-object v2, p2, Lyads/fu0;->c:Lyads/zw2;

    sget-object v5, Lyads/w36;->e:Lyads/v36;

    sget-object v6, Lyads/bt4;->b:Lnl3;

    const-string v4, "url"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p2

    invoke-direct {v0, p1, p0, p2}, Lyads/bu0;-><init>(Ljava/util/List;Ljava/util/List;Lyads/as2;)V

    return-object v0
.end method
