.class public final Lio/appmetrica/analytics/coreutils/internal/system/ConstantDeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APP_PLATFORM:Ljava/lang/String; = "android"

.field public static final DEVICE_ROOT_STATUS:Ljava/lang/String;

.field public static final INSTANCE:Lio/appmetrica/analytics/coreutils/internal/system/ConstantDeviceInfo;

.field public static final MANUFACTURER:Ljava/lang/String;

.field public static final MODEL:Ljava/lang/String;

.field public static final OS_API_LEVEL:I

.field public static final OS_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/system/ConstantDeviceInfo;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/system/ConstantDeviceInfo;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/coreutils/internal/system/ConstantDeviceInfo;->INSTANCE:Lio/appmetrica/analytics/coreutils/internal/system/ConstantDeviceInfo;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lio/appmetrica/analytics/coreutils/internal/system/ConstantDeviceInfo;->MANUFACTURER:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lio/appmetrica/analytics/coreutils/internal/system/ConstantDeviceInfo;->MODEL:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lio/appmetrica/analytics/coreutils/internal/system/ConstantDeviceInfo;->OS_VERSION:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lio/appmetrica/analytics/coreutils/internal/system/ConstantDeviceInfo;->OS_API_LEVEL:I

    invoke-static {}, Lio/appmetrica/analytics/coreutils/internal/system/RootChecker;->isRootedPhone()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/coreutils/internal/system/ConstantDeviceInfo;->DEVICE_ROOT_STATUS:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
