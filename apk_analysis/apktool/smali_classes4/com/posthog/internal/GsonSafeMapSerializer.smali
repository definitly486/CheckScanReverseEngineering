.class public final Lcom/posthog/internal/GsonSafeMapSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwd4<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Lnb6;

.field public final b:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lnb6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/posthog/internal/GsonSafeMapSerializer;->a:Lnb6;

    new-instance p1, Lcom/posthog/internal/GsonSafeMapSerializer$a;

    invoke-direct {p1}, Lcom/posthog/internal/GsonSafeMapSerializer$a;-><init>()V

    iget-object p1, p1, Lx39;->b:Ljava/lang/reflect/Type;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/posthog/internal/GsonSafeMapSerializer;->b:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lvd4;)Lac4;
    .locals 3

    new-instance v0, Lac4;

    invoke-direct {v0}, Lac4;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "list-element"

    invoke-virtual {p0, v1, v2, p2}, Lcom/posthog/internal/GsonSafeMapSerializer;->b(Ljava/lang/Object;Ljava/lang/String;Lvd4;)Lpc4;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lac4;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/String;Lvd4;)Lpc4;
    .locals 3

    iget-object v0, p0, Lcom/posthog/internal/GsonSafeMapSerializer;->a:Lnb6;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    instance-of v2, p1, Ljava/util/List;

    if-eqz v2, :cond_1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p3}, Lcom/posthog/internal/GsonSafeMapSerializer;->a(Ljava/util/List;Lvd4;)Lac4;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v2, p1, [Ljava/lang/Object;

    if-eqz v2, :cond_2

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Lyr;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/posthog/internal/GsonSafeMapSerializer;->a(Ljava/util/List;Lvd4;)Lac4;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_3

    check-cast p1, Ljava/util/Map;

    iget-object p2, p0, Lcom/posthog/internal/GsonSafeMapSerializer;->b:Ljava/lang/reflect/Type;

    invoke-virtual {p0, p1, p2, p3}, Lcom/posthog/internal/GsonSafeMapSerializer;->c(Ljava/util/Map;Ljava/lang/reflect/Type;Lvd4;)Lkd4;

    move-result-object p0

    return-object p0

    :cond_3
    :try_start_0
    invoke-virtual {v0}, Lnb6;->b()Lwd6;

    move-result-object p0

    iget-object p0, p0, Lwd6;->a:Lcom/google/gson/Gson;

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->n(Ljava/lang/Object;)Lpc4;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    iget-object p3, v0, Lnb6;->v:Lic6;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Property \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' with value \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' cannot be serialized to JSON: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". This property will be ignored."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lic6;->a(Ljava/lang/String;)V

    return-object v1
.end method

.method public final c(Ljava/util/Map;Ljava/lang/reflect/Type;Lvd4;)Lkd4;
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lkd4;

    invoke-direct {p2}, Lkd4;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, v1, p3}, Lcom/posthog/internal/GsonSafeMapSerializer;->b(Ljava/lang/Object;Ljava/lang/String;Lvd4;)Lpc4;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p2, Lkd4;->b:Lxq4;

    invoke-virtual {v2, v1, v0}, Lxq4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public final bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lvd4;)Lpc4;
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/posthog/internal/GsonSafeMapSerializer;->c(Ljava/util/Map;Ljava/lang/reflect/Type;Lvd4;)Lkd4;

    move-result-object p0

    return-object p0
.end method
