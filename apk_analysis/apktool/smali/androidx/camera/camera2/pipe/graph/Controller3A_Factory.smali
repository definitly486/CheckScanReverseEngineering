.class public final Landroidx/camera/camera2/pipe/graph/Controller3A_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxs6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxs6;"
    }
.end annotation


# instance fields
.field private final graphListener3AProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/Listener3A;",
            ">;"
        }
    .end annotation
.end field

.field private final graphProcessorProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/GraphProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final graphState3AProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/GraphState3A;",
            ">;"
        }
    .end annotation
.end field

.field private final metadataProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lxs6;Lxs6;Lxs6;Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/GraphProcessor;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/GraphState3A;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/Listener3A;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/Controller3A_Factory;->graphProcessorProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/Controller3A_Factory;->metadataProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/graph/Controller3A_Factory;->graphState3AProvider:Lxs6;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/graph/Controller3A_Factory;->graphListener3AProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;Lxs6;)Landroidx/camera/camera2/pipe/graph/Controller3A_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/GraphProcessor;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/GraphState3A;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/Listener3A;",
            ">;)",
            "Landroidx/camera/camera2/pipe/graph/Controller3A_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/graph/Controller3A_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/graph/Controller3A_Factory;-><init>(Lxs6;Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Landroidx/camera/camera2/pipe/graph/GraphProcessor;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/graph/GraphState3A;Landroidx/camera/camera2/pipe/graph/Listener3A;)Landroidx/camera/camera2/pipe/graph/Controller3A;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/graph/Controller3A;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/graph/Controller3A;-><init>(Landroidx/camera/camera2/pipe/graph/GraphProcessor;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/graph/GraphState3A;Landroidx/camera/camera2/pipe/graph/Listener3A;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/pipe/graph/Controller3A;
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/Controller3A_Factory;->graphProcessorProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/Controller3A_Factory;->metadataProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/CameraMetadata;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/Controller3A_Factory;->graphState3AProvider:Lxs6;

    invoke-interface {v2}, Lws6;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/graph/GraphState3A;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/Controller3A_Factory;->graphListener3AProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/graph/Listener3A;

    invoke-static {v0, v1, v2, p0}, Landroidx/camera/camera2/pipe/graph/Controller3A_Factory;->newInstance(Landroidx/camera/camera2/pipe/graph/GraphProcessor;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/graph/GraphState3A;Landroidx/camera/camera2/pipe/graph/Listener3A;)Landroidx/camera/camera2/pipe/graph/Controller3A;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/Controller3A_Factory;->get()Landroidx/camera/camera2/pipe/graph/Controller3A;

    move-result-object p0

    return-object p0
.end method
