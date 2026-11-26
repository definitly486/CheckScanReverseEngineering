.class public final Lyads/ep1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ln0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 6

    new-instance p0, Lyads/cp1;

    sget-object v3, Lyads/w36;->f:Lyads/p36;

    sget-object v4, Lyads/bt4;->a:Lnl3;

    sget-object v0, Lyads/oq3;->a:Lyads/y50;

    sget-object v5, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "color"

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p1

    sget-object v3, Lyads/w36;->d:Lyads/r36;

    sget-object v4, Lyads/bt4;->d:Lnl3;

    sget-object v5, Lyads/hp1;->a:Lyads/l66;

    const-string v2, "position"

    invoke-static/range {v0 .. v5}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lyads/cp1;-><init>(Lyads/as2;Lyads/as2;)V

    return-object p0
.end method
