.class public final Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutputStreamImpl"
.end annotation


# instance fields
.field private final camera:Ljava/lang/String;

.field private final dynamicRangeProfile:Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

.field private final format:I

.field private final id:I

.field private final mirrorMode:Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

.field private final outputType:Landroidx/camera/camera2/pipe/OutputStream$OutputType;

.field private final size:Landroid/util/Size;

.field public stream:Landroidx/camera/camera2/pipe/CameraStream;

.field private final streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

.field private final streamUseHint:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

.field private final timestampBase:Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;


# direct methods
.method private constructor <init>(ILandroid/util/Size;ILjava/lang/String;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->id:I

    .line 38
    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->size:Landroid/util/Size;

    .line 39
    iput p3, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->format:I

    .line 40
    iput-object p4, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->camera:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->mirrorMode:Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    .line 42
    iput-object p6, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->timestampBase:Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;

    .line 43
    iput-object p7, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->dynamicRangeProfile:Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    .line 44
    iput-object p8, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    .line 45
    iput-object p9, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->outputType:Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    .line 46
    iput-object p10, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->streamUseHint:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/util/Size;ILjava/lang/String;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;ILjh2;)V
    .locals 1

    and-int/lit8 p12, p11, 0x10

    const/4 v0, 0x0

    if-eqz p12, :cond_0

    move-object p5, v0

    :cond_0
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_1

    move-object p6, v0

    :cond_1
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_2

    move-object p7, v0

    :cond_2
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_3

    move-object p8, v0

    :cond_3
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_4

    move-object p9, v0

    :cond_4
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_5

    move-object p10, v0

    :cond_5
    const/4 p11, 0x0

    invoke-direct/range {p0 .. p11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;-><init>(ILandroid/util/Size;ILjava/lang/String;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljh2;)V

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/util/Size;ILjava/lang/String;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljh2;)V
    .locals 0

    .line 47
    invoke-direct/range {p0 .. p10}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;-><init>(ILandroid/util/Size;ILjava/lang/String;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;)V

    return-void
.end method


# virtual methods
.method public getCamera-Dz_R5H8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->camera:Ljava/lang/String;

    return-object p0
.end method

.method public getDynamicRangeProfile-OoVcG5w()Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->dynamicRangeProfile:Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    return-object p0
.end method

.method public getFormat-8FPWQzE()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->format:I

    return p0
.end method

.method public getId-4LaLFng()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->id:I

    return p0
.end method

.method public getMirrorMode-dO1_9xk()Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->mirrorMode:Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    return-object p0
.end method

.method public getOutputType()Landroidx/camera/camera2/pipe/OutputStream$OutputType;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->outputType:Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    return-object p0
.end method

.method public getSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->size:Landroid/util/Size;

    return-object p0
.end method

.method public getStream()Landroidx/camera/camera2/pipe/CameraStream;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->stream:Landroidx/camera/camera2/pipe/CameraStream;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "stream"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getStreamUseCase-8x2ez34()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->streamUseCase:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    return-object p0
.end method

.method public getStreamUseHint-HIPxoCc()Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->streamUseHint:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    return-object p0
.end method

.method public getTimestampBase-pcPfPbY()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->timestampBase:Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;

    return-object p0
.end method

.method public setStream(Landroidx/camera/camera2/pipe/CameraStream;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->stream:Landroidx/camera/camera2/pipe/CameraStream;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->getId-4LaLFng()I

    move-result p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/OutputId;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
