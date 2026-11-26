.class public final Landroidx/camera/camera2/adapter/SessionConfigAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/adapter/SessionConfigAdapter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/adapter/SessionConfigAdapter$Companion;


# instance fields
.field private final deferrableSurfaces$delegate:Lcl4;

.field private final isPrimary:Z

.field private final sessionConfig$delegate:Lcl4;

.field private final surfaceToStreamUseCaseMap$delegate:Lcl4;

.field private final surfaceToStreamUseHintMap$delegate:Lcl4;

.field private final useCases:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation
.end field

.field private final validatingBuilder$delegate:Lcl4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/adapter/SessionConfigAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/adapter/SessionConfigAdapter$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->Companion:Landroidx/camera/camera2/adapter/SessionConfigAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->useCases:Ljava/util/Collection;

    iput-boolean p2, p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->isPrimary:Z

    new-instance p1, Lor2;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lor2;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->surfaceToStreamUseCaseMap$delegate:Lcl4;

    new-instance p1, Lwq7;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lwq7;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->surfaceToStreamUseHintMap$delegate:Lcl4;

    new-instance p1, Ls92;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Ls92;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->validatingBuilder$delegate:Lcl4;

    new-instance p1, Lgc5;

    invoke-direct {p1, p0, p2}, Lgc5;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->sessionConfig$delegate:Lcl4;

    new-instance p1, Lhc5;

    invoke-direct {p1, p0, p2}, Lhc5;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->deferrableSurfaces$delegate:Lcl4;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Collection;ZILjh2;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 74
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;-><init>(Ljava/util/Collection;Z)V

    return-void
.end method

.method public static synthetic a(Landroidx/camera/camera2/adapter/SessionConfigAdapter;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->deferrableSurfaces_delegate$lambda$0(Landroidx/camera/camera2/adapter/SessionConfigAdapter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/camera/camera2/adapter/SessionConfigAdapter;)Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->validatingBuilder_delegate$lambda$0(Landroidx/camera/camera2/adapter/SessionConfigAdapter;)Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/camera/camera2/adapter/SessionConfigAdapter;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->surfaceToStreamUseHintMap_delegate$lambda$0(Landroidx/camera/camera2/adapter/SessionConfigAdapter;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/camera/camera2/adapter/SessionConfigAdapter;)Landroidx/camera/core/impl/SessionConfig;
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->sessionConfig_delegate$lambda$0(Landroidx/camera/camera2/adapter/SessionConfigAdapter;)Landroidx/camera/core/impl/SessionConfig;

    move-result-object p0

    return-object p0
.end method

.method private static final deferrableSurfaces_delegate$lambda$0(Landroidx/camera/camera2/adapter/SessionConfigAdapter;)Ljava/util/List;
    .locals 3

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->getValidatingBuilder()Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->getSessionConfig()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig;->getPostviewOutputConfig()Landroidx/camera/core/impl/SessionConfig$OutputConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->getSessionConfig()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/core/impl/SessionConfig;->getSurfaces()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$OutputConfig;->getSurface()Landroidx/camera/core/impl/DeferrableSurface;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->getSessionConfig()Landroidx/camera/core/impl/SessionConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/core/impl/SessionConfig;->getSurfaces()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "Check failed."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic e(Landroidx/camera/camera2/adapter/SessionConfigAdapter;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->surfaceToStreamUseCaseMap_delegate$lambda$0(Landroidx/camera/camera2/adapter/SessionConfigAdapter;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final getSessionConfig()Landroidx/camera/core/impl/SessionConfig;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->sessionConfig$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/SessionConfig;

    return-object p0
.end method

.method private final getStreamUseHintForContainerClass(Ljava/lang/Class;)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)J"
        }
    .end annotation

    const-class p0, Landroid/media/MediaCodec;

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->Companion:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint$Companion;->getVIDEO_RECORD-4VYZOf8()J

    move-result-wide p0

    return-wide p0

    :cond_0
    sget-object p0, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;->Companion:Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint$Companion;->getDEFAULT-4VYZOf8()J

    move-result-wide p0

    return-wide p0
.end method

.method private final getValidatingBuilder()Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->validatingBuilder$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    return-object p0
.end method

.method private static final sessionConfig_delegate$lambda$0(Landroidx/camera/camera2/adapter/SessionConfigAdapter;)Landroidx/camera/core/impl/SessionConfig;
    .locals 1

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->getValidatingBuilder()Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->getValidatingBuilder()Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    const-string p0, "Check failed."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static final surfaceToStreamUseCaseMap_delegate$lambda$0(Landroidx/camera/camera2/adapter/SessionConfigAdapter;)Ljava/util/Map;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->useCases:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/UseCase;

    sget-object v4, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->Companion:Landroidx/camera/camera2/adapter/SessionConfigAdapter$Companion;

    iget-boolean v5, p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->isPrimary:Z

    invoke-virtual {v4, v3, v5}, Landroidx/camera/camera2/adapter/SessionConfigAdapter$Companion;->getSessionConfig(Landroidx/camera/core/UseCase;Z)Landroidx/camera/core/impl/SessionConfig;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->getSurfaceToStreamUseCaseMapping(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static final surfaceToStreamUseHintMap_delegate$lambda$0(Landroidx/camera/camera2/adapter/SessionConfigAdapter;)Ljava/util/Map;
    .locals 5

    iget-object v0, p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->useCases:Ljava/util/Collection;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/UseCase;

    sget-object v3, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->Companion:Landroidx/camera/camera2/adapter/SessionConfigAdapter$Companion;

    iget-boolean v4, p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->isPrimary:Z

    invoke-virtual {v3, v2, v4}, Landroidx/camera/camera2/adapter/SessionConfigAdapter$Companion;->getSessionConfig(Landroidx/camera/core/UseCase;Z)Landroidx/camera/core/impl/SessionConfig;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->getSurfaceToStreamUseHintMapping(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static final validatingBuilder_delegate$lambda$0(Landroidx/camera/camera2/adapter/SessionConfigAdapter;)Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;
    .locals 5

    new-instance v0, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    invoke-direct {v0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;-><init>()V

    iget-object v1, p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->useCases:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/UseCase;

    sget-object v3, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->Companion:Landroidx/camera/camera2/adapter/SessionConfigAdapter$Companion;

    iget-boolean v4, p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->isPrimary:Z

    invoke-virtual {v3, v2, v4}, Landroidx/camera/camera2/adapter/SessionConfigAdapter$Companion;->getSessionConfig(Landroidx/camera/core/UseCase;Z)Landroidx/camera/core/impl/SessionConfig;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->add(Landroidx/camera/core/impl/SessionConfig;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getDeferrableSurfaces()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->deferrableSurfaces$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getSurfaceToStreamUseCaseMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->surfaceToStreamUseCaseMap$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public final getSurfaceToStreamUseCaseMapping(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/impl/SessionConfig;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>;)",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p0, p1

    check-cast p0, Ljava/lang/Iterable;

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/SessionConfig;

    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig;->getTemplateType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p0, "CXCP"

    invoke-static {p0}, Landroidx/camera/core/Logger;->isErrorEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZSL in populateSurfaceToStreamUseCaseMapping()"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object p0, Lmx2;->b:Lmx2;

    return-object p0

    :cond_3
    :goto_0
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object v0, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->INSTANCE:Landroidx/camera/camera2/internal/StreamUseCaseUtil;

    invoke-virtual {v0, p1, p2, p0}, Landroidx/camera/camera2/internal/StreamUseCaseUtil;->populateSurfaceToStreamUseCaseMapping(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;)V

    return-object p0
.end method

.method public final getSurfaceToStreamUseHintMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->surfaceToStreamUseHintMap$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public final getSurfaceToStreamUseHintMapping(Ljava/util/Collection;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/camera/core/impl/SessionConfig;",
            ">;)",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/SessionConfig;

    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig;->getSurfaces()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v4

    sget-object v5, Landroidx/camera/camera2/impl/Camera2ImplConfig;->STREAM_USE_HINT_OPTION:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v4, v5}, Landroidx/camera/core/impl/Config;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v4

    invoke-interface {v4, v5}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v4

    invoke-interface {v4, v5}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroidx/camera/core/impl/DeferrableSurface;->getContainerClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->getStreamUseHintForContainerClass(Ljava/lang/Class;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final getValidSessionConfigOrNull()Landroidx/camera/core/impl/SessionConfig;
    .locals 1

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->isSessionConfigValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->getSessionConfig()Landroidx/camera/core/impl/SessionConfig;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isSessionConfigValid()Z
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->getValidatingBuilder()Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->isValid()Z

    move-result p0

    return p0
.end method

.method public final reportSurfaceInvalid(Landroidx/camera/core/impl/DeferrableSurface;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unavailable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", notify SessionConfig invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->useCases:Ljava/util/Collection;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/camera/core/UseCase;

    sget-object v4, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->Companion:Landroidx/camera/camera2/adapter/SessionConfigAdapter$Companion;

    iget-boolean v5, p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->isPrimary:Z

    invoke-virtual {v4, v3, v5}, Landroidx/camera/camera2/adapter/SessionConfigAdapter$Companion;->getSessionConfig(Landroidx/camera/core/UseCase;Z)Landroidx/camera/core/impl/SessionConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/camera/core/impl/SessionConfig;->getSurfaces()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    check-cast v1, Landroidx/camera/core/UseCase;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getSessionConfig()Landroidx/camera/core/impl/SessionConfig;

    move-result-object p0

    goto :goto_1

    :cond_3
    move-object p0, v2

    :goto_1
    sget-object p1, Lqo2;->a:Loi2;

    sget-object p1, Luy4;->a:Lhu3;

    invoke-virtual {p1}, Lhu3;->k0()Lgu3;

    move-result-object p1

    invoke-static {p1}, Lz22;->a(Lo22;)Lkz1;

    move-result-object p1

    new-instance v0, Landroidx/camera/camera2/adapter/SessionConfigAdapter$reportSurfaceInvalid$2;

    invoke-direct {v0, p0, v2}, Landroidx/camera/camera2/adapter/SessionConfigAdapter$reportSurfaceInvalid$2;-><init>(Landroidx/camera/core/impl/SessionConfig;Le02;)V

    const/4 p0, 0x3

    invoke-static {p1, v2, v2, v0, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method
