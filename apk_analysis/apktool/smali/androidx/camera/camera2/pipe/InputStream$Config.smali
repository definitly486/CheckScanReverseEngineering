.class public final Landroidx/camera/camera2/pipe/InputStream$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field private final maxImages:I

.field private final stream:Landroidx/camera/camera2/pipe/CameraStream$Config;

.field private streamFormat:I


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/pipe/CameraStream$Config;II)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/InputStream$Config;->stream:Landroidx/camera/camera2/pipe/CameraStream$Config;

    iput p2, p0, Landroidx/camera/camera2/pipe/InputStream$Config;->maxImages:I

    iput p3, p0, Landroidx/camera/camera2/pipe/InputStream$Config;->streamFormat:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/CameraStream$Config;IILjh2;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/InputStream$Config;-><init>(Landroidx/camera/camera2/pipe/CameraStream$Config;II)V

    return-void
.end method


# virtual methods
.method public final getMaxImages()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/InputStream$Config;->maxImages:I

    return p0
.end method

.method public final getStream()Landroidx/camera/camera2/pipe/CameraStream$Config;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/InputStream$Config;->stream:Landroidx/camera/camera2/pipe/CameraStream$Config;

    return-object p0
.end method

.method public final getStreamFormat-8FPWQzE()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/InputStream$Config;->streamFormat:I

    return p0
.end method

.method public final setStreamFormat-hNQ4ISI(I)V
    .locals 0

    iput p1, p0, Landroidx/camera/camera2/pipe/InputStream$Config;->streamFormat:I

    return-void
.end method
