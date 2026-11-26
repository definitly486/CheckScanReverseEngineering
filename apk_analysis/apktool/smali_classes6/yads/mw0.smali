.class public final Lyads/mw0;
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

    iput-object p1, p0, Lyads/mw0;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 6

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v3

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance p1, Lyads/ow0;

    iget-object p0, p0, Lyads/mw0;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->Y8:Lcl4;

    const-string v2, "value"

    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object p0

    sget-object p2, Lyads/w36;->c:Lyads/u36;

    const/4 v5, 0x0

    const-string v2, "variable_name"

    move v4, v3

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lyads/ow0;-><init>(Lyads/zw2;Lyads/zw2;)V

    return-object p1
.end method
