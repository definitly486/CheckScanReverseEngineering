.class public final Lyads/pr0;
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
    .locals 14

    move-object/from16 v1, p2

    new-instance p0, Lyads/mr0;

    sget-object v7, Lyads/w36;->c:Lyads/u36;

    const-string v2, "description"

    invoke-static {p1, v1, v2, v7}, Lyads/oq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v8

    const-string v2, "hint"

    invoke-static {p1, v1, v2, v7}, Lyads/oq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v9

    sget-object v10, Lyads/w36;->a:Lyads/o36;

    sget-object v11, Lyads/bt4;->c:Lnl3;

    const-string v2, "is_checked"

    invoke-static {p1, v1, v2, v10, v11}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v12

    sget-object v3, Lyads/sr0;->d:Lyads/m36;

    sget-object v4, Lyads/jr0;->d:Lnl3;

    sget-object v6, Lyads/sr0;->a:Lyads/xr2;

    sget-object v5, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "mode"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v13, v6

    goto :goto_0

    :cond_0
    move-object v13, v2

    :goto_0
    sget-object v6, Lyads/sr0;->b:Lyads/xr2;

    const-string v2, "mute_after_action"

    move-object v0, p1

    move-object/from16 v1, p2

    move-object v3, v10

    move-object v4, v11

    invoke-static/range {v0 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v6, v2

    :goto_1
    const-string v2, "state_description"

    invoke-static {p1, v1, v2, v7}, Lyads/oq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v2

    const-string v3, "type"

    sget-object v4, Lyads/lr0;->d:Lnl3;

    invoke-static {p1, v1, v3, v4, v5}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/l66;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/lr0;

    if-nez v0, :cond_2

    sget-object v0, Lyads/sr0;->c:Lyads/lr0;

    :cond_2
    move-object v7, v0

    move-object v5, v6

    move-object v1, v8

    move-object v3, v12

    move-object v4, v13

    move-object v0, p0

    move-object v6, v2

    move-object v2, v9

    invoke-direct/range {v0 .. v7}, Lyads/mr0;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/lr0;)V

    return-object v0
.end method
