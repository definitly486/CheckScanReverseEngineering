.class public final Lyads/ip1;
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

    iput-object p1, p0, Lyads/ip1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyads/ip1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/dp1;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/dp1;
    .locals 15

    new-instance v0, Lyads/dp1;

    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v5, Lyads/bt4;->e:Lnl3;

    sget-object v6, Lyads/lp1;->b:Lyads/l66;

    sget-object v7, Lyads/lp1;->a:Lyads/xr2;

    const-string v3, "angle"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v7, v3

    :goto_0
    iget-object p0, p0, Lyads/ip1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->P4:Lcl4;

    sget-object v1, Lyads/lp1;->d:Lyads/st3;

    const-string v2, "color_map"

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-static {v8, v9, v2, p0, v1}, Lyads/wq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lyads/st3;)Ljava/util/List;

    move-result-object p0

    sget-object v11, Lyads/w36;->f:Lyads/p36;

    sget-object v12, Lyads/bt4;->a:Lnl3;

    sget-object v13, Lyads/lp1;->c:Lyads/st3;

    sget-object v14, Lyads/uq3;->a:Lyads/l66;

    const-string v10, "colors"

    invoke-static/range {v8 .. v14}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/p36;Lnl3;Lyads/st3;Lyads/l66;)Lyads/ds2;

    move-result-object v1

    invoke-direct {v0, v7, p0, v1}, Lyads/dp1;-><init>(Lyads/as2;Ljava/util/List;Lyads/ds2;)V

    return-object v0
.end method
