.class public final Lyads/yz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ln0;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/yz1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 15

    new-instance v0, Lyads/xz1;

    sget-object v4, Lyads/w36;->d:Lyads/r36;

    sget-object v5, Lyads/bt4;->d:Lnl3;

    sget-object v6, Lyads/b02;->d:Lyads/l66;

    sget-object v7, Lyads/b02;->a:Lyads/xr2;

    const-string v3, "alpha"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v7, v3

    :goto_0
    sget-object v11, Lyads/w36;->b:Lyads/s36;

    sget-object v12, Lyads/bt4;->e:Lnl3;

    sget-object v13, Lyads/b02;->e:Lyads/l66;

    sget-object v14, Lyads/b02;->b:Lyads/xr2;

    const-string v10, "blur"

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-static/range {v8 .. v14}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v14

    :cond_1
    sget-object v11, Lyads/w36;->f:Lyads/p36;

    sget-object v12, Lyads/bt4;->a:Lnl3;

    sget-object v14, Lyads/b02;->c:Lyads/xr2;

    sget-object v13, Lyads/uq3;->a:Lyads/l66;

    const-string v10, "color"

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-static/range {v8 .. v14}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v14, v2

    :goto_1
    iget-object p0, p0, Lyads/yz1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->R5:Lcl4;

    const-string v2, "offset"

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-static {v8, v9, v2, p0}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/nv1;

    invoke-direct {v0, v7, v1, v14, p0}, Lyads/xz1;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Lyads/nv1;)V

    return-object v0
.end method
