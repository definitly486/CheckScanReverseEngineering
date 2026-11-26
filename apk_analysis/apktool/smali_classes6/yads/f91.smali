.class public final Lyads/f91;
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

    iput-object p1, p0, Lyads/f91;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 9

    new-instance v0, Lyads/i81;

    iget-object v1, p0, Lyads/f91;->a:Lyads/tq3;

    iget-object v1, v1, Lyads/tq3;->X2:Lcl4;

    const-string v2, "margins"

    invoke-static {p1, p2, v2, v1}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/yc1;

    sget-object v5, Lyads/w36;->a:Lyads/o36;

    sget-object v6, Lyads/bt4;->c:Lnl3;

    sget-object v8, Lyads/i91;->a:Lyads/xr2;

    sget-object v2, Lyads/oq3;->a:Lyads/y50;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v4, "show_at_end"

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v2 .. v8}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, v8

    :cond_0
    sget-object v8, Lyads/i91;->b:Lyads/xr2;

    const-string v4, "show_at_start"

    invoke-static/range {v2 .. v8}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p2

    if-nez p2, :cond_1

    move-object p2, v8

    :cond_1
    sget-object v8, Lyads/i91;->c:Lyads/xr2;

    const-string v4, "show_between"

    invoke-static/range {v2 .. v8}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, v8

    :cond_2
    iget-object p0, p0, Lyads/f91;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->U2:Lcl4;

    const-string v5, "style"

    invoke-static {v2, v3, v5, p0}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lyads/tc1;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lyads/i81;-><init>(Lyads/yc1;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/tc1;)V

    return-object v0
.end method
