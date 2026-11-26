.class public final Lyads/r92;
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

    iput-object p1, p0, Lyads/r92;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8

    check-cast p2, Lyads/t92;

    new-instance v0, Lyads/o92;

    iget-object v2, p2, Lyads/t92;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->b:Lyads/s36;

    sget-object v6, Lyads/bt4;->e:Lnl3;

    sget-object v7, Lyads/s92;->a:Lyads/l66;

    const-string v4, "corner_radius"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v7}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p1

    iget-object v2, p2, Lyads/t92;->b:Lyads/zw2;

    iget-object p0, p0, Lyads/r92;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->F7:Lcl4;

    iget-object v6, p0, Lyads/tq3;->D7:Lcl4;

    const-string v4, "stroke"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/l42;

    invoke-direct {v0, p1, p0}, Lyads/o92;-><init>(Lyads/as2;Lyads/l42;)V

    return-object v0
.end method
