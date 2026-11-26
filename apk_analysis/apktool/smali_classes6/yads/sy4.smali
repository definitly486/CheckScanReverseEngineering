.class public abstract Lyads/sy4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lyads/qy4;)Ljava/util/LinkedHashMap;
    .locals 4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "adapter"

    iget-object v2, p0, Lyads/qy4;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lyads/qy4;->b:Lyads/yy4;

    if-eqz v1, :cond_0

    const-string v2, "winner_name"

    iget-object v3, v1, Lyads/yy4;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "winner_ad_unit"

    iget-object v1, v1, Lyads/yy4;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lyads/qy4;->d:Lyads/iz4;

    iget-object v1, v1, Lyads/iz4;->a:Lyads/kz4;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "status"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lyads/qy4;->d:Lyads/iz4;

    iget-object v1, v1, Lyads/iz4;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error_code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Lyads/qy4;->d:Lyads/iz4;

    iget-object v1, p0, Lyads/iz4;->a:Lyads/kz4;

    sget-object v2, Lyads/kz4;->d:Lyads/kz4;

    if-ne v1, v2, :cond_5

    iget-object p0, p0, Lyads/iz4;->b:Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-static {p0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_4

    :cond_3
    const-string p0, "Unknown error"

    :cond_4
    const-string v1, "error_message"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method
