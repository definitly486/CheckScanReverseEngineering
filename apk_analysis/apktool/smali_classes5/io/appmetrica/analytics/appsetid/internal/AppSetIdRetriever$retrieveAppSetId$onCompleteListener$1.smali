.class public final Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever$retrieveAppSetId$onCompleteListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever;->retrieveAppSetId(Landroid/content/Context;Lio/appmetrica/analytics/appsetid/internal/AppSetIdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/android/gms/appset/AppSetIdInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever;

.field final synthetic b:Lio/appmetrica/analytics/appsetid/internal/AppSetIdListener;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever;Lio/appmetrica/analytics/appsetid/internal/AppSetIdListener;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever$retrieveAppSetId$onCompleteListener$1;->a:Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever;

    iput-object p2, p0, Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever$retrieveAppSetId$onCompleteListener$1;->b:Lio/appmetrica/analytics/appsetid/internal/AppSetIdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/appset/AppSetIdInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever$retrieveAppSetId$onCompleteListener$1;->a:Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever;

    invoke-static {v0}, Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever;->access$getListenersLock$p(Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever$retrieveAppSetId$onCompleteListener$1;->a:Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever;

    monitor-enter v0

    :try_start_0
    invoke-static {v1}, Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever;->access$getListeners$p(Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    iget-object v1, p0, Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever$retrieveAppSetId$onCompleteListener$1;->b:Lio/appmetrica/analytics/appsetid/internal/AppSetIdListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/appset/AppSetIdInfo;

    invoke-virtual {v0}, Lcom/google/android/gms/appset/AppSetIdInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever$retrieveAppSetId$onCompleteListener$1;->a:Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/appset/AppSetIdInfo;

    invoke-virtual {p1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getScope()I

    move-result p1

    invoke-static {p0, p1}, Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever;->access$convertScope(Lio/appmetrica/analytics/appsetid/internal/AppSetIdRetriever;I)Lio/appmetrica/analytics/coreapi/internal/identifiers/AppSetIdScope;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Lio/appmetrica/analytics/appsetid/internal/AppSetIdListener;->onAppSetIdRetrieved(Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/identifiers/AppSetIdScope;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-interface {v1, p0}, Lio/appmetrica/analytics/appsetid/internal/AppSetIdListener;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
