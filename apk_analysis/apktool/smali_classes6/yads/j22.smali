.class public final Lyads/j22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv5;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/j22;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 10

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v3

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance p1, Lyads/l22;

    move v4, v3

    sget-object v3, Lyads/w36;->b:Lyads/s36;

    sget-object v6, Lyads/bt4;->e:Lnl3;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "end"

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object p2

    move-object v8, v7

    move-object v7, v6

    move-object v6, v3

    move v3, v4

    iget-object v2, p0, Lyads/j22;->a:Lyads/tq3;

    iget-object v5, v2, Lyads/tq3;->Y2:Lcl4;

    const-string v2, "margins"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v9

    const-string v2, "start"

    const/4 v5, 0x0

    move v4, v3

    move-object v3, v6

    move-object v6, v7

    move-object v7, v8

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v7

    move v3, v4

    iget-object v2, p0, Lyads/j22;->a:Lyads/tq3;

    iget-object v5, v2, Lyads/tq3;->V2:Lcl4;

    const-string v2, "track_active_style"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v8

    iget-object p0, p0, Lyads/j22;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->V2:Lcl4;

    const-string v2, "track_inactive_style"

    invoke-static/range {v0 .. v5}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, v9

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lyads/l22;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object v4
.end method
