.class public abstract Lyads/i75;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lyads/h75;Lyads/h75;)Lyads/h75;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lyads/h75;

    iget-object v0, p0, Lyads/h75;->a:Ljava/util/Map;

    iget-object p0, p0, Lyads/h75;->b:Lyads/c;

    invoke-direct {p1, v0, p0}, Lyads/h75;-><init>(Ljava/util/Map;Lyads/c;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lyads/h75;->b:Lyads/c;

    if-nez v0, :cond_1

    iget-object v0, p1, Lyads/h75;->b:Lyads/c;

    :cond_1
    iget-object p0, p0, Lyads/h75;->a:Ljava/util/Map;

    iget-object p1, p1, Lyads/h75;->a:Ljava/util/Map;

    invoke-static {p0, p1}, Ln05;->g(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p0

    new-instance p1, Lyads/h75;

    invoke-direct {p1, p0, v0}, Lyads/h75;-><init>(Ljava/util/Map;Lyads/c;)V

    return-object p1
.end method
