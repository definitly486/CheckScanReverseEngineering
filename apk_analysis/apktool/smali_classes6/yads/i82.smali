.class public final Lyads/i82;
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

    iput-object p1, p0, Lyads/i82;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 7

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v3

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance p1, Lyads/bb2;

    iget-object v1, p0, Lyads/i82;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->l1:Lcl4;

    const-string v2, "actions"

    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object p2

    iget-object v2, p0, Lyads/i82;->a:Lyads/tq3;

    iget-object v5, v2, Lyads/tq3;->u8:Lcl4;

    const-string v2, "images"

    invoke-static/range {v0 .. v5}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v6

    iget-object p0, p0, Lyads/i82;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->r8:Lcl4;

    const-string v2, "ranges"

    invoke-static/range {v0 .. v5}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object p0

    sget-object v2, Lyads/w36;->c:Lyads/u36;

    const/4 v5, 0x0

    move v4, v3

    move-object v3, v2

    const-string v2, "text"

    invoke-static/range {v0 .. v5}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object v0

    invoke-direct {p1, p2, v6, p0, v0}, Lyads/bb2;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object p1
.end method
