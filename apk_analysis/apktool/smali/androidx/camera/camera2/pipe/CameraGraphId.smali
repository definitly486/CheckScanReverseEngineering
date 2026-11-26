.class public final Landroidx/camera/camera2/pipe/CameraGraphId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/CameraGraphId$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/CameraGraphId$Companion;

.field private static final cameraGraphIds:Llt;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/CameraGraphId$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/CameraGraphId$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/CameraGraphId;->Companion:Landroidx/camera/camera2/pipe/CameraGraphId$Companion;

    const/4 v0, 0x0

    invoke-static {v0}, Lkt;->b(I)Llt;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraGraphId;->cameraGraphIds:Llt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/CameraGraphId;->name:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljh2;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/CameraGraphId;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getCameraGraphIds$cp()Llt;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraGraphId;->cameraGraphIds:Llt;

    return-object v0
.end method

.method public static final nextId()Landroidx/camera/camera2/pipe/CameraGraphId;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraGraphId;->Companion:Landroidx/camera/camera2/pipe/CameraGraphId$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraphId$Companion;->nextId()Landroidx/camera/camera2/pipe/CameraGraphId;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraGraphId;->name:Ljava/lang/String;

    return-object p0
.end method
