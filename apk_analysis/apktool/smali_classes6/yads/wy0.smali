.class public final Lyads/wy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/yy0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lyads/vq0;Ljava/lang/Object;Ljava/lang/String;Lyads/u66;)Lyads/u66;
    .locals 4

    instance-of v0, p3, Lyads/p66;

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dict_set_value action requires dict variable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    return-object p3

    :cond_0
    invoke-virtual {p3}, Lyads/u66;->b()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid variable value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    return-object p3

    :cond_2
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Lyads/p66;

    invoke-virtual {p1, p0}, Lyads/p66;->b(Lorg/json/JSONObject;)V

    return-object p3

    :cond_4
    move-object v0, p3

    check-cast v0, Lyads/p66;

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, p0}, Lyads/p66;->b(Lorg/json/JSONObject;)V

    return-object p3
.end method

.method public static a(Lyads/wt0;Lyads/vq0;Lyads/fs2;)V
    .locals 3

    .line 92
    iget-object v0, p0, Lyads/wt0;->c:Lyads/as2;

    invoke-virtual {v0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lyads/wt0;->a:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    iget-object p0, p0, Lyads/wt0;->b:Lyads/oe2;

    if-eqz p0, :cond_0

    invoke-static {p0, p2}, Lyads/o01;->c(Lyads/oe2;Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 95
    :goto_0
    new-instance v2, Llj7;

    invoke-direct {v2, p1, p0, v1}, Llj7;-><init>(Lyads/vq0;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0, p2, v2}, Lyads/l76;->a(Lyads/vq0;Ljava/lang/String;Lyads/fs2;Lnl3;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lyads/ry0;Lyads/vq0;Lyads/fs2;)Z
    .locals 0

    .line 96
    instance-of p0, p2, Lyads/dy0;

    if-eqz p0, :cond_0

    .line 97
    check-cast p2, Lyads/dy0;

    .line 98
    iget-object p0, p2, Lyads/dy0;->a:Lyads/wt0;

    .line 99
    invoke-static {p0, p3, p4}, Lyads/wy0;->a(Lyads/wt0;Lyads/vq0;Lyads/fs2;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
