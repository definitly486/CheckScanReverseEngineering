.class public final Lyads/k22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/qv5;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/k22;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    check-cast v1, Lyads/l22;

    new-instance v2, Lyads/v12;

    iget-object v4, v1, Lyads/l22;->a:Lyads/zw2;

    sget-object v7, Lyads/w36;->b:Lyads/s36;

    sget-object v8, Lyads/bt4;->e:Lnl3;

    const-string v6, "end"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v4

    iget-object v10, v1, Lyads/l22;->b:Lyads/zw2;

    iget-object v3, v0, Lyads/k22;->a:Lyads/tq3;

    iget-object v13, v3, Lyads/tq3;->Z2:Lcl4;

    iget-object v14, v3, Lyads/tq3;->X2:Lcl4;

    const-string v12, "margins"

    move-object/from16 v9, p1

    move-object/from16 v11, p3

    invoke-static/range {v9 .. v14}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/yc1;

    iget-object v6, v1, Lyads/l22;->c:Lyads/zw2;

    move-object v10, v8

    const-string v8, "start"

    move-object/from16 v5, p1

    move-object v9, v7

    move-object/from16 v7, p3

    invoke-static/range {v5 .. v10}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v6

    iget-object v10, v1, Lyads/l22;->d:Lyads/zw2;

    iget-object v5, v0, Lyads/k22;->a:Lyads/tq3;

    iget-object v13, v5, Lyads/tq3;->W2:Lcl4;

    iget-object v14, v5, Lyads/tq3;->U2:Lcl4;

    const-string v12, "track_active_style"

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v14}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/tc1;

    iget-object v10, v1, Lyads/l22;->e:Lyads/zw2;

    iget-object v0, v0, Lyads/k22;->a:Lyads/tq3;

    iget-object v13, v0, Lyads/tq3;->W2:Lcl4;

    iget-object v14, v0, Lyads/tq3;->U2:Lcl4;

    const-string v12, "track_inactive_style"

    invoke-static/range {v9 .. v14}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lyads/tc1;

    move-object v15, v4

    move-object v4, v3

    move-object v3, v15

    move-object v15, v6

    move-object v6, v5

    move-object v5, v15

    invoke-direct/range {v2 .. v7}, Lyads/v12;-><init>(Lyads/as2;Lyads/yc1;Lyads/as2;Lyads/tc1;Lyads/tc1;)V

    return-object v2
.end method
