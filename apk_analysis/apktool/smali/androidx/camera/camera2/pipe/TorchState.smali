.class public final Landroidx/camera/camera2/pipe/TorchState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/TorchState$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/TorchState$Companion;

.field private static final OFF:Landroidx/camera/camera2/pipe/TorchState;

.field private static final ON:Landroidx/camera/camera2/pipe/TorchState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/TorchState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/TorchState$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/TorchState;->Companion:Landroidx/camera/camera2/pipe/TorchState$Companion;

    new-instance v0, Landroidx/camera/camera2/pipe/TorchState;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/TorchState;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/TorchState;->ON:Landroidx/camera/camera2/pipe/TorchState;

    new-instance v0, Landroidx/camera/camera2/pipe/TorchState;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/TorchState;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/TorchState;->OFF:Landroidx/camera/camera2/pipe/TorchState;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getOFF$cp()Landroidx/camera/camera2/pipe/TorchState;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/TorchState;->OFF:Landroidx/camera/camera2/pipe/TorchState;

    return-object v0
.end method

.method public static final synthetic access$getON$cp()Landroidx/camera/camera2/pipe/TorchState;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/TorchState;->ON:Landroidx/camera/camera2/pipe/TorchState;

    return-object v0
.end method
