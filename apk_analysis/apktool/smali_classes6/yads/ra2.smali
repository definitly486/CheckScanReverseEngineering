.class public final Lyads/ra2;
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
    .locals 12

    new-instance p0, Lyads/qa2;

    sget-object v3, Lyads/w36;->f:Lyads/p36;

    sget-object v4, Lyads/bt4;->a:Lnl3;

    sget-object v0, Lyads/oq3;->a:Lyads/y50;

    sget-object v5, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "color"

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p1

    sget-object v8, Lyads/w36;->a:Lyads/o36;

    sget-object v9, Lyads/bt4;->c:Lnl3;

    sget-object v11, Lyads/ua2;->a:Lyads/xr2;

    const-string v7, "is_enabled"

    move-object v6, v1

    move-object v10, v5

    move-object v5, v0

    invoke-static/range {v5 .. v11}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v11, p2

    :goto_0
    invoke-direct {p0, p1, v11}, Lyads/qa2;-><init>(Lyads/as2;Lyads/as2;)V

    return-object p0
.end method
