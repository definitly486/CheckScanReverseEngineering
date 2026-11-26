.class public final Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;

.field private static final QUERYABLE_BAKLAVA_FCQ_COMBINATIONS$delegate:Lcl4;

.field private static final QUERYABLE_VIC_FCQ_COMBINATIONS$delegate:Lcl4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;

    invoke-direct {v0}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;-><init>()V

    sput-object v0, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->INSTANCE:Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;

    new-instance v0, Lpt3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpt3;-><init>(I)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    sput-object v1, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->QUERYABLE_VIC_FCQ_COMBINATIONS$delegate:Lcl4;

    new-instance v0, Lqt3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lqt3;-><init>(I)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    sput-object v1, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->QUERYABLE_BAKLAVA_FCQ_COMBINATIONS$delegate:Lcl4;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final QUERYABLE_BAKLAVA_FCQ_COMBINATIONS_delegate$lambda$0()Ljava/util/List;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->INSTANCE:Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;

    invoke-direct {v0}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->generateBaklavaQueryableFcqCombinations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final QUERYABLE_VIC_FCQ_COMBINATIONS_delegate$lambda$0()Ljava/util/List;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->INSTANCE:Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;

    invoke-direct {v0}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->generateVicQueryableFcqCombinations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a()Ljava/util/List;
    .locals 1

    invoke-static {}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->QUERYABLE_BAKLAVA_FCQ_COMBINATIONS_delegate$lambda$0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Ljava/util/List;
    .locals 1

    invoke-static {}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->QUERYABLE_VIC_FCQ_COMBINATIONS_delegate$lambda$0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final createPrivJpegXCombinations(Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;",
            "Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;",
            ")",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v0}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object p1

    move-object v8, v2

    move-object v7, v3

    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object p1

    invoke-static {v0, p1, p0, v0}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object p1

    move-object v3, v7

    move-object v2, v8

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG_R:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private final generateBaklavaQueryableFcqCombinations()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v0}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1080P_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    invoke-static {v0, v4, p0, v0}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    move-object v7, v3

    invoke-virtual {v0, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1440P_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-static {v0, v3, p0, v0}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v0

    move-object v3, v7

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->UHD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-static {v0, v3, p0, v0}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v0

    move-object v3, v7

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    move-object v7, v2

    invoke-virtual {v0, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v2, v7

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static final generateHighSpeedSupportedCombinationList(Landroid/util/Size;Landroidx/camera/core/impl/SurfaceSizeDefinition;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "Landroidx/camera/core/impl/SurfaceSizeDefinition;",
            ")",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    const/16 v8, 0x38

    const/4 v9, 0x0

    const/16 v2, 0x22

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v9}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->transformSurfaceConfig$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;ILandroid/util/Size;Landroidx/camera/core/impl/SurfaceSizeDefinition;ILandroidx/camera/core/impl/SurfaceConfig$ConfigSource;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object p0

    new-instance p1, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {p1}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    invoke-virtual {p1, p0}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {p1}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    invoke-virtual {p1, p0}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    invoke-virtual {p1, p0}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static final generateSupportedCombinationList(IZZ)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->getLegacySupportedCombinationList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz p0, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v2, :cond_0

    const/4 v3, 0x4

    if-eq p0, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->getLimitedSupportedCombinationList()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    if-eq p0, v1, :cond_1

    if-eq p0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->getFullSupportedCombinationList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->getRAWSupportedCombinationList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-eqz p2, :cond_3

    if-nez p0, :cond_3

    invoke-static {}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->getBurstSupportedCombinationList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    if-ne p0, v2, :cond_4

    invoke-static {}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->getLevel3SupportedCombinationList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-object v0
.end method

.method private final generateVicQueryableFcqCombinations()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v1}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1080P_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v8, v4

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S720P_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    invoke-direct {p0, v8, v1}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->createPrivJpegXCombinations(Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->UHD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    invoke-direct {p0, v8, v2}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->createPrivJpegXCombinations(Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1440P_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    invoke-direct {p0, v8, v3}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->createPrivJpegXCombinations(Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v8, v8}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->createPrivJpegXCombinations(Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v4, v1}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->createPrivJpegXCombinations(Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v4, v2}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->createPrivJpegXCombinations(Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v4, v8}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->createPrivJpegXCombinations(Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->X_VGA:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM_4_3:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    invoke-direct {p0, v1, v2}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->createPrivJpegXCombinations(Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1080P_4_3:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    invoke-direct {p0, v1, v2}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->createPrivJpegXCombinations(Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static final get10BitSupportedCombinationList()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v0}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    move-object v7, v2

    invoke-virtual {v0, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    sget-object v2, Lj59;->a:Lj59;

    new-instance v8, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v8}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    move-object v10, v2

    move-object v9, v3

    invoke-virtual {v8, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    new-instance v11, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v11}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v4, 0x0

    move-object v2, v7

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    move-object v12, v3

    invoke-virtual {v11, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const/4 v4, 0x0

    move-object v3, v9

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    move-object v13, v2

    invoke-virtual {v11, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    new-instance v14, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v14}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    const/4 v4, 0x0

    move-object v2, v7

    move-object v3, v12

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v4, 0x0

    move-object v3, v9

    move-object v2, v10

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    new-instance v10, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v10}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    const/4 v4, 0x0

    move-object v3, v12

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v4, 0x0

    move-object v3, v9

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    move-object v9, v2

    invoke-virtual {v10, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    new-instance v15, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v15}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    move-object v2, v7

    move-object v3, v12

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->RECORD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    move-object v7, v3

    invoke-virtual {v15, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    new-instance v6, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v6}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    move-object v3, v6

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v17, v12

    move-object v12, v3

    move-object/from16 v3, v17

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    move-object/from16 v16, v3

    invoke-virtual {v12, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v4, 0x0

    move-object v3, v7

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    move-object v7, v2

    invoke-virtual {v12, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v4, 0x0

    move-object v2, v9

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    move-object v9, v3

    invoke-virtual {v12, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v2, v7

    new-instance v7, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v7}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    move-object/from16 v3, v16

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v3, v9

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v2, v13

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v1, v8

    move-object v4, v10

    move-object v2, v11

    move-object v6, v12

    move-object v3, v14

    move-object v5, v15

    filled-new-array/range {v0 .. v7}, [Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final getBurstSupportedCombinationList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v1}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v8, v4

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v9, v4

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v8

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    move-object v4, v9

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v8

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v4, v9

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static final getConcurrentSupportedCombinationList()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v1}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1440P_4_3:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v8, v3

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v9, v3

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v11, v3

    move-object v10, v4

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S720P_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v5, 0x0

    move-object v3, v8

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v12, v4

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v4, v10

    move-object v3, v11

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v3, v9

    move-object v4, v12

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v4, v10

    move-object v3, v11

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-static {v1, v3, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    move-object v3, v8

    move-object v4, v12

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v4, v10

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v12

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v3, v9

    move-object v4, v10

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v12

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v3, v8

    move-object v4, v10

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-static {v1, v3, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    move-object v3, v9

    move-object v4, v12

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v4, v10

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static final getFullSupportedCombinationList()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v1}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v8, v4

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v9, v4

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v8

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v8, v3

    move-object v10, v4

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const/4 v5, 0x0

    move-object v4, v9

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v10

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v4, v9

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v11, v3

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v3, v8

    move-object v4, v10

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const/4 v5, 0x0

    move-object v4, v9

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-static {v1, v3, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->VGA:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    move-object v3, v11

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v12, v4

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v3, v8

    move-object v4, v10

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v4, v9

    move-object v3, v11

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v12

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v4, v10

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v4, v9

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static final getLegacySupportedCombinationList()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v1}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v8, v3

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v9, v3

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v11, v3

    move-object v10, v4

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v5, 0x0

    move-object v3, v8

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v12, v4

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v3, v9

    move-object v4, v10

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v3, v11

    move-object v4, v12

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v3, v9

    move-object v4, v10

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v3, v8

    move-object v4, v12

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v3, v11

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v3, v8

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v3, v11

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v3, v9

    move-object v4, v10

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static final getLevel3SupportedCombinationList()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v1}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v8, v4

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->VGA:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->RAW:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v12, v3

    move-object v11, v4

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v8

    move-object v3, v9

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v4, v10

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    move-object v4, v11

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v3, v12

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static final getLimitedSupportedCombinationList()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v1}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v8, v4

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->RECORD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v9, v4

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v8

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v8, v3

    move-object v10, v4

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const/4 v5, 0x0

    move-object v4, v9

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v10

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v4, v9

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v11, v3

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v3, v8

    move-object v4, v10

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v4, v9

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v12, v3

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v3, v8

    move-object v4, v10

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v4, v9

    move-object v3, v11

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v3, v12

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    invoke-static {v1, v4, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    move-object v4, v10

    move-object v3, v11

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    move-object v3, v12

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static final getPreviewStabilizationSupportedCombinationList()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v1}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1440P_4_3:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v8, v3

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v9, v3

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v3, v8

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v10, v4

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v11, v3

    move-object v12, v4

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v3, v9

    move-object v4, v10

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v3, v11

    move-object v4, v12

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-static {v1, v3, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    move-object v3, v8

    move-object v4, v10

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v3, v9

    move-object v4, v12

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v10

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v4, v12

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    invoke-static {v1, v4, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    move-object v3, v8

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v8, v4

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v4, v10

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v10, v3

    move-object v11, v4

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v8

    move-object v3, v9

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v3, v10

    move-object v4, v11

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v10, v4

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v8

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v3, v9

    move-object v4, v10

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v8

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v4, v10

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static final getRAWSupportedCombinationList()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v1}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->RAW:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v8, v3

    move-object v9, v4

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v10, v3

    move-object v11, v4

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v3, v8

    move-object v4, v9

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const/4 v5, 0x0

    move-object v4, v11

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v12, v3

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v3, v8

    move-object v4, v9

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v3, v10

    move-object v4, v11

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v3, v8

    move-object v4, v9

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v3, v10

    move-object v4, v11

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v3, v12

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v3, v8

    move-object v4, v9

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v11

    move-object v3, v12

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v3, v8

    move-object v4, v9

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v3, v10

    move-object v4, v11

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    move-object v4, v9

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v9, v3

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v3, v8

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v10, v4

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v11

    move-object v3, v12

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v3, v9

    move-object v4, v10

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v3, v8

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static final getUltraHdrSupportedCombinationList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v1}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG_R:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v8, v3

    move-object v9, v4

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v3, v8

    move-object v4, v9

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static final getUltraHighResolutionSupportedCombinationList()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v1}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->ULTRA_MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v10, v4

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->RECORD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v11, v3

    move-object v12, v4

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const/4 v5, 0x0

    move-object v4, v9

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v13, v3

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v4, v10

    move-object v3, v11

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v4, v12

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->RAW:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const/4 v5, 0x0

    move-object v4, v9

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v14, v3

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v4, v10

    move-object v3, v11

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v4, v12

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    invoke-static {v1, v4, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    move-object v3, v8

    move-object v4, v9

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v4, v10

    move-object v3, v11

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v5, 0x0

    move-object v3, v13

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    move-object v12, v4

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v9

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v4, v10

    move-object v3, v11

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v4, v12

    move-object v3, v13

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v9

    move-object v3, v14

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v4, v10

    move-object v3, v11

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v4, v12

    move-object v3, v13

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v3, v8

    move-object v4, v9

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v4, v10

    move-object v3, v11

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v3, v8

    move-object v4, v12

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v9

    move-object v3, v13

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v4, v10

    move-object v3, v11

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v3, v8

    move-object v4, v12

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v9

    move-object v3, v14

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v4, v10

    move-object v3, v11

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v3, v8

    move-object v4, v12

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v9

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v4, v10

    move-object v3, v11

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v4, v12

    move-object v3, v14

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v9

    move-object v3, v13

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v4, v10

    move-object v3, v11

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    const/4 v5, 0x0

    move-object v4, v12

    move-object v3, v14

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-static {v1, v5, v0, v1}, Lxy;->b(Landroidx/camera/core/impl/SurfaceCombination;Landroidx/camera/core/impl/SurfaceConfig;Ljava/util/ArrayList;Landroidx/camera/core/impl/SurfaceCombination;)Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v1

    const/4 v5, 0x0

    move-object v4, v9

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v4, v10

    move-object v3, v11

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v4, v12

    move-object v3, v14

    invoke-static/range {v2 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final getQUERYABLE_BAKLAVA_FCQ_COMBINATIONS()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->QUERYABLE_BAKLAVA_FCQ_COMBINATIONS$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getQUERYABLE_VIC_FCQ_COMBINATIONS()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->QUERYABLE_VIC_FCQ_COMBINATIONS$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getQueryableFcqCombinations$camera_camera2(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/core/impl/stabilization/VideoStabilization;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CameraMetadata;",
            "Landroidx/camera/core/impl/stabilization/VideoStabilization;",
            ")",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x23

    if-lt v1, v2, :cond_2

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SESSION_CONFIGURATION_QUERY_VERSION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, v1}, Landroidx/camera/camera2/pipe/CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-lt p1, v2, :cond_0

    sget-object v1, Landroidx/camera/core/impl/stabilization/VideoStabilization;->ON:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    if-eq p2, v1, :cond_0

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->getQUERYABLE_VIC_FCQ_COMBINATIONS()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/16 v1, 0x24

    if-lt p1, v1, :cond_2

    sget-object p1, Landroidx/camera/core/impl/stabilization/VideoStabilization;->PREVIEW:Landroidx/camera/core/impl/stabilization/VideoStabilization;

    if-eq p2, p1, :cond_2

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/GuaranteedConfigurationsUtil;->getQUERYABLE_BAKLAVA_FCQ_COMBINATIONS()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0

    :cond_1
    const-string p0, "Required value was null."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public final getStreamUseCaseSupportedCombinationList()Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SurfaceCombination;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v0}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1440P_4_3:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    sget-object v4, Landroidx/camera/core/impl/StreamUseCase;->PREVIEW_VIDEO_STILL:Landroidx/camera/core/impl/StreamUseCase;

    invoke-virtual {v1, v2, v3, v4}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    sget-object v5, Lj59;->a:Lj59;

    new-instance v5, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v5}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    sget-object v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    invoke-virtual {v1, v6, v3, v4}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    sget-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->RECORD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    sget-object v7, Landroidx/camera/core/impl/StreamUseCase;->VIDEO_RECORD:Landroidx/camera/core/impl/StreamUseCase;

    invoke-virtual {v1, v2, v4, v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v8, v3

    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    invoke-virtual {v1, v6, v4, v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    new-instance v9, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v9}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    sget-object v10, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v11, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    sget-object v12, Landroidx/camera/core/impl/StreamUseCase;->STILL_CAPTURE:Landroidx/camera/core/impl/StreamUseCase;

    invoke-virtual {v1, v10, v11, v12}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v13, v5

    new-instance v5, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v5}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    invoke-virtual {v1, v6, v11, v12}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    new-instance v14, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v14}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    sget-object v15, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    move-object/from16 p0, v0

    sget-object v0, Landroidx/camera/core/impl/StreamUseCase;->PREVIEW:Landroidx/camera/core/impl/StreamUseCase;

    move-object/from16 v16, v3

    invoke-virtual {v1, v2, v15, v0}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    invoke-virtual {v1, v10, v11, v12}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    move-object/from16 v17, v5

    invoke-virtual {v1, v2, v15, v0}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    invoke-virtual {v1, v6, v11, v12}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v5, v8

    new-instance v8, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v8}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    move-object/from16 v18, v3

    invoke-virtual {v1, v2, v15, v0}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    invoke-virtual {v1, v2, v4, v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v3, v9

    new-instance v9, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v9}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    move-object/from16 v19, v3

    invoke-virtual {v1, v2, v15, v0}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    invoke-virtual {v1, v6, v4, v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    move-object/from16 v20, v5

    invoke-virtual {v1, v2, v15, v0}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    invoke-virtual {v1, v6, v15, v0}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    new-instance v5, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v5}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    move-object/from16 v21, v3

    invoke-virtual {v1, v2, v15, v0}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    invoke-virtual {v1, v2, v4, v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    invoke-virtual {v1, v10, v4, v12}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    new-instance v3, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v3}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    move-object/from16 v22, v5

    invoke-virtual {v1, v2, v15, v0}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    invoke-virtual {v1, v6, v4, v7}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    invoke-virtual {v1, v10, v4, v12}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object v4, v13

    new-instance v13, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v13}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    invoke-virtual {v1, v2, v15, v0}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    invoke-virtual {v1, v6, v15, v0}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    invoke-virtual {v1, v10, v11, v12}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    move-object/from16 v0, p0

    move-object v12, v3

    move-object v1, v4

    move-object v6, v14

    move-object/from16 v3, v16

    move-object/from16 v5, v17

    move-object/from16 v7, v18

    move-object/from16 v4, v19

    move-object/from16 v2, v20

    move-object/from16 v10, v21

    move-object/from16 v11, v22

    filled-new-array/range {v0 .. v13}, [Landroidx/camera/core/impl/SurfaceCombination;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
