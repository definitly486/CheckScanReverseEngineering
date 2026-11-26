.class public final Lyads/ic1;
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

    iput-object p1, p0, Lyads/ic1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 22

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lyads/ys4;->d()Z

    move-result v5

    invoke-static/range {p1 .. p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v1

    new-instance v9, Lyads/lc1;

    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v7, Lyads/bt4;->e:Lnl3;

    sget-object v8, Lyads/kc1;->e:Lyads/l66;

    const-string v3, "disappear_duration"

    const/4 v6, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v10

    move-object v11, v4

    move-object v12, v7

    iget-object v2, v0, Lyads/ic1;->a:Lyads/tq3;

    iget-object v6, v2, Lyads/tq3;->S2:Lcl4;

    const-string v3, "download_callbacks"

    move v4, v5

    const/4 v5, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v13

    move v5, v4

    sget-object v4, Lyads/w36;->a:Lyads/o36;

    sget-object v7, Lyads/bt4;->c:Lnl3;

    sget-object v8, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "is_enabled"

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v14

    move-object v15, v8

    sget-object v4, Lyads/w36;->c:Lyads/u36;

    const-string v3, "log_id"

    invoke-static/range {v1 .. v6}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object v16

    sget-object v8, Lyads/kc1;->f:Lyads/l66;

    const-string v3, "log_limit"

    move-object v4, v11

    move-object v7, v12

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v11

    move-object v12, v4

    move-object/from16 v17, v7

    const-string v3, "payload"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v5, v4}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object v18

    sget-object v3, Lyads/w36;->e:Lyads/v36;

    sget-object v6, Lyads/bt4;->b:Lnl3;

    move-object v7, v4

    move-object v4, v3

    const-string v3, "referer"

    move-object v8, v7

    move-object v7, v6

    const/4 v6, 0x0

    move-object/from16 v21, v15

    move-object v15, v8

    move-object/from16 v8, v21

    invoke-static/range {v1 .. v8}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v19

    move-object v6, v4

    const-string v3, "scope_id"

    invoke-static {v1, v2, v3, v5, v15}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object v15

    iget-object v0, v0, Lyads/ic1;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->c1:Lcl4;

    const-string v2, "typed"

    const/4 v4, 0x0

    move v3, v5

    move-object v5, v0

    move-object v0, v1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v20

    move-object v1, v0

    move v5, v3

    const-string v2, "url"

    move v4, v5

    const/4 v5, 0x0

    move-object v3, v6

    move-object v6, v7

    move-object v7, v8

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v8

    move-object v1, v0

    move v5, v4

    const/4 v0, 0x0

    sget-object v7, Lyads/kc1;->g:Lyads/l66;

    const-string v2, "visibility_percentage"

    move-object v3, v12

    move-object/from16 v6, v17

    move-object v5, v0

    move-object v0, v1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v17

    move-object v6, v9

    move-object v7, v10

    move-object v9, v14

    move-object v14, v15

    move-object/from16 v10, v16

    move-object/from16 v12, v18

    move-object/from16 v15, v20

    move-object/from16 v16, v8

    move-object v8, v13

    move-object/from16 v13, v19

    invoke-direct/range {v6 .. v17}, Lyads/lc1;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object v6
.end method
