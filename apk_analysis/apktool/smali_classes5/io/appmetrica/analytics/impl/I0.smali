.class public final Lio/appmetrica/analytics/impl/I0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Qb;

.field public final b:Lio/appmetrica/analytics/impl/Rb;

.field public final c:Lio/appmetrica/analytics/impl/Tb;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/p4;->d()Lio/appmetrica/analytics/impl/C0;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/impl/Qb;

    invoke-direct {v1, v0}, Lio/appmetrica/analytics/impl/Qb;-><init>(Lio/appmetrica/analytics/impl/C0;)V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/I0;->a:Lio/appmetrica/analytics/impl/Qb;

    new-instance v0, Lio/appmetrica/analytics/impl/Rb;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Rb;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/I0;->b:Lio/appmetrica/analytics/impl/Rb;

    new-instance v0, Lio/appmetrica/analytics/impl/Tb;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Tb;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/I0;->c:Lio/appmetrica/analytics/impl/Tb;

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/I0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object p0, p0, Lio/appmetrica/analytics/impl/I0;->c:Lio/appmetrica/analytics/impl/Tb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "sender"

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    new-instance v1, Lb36;

    invoke-direct {v1, v0, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "event"

    if-nez p2, :cond_1

    const-string p2, "null"

    :cond_1
    new-instance v0, Lb36;

    invoke-direct {v0, p1, p2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "payload"

    if-nez p3, :cond_2

    const-string p3, "null"

    :cond_2
    new-instance p2, Lb36;

    invoke-direct {p2, p1, p3}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v0, p2}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Ln05;->f([Lb36;)Ljava/util/LinkedHashMap;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p2}, Lio/appmetrica/analytics/ModuleEvent;->newBuilder(I)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p2

    const-string p3, "appmetrica_system_event_42"

    invoke-virtual {p2, p3}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withName(Ljava/lang/String;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p2

    monitor-enter p0

    :try_start_0
    iget-object p3, p0, Lio/appmetrica/analytics/impl/Tb;->a:Ljava/util/List;

    if-nez p3, :cond_3

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object p3

    iget-object p3, p3, Lio/appmetrica/analytics/impl/p4;->g:Lio/appmetrica/analytics/impl/P5;

    invoke-virtual {p3}, Lio/appmetrica/analytics/impl/P5;->a()Landroid/content/Context;

    move-result-object p3

    if-eqz p3, :cond_3

    new-instance v0, Lio/appmetrica/analytics/impl/ce;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/ce;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/rn;

    invoke-direct {v1, p3}, Lio/appmetrica/analytics/impl/rn;-><init>(Landroid/content/Context;)V

    new-instance p3, Lio/appmetrica/analytics/impl/To;

    invoke-direct {p3}, Lio/appmetrica/analytics/impl/To;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [Lio/appmetrica/analytics/impl/u;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p3, v2, v0

    invoke-static {v2}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Tb;->a:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_0
    iget-object p3, p0, Lio/appmetrica/analytics/impl/Tb;->a:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/appmetrica/analytics/impl/u;

    invoke-interface {p3, p1}, Lio/appmetrica/analytics/impl/u;->a(Ljava/util/Map;)Ljava/util/Map;

    goto :goto_1

    :cond_4
    invoke-virtual {p2, p1}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withAttributes(Ljava/util/Map;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/ModuleEvent$Builder;->build()Lio/appmetrica/analytics/ModuleEvent;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/ModulesFacade;->reportEvent(Lio/appmetrica/analytics/ModuleEvent;)V

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 149
    iget-object v0, p0, Lio/appmetrica/analytics/impl/I0;->a:Lio/appmetrica/analytics/impl/Qb;

    .line 150
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Qb;->c:Lio/appmetrica/analytics/impl/Al;

    const/4 v2, 0x0

    .line 151
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Al;->a(Ljava/lang/Void;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Qb;->d:Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Qb;->e:Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    invoke-virtual {v1, p2}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Qb;->f:Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    invoke-virtual {v0, p3}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lio/appmetrica/analytics/impl/I0;->b:Lio/appmetrica/analytics/impl/Rb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    .line 158
    iget-object v0, v0, Lio/appmetrica/analytics/impl/p4;->c:Lio/appmetrica/analytics/impl/f4;

    .line 159
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/f4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v0

    new-instance v1, Lhj2;

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lhj2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    check-cast v0, Lio/appmetrica/analytics/impl/M9;

    .line 160
    iget-object p0, v0, Lio/appmetrica/analytics/impl/M9;->b:Landroid/os/Handler;

    .line 161
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 162
    const-string p0, " with name = "

    const-string p1, " and payload = "

    .line 163
    const-string p2, "Failed report event from sender: "

    invoke-static {p2, v3, p0, v4, p1}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 164
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 165
    sget-object p1, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->Companion:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger$Companion;

    invoke-virtual {p1}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger$Companion;->getAnonymousInstance()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object p1

    const-string p2, "[AppMetricaLibraryAdapterProxy]"

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
