.class public final Lyads/ac2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv5;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ac2;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 20

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lyads/ys4;->d()Z

    move-result v4

    invoke-static/range {p1 .. p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v1

    new-instance v9, Lyads/yc2;

    iget-object v2, v0, Lyads/ac2;->a:Lyads/tq3;

    iget-object v6, v2, Lyads/tq3;->r1:Lcl4;

    const-string v3, "animation_in"

    const/4 v5, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v10

    iget-object v2, v0, Lyads/ac2;->a:Lyads/tq3;

    iget-object v6, v2, Lyads/tq3;->r1:Lcl4;

    const-string v3, "animation_out"

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v11

    sget-object v2, Lyads/w36;->c:Lyads/u36;

    const/4 v6, 0x0

    const-string v3, "background_accessibility_description"

    move v5, v4

    move-object v4, v2

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object v12

    move v4, v5

    sget-object v2, Lyads/w36;->a:Lyads/o36;

    sget-object v7, Lyads/bt4;->c:Lnl3;

    sget-object v8, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "close_by_tap_outside"

    move-object v4, v2

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v13

    move v4, v5

    move-object v14, v8

    iget-object v2, v0, Lyads/ac2;->a:Lyads/tq3;

    iget-object v6, v2, Lyads/tq3;->t9:Lcl4;

    const-string v3, "div"

    const/4 v5, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v15

    sget-object v2, Lyads/w36;->b:Lyads/s36;

    sget-object v7, Lyads/bt4;->e:Lnl3;

    sget-object v8, Lyads/cc2;->e:Lyads/l66;

    const-string v3, "duration"

    const/4 v6, 0x0

    move v5, v4

    move-object v4, v2

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v16

    move v4, v5

    const-string v2, "id"

    const/4 v3, 0x0

    move-object/from16 v5, p2

    invoke-static {v1, v5, v2, v4, v3}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object v17

    iget-object v2, v0, Lyads/ac2;->a:Lyads/tq3;

    iget-object v6, v2, Lyads/tq3;->M8:Lcl4;

    const-string v3, "mode"

    const/4 v5, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v18

    iget-object v2, v0, Lyads/ac2;->a:Lyads/tq3;

    iget-object v6, v2, Lyads/tq3;->S5:Lcl4;

    const-string v3, "offset"

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v19

    sget-object v2, Lyads/cc2;->d:Lyads/m36;

    const/4 v6, 0x0

    sget-object v7, Lyads/pb2;->d:Lnl3;

    const-string v3, "position"

    move v5, v4

    move-object v8, v14

    move-object v4, v2

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v8}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v6

    move v4, v5

    iget-object v0, v0, Lyads/ac2;->a:Lyads/tq3;

    iget-object v5, v0, Lyads/tq3;->l1:Lcl4;

    const-string v2, "tap_outside_actions"

    move v3, v4

    const/4 v4, 0x0

    move-object v0, v1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v0

    move-object v5, v15

    move-object v15, v6

    move-object v6, v10

    move-object v10, v5

    move-object v5, v9

    move-object v7, v11

    move-object v8, v12

    move-object v9, v13

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v14, v19

    move-object/from16 v16, v0

    invoke-direct/range {v5 .. v16}, Lyads/yc2;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object v5
.end method
