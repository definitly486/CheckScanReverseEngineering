.class public final Lyads/o51;
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

    iput-object p1, p0, Lyads/o51;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8

    new-instance v0, Lyads/f51;

    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v5, Lyads/bt4;->e:Lnl3;

    sget-object v6, Lyads/r51;->b:Lyads/l66;

    const/4 v7, 0x0

    const-string v3, "corner_radius"

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p1

    iget-object p2, p0, Lyads/o51;->a:Lyads/tq3;

    iget-object p2, p2, Lyads/tq3;->s2:Lcl4;

    const-string v3, "corners_radius"

    invoke-static {v1, v2, v3, p2}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/p91;

    sget-object v4, Lyads/w36;->a:Lyads/o36;

    sget-object v5, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/r51;->a:Lyads/xr2;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "has_shadow"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v3, v7

    :cond_0
    iget-object v4, p0, Lyads/o51;->a:Lyads/tq3;

    iget-object v4, v4, Lyads/tq3;->H6:Lcl4;

    const-string v5, "shadow"

    invoke-static {v1, v2, v5, v4}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/xz1;

    iget-object p0, p0, Lyads/o51;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->D7:Lcl4;

    const-string v5, "stroke"

    invoke-static {v1, v2, v5, p0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lyads/l42;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lyads/f51;-><init>(Lyads/as2;Lyads/p91;Lyads/as2;Lyads/xz1;Lyads/l42;)V

    return-object v0
.end method
