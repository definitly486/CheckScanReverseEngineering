.class public final Lyads/cr1;
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

.method public static b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/br1;
    .locals 15

    new-instance v0, Lyads/br1;

    sget-object v4, Lyads/fr1;->g:Lyads/m36;

    sget-object v5, Lyads/o11;->d:Lnl3;

    sget-object v7, Lyads/fr1;->a:Lyads/xr2;

    sget-object v1, Lyads/oq3;->a:Lyads/y50;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "interpolator"

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v1, v7

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    sget-object v11, Lyads/w36;->d:Lyads/r36;

    sget-object v12, Lyads/bt4;->d:Lnl3;

    sget-object v13, Lyads/fr1;->h:Lyads/l66;

    sget-object v14, Lyads/fr1;->b:Lyads/xr2;

    const-string v10, "next_page_alpha"

    move-object v8, p0

    move-object/from16 v9, p1

    invoke-static/range {v8 .. v14}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v14

    :cond_1
    sget-object v13, Lyads/fr1;->i:Lyads/l66;

    sget-object v14, Lyads/fr1;->c:Lyads/xr2;

    const-string v10, "next_page_scale"

    move-object v8, p0

    move-object/from16 v9, p1

    invoke-static/range {v8 .. v14}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_2

    move-object v3, v14

    :cond_2
    sget-object v13, Lyads/fr1;->j:Lyads/l66;

    sget-object v14, Lyads/fr1;->d:Lyads/xr2;

    const-string v10, "previous_page_alpha"

    move-object v8, p0

    move-object/from16 v9, p1

    invoke-static/range {v8 .. v14}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v4, v14

    :cond_3
    sget-object v13, Lyads/fr1;->k:Lyads/l66;

    sget-object v14, Lyads/fr1;->e:Lyads/xr2;

    const-string v10, "previous_page_scale"

    move-object v8, p0

    move-object/from16 v9, p1

    invoke-static/range {v8 .. v14}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v5

    if-nez v5, :cond_4

    move-object v5, v14

    :cond_4
    sget-object v11, Lyads/w36;->a:Lyads/o36;

    sget-object v12, Lyads/bt4;->c:Lnl3;

    sget-object v14, Lyads/fr1;->f:Lyads/xr2;

    const-string v10, "reversed_stacking_order"

    move-object v8, p0

    move-object/from16 v9, p1

    move-object v13, v6

    invoke-static/range {v8 .. v14}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p0

    if-nez p0, :cond_5

    move-object v6, v14

    goto :goto_1

    :cond_5
    move-object v6, p0

    :goto_1
    invoke-direct/range {v0 .. v6}, Lyads/br1;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2}, Lyads/cr1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/br1;

    move-result-object p0

    return-object p0
.end method
