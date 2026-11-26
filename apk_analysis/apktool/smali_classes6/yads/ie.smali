.class public final Lyads/ie;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public final a:Lyads/ng;

.field public final b:Lyads/lg;

.field public final c:Lyads/he;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lyads/ie;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lyads/ng;

    invoke-direct {v0}, Lyads/ng;-><init>()V

    new-instance v1, Lyads/lg;

    invoke-direct {v1, p1}, Lyads/lg;-><init>(Landroid/content/Context;)V

    new-instance v2, Lyads/he;

    invoke-direct {v2, p1}, Lyads/he;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/ie;->a:Lyads/ng;

    iput-object v1, p0, Lyads/ie;->b:Lyads/lg;

    iput-object v2, p0, Lyads/ie;->c:Lyads/he;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lyads/ie;->b:Lyads/lg;

    invoke-virtual {v0}, Lyads/lg;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lyads/ie;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyads/ie;->a:Lyads/ng;

    iget-object v0, v0, Lyads/ng;->a:Lyads/qi5;

    invoke-virtual {v0, p1}, Lyads/qi5;->b(Landroid/content/Context;)Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object p0, p0, Lyads/ie;->c:Lyads/he;

    iget-object v0, p0, Lyads/he;->a:Lyads/lg;

    invoke-virtual {v0}, Lyads/lg;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lyads/he;->b:Lyads/fj0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;->newConfigBuilder()Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;->withAdvIdentifiersTracking(Z)Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;->build()Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;

    move-result-object p1

    iget-object p0, p0, Lyads/fj0;->a:Landroid/content/Context;

    invoke-static {p0, p1}, Lio/appmetrica/analytics/AppMetricaLibraryAdapter;->activate(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
