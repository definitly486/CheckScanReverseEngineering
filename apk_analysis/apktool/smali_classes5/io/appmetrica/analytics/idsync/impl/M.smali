.class public final Lio/appmetrica/analytics/idsync/impl/M;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/modulesapi/internal/common/ModulePreferences;

.field public final b:Lio/appmetrica/analytics/idsync/impl/L;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/modulesapi/internal/common/ModulePreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/M;->a:Lio/appmetrica/analytics/modulesapi/internal/common/ModulePreferences;

    new-instance p1, Lio/appmetrica/analytics/idsync/impl/L;

    invoke-direct {p1}, Lio/appmetrica/analytics/idsync/impl/L;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/M;->b:Lio/appmetrica/analytics/idsync/impl/L;

    const-string p1, "request_state"

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/M;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lio/appmetrica/analytics/idsync/impl/M;->a()Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-static {p1}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/M;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/LinkedHashMap;
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/M;->b:Lio/appmetrica/analytics/idsync/impl/L;

    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/M;->a:Lio/appmetrica/analytics/modulesapi/internal/common/ModulePreferences;

    iget-object p0, p0, Lio/appmetrica/analytics/idsync/impl/M;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lio/appmetrica/analytics/modulesapi/internal/common/ModulePreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/idsync/impl/L;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lm05;->b(I)I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/appmetrica/analytics/idsync/impl/K;

    iget-object v2, v2, Lio/appmetrica/analytics/idsync/impl/K;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v1
.end method
