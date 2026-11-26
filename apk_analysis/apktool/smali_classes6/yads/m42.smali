.class public final Lyads/m42;
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

    iput-object p1, p0, Lyads/m42;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 13

    new-instance v0, Lyads/l42;

    sget-object v4, Lyads/w36;->f:Lyads/p36;

    sget-object v5, Lyads/bt4;->a:Lnl3;

    sget-object v1, Lyads/oq3;->a:Lyads/y50;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "color"

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v3

    iget-object v1, p0, Lyads/m42;->a:Lyads/tq3;

    iget-object v1, v1, Lyads/tq3;->A7:Lcl4;

    const-string v2, "style"

    invoke-static {p1, p2, v2, v1}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/s42;

    if-nez v1, :cond_0

    sget-object v1, Lyads/p42;->a:Lyads/r42;

    :cond_0
    sget-object v9, Lyads/p42;->d:Lyads/m36;

    sget-object v10, Lyads/g12;->d:Lnl3;

    sget-object v12, Lyads/p42;->b:Lyads/xr2;

    const-string v8, "unit"

    move-object v7, p2

    move-object v11, v6

    move-object v6, p1

    invoke-static/range {v6 .. v12}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v12, v2

    :goto_0
    sget-object v7, Lyads/w36;->d:Lyads/r36;

    sget-object v8, Lyads/bt4;->d:Lnl3;

    sget-object v9, Lyads/p42;->e:Lyads/l66;

    sget-object v10, Lyads/p42;->c:Lyads/xr2;

    const-string v6, "width"

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v4 .. v10}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v10, v2

    :goto_1
    invoke-direct {v0, v3, v1, v12, v10}, Lyads/l42;-><init>(Lyads/as2;Lyads/s42;Lyads/as2;Lyads/as2;)V

    return-object v0
.end method
