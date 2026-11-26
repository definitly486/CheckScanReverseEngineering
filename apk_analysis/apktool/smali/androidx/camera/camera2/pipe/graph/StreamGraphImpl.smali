.class public final Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/StreamGraph;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroidx/camera/camera2/pipe/config/CameraGraphScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$Companion;,
        Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$InputStreamImpl;,
        Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;,
        Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;,
        Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$SurfaceListener;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$Companion;

.field private static final configIds:Llt;

.field private static final groupIds:Llt;

.field private static final inputIds:Llt;

.field private static final outputIds:Llt;

.field private static final previewFormatComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/camera/camera2/pipe/CameraStream;",
            ">;"
        }
    .end annotation
.end field

.field private static final previewFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/StreamFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final previewOutputTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/OutputStream$OutputType;",
            ">;"
        }
    .end annotation
.end field

.field private static final previewOutputTypesComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/camera/camera2/pipe/CameraStream;",
            ">;"
        }
    .end annotation
.end field

.field private static final streamIds:Llt;


# instance fields
.field private final _streamMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/CameraStream$Config;",
            "Landroidx/camera/camera2/pipe/CameraStream;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraControllerProvider:Lws6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lws6<",
            "Landroidx/camera/camera2/pipe/CameraController;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

.field private final graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

.field private final imageSourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            "Landroidx/camera/camera2/pipe/media/ImageSource;",
            ">;"
        }
    .end annotation
.end field

.field private final imageSources:Landroidx/camera/camera2/pipe/media/ImageSources;

.field private final inputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final outputConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/OutputStream;",
            "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final outputConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final outputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/OutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final streamIds$1:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            ">;"
        }
    .end annotation
.end field

.field private final streams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->Companion:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$Companion;

    const/4 v0, 0x0

    invoke-static {v0}, Lkt;->b(I)Llt;

    move-result-object v1

    sput-object v1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->streamIds:Llt;

    invoke-static {v0}, Lkt;->b(I)Llt;

    move-result-object v1

    sput-object v1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->outputIds:Llt;

    invoke-static {v0}, Lkt;->b(I)Llt;

    move-result-object v1

    sput-object v1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->inputIds:Llt;

    invoke-static {v0}, Lkt;->b(I)Llt;

    move-result-object v1

    sput-object v1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->configIds:Llt;

    invoke-static {v0}, Lkt;->b(I)Llt;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->groupIds:Llt;

    sget-object v0, Landroidx/camera/camera2/pipe/OutputStream$OutputType;->Companion:Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;->getSURFACE_VIEW()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/OutputStream$OutputType$Companion;->getSURFACE_TEXTURE()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object v0

    filled-new-array {v1, v0}, [Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->previewOutputTypes:Ljava/util/List;

    new-instance v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$special$$inlined$compareBy$1;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$special$$inlined$compareBy$1;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->previewOutputTypesComparator:Ljava/util/Comparator;

    sget-object v0, Landroidx/camera/camera2/pipe/StreamFormat;->Companion:Landroidx/camera/camera2/pipe/StreamFormat$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/StreamFormat$Companion;->getUNKNOWN-8FPWQzE()I

    move-result v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/StreamFormat;->box-impl(I)Landroidx/camera/camera2/pipe/StreamFormat;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/StreamFormat$Companion;->getPRIVATE-8FPWQzE()I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/StreamFormat;->box-impl(I)Landroidx/camera/camera2/pipe/StreamFormat;

    move-result-object v0

    filled-new-array {v1, v0}, [Landroidx/camera/camera2/pipe/StreamFormat;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->previewFormats:Ljava/util/List;

    new-instance v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$special$$inlined$compareBy$2;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$special$$inlined$compareBy$2;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->previewFormatComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/media/ImageSources;Lws6;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            "Landroidx/camera/camera2/pipe/media/ImageSources;",
            "Lws6<",
            "Landroidx/camera/camera2/pipe/CameraController;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    move-object/from16 v2, p2

    iput-object v2, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-object/from16 v3, p3

    iput-object v3, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->imageSources:Landroidx/camera/camera2/pipe/media/ImageSources;

    move-object/from16 v3, p4

    iput-object v3, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->cameraControllerProvider:Lws6;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct/range {p0 .. p2}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->computeIfDeferredStreamsAreSupported(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraGraph$Config;)Z

    move-result v1

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getExclusiveStreamGroups()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move-object v10, v8

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    const-string v11, "Check failed."

    if-nez v10, :cond_2

    iget-object v10, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-direct {v0, v10}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->computeNextSurfaceGroupId(Landroidx/camera/camera2/pipe/CameraGraph$Config;)I

    move-result v10

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/camera/camera2/pipe/CameraStream$Config;

    invoke-interface {v7, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {v11}, Lah;->f(Ljava/lang/String;)V

    throw v9

    :cond_2
    invoke-static {v11}, Lah;->f(Ljava/lang/String;)V

    throw v9

    :cond_3
    iget-object v2, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getStreams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/camera/camera2/pipe/CameraStream$Config;

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/CameraStream$Config;->getOutputs()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/camera/camera2/pipe/OutputStream$Config;

    invoke-interface {v4, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_1

    :cond_5
    sget-object v12, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->Companion:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$Companion;

    invoke-virtual {v12}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$Companion;->nextConfigId-hoCEiqs$camera_camera2_pipe()I

    move-result v14

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getSize()Landroid/util/Size;

    move-result-object v15

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getFormat-8FPWQzE()I

    move-result v16

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getCamera-1LO98Z0()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_6

    iget-object v12, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v12}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v12

    :cond_6
    move-object/from16 v17, v12

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v18, v12

    check-cast v18, Ljava/lang/Integer;

    if-eqz v1, :cond_8

    instance-of v12, v11, Landroidx/camera/camera2/pipe/OutputStream$Config$LazyOutputConfig;

    if-eqz v12, :cond_7

    move-object v12, v11

    check-cast v12, Landroidx/camera/camera2/pipe/OutputStream$Config$LazyOutputConfig;

    goto :goto_2

    :cond_7
    move-object v12, v9

    :goto_2
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Landroidx/camera/camera2/pipe/OutputStream$Config$LazyOutputConfig;->getOutputType$camera_camera2_pipe()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object v12

    move-object/from16 v20, v12

    goto :goto_3

    :cond_8
    move-object/from16 v20, v9

    :goto_3
    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getMirrorMode-dO1_9xk()Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    move-result-object v21

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getTimestampBase-pcPfPbY()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;

    move-result-object v22

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getDynamicRangeProfile-OoVcG5w()Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    move-result-object v23

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getStreamUseCase-8x2ez34()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    move-result-object v24

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getStreamUseHint-HIPxoCc()Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    move-result-object v25

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/OutputStream$Config;->getSensorPixelModes()Ljava/util/List;

    move-result-object v26

    invoke-direct {v0, v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->getOutputConfigurationOrNull(Landroidx/camera/camera2/pipe/OutputStream$Config;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v19

    new-instance v13, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;

    const/16 v27, 0x0

    invoke-direct/range {v13 .. v27}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;-><init>(ILandroid/util/Size;ILjava/lang/String;Ljava/lang/Integer;Landroid/hardware/camera2/params/OutputConfiguration;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;Ljh2;)V

    invoke-interface {v4, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v2, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getStreams()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v7, 0x0

    :goto_4
    iget-object v8, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    const/16 v10, 0xa

    if-ge v7, v2, :cond_d

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getStreams()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/camera/camera2/pipe/CameraStream$Config;

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/CameraStream$Config;->getOutputs()Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v11, v10}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/camera/camera2/pipe/OutputStream$Config;

    invoke-virtual {v4, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v11, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;

    new-instance v13, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;

    sget-object v14, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->Companion:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$Companion;

    invoke-virtual {v14}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$Companion;->nextOutputId-4LaLFng$camera_camera2_pipe()I

    move-result v14

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getSize()Landroid/util/Size;

    move-result-object v15

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getFormat-8FPWQzE()I

    move-result v16

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getMirrorMode-dO1_9xk()Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    move-result-object v18

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getTimestampBase-pcPfPbY()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;

    move-result-object v19

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getDynamicRangeProfile-OoVcG5w()Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    move-result-object v20

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getStreamUseCase-8x2ez34()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    move-result-object v21

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getDeferredOutputType()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object v22

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getStreamUseHint-HIPxoCc()Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    move-result-object v23

    const/16 v24, 0x0

    invoke-direct/range {v13 .. v24}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;-><init>(ILandroid/util/Size;ILjava/lang/String;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljh2;)V

    invoke-interface {v1, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    new-instance v10, Landroidx/camera/camera2/pipe/CameraStream;

    sget-object v11, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->Companion:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$Companion;

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$Companion;->nextStreamId-ptHMqGs$camera_camera2_pipe()I

    move-result v11

    invoke-direct {v10, v11, v12, v9}, Landroidx/camera/camera2/pipe/CameraStream;-><init>(ILjava/util/List;Ljh2;)V

    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;

    invoke-virtual {v12, v10}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;->setStream(Landroidx/camera/camera2/pipe/CameraStream;)V

    goto :goto_6

    :cond_b
    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/CameraStream$Config;->getOutputs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/camera/camera2/pipe/OutputStream$Config;

    invoke-virtual {v4, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v11, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getStreamBuilder$camera_camera2_pipe()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    :cond_d
    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getInput()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v2, v10}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/camera2/pipe/InputStream$Config;

    new-instance v8, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$InputStreamImpl;

    sget-object v11, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->Companion:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$Companion;

    invoke-virtual {v11}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$Companion;->nextInputId-m1bwn9M$camera_camera2_pipe()I

    move-result v11

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/InputStream$Config;->getMaxImages()I

    move-result v12

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/InputStream$Config;->getStreamFormat-8FPWQzE()I

    move-result v7

    invoke-direct {v8, v11, v12, v7, v9}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$InputStreamImpl;-><init>(IIILjh2;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    sget-object v4, Lkx2;->b:Lkx2;

    :cond_f
    iput-object v4, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->inputs:Ljava/util/List;

    invoke-direct {v0, v5}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->sortOutputsByPreviewStream(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->sortOutputsByVideoStream(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->streams:Ljava/util/List;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->getStreams()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v2, v10}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/CameraStream;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/CameraStream;->getId-ptHMqGs()I

    move-result v5

    invoke-static {v5}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_10
    invoke-static {v4}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->streamIds$1:Ljava/util/Set;

    iput-object v6, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->_streamMap:Ljava/util/Map;

    new-instance v2, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$special$$inlined$sortedBy$1;

    invoke-direct {v2, v0}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$special$$inlined$sortedBy$1;-><init>(Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;)V

    invoke-static {v3, v2}, Lqn1;->n0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->outputConfigs:Ljava/util/List;

    iput-object v1, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->outputConfigMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->getStreams()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/CameraStream;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3, v2}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_a

    :cond_11
    iput-object v2, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->outputs:Ljava/util/List;

    new-instance v1, Luz4;

    invoke-direct {v1}, Luz4;-><init>()V

    iget-object v2, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getStreams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/CameraStream$Config;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/CameraStream$Config;->getImageSourceConfig()Landroidx/camera/camera2/pipe/ImageSourceConfig;

    move-result-object v4

    if-nez v4, :cond_12

    goto :goto_b

    :cond_12
    iget-object v5, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->_streamMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_13

    check-cast v3, Landroidx/camera/camera2/pipe/CameraStream;

    iget-object v5, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->imageSources:Landroidx/camera/camera2/pipe/media/ImageSources;

    invoke-interface {v5, v3, v4}, Landroidx/camera/camera2/pipe/media/ImageSources;->createImageSource(Landroidx/camera/camera2/pipe/CameraStream;Landroidx/camera/camera2/pipe/ImageSourceConfig;)Landroidx/camera/camera2/pipe/media/ImageSource;

    move-result-object v4

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/CameraStream;->getId-ptHMqGs()I

    move-result v3

    invoke-static {v3}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_13
    const-string v0, "Required value was null."

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    throw v9

    :cond_14
    invoke-virtual {v1}, Luz4;->b()Luz4;

    move-result-object v1

    iput-object v1, v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->imageSourceMap:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getConfigIds$cp()Llt;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->configIds:Llt;

    return-object v0
.end method

.method public static final synthetic access$getGroupIds$cp()Llt;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->groupIds:Llt;

    return-object v0
.end method

.method public static final synthetic access$getInputIds$cp()Llt;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->inputIds:Llt;

    return-object v0
.end method

.method public static final synthetic access$getOutputIds$cp()Llt;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->outputIds:Llt;

    return-object v0
.end method

.method public static final synthetic access$getPreviewFormats$cp()Ljava/util/List;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->previewFormats:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getPreviewOutputTypes$cp()Ljava/util/List;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->previewOutputTypes:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getStreamIds$cp()Llt;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->streamIds:Llt;

    return-object v0
.end method

.method private final computeIfDeferredStreamsAreSupported(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraGraph$Config;)Z
    .locals 1

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionMode-2uNL3no()I

    move-result p0

    sget-object p2, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getNORMAL-2uNL3no()I

    move-result p2

    invoke-static {p0, p2}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLimited(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p2

    if-nez p2, :cond_1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p2, v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelExternal(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private final computeNextSurfaceGroupId(Landroidx/camera/camera2/pipe/CameraGraph$Config;)I
    .locals 1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getStreams()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->readExistingGroupNumbers(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    sget-object p1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->Companion:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$Companion;->nextGroupId$camera_camera2_pipe()I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->Companion:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$Companion;->nextGroupId$camera_camera2_pipe()I

    move-result p1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private final getOutputConfigurationOrNull(Landroidx/camera/camera2/pipe/OutputStream$Config;)Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 2

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    const/4 v1, 0x0

    if-lt p0, v0, :cond_1

    instance-of p0, p1, Landroidx/camera/camera2/pipe/OutputStream$Config$ExternalOutputConfig;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/camera/camera2/pipe/OutputStream$Config$ExternalOutputConfig;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/OutputStream$Config$ExternalOutputConfig;->getOutput()Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method private final readExistingGroupNumbers(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraStream$Config;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/CameraStream$Config;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraStream$Config;->getOutputs()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/camera/camera2/pipe/OutputStream$Config$ExternalOutputConfig;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/OutputStream$Config$ExternalOutputConfig;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/OutputStream$Config$ExternalOutputConfig;->getOutput()Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/compat/Api24Compat;->getSurfaceGroupId(Landroid/hardware/camera2/params/OutputConfiguration;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object p0
.end method

.method private final sortOutputsByPreviewStream(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraStream;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraStream;",
            ">;"
        }
    .end annotation

    move-object p0, p1

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/camera/camera2/pipe/CameraStream;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/OutputStream;

    invoke-interface {v5}, Landroidx/camera/camera2/pipe/OutputStream;->getStreamUseCase-8x2ez34()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    move-result-object v5

    sget-object v6, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->Companion:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase$Companion;

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase$Companion;->getPREVIEW-vrKr8v8()J

    move-result-wide v6

    if-nez v5, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->unbox-impl()J

    move-result-wide v8

    invoke-static {v8, v9, v6, v7}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->equals-impl0(JJ)Z

    move-result v5

    :goto_1
    if-eqz v5, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v1, v0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/camera/camera2/pipe/CameraStream;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_6

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/OutputStream;

    sget-object v6, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->previewOutputTypes:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v5}, Landroidx/camera/camera2/pipe/OutputStream;->getOutputType()Landroidx/camera/camera2/pipe/OutputStream$OutputType;

    move-result-object v5

    invoke-static {v6, v5}, Lqn1;->M(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    :goto_4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    sget-object p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->previewOutputTypesComparator:Ljava/util/Comparator;

    invoke-static {v0, p0}, Lqn1;->n0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {v1, p0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/camera/camera2/pipe/CameraStream;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_b

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_6

    :cond_b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/pipe/OutputStream;

    sget-object v5, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->previewFormats:Ljava/util/List;

    invoke-interface {v4}, Landroidx/camera/camera2/pipe/OutputStream;->getFormat-8FPWQzE()I

    move-result v4

    invoke-static {v4}, Landroidx/camera/camera2/pipe/StreamFormat;->box-impl(I)Landroidx/camera/camera2/pipe/StreamFormat;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    :goto_6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_f

    sget-object p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->previewFormatComparator:Ljava/util/Comparator;

    invoke-static {v0, p0}, Lqn1;->n0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {v1, p0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_f
    return-object p1
.end method

.method private final sortOutputsByVideoStream(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraStream;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraStream;",
            ">;"
        }
    .end annotation

    move-object p0, p1

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroidx/camera/camera2/pipe/CameraStream;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    instance-of v6, v5, Ljava/util/Collection;

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/camera2/pipe/OutputStream;

    invoke-interface {v6}, Landroidx/camera/camera2/pipe/OutputStream;->getStreamUseCase-8x2ez34()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    move-result-object v6

    sget-object v7, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->Companion:Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase$Companion;

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase$Companion;->getVIDEO_RECORD-vrKr8v8()J

    move-result-wide v7

    if-nez v6, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->unbox-impl()J

    move-result-wide v9

    invoke-static {v9, v10, v7, v8}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->equals-impl0(JJ)Z

    move-result v6

    :goto_1
    if-eqz v6, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0, v1}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/camera/camera2/pipe/CameraStream;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    instance-of v5, v3, Ljava/util/Collection;

    if-eqz v5, :cond_6

    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/OutputStream;

    invoke-interface {v5}, Landroidx/camera/camera2/pipe/OutputStream;->getStreamUseHint-HIPxoCc()Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    move-result-object v5

    sget-object v6, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->Companion:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint$Companion;

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint$Companion;->getVIDEO_RECORD-4VYZOf8()J

    move-result-wide v6

    if-nez v5, :cond_8

    move v5, v4

    goto :goto_4

    :cond_8
    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->unbox-impl()J

    move-result-wide v8

    invoke-static {v8, v9, v6, v7}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->equals-impl0(JJ)Z

    move-result v5

    :goto_4
    if-eqz v5, :cond_7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    :goto_5
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_b

    invoke-static {v0, v1}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_b
    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 6

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->imageSourceMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/media/ImageSource;

    instance-of v1, v0, Ljava/lang/AutoCloseable;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_5

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v2, 0x0

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-interface {v0, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    if-nez v2, :cond_3

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_5
    instance-of v1, v0, Landroid/content/res/TypedArray;

    if-eqz v1, :cond_6

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_6
    instance-of v1, v0, Landroid/media/MediaMetadataRetriever;

    if-eqz v1, :cond_7

    check-cast v0, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    :cond_7
    instance-of v1, v0, Landroid/media/MediaDrm;

    if-eqz v1, :cond_8

    check-cast v0, Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    goto :goto_0

    :cond_8
    invoke-static {}, Lmi2;->b()V

    :cond_9
    return-void
.end method

.method public get(Landroidx/camera/camera2/pipe/CameraStream$Config;)Landroidx/camera/camera2/pipe/CameraStream;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->_streamMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/CameraStream;

    return-object p0
.end method

.method public final getCameraMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    return-object p0
.end method

.method public final getCameraStreamConfig-aKI5c8E(I)Landroidx/camera/camera2/pipe/CameraStream$Config;
    .locals 3

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->_streamMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/CameraStream;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/CameraStream;->getId-ptHMqGs()I

    move-result v2

    invoke-static {v2, p1}, Landroidx/camera/camera2/pipe/StreamId;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/CameraStream$Config;

    return-object p0

    :cond_2
    return-object v1
.end method

.method public final getGraphConfig()Landroidx/camera/camera2/pipe/CameraGraph$Config;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    return-object p0
.end method

.method public getImageSource-aKI5c8E(I)Landroidx/camera/camera2/pipe/media/ImageSource;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->imageSourceMap:Ljava/util/Map;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/media/ImageSource;

    return-object p0
.end method

.method public final getImageSourceMap$camera_camera2_pipe()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            "Landroidx/camera/camera2/pipe/media/ImageSource;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->imageSourceMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getImageSources()Landroidx/camera/camera2/pipe/media/ImageSources;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->imageSources:Landroidx/camera/camera2/pipe/media/ImageSources;

    return-object p0
.end method

.method public getInputs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/InputStream;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->inputs:Ljava/util/List;

    return-object p0
.end method

.method public final getOutputConfigMap$camera_camera2_pipe()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/OutputStream;",
            "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->outputConfigMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getOutputConfigs$camera_camera2_pipe()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->outputConfigs:Ljava/util/List;

    return-object p0
.end method

.method public getOutputLatency-IL232MI(ILandroidx/camera/camera2/pipe/OutputId;)Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->cameraControllerProvider:Lws6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/CameraController;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/CameraController;->getOutputLatency-n5Pu2dI(Landroidx/camera/camera2/pipe/StreamId;)Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/StreamGraph;->get-aKI5c8E(I)Landroidx/camera/camera2/pipe/CameraStream;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/OutputId;->unbox-impl()I

    move-result v2

    invoke-interface {p0, v2}, Landroidx/camera/camera2/pipe/StreamGraph;->get-iYJqvbA(I)Landroidx/camera/camera2/pipe/OutputStream;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraStream;->getOutputs()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lqn1;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroidx/camera/camera2/pipe/OutputStream;

    sget-object p1, Lj59;->a:Lj59;

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_5

    :goto_1
    sget-object p1, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-virtual {p1, p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getStreamConfigurationMap(Landroidx/camera/camera2/pipe/CameraMetadata;)Landroidx/camera/camera2/pipe/CameraStreamConfigurationMap;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {v2}, Landroidx/camera/camera2/pipe/OutputStream;->getFormat-8FPWQzE()I

    move-result p1

    invoke-interface {v2}, Landroidx/camera/camera2/pipe/OutputStream;->getSize()Landroid/util/Size;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroidx/camera/camera2/pipe/CameraStreamConfigurationMap;->getOutputStallDuration-lomOqCM(ILandroid/util/Size;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_2

    :cond_3
    move-object p0, v1

    :goto_2
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    new-instance p2, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;

    const-wide/16 v0, 0x0

    invoke-direct {p2, p0, p1, v0, v1}, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;-><init>(JJ)V

    return-object p2

    :cond_4
    return-object v1

    :cond_5
    const-string p0, "Output must be specified for MultiResolution use case. No output found for given outputId "

    invoke-static {p2, p0}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_6
    const-string p0, "No stream found for given streamId "

    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->toString-impl(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public getOutputs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/OutputStream;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->outputs:Ljava/util/List;

    return-object p0
.end method

.method public getStreamIds()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->streamIds$1:Ljava/util/Set;

    return-object p0
.end method

.method public getStreams()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/CameraStream;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->streams:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StreamGraph("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->_streamMap:Ljava/util/Map;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lg2;->c(Ljava/lang/StringBuilder;Ljava/util/Map;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
