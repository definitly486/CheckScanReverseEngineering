.class public final Lyads/xt1;
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

    iput-object p1, p0, Lyads/xt1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8

    check-cast p2, Lyads/bu1;

    new-instance v0, Lyads/qt1;

    iget-object v2, p2, Lyads/bu1;->a:Lyads/zw2;

    iget-object v1, p0, Lyads/xt1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->B5:Lcl4;

    iget-object v6, v1, Lyads/tq3;->z5:Lcl4;

    sget-object v7, Lyads/yt1;->c:Lyads/st3;

    const-string v4, "changes"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;Lyads/st3;)Ljava/util/List;

    move-result-object p1

    iget-object v2, p2, Lyads/bu1;->b:Lyads/zw2;

    sget-object v5, Lyads/yt1;->b:Lyads/m36;

    sget-object v6, Lyads/pt1;->d:Lnl3;

    sget-object v7, Lyads/yt1;->a:Lyads/xr2;

    const-string v4, "mode"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move-object v7, p3

    :goto_0
    iget-object v2, p2, Lyads/bu1;->c:Lyads/zw2;

    iget-object p3, p0, Lyads/xt1;->a:Lyads/tq3;

    iget-object v5, p3, Lyads/tq3;->m1:Lcl4;

    iget-object v6, p3, Lyads/tq3;->k1:Lcl4;

    const-string v4, "on_applied_actions"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object p3

    iget-object v2, p2, Lyads/bu1;->d:Lyads/zw2;

    iget-object p0, p0, Lyads/xt1;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->m1:Lcl4;

    iget-object v6, p0, Lyads/tq3;->k1:Lcl4;

    const-string v4, "on_failed_actions"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p1, p3, p0, v7}, Lyads/qt1;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyads/as2;)V

    return-object v0
.end method
