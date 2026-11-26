.class public final Lcom/posthog/internal/PropertyValueDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnc4<",
        "Lcom/posthog/internal/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lac4;)Ljava/util/ArrayList;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lac4;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpc4;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lkd4;

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Lpc4;->d()Lkd4;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2}, Lkd4;->h(Ljava/lang/String;)Lpc4;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lpc4;->g()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    goto/16 :goto_a

    :cond_1
    const-string v2, "value"

    invoke-virtual {v1, v2}, Lkd4;->h(Ljava/lang/String;)Lpc4;

    move-result-object v2

    if-eqz v2, :cond_8

    instance-of v4, v2, Lqd4;

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lpc4;->f()Lqd4;

    move-result-object v2

    iget-object v4, v2, Lqd4;->b:Ljava/io/Serializable;

    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lqd4;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_2

    :cond_2
    instance-of v6, v4, Ljava/lang/Number;

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Lqd4;->g()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_2

    :cond_3
    new-instance p0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to parse number: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lqd4;->g()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v3

    goto :goto_2

    :cond_6
    instance-of v4, v2, Lac4;

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lpc4;->c()Lac4;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v2, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, v2, Lac4;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpc4;

    invoke-virtual {v6}, Lpc4;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    move-object v2, v4

    :goto_2
    move-object v6, v2

    goto :goto_3

    :cond_8
    move-object v6, v3

    :goto_3
    const-string v2, "operator"

    invoke-virtual {v1, v2}, Lkd4;->h(Ljava/lang/String;)Lpc4;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lpc4;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    sget-object v4, Lcom/posthog/internal/a;->Companion:Lcom/posthog/internal/a$a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/posthog/internal/a$a;->a(Ljava/lang/String;)Lcom/posthog/internal/a;

    move-result-object v2

    move-object v7, v2

    goto :goto_4

    :cond_9
    move-object v7, v3

    :goto_4
    const-string v2, "type"

    invoke-virtual {v1, v2}, Lkd4;->h(Ljava/lang/String;)Lpc4;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lpc4;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    sget-object v4, Lcom/posthog/internal/b;->Companion:Lcom/posthog/internal/b$a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/posthog/internal/b$a;->a(Ljava/lang/String;)Lcom/posthog/internal/b;

    move-result-object v2

    move-object v8, v2

    goto :goto_5

    :cond_a
    move-object v8, v3

    :goto_5
    const-string v2, "negation"

    invoke-virtual {v1, v2}, Lkd4;->h(Ljava/lang/String;)Lpc4;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lpc4;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v9, v2

    goto :goto_6

    :cond_b
    move-object v9, v3

    :goto_6
    const-string v2, "dependency_chain"

    invoke-virtual {v1, v2}, Lkd4;->h(Ljava/lang/String;)Lpc4;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lpc4;->c()Lac4;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lac4;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpc4;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v10, v4, Lqd4;

    if-eqz v10, :cond_d

    invoke-virtual {v4}, Lpc4;->f()Lqd4;

    move-result-object v10

    iget-object v10, v10, Lqd4;->b:Ljava/io/Serializable;

    instance-of v10, v10, Ljava/lang/String;

    if-eqz v10, :cond_d

    invoke-virtual {v4}, Lpc4;->g()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_d
    move-object v4, v3

    :goto_8
    if-eqz v4, :cond_c

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    move-object v10, v2

    goto :goto_9

    :cond_f
    move-object v10, v3

    :goto_9
    new-instance v4, Llc3;

    invoke-direct/range {v4 .. v10}, Llc3;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/posthog/internal/a;Lcom/posthog/internal/b;Ljava/lang/Boolean;Ljava/util/List;)V

    move-object v3, v4

    :cond_10
    :goto_a
    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_11
    return-object v0
.end method


# virtual methods
.method public final a(Lpc4;Ljava/lang/reflect/Type;Lmc4;)Lcom/posthog/internal/c;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lac4;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lpc4;->c()Lac4;

    move-result-object p0

    iget-object p1, p0, Lac4;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpc4;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lkd4;

    if-nez v0, :cond_2

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {p2}, Lpc4;->d()Lkd4;

    move-result-object p2

    iget-object p2, p2, Lkd4;->b:Lxq4;

    const-string v0, "key"

    invoke-virtual {p2, v0}, Lxq4;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/posthog/internal/c$a;

    invoke-static {p0}, Lcom/posthog/internal/PropertyValueDeserializer;->b(Lac4;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/posthog/internal/c$a;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    :cond_3
    const-string v0, "type"

    invoke-virtual {p2, v0}, Lxq4;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "values"

    invoke-virtual {p2, v0}, Lxq4;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result p0

    invoke-direct {p2, p0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpc4;

    const-class v0, Lxr6;

    move-object v1, p3

    check-cast v1, Lcom/google/gson/internal/bind/TreeTypeAdapter$a;

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/internal/bind/TreeTypeAdapter$a;->a(Lpc4;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lxr6;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance p0, Lcom/posthog/internal/c$b;

    invoke-direct {p0, p2}, Lcom/posthog/internal/c$b;-><init>(Ljava/util/ArrayList;)V

    return-object p0

    :cond_5
    new-instance p1, Lcom/posthog/internal/c$a;

    invoke-static {p0}, Lcom/posthog/internal/PropertyValueDeserializer;->b(Lac4;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/posthog/internal/c$a;-><init>(Ljava/util/ArrayList;)V

    return-object p1
.end method

.method public final bridge synthetic deserialize(Lpc4;Ljava/lang/reflect/Type;Lmc4;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/posthog/internal/PropertyValueDeserializer;->a(Lpc4;Ljava/lang/reflect/Type;Lmc4;)Lcom/posthog/internal/c;

    move-result-object p0

    return-object p0
.end method
