.class public final Landroidx/camera/core/featuregroup/impl/resolver/DefaultFeatureGroupResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/featuregroup/impl/resolver/DefaultFeatureGroupResolver$Companion;,
        Landroidx/camera/core/featuregroup/impl/resolver/DefaultFeatureGroupResolver$WhenMappings;
    }
.end annotation


# static fields
.field private static final Companion:Landroidx/camera/core/featuregroup/impl/resolver/DefaultFeatureGroupResolver$Companion;

.field private static final TAG:Ljava/lang/String; = "DefaultFeatureGroupResolver"


# instance fields
.field private final cameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/core/featuregroup/impl/resolver/DefaultFeatureGroupResolver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/core/featuregroup/impl/resolver/DefaultFeatureGroupResolver$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/core/featuregroup/impl/resolver/DefaultFeatureGroupResolver;->Companion:Landroidx/camera/core/featuregroup/impl/resolver/DefaultFeatureGroupResolver$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/CameraInfoInternal;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/featuregroup/impl/resolver/DefaultFeatureGroupResolver;->cameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    return-void
.end method

.method private final getFeatureListResolvedByPriority(Landroidx/camera/core/SessionConfig;Ljava/util/List;ILjava/util/List;)Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/SessionConfig;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/featuregroup/GroupableFeature;",
            ">;I",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/featuregroup/GroupableFeature;",
            ">;)",
            "Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_1

    invoke-virtual {p1}, Landroidx/camera/core/SessionConfig;->getRequiredFeatureGroup()Ljava/util/Set;

    move-result-object p2

    check-cast p4, Ljava/lang/Iterable;

    invoke-static {p2, p4}, Lmr7;->l(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "getFeatureListResolvedByPriority: features = "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", useCases = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/camera/core/SessionConfig;->getUseCases()Ljava/util/List;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "DefaultFeatureGroupResolver"

    invoke-static {p4, p3}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Landroidx/camera/core/featuregroup/impl/resolver/DefaultFeatureGroupResolver;->isConflictFree(Ljava/util/Set;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p0, p0, Landroidx/camera/core/featuregroup/impl/resolver/DefaultFeatureGroupResolver;->cameraInfoInternal:Landroidx/camera/core/impl/CameraInfoInternal;

    new-instance p3, Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;

    invoke-direct {p3, p2}, Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;-><init>(Ljava/util/Set;)V

    invoke-interface {p0, p3, p1}, Landroidx/camera/core/impl/CameraInfoInternal;->isResolvedFeatureGroupSupported(Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;Landroidx/camera/core/SessionConfig;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$Supported;

    new-instance p1, Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;

    invoke-direct {p1, p2}, Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;-><init>(Ljava/util/Set;)V

    invoke-direct {p0, p1}, Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$Supported;-><init>(Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;)V

    return-object p0

    :cond_0
    sget-object p0, Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$Unsupported;->INSTANCE:Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$Unsupported;

    return-object p0

    :cond_1
    add-int/lit8 v0, p3, 0x1

    move-object v1, p4

    check-cast v1, Ljava/util/Collection;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3, v1}, Lqn1;->i0(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/camera/core/featuregroup/impl/resolver/DefaultFeatureGroupResolver;->getFeatureListResolvedByPriority(Landroidx/camera/core/SessionConfig;Ljava/util/List;ILjava/util/List;)Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult;

    move-result-object p3

    instance-of v1, p3, Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$Supported;

    if-eqz v1, :cond_2

    return-object p3

    :cond_2
    invoke-direct {p0, p1, p2, v0, p4}, Landroidx/camera/core/featuregroup/impl/resolver/DefaultFeatureGroupResolver;->getFeatureListResolvedByPriority(Landroidx/camera/core/SessionConfig;Ljava/util/List;ILjava/util/List;)Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getFeatureListResolvedByPriority$default(Landroidx/camera/core/featuregroup/impl/resolver/DefaultFeatureGroupResolver;Landroidx/camera/core/SessionConfig;Ljava/util/List;ILjava/util/List;ILjava/lang/Object;)Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    sget-object p4, Lkx2;->b:Lkx2;

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/core/featuregroup/impl/resolver/DefaultFeatureGroupResolver;->getFeatureListResolvedByPriority(Landroidx/camera/core/SessionConfig;Ljava/util/List;ILjava/util/List;)Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult;

    move-result-object p0

    return-object p0
.end method

.method private final getMissingUseCase(Landroidx/camera/core/featuregroup/GroupableFeature;Ljava/util/List;)Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$UseCaseMissing;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/featuregroup/GroupableFeature;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;)",
            "Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$UseCaseMissing;"
        }
    .end annotation

    check-cast p2, Ljava/lang/Iterable;

    instance-of p0, p2, Ljava/util/Collection;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    move-object v2, p2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/UseCase;

    instance-of v3, v3, Landroidx/camera/core/ImageCapture;

    if-eqz v3, :cond_2

    move v2, v0

    :goto_0
    if-eqz p0, :cond_4

    move-object v3, p2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/UseCase;

    instance-of v5, v4, Landroidx/camera/core/Preview;

    if-nez v5, :cond_6

    invoke-static {v4}, Landroidx/camera/core/impl/utils/UseCaseUtil;->isVideoCapture(Landroidx/camera/core/UseCase;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_6
    move v3, v0

    :goto_1
    if-eqz p0, :cond_8

    move-object v4, p2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    move v4, v1

    goto :goto_2

    :cond_8
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/core/UseCase;

    instance-of v6, v5, Landroidx/camera/core/Preview;

    if-nez v6, :cond_a

    instance-of v6, v5, Landroidx/camera/core/ImageAnalysis;

    if-nez v6, :cond_a

    invoke-static {v5}, Landroidx/camera/core/impl/utils/UseCaseUtil;->isVideoCapture(Landroidx/camera/core/UseCase;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_a
    move v4, v0

    :goto_2
    if-eqz p0, :cond_b

    move-object p0, p2

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_3

    :cond_b
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/core/UseCase;

    invoke-static {p2}, Landroidx/camera/core/impl/utils/UseCaseUtil;->isVideoCapture(Landroidx/camera/core/UseCase;)Z

    move-result p2

    if-eqz p2, :cond_c

    move v1, v0

    :cond_d
    :goto_3
    invoke-virtual {p1}, Landroidx/camera/core/featuregroup/GroupableFeature;->getFeatureTypeInternal()Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    move-result-object p0

    sget-object p2, Landroidx/camera/core/featuregroup/impl/resolver/DefaultFeatureGroupResolver$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p2, p0

    const/4 p2, 0x0

    if-eq p0, v0, :cond_15

    const/4 v2, 0x2

    const-string v5, " or "

    if-eq p0, v2, :cond_14

    const/4 v3, 0x3

    if-eq p0, v3, :cond_13

    const/4 v3, 0x4

    if-eq p0, v3, :cond_10

    const/4 v0, 0x5

    if-ne p0, v0, :cond_f

    sget-object p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->VIDEO_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    invoke-virtual {p0}, Landroidx/camera/core/featuregroup/impl/UseCaseType;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez v1, :cond_e

    goto/16 :goto_5

    :cond_e
    :goto_4
    move-object p0, p2

    goto/16 :goto_5

    :cond_f
    invoke-static {}, Lme0;->e()V

    return-object p2

    :cond_10
    move-object p0, p1

    check-cast p0, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;

    invoke-virtual {p0}, Landroidx/camera/core/featuregroup/impl/feature/VideoStabilizationFeature;->getVideoStabilization()Landroidx/camera/core/impl/stabilization/VideoStabilization;

    move-result-object p0

    sget-object v3, Landroidx/camera/core/featuregroup/impl/resolver/DefaultFeatureGroupResolver$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v3, p0

    if-eq p0, v0, :cond_12

    if-eq p0, v2, :cond_11

    goto :goto_4

    :cond_11
    sget-object p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->VIDEO_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    invoke-virtual {p0}, Landroidx/camera/core/featuregroup/impl/UseCaseType;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez v1, :cond_e

    goto :goto_5

    :cond_12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->PREVIEW:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->VIDEO_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->IMAGE_ANALYSIS:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez v4, :cond_e

    goto :goto_5

    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->PREVIEW:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->VIDEO_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->IMAGE_ANALYSIS:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez v4, :cond_e

    goto :goto_5

    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->PREVIEW:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->VIDEO_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez v3, :cond_e

    goto :goto_5

    :cond_15
    sget-object p0, Landroidx/camera/core/featuregroup/impl/UseCaseType;->IMAGE_CAPTURE:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    invoke-virtual {p0}, Landroidx/camera/core/featuregroup/impl/UseCaseType;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez v2, :cond_e

    :goto_5
    if-eqz p0, :cond_16

    new-instance p2, Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$UseCaseMissing;

    invoke-direct {p2, p0, p1}, Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$UseCaseMissing;-><init>(Ljava/lang/String;Landroidx/camera/core/featuregroup/GroupableFeature;)V

    :cond_16
    return-object p2
.end method

.method private final isConflictFree(Ljava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Landroidx/camera/core/featuregroup/GroupableFeature;",
            ">;)Z"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/featuregroup/GroupableFeature;

    invoke-virtual {v1}, Landroidx/camera/core/featuregroup/GroupableFeature;->getFeatureTypeInternal()Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lqn1;->N(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/camera/core/featuregroup/GroupableFeature;

    invoke-virtual {v5}, Landroidx/camera/core/featuregroup/GroupableFeature;->getFeatureTypeInternal()Landroidx/camera/core/featuregroup/impl/feature/FeatureTypeInternal;

    move-result-object v5

    if-ne v5, v0, :cond_2

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_4
    return v1
.end method


# virtual methods
.method public resolveFeatureGroup(Landroidx/camera/core/SessionConfig;)Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult;
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/camera/core/SessionConfig;->getUseCases()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/camera/core/SessionConfig;->getRequiredFeatureGroup()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/camera/core/SessionConfig;->getPreferredFeatureGroup()Ljava/util/List;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Must have at least one required or preferred feature"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v4

    :cond_1
    :goto_0
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/core/UseCase;

    sget-object v6, Landroidx/camera/core/featuregroup/impl/UseCaseType;->Companion:Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;

    invoke-virtual {v6, v5}, Landroidx/camera/core/featuregroup/impl/UseCaseType$Companion;->getFeatureGroupUseCaseType(Landroidx/camera/core/UseCase;)Landroidx/camera/core/featuregroup/impl/UseCaseType;

    move-result-object v6

    sget-object v7, Landroidx/camera/core/featuregroup/impl/UseCaseType;->UNDEFINED:Landroidx/camera/core/featuregroup/impl/UseCaseType;

    if-ne v6, v7, :cond_2

    new-instance p0, Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$UnsupportedUseCase;

    invoke-direct {p0, v5}, Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$UnsupportedUseCase;-><init>(Landroidx/camera/core/UseCase;)V

    return-object p0

    :cond_3
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/featuregroup/GroupableFeature;

    invoke-direct {p0, v3, v0}, Landroidx/camera/core/featuregroup/impl/resolver/DefaultFeatureGroupResolver;->getMissingUseCase(Landroidx/camera/core/featuregroup/GroupableFeature;Ljava/util/List;)Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$UseCaseMissing;

    move-result-object v3

    if-eqz v3, :cond_4

    return-object v3

    :cond_5
    check-cast v2, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "DefaultFeatureGroupResolver"

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/camera/core/featuregroup/GroupableFeature;

    invoke-direct {p0, v5, v0}, Landroidx/camera/core/featuregroup/impl/resolver/DefaultFeatureGroupResolver;->getMissingUseCase(Landroidx/camera/core/featuregroup/GroupableFeature;Ljava/util/List;)Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$UseCaseMissing;

    move-result-object v5

    if-eqz v5, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "resolveFeatureGroup: filtered out preferred feature due to "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-object v5, v4

    :goto_2
    if-nez v5, :cond_6

    invoke-interface {v7, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resolveFeatureGroup: filteredPreferredFeatures = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0xc

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v5 .. v11}, Landroidx/camera/core/featuregroup/impl/resolver/DefaultFeatureGroupResolver;->getFeatureListResolvedByPriority$default(Landroidx/camera/core/featuregroup/impl/resolver/DefaultFeatureGroupResolver;Landroidx/camera/core/SessionConfig;Ljava/util/List;ILjava/util/List;ILjava/lang/Object;)Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult;

    move-result-object p0

    return-object p0
.end method
