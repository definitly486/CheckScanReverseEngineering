.class public final Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule_ProvidesInAppMessagingSdkServingStubFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/dagger/internal/Factory<",
        "Ly34$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final channelProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Ly81;",
            ">;"
        }
    .end annotation
.end field

.field private final metadataProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lla5;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Ly81;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lla5;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule_ProvidesInAppMessagingSdkServingStubFactory;->module:Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule_ProvidesInAppMessagingSdkServingStubFactory;->channelProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule_ProvidesInAppMessagingSdkServingStubFactory;->metadataProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    return-void
.end method

.method public static create(Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule_ProvidesInAppMessagingSdkServingStubFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Ly81;",
            ">;",
            "Lcom/google/firebase/inappmessaging/dagger/internal/Provider<",
            "Lla5;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule_ProvidesInAppMessagingSdkServingStubFactory;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule_ProvidesInAppMessagingSdkServingStubFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule_ProvidesInAppMessagingSdkServingStubFactory;-><init>(Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/dagger/internal/Provider;)V

    return-object v0
.end method

.method public static providesInAppMessagingSdkServingStub(Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;Ly81;Lla5;)Ly34$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;->providesInAppMessagingSdkServingStub(Ly81;Lla5;)Ly34$a;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly34$a;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule_ProvidesInAppMessagingSdkServingStubFactory;->get()Ly34$a;

    move-result-object p0

    return-object p0
.end method

.method public get()Ly34$a;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule_ProvidesInAppMessagingSdkServingStubFactory;->module:Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule_ProvidesInAppMessagingSdkServingStubFactory;->channelProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    invoke-interface {v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly81;

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule_ProvidesInAppMessagingSdkServingStubFactory;->metadataProvider:Lcom/google/firebase/inappmessaging/dagger/internal/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inappmessaging/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lla5;

    invoke-static {v0, v1, p0}, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule_ProvidesInAppMessagingSdkServingStubFactory;->providesInAppMessagingSdkServingStub(Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;Ly81;Lla5;)Ly34$a;

    move-result-object p0

    return-object p0
.end method
