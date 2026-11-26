.class public final Lcom/google/firebase/inappmessaging/internal/RateLimiterClient_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/dagger/internal/Factory<",
        "Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final clockProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/time/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final storageClientProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/time/Clock;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient_Factory;->storageClientProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient_Factory;->clockProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/internal/RateLimiterClient_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/internal/time/Clock;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/internal/RateLimiterClient_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient_Factory;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient_Factory;-><init>(Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;Lcom/google/firebase/inappmessaging/internal/time/Clock;)Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;-><init>(Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;Lcom/google/firebase/inappmessaging/internal/time/Clock;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient_Factory;->storageClientProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    invoke-interface {v0}, Lcom/google/firebase/inappmessaging/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient_Factory;->clockProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inappmessaging/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/internal/time/Clock;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient_Factory;->newInstance(Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;Lcom/google/firebase/inappmessaging/internal/time/Clock;)Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient_Factory;->get()Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    move-result-object p0

    return-object p0
.end method
