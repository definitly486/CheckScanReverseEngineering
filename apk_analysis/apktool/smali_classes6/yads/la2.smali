.class public final Lyads/la2;
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

    iput-object p1, p0, Lyads/la2;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyads/la2;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/ka2;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/ka2;
    .locals 14

    new-instance v0, Lyads/ka2;

    sget-object v4, Lyads/w36;->f:Lyads/p36;

    sget-object v5, Lyads/bt4;->a:Lnl3;

    sget-object v1, Lyads/oq3;->a:Lyads/y50;

    sget-object v11, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "color"

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v3

    sget-object v10, Lyads/w36;->d:Lyads/r36;

    sget-object v11, Lyads/bt4;->d:Lnl3;

    sget-object v12, Lyads/oa2;->e:Lyads/l66;

    sget-object v13, Lyads/oa2;->a:Lyads/xr2;

    const-string v9, "density"

    move-object v7, p1

    move-object/from16 v8, p2

    invoke-static/range {v7 .. v13}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v2, v13

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    sget-object v9, Lyads/w36;->a:Lyads/o36;

    sget-object v10, Lyads/bt4;->c:Lnl3;

    sget-object v12, Lyads/oa2;->b:Lyads/xr2;

    const-string v8, "is_animated"

    move-object/from16 v7, p2

    move-object v11, v6

    move-object v6, p1

    invoke-static/range {v6 .. v12}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v1

    move-object v6, v11

    if-nez v1, :cond_1

    move-object v1, v12

    :cond_1
    sget-object v12, Lyads/oa2;->c:Lyads/xr2;

    const-string v8, "is_enabled"

    move-object/from16 v7, p2

    move-object v11, v6

    move-object v6, p1

    invoke-static/range {v6 .. v12}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, v12

    :cond_2
    iget-object p0, p0, Lyads/la2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->v3:Lcl4;

    const-string v5, "particle_size"

    move-object/from16 v7, p2

    invoke-static {p1, v7, v5, p0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/af1;

    if-nez p0, :cond_3

    sget-object p0, Lyads/oa2;->d:Lyads/af1;

    :cond_3
    move-object v5, v3

    move-object v3, v1

    move-object v1, v5

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lyads/ka2;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/af1;)V

    return-object v0
.end method
