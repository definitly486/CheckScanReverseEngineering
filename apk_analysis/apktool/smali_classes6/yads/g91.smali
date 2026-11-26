.class public final Lyads/g91;
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

    iput-object p1, p0, Lyads/g91;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 12

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v4

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance p1, Lyads/j91;

    iget-object v1, p0, Lyads/g91;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->Y2:Lcl4;

    const-string v2, "margins"

    move v3, v4

    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object p2

    sget-object v2, Lyads/w36;->a:Lyads/o36;

    sget-object v6, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    move v4, v3

    move-object v3, v2

    const-string v2, "show_at_end"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v8

    move-object v2, v3

    move v3, v4

    const-string v4, "show_at_start"

    move v11, v3

    move-object v3, v2

    move-object v2, v4

    move v4, v11

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v9

    move-object v2, v3

    move v3, v4

    const-string v4, "show_between"

    move v11, v3

    move-object v3, v2

    move-object v2, v4

    move v4, v11

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v6

    move v3, v4

    iget-object p0, p0, Lyads/g91;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->V2:Lcl4;

    const-string v2, "style"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v10

    move-object v5, p1

    move-object v7, v8

    move-object v8, v9

    move-object v9, v6

    move-object v6, p2

    invoke-direct/range {v5 .. v10}, Lyads/j91;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object v5
.end method
