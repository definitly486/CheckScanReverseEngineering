.class public final Lyads/zc1;
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
    .locals 20

    new-instance v0, Lyads/yc1;

    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v5, Lyads/bt4;->e:Lnl3;

    sget-object v6, Lyads/cd1;->g:Lyads/l66;

    sget-object v7, Lyads/cd1;->a:Lyads/xr2;

    const-string v3, "bottom"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v15, v7

    goto :goto_0

    :cond_0
    move-object v15, v3

    :goto_0
    sget-object v6, Lyads/cd1;->h:Lyads/l66;

    const/4 v7, 0x0

    const-string v3, "end"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v16

    sget-object v6, Lyads/cd1;->i:Lyads/l66;

    sget-object v7, Lyads/cd1;->b:Lyads/xr2;

    const-string v3, "left"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_1

    move-object/from16 v17, v7

    goto :goto_1

    :cond_1
    move-object/from16 v17, v3

    :goto_1
    sget-object v6, Lyads/cd1;->j:Lyads/l66;

    sget-object v7, Lyads/cd1;->c:Lyads/xr2;

    const-string v3, "right"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_2

    move-object/from16 v18, v7

    goto :goto_2

    :cond_2
    move-object/from16 v18, v3

    :goto_2
    sget-object v6, Lyads/cd1;->k:Lyads/l66;

    const/4 v7, 0x0

    const-string v3, "start"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v19

    sget-object v6, Lyads/cd1;->l:Lyads/l66;

    sget-object v7, Lyads/cd1;->d:Lyads/xr2;

    const-string v3, "top"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v6, v7

    goto :goto_3

    :cond_3
    move-object v6, v3

    :goto_3
    sget-object v11, Lyads/cd1;->f:Lyads/m36;

    sget-object v12, Lyads/g12;->d:Lnl3;

    sget-object v14, Lyads/cd1;->e:Lyads/xr2;

    sget-object v13, Lyads/uq3;->a:Lyads/l66;

    const-string v10, "unit"

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-static/range {v8 .. v14}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v7, v14

    :goto_4
    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    goto :goto_5

    :cond_4
    move-object v7, v1

    goto :goto_4

    :goto_5
    invoke-direct/range {v0 .. v7}, Lyads/yc1;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;)V

    return-object v0
.end method
