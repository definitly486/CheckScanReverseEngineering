.class public final Lyads/p92;
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

    iput-object p1, p0, Lyads/p92;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8

    new-instance v0, Lyads/o92;

    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v5, Lyads/bt4;->e:Lnl3;

    sget-object v6, Lyads/s92;->a:Lyads/l66;

    const/4 v7, 0x0

    const-string v3, "corner_radius"

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p1

    iget-object p0, p0, Lyads/p92;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->D7:Lcl4;

    const-string p2, "stroke"

    invoke-static {v1, v2, p2, p0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/l42;

    invoke-direct {v0, p1, p0}, Lyads/o92;-><init>(Lyads/as2;Lyads/l42;)V

    return-object v0
.end method
