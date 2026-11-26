.class final Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingRequestOpen"
.end annotation


# instance fields
.field private final activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

.field private final request:Landroidx/camera/camera2/pipe/compat/RequestOpen;

.field private final token:Landroidx/camera/camera2/pipe/core/Token;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/RequestOpen;Landroidx/camera/camera2/pipe/compat/ActiveCamera;Landroidx/camera/camera2/pipe/core/Token;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->request:Landroidx/camera/camera2/pipe/compat/RequestOpen;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->token:Landroidx/camera/camera2/pipe/core/Token;

    return-void
.end method


# virtual methods
.method public final getActiveCamera()Landroidx/camera/camera2/pipe/compat/ActiveCamera;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->activeCamera:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    return-object p0
.end method

.method public final getRequest()Landroidx/camera/camera2/pipe/compat/RequestOpen;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->request:Landroidx/camera/camera2/pipe/compat/RequestOpen;

    return-object p0
.end method

.method public final getToken()Landroidx/camera/camera2/pipe/core/Token;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$PendingRequestOpen;->token:Landroidx/camera/camera2/pipe/core/Token;

    return-object p0
.end method
