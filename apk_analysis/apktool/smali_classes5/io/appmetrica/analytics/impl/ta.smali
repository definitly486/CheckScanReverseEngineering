.class public final Lio/appmetrica/analytics/impl/ta;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lio/appmetrica/analytics/impl/ta;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ed;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceComponentsInitializer;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/ta;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/ta;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/ta;->d:Lio/appmetrica/analytics/impl/ta;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/Ed;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Ed;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ta;->a:Lio/appmetrica/analytics/impl/Ed;

    invoke-static {}, Lio/appmetrica/analytics/impl/rk;->a()Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceComponentsInitializer;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ta;->b:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceComponentsInitializer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/ta;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Lio/appmetrica/analytics/impl/Fa;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ta;->b:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceComponentsInitializer;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceComponentsInitializer;->onCreate(Landroid/content/Context;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ta;->a:Lio/appmetrica/analytics/impl/Ed;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Fa;->s:Lio/appmetrica/analytics/impl/ed;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/ed;->a()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v2, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;

    invoke-static {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->loadAndInstantiateClassWithDefaultConstructor(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lio/appmetrica/analytics/impl/nd;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lio/appmetrica/analytics/impl/nd;-><init>(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_0
    check-cast v2, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;

    sget-object v3, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/Fa;->p()Lio/appmetrica/analytics/impl/Nk;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/appmetrica/analytics/impl/Nk;->a(Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;)V

    new-instance v2, Lio/appmetrica/analytics/impl/nd;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lio/appmetrica/analytics/impl/nd;-><init>(Ljava/lang/String;Z)V

    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Lio/appmetrica/analytics/impl/Dk;

    sget-object v1, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Fa;->D()Lio/appmetrica/analytics/impl/Jo;

    move-result-object v1

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Jo;->d:Lio/appmetrica/analytics/impl/Fo;

    invoke-direct {p0, v1}, Lio/appmetrica/analytics/impl/Dk;-><init>(Lio/appmetrica/analytics/impl/Fo;)V

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Wc;->a(Landroid/content/Context;)V

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->D()Lio/appmetrica/analytics/impl/Jo;

    move-result-object p0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Jo;->c:Lio/appmetrica/analytics/impl/Fo;

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Fo;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Ho;->a()Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->q()Lio/appmetrica/analytics/impl/Hd;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Hd;->a()Lio/appmetrica/analytics/internal/IdentifiersResult;

    new-instance p0, Lio/appmetrica/analytics/impl/od;

    sget-object p1, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Fa;->d:Lio/appmetrica/analytics/impl/Ak;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Ak;->b()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p1

    sget-object v1, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Fa;->y()Lio/appmetrica/analytics/impl/mf;

    move-result-object v1

    new-instance v2, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {v2}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    const-string v3, "service_modules"

    invoke-direct {p0, p1, v1, v3, v2}, Lio/appmetrica/analytics/impl/od;-><init>(Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Lio/appmetrica/analytics/impl/Kd;Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/od;->a(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/ta;->c:Z

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/ta;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ta;->a(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/ta;->c:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-void
.end method
