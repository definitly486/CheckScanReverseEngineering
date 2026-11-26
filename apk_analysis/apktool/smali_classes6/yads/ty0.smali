.class public abstract Lyads/ty0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lorg/json/JSONArray;Lnl3;)Lorg/json/JSONArray;
    .locals 4

    .line 60
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 62
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    .line 63
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 65
    invoke-interface {p1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public static final a(Lyads/vq0;Lnl3;Lyads/u66;)Lyads/u66;
    .locals 2

    instance-of v0, p2, Lyads/m66;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Action requires array variable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Lyads/u66;->b()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid variable value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    return-object p2

    :cond_2
    move-object p0, p2

    check-cast p0, Lyads/m66;

    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lyads/m66;->b(Lorg/json/JSONArray;)V

    return-object p2
.end method

.method public static final a(Lyads/vq0;Ljava/lang/String;Lyads/fs2;Lnl3;)V
    .locals 2

    .line 59
    new-instance v0, Lyt0;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0, p3}, Lyt0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, p1, p2, v0}, Lyads/l76;->a(Lyads/vq0;Ljava/lang/String;Lyads/fs2;Lnl3;)V

    return-void
.end method
