.class public final Lcom/google/firebase/inappmessaging/dagger/internal/Providers;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asDaggerProvider(Lws6;)Lcom/google/firebase/inappmessaging/dagger/internal/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lws6<",
            "TT;>;)",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/firebase/inappmessaging/dagger/internal/Providers$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/dagger/internal/Providers$1;-><init>(Lws6;)V

    return-object v0
.end method
