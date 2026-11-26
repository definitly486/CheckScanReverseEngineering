.class public final Lyads/be2;
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

    iput-object p1, p0, Lyads/be2;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 13

    new-instance v0, Lyads/ae2;

    iget-object p0, p0, Lyads/be2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->k1:Lcl4;

    sget-object v1, Lyads/ee2;->c:Lyads/st3;

    const-string v2, "actions"

    invoke-static {p1, p2, v2, p0, v1}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lyads/st3;)Ljava/util/List;

    move-result-object p0

    sget-object v4, Lyads/w36;->a:Lyads/o36;

    sget-object v5, Lyads/bt4;->c:Lnl3;

    sget-object v1, Lyads/oq3;->a:Lyads/y50;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "condition"

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p1

    sget-object v9, Lyads/ee2;->b:Lyads/m36;

    sget-object v10, Lyads/zd2;->d:Lnl3;

    sget-object v12, Lyads/ee2;->a:Lyads/xr2;

    const-string v8, "mode"

    move-object v7, v2

    move-object v11, v6

    move-object v6, v1

    invoke-static/range {v6 .. v12}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v12, p2

    :goto_0
    invoke-direct {v0, p0, p1, v12}, Lyads/ae2;-><init>(Ljava/util/List;Lyads/as2;Lyads/as2;)V

    return-object v0
.end method
