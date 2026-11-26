.class public final Landroidx/camera/camera2/pipe/CameraPipeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final cameraPipeIds:Llt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lkt;->b(I)Llt;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraPipeKt;->cameraPipeIds:Llt;

    return-void
.end method

.method public static final CameraPipe(Landroidx/camera/camera2/pipe/CameraPipe$Config;)Landroidx/camera/camera2/pipe/CameraPipe;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/camera2/pipe/CameraPipe;->Companion:Landroidx/camera/camera2/pipe/CameraPipe$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraPipe$Companion;->create(Landroidx/camera/camera2/pipe/CameraPipe$Config;)Landroidx/camera/camera2/pipe/CameraPipe;

    move-result-object p0

    return-object p0
.end method

.method public static final getCameraPipeIds()Llt;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraPipeKt;->cameraPipeIds:Llt;

    return-object v0
.end method
