.class public final Lyads/ax1;
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

    iput-object p1, p0, Lyads/ax1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyads/ax1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/gw1;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/gw1;
    .locals 11

    new-instance v0, Lyads/gw1;

    iget-object v1, p0, Lyads/ax1;->a:Lyads/tq3;

    iget-object v1, v1, Lyads/tq3;->U5:Lcl4;

    const-string v2, "center_x"

    invoke-static {p1, p2, v2, v1}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/jw1;

    if-nez v1, :cond_0

    sget-object v1, Lyads/dx1;->a:Lyads/iw1;

    :cond_0
    iget-object v2, p0, Lyads/ax1;->a:Lyads/tq3;

    iget-object v2, v2, Lyads/tq3;->U5:Lcl4;

    const-string v3, "center_y"

    invoke-static {p1, p2, v3, v2}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/jw1;

    if-nez v2, :cond_1

    sget-object v2, Lyads/dx1;->b:Lyads/iw1;

    :cond_1
    iget-object v3, p0, Lyads/ax1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->m6:Lcl4;

    sget-object v4, Lyads/dx1;->e:Lyads/st3;

    const-string v5, "color_map"

    invoke-static {p1, p2, v5, v3, v4}, Lyads/wq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lyads/st3;)Ljava/util/List;

    move-result-object v3

    sget-object v7, Lyads/w36;->f:Lyads/p36;

    sget-object v8, Lyads/bt4;->a:Lnl3;

    sget-object v9, Lyads/dx1;->d:Lyads/st3;

    sget-object v4, Lyads/oq3;->a:Lyads/y50;

    sget-object v10, Lyads/uq3;->a:Lyads/l66;

    const-string v6, "colors"

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v4 .. v10}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/p36;Lnl3;Lyads/st3;Lyads/l66;)Lyads/ds2;

    move-result-object p1

    iget-object p0, p0, Lyads/ax1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->a6:Lcl4;

    const-string p2, "radius"

    invoke-static {v4, v5, p2, p0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/gx1;

    if-nez p0, :cond_2

    sget-object p0, Lyads/dx1;->c:Lyads/fx1;

    :cond_2
    move-object v5, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lyads/gw1;-><init>(Lyads/jw1;Lyads/jw1;Ljava/util/List;Lyads/ds2;Lyads/gx1;)V

    return-object v0
.end method
