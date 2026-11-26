.class public final Lyads/hy1;
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

    iput-object p1, p0, Lyads/hy1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyads/hy1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/gy1;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/gy1;
    .locals 6

    new-instance v0, Lyads/gy1;

    sget-object v1, Lyads/w36;->f:Lyads/p36;

    sget-object v2, Lyads/bt4;->a:Lnl3;

    const-string v3, "background_color"

    invoke-static {p1, p2, v3, v1, v2}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v1

    iget-object v2, p0, Lyads/hy1;->a:Lyads/tq3;

    iget-object v2, v2, Lyads/tq3;->v3:Lcl4;

    const-string v3, "corner_radius"

    invoke-static {p1, p2, v3, v2}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/af1;

    if-nez v2, :cond_0

    sget-object v2, Lyads/ky1;->a:Lyads/af1;

    :cond_0
    iget-object v3, p0, Lyads/hy1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->v3:Lcl4;

    const-string v4, "item_height"

    invoke-static {p1, p2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/af1;

    if-nez v3, :cond_1

    sget-object v3, Lyads/ky1;->b:Lyads/af1;

    :cond_1
    iget-object v4, p0, Lyads/hy1;->a:Lyads/tq3;

    iget-object v4, v4, Lyads/tq3;->v3:Lcl4;

    const-string v5, "item_width"

    invoke-static {p1, p2, v5, v4}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/af1;

    if-nez v4, :cond_2

    sget-object v4, Lyads/ky1;->c:Lyads/af1;

    :cond_2
    iget-object p0, p0, Lyads/hy1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->D7:Lcl4;

    const-string v5, "stroke"

    invoke-static {p1, p2, v5, p0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lyads/l42;

    invoke-direct/range {v0 .. v5}, Lyads/gy1;-><init>(Lyads/as2;Lyads/af1;Lyads/af1;Lyads/af1;Lyads/l42;)V

    return-object v0
.end method
