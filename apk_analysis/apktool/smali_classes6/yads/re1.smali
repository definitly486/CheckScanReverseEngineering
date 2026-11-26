.class public final Lyads/re1;
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

    iput-object p1, p0, Lyads/re1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, p1, v0, p2}, Lyads/re1;->a(Lyads/ys4;Lyads/ze1;Lorg/json/JSONObject;)Lyads/ze1;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/ze1;Lorg/json/JSONObject;)Lyads/ze1;
    .locals 9

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v4

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance p1, Lyads/ze1;

    sget-object v3, Lyads/w36;->a:Lyads/o36;

    const/4 v8, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lyads/ze1;->a:Lyads/zw2;

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v8

    :goto_0
    sget-object v6, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "always_visible"

    move-object v1, p3

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object p3

    sget-object v3, Lyads/w36;->c:Lyads/u36;

    if-eqz p2, :cond_1

    iget-object v2, p2, Lyads/ze1;->b:Lyads/zw2;

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object v5, v8

    :goto_1
    const-string v2, "pattern"

    invoke-static/range {v0 .. v5}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object v7

    if-eqz p2, :cond_2

    iget-object v2, p2, Lyads/ze1;->c:Lyads/zw2;

    goto :goto_2

    :cond_2
    move-object v2, v8

    :goto_2
    iget-object p0, p0, Lyads/re1;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->t3:Lcl4;

    sget-object v6, Lyads/te1;->b:Lyads/st3;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v3, v4

    move-object v4, v2

    const-string v2, "pattern_elements"

    invoke-static/range {v0 .. v6}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;Lyads/st3;)Lyads/zw2;

    move-result-object p0

    move v4, v3

    if-eqz p2, :cond_3

    iget-object v8, p2, Lyads/ze1;->d:Lyads/zw2;

    :cond_3
    const-string p2, "raw_text_variable"

    invoke-static {v0, v1, p2, v4, v8}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object p2

    invoke-direct {p1, p3, v7, p0, p2}, Lyads/ze1;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object p1
.end method
