.class public final Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Constants3A"
.end annotation


# static fields
.field public static final DEFAULT_FRAME_LIMIT:I = 0x3c

.field public static final DEFAULT_TIME_LIMIT_MS:I = 0xbb8

.field public static final DEFAULT_TIME_LIMIT_NS:J = 0xb2d05e00L

.field private static final FRAME_NUMBER_INVALID:J

.field public static final INSTANCE:Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;

.field private static final METERING_REGIONS_DEFAULT:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private static final METERING_REGIONS_EMPTY:[Landroid/hardware/camera2/params/MeteringRectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;->INSTANCE:Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    sput-object v0, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;->METERING_REGIONS_EMPTY:[Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v1, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    filled-new-array {v1}, [Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;->METERING_REGIONS_DEFAULT:[Landroid/hardware/camera2/params/MeteringRectangle;

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/FrameNumber;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;->FRAME_NUMBER_INVALID:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFRAME_NUMBER_INVALID-Ugla2oM()J
    .locals 2

    sget-wide v0, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;->FRAME_NUMBER_INVALID:J

    return-wide v0
.end method

.method public final getMETERING_REGIONS_DEFAULT()[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 0

    sget-object p0, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;->METERING_REGIONS_DEFAULT:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object p0
.end method

.method public final getMETERING_REGIONS_EMPTY()[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 0

    sget-object p0, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;->METERING_REGIONS_EMPTY:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object p0
.end method
