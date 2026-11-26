.class public final Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/appsetid/internal/IAppSetIdRetriever;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static final access$convertScope(Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever;I)Lio/appmetrica/analytics/coreapi/internal/identifiers/AppSetIdScope;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    sget-object p0, Lio/appmetrica/analytics/coreapi/internal/identifiers/AppSetIdScope;->UNKNOWN:Lio/appmetrica/analytics/coreapi/internal/identifiers/AppSetIdScope;

    return-object p0

    :cond_0
    sget-object p0, Lio/appmetrica/analytics/coreapi/internal/identifiers/AppSetIdScope;->DEVELOPER:Lio/appmetrica/analytics/coreapi/internal/identifiers/AppSetIdScope;

    return-object p0

    :cond_1
    sget-object p0, Lio/appmetrica/analytics/coreapi/internal/identifiers/AppSetIdScope;->APP:Lio/appmetrica/analytics/coreapi/internal/identifiers/AppSetIdScope;

    return-object p0
.end method

.method public static final synthetic access$getListeners$p(Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getListenersLock$p(Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever;->a:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public retrieveAppSetId(Landroid/content/Context;Lio/appmetrica/analytics/appsetid/internal/AppSetIdListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/appset/AppSet;->getClient(Landroid/content/Context;)Lcom/google/android/gms/appset/AppSetIdClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/appset/AppSetIdClient;->getAppSetIdInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever$retrieveAppSetId$onCompleteListener$1;

    invoke-direct {v0, p0, p2}, Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever$retrieveAppSetId$onCompleteListener$1;-><init>(Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever;Lio/appmetrica/analytics/appsetid/internal/AppSetIdListener;)V

    iget-object p2, p0, Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever;->a:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0
.end method
