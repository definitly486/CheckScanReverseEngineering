.class public final Lio/appmetrica/analytics/screenshot/impl/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/screenshot/impl/s;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/screenshot/impl/s;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/r;->a:Lio/appmetrica/analytics/screenshot/impl/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Landroid/app/Activity;Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V
    .locals 1

    sget-object p1, Lio/appmetrica/analytics/screenshot/impl/q;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/r;->a:Lio/appmetrica/analytics/screenshot/impl/s;

    iget-object p1, p1, Lio/appmetrica/analytics/screenshot/impl/s;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    invoke-interface {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/r;->a:Lio/appmetrica/analytics/screenshot/impl/s;

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/s;->d:Lio/appmetrica/analytics/screenshot/impl/G;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    iget-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/r;->a:Lio/appmetrica/analytics/screenshot/impl/s;

    iget-object p1, p1, Lio/appmetrica/analytics/screenshot/impl/s;->c:Lio/appmetrica/analytics/screenshot/impl/j;

    if-eqz p1, :cond_2

    iget-boolean p1, p1, Lio/appmetrica/analytics/screenshot/impl/j;->a:Z

    if-ne p1, p2, :cond_2

    :try_start_1
    iget-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/r;->a:Lio/appmetrica/analytics/screenshot/impl/s;

    iget-object p1, p1, Lio/appmetrica/analytics/screenshot/impl/s;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    invoke-interface {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/r;->a:Lio/appmetrica/analytics/screenshot/impl/s;

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/s;->d:Lio/appmetrica/analytics/screenshot/impl/G;

    invoke-virtual {p1, v0, p2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method
