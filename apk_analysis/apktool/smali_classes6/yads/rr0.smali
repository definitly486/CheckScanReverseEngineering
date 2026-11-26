.class public final Lyads/rr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/qv5;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v7, p2

    check-cast v7, Lyads/tr0;

    new-instance v8, Lyads/mr0;

    iget-object v1, v7, Lyads/tr0;->a:Lyads/zw2;

    sget-object v9, Lyads/w36;->c:Lyads/u36;

    const-string v3, "description"

    invoke-static {v0, v1, v2, v3, v9}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v10

    iget-object v1, v7, Lyads/tr0;->b:Lyads/zw2;

    const-string v3, "hint"

    invoke-static {v0, v1, v2, v3, v9}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v11

    iget-object v1, v7, Lyads/tr0;->c:Lyads/zw2;

    sget-object v4, Lyads/w36;->a:Lyads/o36;

    sget-object v5, Lyads/bt4;->c:Lnl3;

    const-string v3, "is_checked"

    invoke-static/range {v0 .. v5}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v12

    move-object v13, v4

    move-object v14, v5

    iget-object v1, v7, Lyads/tr0;->d:Lyads/zw2;

    sget-object v4, Lyads/sr0;->d:Lyads/m36;

    sget-object v5, Lyads/jr0;->d:Lnl3;

    sget-object v6, Lyads/sr0;->a:Lyads/xr2;

    const-string v3, "mode"

    invoke-static/range {v0 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v15, v6

    goto :goto_0

    :cond_0
    move-object v15, v1

    :goto_0
    iget-object v1, v7, Lyads/tr0;->e:Lyads/zw2;

    sget-object v6, Lyads/sr0;->b:Lyads/xr2;

    const-string v3, "mute_after_action"

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object v4, v13

    move-object v5, v14

    invoke-static/range {v0 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v13, v6

    goto :goto_1

    :cond_1
    move-object v13, v1

    :goto_1
    iget-object v1, v7, Lyads/tr0;->f:Lyads/zw2;

    const-string v3, "state_description"

    invoke-static {v0, v1, v2, v3, v9}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v14

    iget-object v1, v7, Lyads/tr0;->g:Lyads/zw2;

    sget-object v4, Lyads/lr0;->d:Lnl3;

    sget-object v5, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "type"

    invoke-static/range {v0 .. v5}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/l66;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/lr0;

    if-nez v0, :cond_2

    sget-object v0, Lyads/sr0;->c:Lyads/lr0;

    :cond_2
    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v15

    move-object v15, v0

    invoke-direct/range {v8 .. v15}, Lyads/mr0;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/lr0;)V

    return-object v8
.end method
