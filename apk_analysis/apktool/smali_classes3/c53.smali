.class public final Lc53;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lb24;Lb53$b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb24;",
            "Lb53$b<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lb24;->r:Lb53;

    iget-object v0, v0, Lb53;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lb24;->t:Lb24$b;

    iget-object p0, p0, Lb24$b;->n:Lb53;

    iget-object p0, p0, Lb53;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    iget-object p0, p1, Lb53$b;->a:Ljava/lang/Object;

    :cond_0
    return-object p0

    :cond_1
    return-object v0
.end method

.method public static final b(Lzz5;Lb53$b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lzz5;",
            "Lb53$b<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object p0, p0, Lzz5;->j:Lb53;

    iget-object p0, p0, Lb53;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    iget-object p0, p1, Lb53$b;->a:Ljava/lang/Object;

    :cond_0
    return-object p0
.end method
