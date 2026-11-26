.class public final Landroidx/camera/camera2/pipe/CameraGraphId$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraGraphId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/CameraGraphId$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final nextId()Landroidx/camera/camera2/pipe/CameraGraphId;
    .locals 2

    new-instance p0, Landroidx/camera/camera2/pipe/CameraGraphId;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CameraGraph-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroidx/camera/camera2/pipe/CameraGraphId;->access$getCameraGraphIds$cp()Llt;

    move-result-object v1

    invoke-virtual {v1}, Llt;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/camera/camera2/pipe/CameraGraphId;-><init>(Ljava/lang/String;Ljh2;)V

    return-object p0
.end method
