.class public final Landroidx/camera/camera2/pipe/UnsupportedCameraColorSpaceProfiles;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/CameraColorSpaceProfiles;


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/UnsupportedCameraColorSpaceProfiles;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/UnsupportedCameraColorSpaceProfiles;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/UnsupportedCameraColorSpaceProfiles;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/UnsupportedCameraColorSpaceProfiles;->INSTANCE:Landroidx/camera/camera2/pipe/UnsupportedCameraColorSpaceProfiles;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSupportedColorSpaces-hNQ4ISI(I)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraColorSpace;",
            ">;"
        }
    .end annotation

    sget-object p0, Lox2;->b:Lox2;

    return-object p0
.end method

.method public getSupportedColorSpacesForDynamicRange-sNWL0t8(IJ)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/CameraColorSpace;",
            ">;"
        }
    .end annotation

    sget-object p0, Lox2;->b:Lox2;

    return-object p0
.end method

.method public getSupportedDynamicRangeProfiles-6Yu6yh8(Ljava/lang/String;I)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lox2;->b:Lox2;

    return-object p0
.end method

.method public getSupportedImageFormatsForColorSpace-jRxjvBE(Ljava/lang/String;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/StreamFormat;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lox2;->b:Lox2;

    return-object p0
.end method

.method public unwrapAs(Lne4;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method
