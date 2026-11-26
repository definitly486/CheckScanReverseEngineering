.class public final Lyads/mz1;
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
    .locals 14

    new-instance p0, Lyads/jz1;

    sget-object v3, Lyads/w36;->f:Lyads/p36;

    sget-object v4, Lyads/bt4;->a:Lnl3;

    sget-object v6, Lyads/pz1;->a:Lyads/xr2;

    sget-object v0, Lyads/oq3;->a:Lyads/y50;

    sget-object v5, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "color"

    move-object v0, p1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, v2

    :goto_0
    sget-object v10, Lyads/pz1;->c:Lyads/m36;

    sget-object v11, Lyads/iz1;->d:Lnl3;

    sget-object v13, Lyads/pz1;->b:Lyads/xr2;

    const-string v9, "orientation"

    move-object v7, p1

    move-object/from16 v8, p2

    move-object v12, v5

    invoke-static/range {v7 .. v13}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v13, v0

    :goto_1
    invoke-direct {p0, v6, v13}, Lyads/jz1;-><init>(Lyads/as2;Lyads/as2;)V

    return-object p0
.end method
