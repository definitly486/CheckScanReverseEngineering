.class public final Lyads/df1;
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

.method public static a(Lyads/ys4;Lyads/ff1;Lorg/json/JSONObject;)Lyads/af1;
    .locals 16

    move-object/from16 v0, p1

    new-instance v1, Lyads/af1;

    iget-object v3, v0, Lyads/ff1;->a:Lyads/zw2;

    sget-object v6, Lyads/ef1;->b:Lyads/m36;

    sget-object v7, Lyads/g12;->d:Lnl3;

    sget-object v8, Lyads/ef1;->a:Lyads/xr2;

    const-string v5, "unit"

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v8, v3

    :goto_0
    iget-object v10, v0, Lyads/ff1;->b:Lyads/zw2;

    sget-object v13, Lyads/w36;->b:Lyads/s36;

    sget-object v14, Lyads/bt4;->e:Lnl3;

    sget-object v15, Lyads/ef1;->c:Lyads/l66;

    const-string v12, "value"

    move-object/from16 v9, p0

    move-object/from16 v11, p2

    invoke-static/range {v9 .. v15}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lyads/af1;-><init>(Lyads/as2;Lyads/as2;)V

    return-object v1
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p2, Lyads/ff1;

    invoke-static {p1, p2, p3}, Lyads/df1;->a(Lyads/ys4;Lyads/ff1;Lorg/json/JSONObject;)Lyads/af1;

    move-result-object p0

    return-object p0
.end method
