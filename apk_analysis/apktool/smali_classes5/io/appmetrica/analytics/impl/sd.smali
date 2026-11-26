.class public final Lio/appmetrica/analytics/impl/sd;
.super Lio/appmetrica/analytics/impl/Ug;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;)V
    .locals 5

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Ug;-><init>(Lio/appmetrica/analytics/impl/i5;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/i5;->a()Lio/appmetrica/analytics/impl/b5;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/b5;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "empty"

    :cond_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[ModulesEventHandler-%s]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Fa;->o()Lio/appmetrica/analytics/impl/gd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/gd;->a(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lio/appmetrica/analytics/impl/fd;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, p1, v2}, Lio/appmetrica/analytics/impl/fd;-><init>(Lio/appmetrica/analytics/impl/i5;Ljava/lang/String;)V

    new-instance v2, Lb36;

    invoke-direct {v2, v3, v4}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lio/appmetrica/analytics/impl/sd;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Z
    .locals 9

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ug;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/i5;->t:Lio/appmetrica/analytics/impl/Go;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Go;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lio/appmetrica/analytics/impl/sd;->b:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb36;

    iget-object v2, v0, Lb36;->b:Ljava/lang/Object;

    check-cast v2, Lio/appmetrica/analytics/modulesapi/internal/service/event/ModuleServiceEventHandler;

    iget-object v0, v0, Lb36;->c:Ljava/lang/Object;

    check-cast v0, Lio/appmetrica/analytics/impl/fd;

    new-instance v3, Lio/appmetrica/analytics/impl/id;

    iget-object v4, v0, Lio/appmetrica/analytics/impl/fd;->b:Lio/appmetrica/analytics/impl/jd;

    iget-object v5, v0, Lio/appmetrica/analytics/impl/fd;->a:Lio/appmetrica/analytics/impl/Ob;

    new-instance v6, Lio/appmetrica/analytics/impl/hd;

    iget-object v7, v0, Lio/appmetrica/analytics/impl/fd;->e:Ljava/lang/String;

    iget-boolean v8, v0, Lio/appmetrica/analytics/impl/fd;->d:Z

    iget-object v0, v0, Lio/appmetrica/analytics/impl/fd;->c:Lio/appmetrica/analytics/impl/w9;

    invoke-direct {v6, v7, v8, v0, p1}, Lio/appmetrica/analytics/impl/hd;-><init>(Ljava/lang/String;ZLio/appmetrica/analytics/impl/w9;Lio/appmetrica/analytics/impl/a6;)V

    invoke-direct {v3, v4, v5, v6}, Lio/appmetrica/analytics/impl/id;-><init>(Lio/appmetrica/analytics/modulesapi/internal/common/ModulePreferences;Lio/appmetrica/analytics/modulesapi/internal/common/ModulePreferences;Lio/appmetrica/analytics/modulesapi/internal/service/event/ModuleEventServiceHandlerReporter;)V

    invoke-interface {v2, v3, p1}, Lio/appmetrica/analytics/modulesapi/internal/service/event/ModuleServiceEventHandler;->handle(Lio/appmetrica/analytics/modulesapi/internal/service/event/ModuleEventServiceHandlerContext;Lio/appmetrica/analytics/coreapi/internal/event/CounterReportApi;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method
