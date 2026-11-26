.class public abstract Lpc4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Lac4;
    .locals 1

    instance-of v0, p0, Lac4;

    if-eqz v0, :cond_0

    check-cast p0, Lac4;

    return-object p0

    :cond_0
    const-string v0, "Not a JSON Array: "

    invoke-static {p0, v0}, Lqz0;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()Lkd4;
    .locals 1

    instance-of v0, p0, Lkd4;

    if-eqz v0, :cond_0

    check-cast p0, Lkd4;

    return-object p0

    :cond_0
    const-string v0, "Not a JSON Object: "

    invoke-static {p0, v0}, Lqz0;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final f()Lqd4;
    .locals 1

    instance-of v0, p0, Lqd4;

    if-eqz v0, :cond_0

    check-cast p0, Lqd4;

    return-object p0

    :cond_0
    const-string v0, "Not a JSON Primitive: "

    invoke-static {p0, v0}, Lqz0;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/google/gson/stream/JsonWriter;

    new-instance v2, Lq98;

    invoke-direct {v2, v0}, Lq98;-><init>(Ljava/lang/Appendable;)V

    invoke-direct {v1, v2}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    sget-object v2, Lu98;->LENIENT:Lu98;

    invoke-virtual {v1, v2}, Lcom/google/gson/stream/JsonWriter;->setStrictness(Lu98;)V

    sget-object v2, Lcom/google/gson/internal/bind/JsonElementTypeAdapter;->a:Lcom/google/gson/internal/bind/JsonElementTypeAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1}, Lcom/google/gson/internal/bind/JsonElementTypeAdapter;->g(Lpc4;Lcom/google/gson/stream/JsonWriter;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lxg;->d(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
