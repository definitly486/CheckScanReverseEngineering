.class public final Lyads/dq1;
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

    iput-object p1, p0, Lyads/dq1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7

    check-cast p2, Lyads/eq1;

    new-instance v0, Lyads/aq1;

    iget-object v2, p2, Lyads/eq1;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->e:Lyads/v36;

    sget-object v6, Lyads/bt4;->b:Lnl3;

    const-string v4, "image_url"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p1

    iget-object v2, p2, Lyads/eq1;->b:Lyads/zw2;

    iget-object p0, p0, Lyads/dq1;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->G:Lcl4;

    iget-object v6, p0, Lyads/tq3;->E:Lcl4;

    const-string v4, "insets"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/cr0;

    invoke-direct {v0, p1, p0}, Lyads/aq1;-><init>(Lyads/as2;Lyads/cr0;)V

    return-object v0
.end method
