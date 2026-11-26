.class public final synthetic Lyy2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lyy2;->b:I

    iput-object p2, p0, Lyy2;->c:Ljava/lang/Object;

    iput-object p3, p0, Lyy2;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lyy2;->b:I

    iget-object v1, p0, Lyy2;->d:Ljava/lang/Object;

    iget-object p0, p0, Lyy2;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lr07;

    check-cast v1, Lyads/i36;

    check-cast p1, Lyads/u66;

    invoke-static {p0, v1, p1}, Lyads/j36;->a(Lr07;Lyads/i36;Lyads/u66;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Ldb6;

    check-cast v1, Lfh8;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Ldb6;->a:Lta6;

    iget-object v2, v1, Lnb6;->y:Ljava/lang/String;

    iget-object v3, v1, Lnb6;->z:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v4, v0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    const-string v0, "telemetry.sdk.name"

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "telemetry.sdk.version"

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {p1, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "attributes"

    if-eqz v5, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgc6;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v5, Lgc6;->b:Lhc6;

    iget-object v8, v5, Lgc6;->j:Ljava/util/List;

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v10, v5, Lgc6;->g:Ljava/lang/String;

    if-eqz v10, :cond_0

    const-string v11, "posthogDistinctId"

    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v10, v5, Lgc6;->h:Ljava/lang/String;

    if-eqz v10, :cond_1

    const-string v11, "sessionId"

    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v10, v5, Lgc6;->i:Ljava/lang/String;

    if-eqz v10, :cond_2

    const-string v11, "screen.name"

    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v10, v5, Lgc6;->k:Ljava/lang/String;

    if-eqz v10, :cond_3

    const-string v11, "app.state"

    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v10, v8

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "feature_flags"

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v8, v5, Lgc6;->c:Ljava/util/Map;

    invoke-virtual {v9, v8}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v10, "timeUnixNano"

    iget-object v11, v5, Lgc6;->l:Ljava/lang/String;

    invoke-interface {v8, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "observedTimeUnixNano"

    iget-object v11, v5, Lgc6;->m:Ljava/lang/String;

    invoke-interface {v8, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Lhc6;->d()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "severityNumber"

    invoke-interface {v8, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "severityText"

    invoke-virtual {v7}, Lhc6;->e()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "stringValue"

    iget-object v10, v5, Lgc6;->a:Ljava/lang/String;

    invoke-static {v7, v10}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "body"

    invoke-interface {v8, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v9}, Ljc6;->c(Ljava/util/LinkedHashMap;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v6, v5, Lgc6;->d:Ljava/lang/String;

    if-eqz v6, :cond_6

    const-string v7, "traceId"

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v6, v5, Lgc6;->e:Ljava/lang/String;

    if-eqz v6, :cond_7

    const-string v7, "spanId"

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v5, v5, Lgc6;->f:Ljava/lang/Integer;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "flags"

    invoke-interface {v8, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    invoke-static {v4}, Ljc6;->c(Ljava/util/LinkedHashMap;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v6, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lb36;

    const-string v5, "resource"

    invoke-direct {v4, v5, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lb36;

    const-string v5, "name"

    invoke-direct {p1, v5, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lb36;

    const-string v5, "version"

    invoke-direct {v2, v5, v3}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {p1, v2}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object p1

    new-instance v2, Lb36;

    const-string v3, "scope"

    invoke-direct {v2, v3, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lb36;

    const-string v3, "logRecords"

    invoke-direct {p1, v3, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, p1}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lb36;

    const-string v2, "scopeLogs"

    invoke-direct {v0, v2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v4, v0}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v0, "resourceLogs"

    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ldb6;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/i/v1/logs?token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lnb6;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lry1;

    invoke-direct {v1, p0, p1, v0}, Lry1;-><init>(Ldb6;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ldb6;->g(Ljava/lang/String;Lnl3;)Lb37;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldb6;->d(Lb37;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
