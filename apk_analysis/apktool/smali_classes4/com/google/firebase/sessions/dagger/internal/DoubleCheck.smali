.class public final Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/sessions/dagger/internal/Provider;
.implements Lcom/google/firebase/sessions/dagger/Lazy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/firebase/sessions/dagger/internal/Provider<",
        "TT;>;",
        "Lcom/google/firebase/sessions/dagger/Lazy<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final UNINITIALIZED:Ljava/lang/Object;


# instance fields
.field private volatile instance:Ljava/lang/Object;

.field private volatile provider:Lcom/google/firebase/sessions/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/sessions/dagger/internal/Provider<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/sessions/dagger/internal/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/dagger/internal/Provider<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;->provider:Lcom/google/firebase/sessions/dagger/internal/Provider;

    return-void
.end method

.method private declared-synchronized getSynchronized()Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    sget-object v1, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;->provider:Lcom/google/firebase/sessions/dagger/internal/Provider;

    invoke-interface {v0}, Lcom/google/firebase/sessions/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;->reentrantCheck(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;->provider:Lcom/google/firebase/sessions/dagger/internal/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static lazy(Lcom/google/firebase/sessions/dagger/internal/Provider;)Lcom/google/firebase/sessions/dagger/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/sessions/dagger/internal/Provider<",
            "TT;>;)",
            "Lcom/google/firebase/sessions/dagger/Lazy<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/firebase/sessions/dagger/Lazy;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/firebase/sessions/dagger/Lazy;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;

    invoke-static {p0}, Lcom/google/firebase/sessions/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/sessions/dagger/internal/Provider;

    invoke-direct {v0, p0}, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;-><init>(Lcom/google/firebase/sessions/dagger/internal/Provider;)V

    return-object v0
.end method

.method public static lazy(Lws6;)Lcom/google/firebase/sessions/dagger/Lazy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lws6<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Lcom/google/firebase/sessions/dagger/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 19
    invoke-static {p0}, Lcom/google/firebase/sessions/dagger/internal/Providers;->asDaggerProvider(Lws6;)Lcom/google/firebase/sessions/dagger/internal/Provider;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;->lazy(Lcom/google/firebase/sessions/dagger/internal/Provider;)Lcom/google/firebase/sessions/dagger/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static provider(Lcom/google/firebase/sessions/dagger/internal/Provider;)Lcom/google/firebase/sessions/dagger/internal/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/sessions/dagger/internal/Provider<",
            "TT;>;)",
            "Lcom/google/firebase/sessions/dagger/internal/Provider<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/firebase/sessions/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;

    invoke-direct {v0, p0}, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;-><init>(Lcom/google/firebase/sessions/dagger/internal/Provider;)V

    return-object v0
.end method

.method public static provider(Lws6;)Lws6;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lws6<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Lws6<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14
    invoke-static {p0}, Lcom/google/firebase/sessions/dagger/internal/Providers;->asDaggerProvider(Lws6;)Lcom/google/firebase/sessions/dagger/internal/Provider;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;->provider(Lcom/google/firebase/sessions/dagger/internal/Provider;)Lcom/google/firebase/sessions/dagger/internal/Provider;

    move-result-object p0

    return-object p0
.end method

.method private static reentrantCheck(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    if-eq p0, v0, :cond_1

    if-ne p0, p1, :cond_0

    return-object p1

    :cond_0
    const-string v0, " & "

    const-string v1, ". This is likely due to a circular dependency."

    const-string v2, "Scoped provider was invoked recursively returning different results: "

    invoke-static {v2, p0, v0, p1, v1}, Llt0;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    sget-object v1, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/firebase/sessions/dagger/internal/DoubleCheck;->getSynchronized()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method
