.class public final Lcom/google/firebase/inappmessaging/internal/GrpcClient_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/dagger/internal/Factory<",
        "Lcom/google/firebase/inappmessaging/internal/GrpcClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final stubProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Ly34$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/dagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Ly34$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/GrpcClient_Factory;->stubProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/google/firebase/inappmessaging/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/internal/GrpcClient_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Ly34$a;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/internal/GrpcClient_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/GrpcClient_Factory;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/internal/GrpcClient_Factory;-><init>(Lcom/google/firebase/inappmessaging/dagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Ly34$a;)Lcom/google/firebase/inappmessaging/internal/GrpcClient;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/GrpcClient;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/internal/GrpcClient;-><init>(Ly34$a;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/firebase/inappmessaging/internal/GrpcClient;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/GrpcClient_Factory;->stubProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inappmessaging/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly34$a;

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/GrpcClient_Factory;->newInstance(Ly34$a;)Lcom/google/firebase/inappmessaging/internal/GrpcClient;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/GrpcClient_Factory;->get()Lcom/google/firebase/inappmessaging/internal/GrpcClient;

    move-result-object p0

    return-object p0
.end method
