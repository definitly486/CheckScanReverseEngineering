.class public final Lyads/a02;
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

    iput-object p1, p0, Lyads/a02;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p2

    check-cast v0, Lyads/c02;

    new-instance v1, Lyads/xz1;

    iget-object v3, v0, Lyads/c02;->a:Lyads/zw2;

    sget-object v6, Lyads/w36;->d:Lyads/r36;

    sget-object v7, Lyads/bt4;->d:Lnl3;

    sget-object v8, Lyads/b02;->d:Lyads/l66;

    sget-object v9, Lyads/b02;->a:Lyads/xr2;

    const-string v5, "alpha"

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    invoke-static/range {v2 .. v9}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v9, v3

    :goto_0
    iget-object v11, v0, Lyads/c02;->b:Lyads/zw2;

    sget-object v14, Lyads/w36;->b:Lyads/s36;

    sget-object v15, Lyads/bt4;->e:Lnl3;

    sget-object v16, Lyads/b02;->e:Lyads/l66;

    sget-object v17, Lyads/b02;->b:Lyads/xr2;

    const-string v13, "blur"

    move-object/from16 v10, p1

    move-object/from16 v12, p3

    invoke-static/range {v10 .. v17}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_1

    move-object/from16 v2, v17

    :cond_1
    iget-object v11, v0, Lyads/c02;->c:Lyads/zw2;

    sget-object v14, Lyads/w36;->f:Lyads/p36;

    sget-object v15, Lyads/bt4;->a:Lnl3;

    sget-object v16, Lyads/b02;->c:Lyads/xr2;

    const-string v13, "color"

    move-object/from16 v10, p1

    move-object/from16 v12, p3

    invoke-static/range {v10 .. v16}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_2

    move-object/from16 v3, v16

    :cond_2
    iget-object v11, v0, Lyads/c02;->d:Lyads/zw2;

    move-object/from16 v0, p0

    iget-object v0, v0, Lyads/a02;->a:Lyads/tq3;

    iget-object v14, v0, Lyads/tq3;->T5:Lcl4;

    iget-object v15, v0, Lyads/tq3;->R5:Lcl4;

    const-string v13, "offset"

    move-object/from16 v10, p1

    move-object/from16 v12, p3

    invoke-static/range {v10 .. v15}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/nv1;

    invoke-direct {v1, v9, v2, v3, v0}, Lyads/xz1;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Lyads/nv1;)V

    return-object v1
.end method
