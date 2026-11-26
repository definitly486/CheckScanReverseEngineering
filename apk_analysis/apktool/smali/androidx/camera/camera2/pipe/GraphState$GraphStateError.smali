.class public final Landroidx/camera/camera2/pipe/GraphState$GraphStateError;
.super Landroidx/camera/camera2/pipe/GraphState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/GraphState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GraphStateError"
.end annotation


# instance fields
.field private final cameraError:I

.field private final willAttemptRetry:Z


# direct methods
.method private constructor <init>(IZ)V
    .locals 1

    const-string v0, "GRAPH_ERROR"

    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/GraphState;-><init>(Ljava/lang/String;)V

    iput p1, p0, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->cameraError:I

    iput-boolean p2, p0, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->willAttemptRetry:Z

    return-void
.end method

.method public synthetic constructor <init>(IZLjh2;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public final getCameraError-v7Vf74A()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->cameraError:I

    return p0
.end method

.method public final getWillAttemptRetry()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->willAttemptRetry:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroidx/camera/camera2/pipe/GraphState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(cameraError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->cameraError:I

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraError;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", willAttemptRetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;->willAttemptRetry:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lsg;->d(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
