.class public final Landroidx/camera/core/SessionConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/SessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private cameraFilter:Landroidx/camera/core/CameraFilter;

.field private effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraEffect;",
            ">;"
        }
    .end annotation
.end field

.field private frameRateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isAutoRotationEnabled:Z

.field private final preferredFeatureGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/featuregroup/GroupableFeature;",
            ">;"
        }
    .end annotation
.end field

.field private requireNonEmptyUseCases:Z

.field private final requiredFeatureGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/featuregroup/GroupableFeature;",
            ">;"
        }
    .end annotation
.end field

.field private sessionType:I

.field private final useCases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation
.end field

.field private viewPort:Landroidx/camera/core/ViewPort;


# direct methods
.method public constructor <init>(Landroidx/camera/core/SessionConfig;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/camera/core/SessionConfig;->getUseCases()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/camera/core/SessionConfig$Builder;-><init>(Ljava/util/List;)V

    invoke-virtual {p1}, Landroidx/camera/core/SessionConfig;->getViewPort()Landroidx/camera/core/ViewPort;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/SessionConfig$Builder;->viewPort:Landroidx/camera/core/ViewPort;

    invoke-virtual {p1}, Landroidx/camera/core/SessionConfig;->getEffects()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/SessionConfig$Builder;->effects:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/camera/core/SessionConfig;->getFrameRateRange()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/SessionConfig$Builder;->frameRateRange:Landroid/util/Range;

    iget-object v0, p0, Landroidx/camera/core/SessionConfig$Builder;->requiredFeatureGroup:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/camera/core/SessionConfig;->getRequiredFeatureGroup()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroidx/camera/core/SessionConfig$Builder;->preferredFeatureGroup:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/camera/core/SessionConfig;->getPreferredFeatureGroup()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Landroidx/camera/core/SessionConfig;->isAutoRotationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/camera/core/SessionConfig$Builder;->isAutoRotationEnabled:Z

    invoke-virtual {p1}, Landroidx/camera/core/SessionConfig;->getCameraFilter()Landroidx/camera/core/CameraFilter;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/SessionConfig$Builder;->cameraFilter:Landroidx/camera/core/CameraFilter;

    invoke-virtual {p1}, Landroidx/camera/core/SessionConfig;->getSessionType()I

    move-result v0

    iput v0, p0, Landroidx/camera/core/SessionConfig$Builder;->sessionType:I

    invoke-virtual {p1}, Landroidx/camera/core/SessionConfig;->getRequireNonEmptyUseCases()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/camera/core/SessionConfig$Builder;->requireNonEmptyUseCases:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/SessionConfig$Builder;->useCases:Ljava/util/List;

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/SessionConfig$Builder;->effects:Ljava/util/List;

    .line 84
    sget-object p1, Landroidx/camera/core/impl/StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/core/SessionConfig$Builder;->frameRateRange:Landroid/util/Range;

    .line 85
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/SessionConfig$Builder;->requiredFeatureGroup:Ljava/util/List;

    .line 86
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/SessionConfig$Builder;->preferredFeatureGroup:Ljava/util/List;

    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p0, Landroidx/camera/core/SessionConfig$Builder;->requireNonEmptyUseCases:Z

    return-void
.end method

.method public varargs constructor <init>([Landroidx/camera/core/UseCase;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    invoke-static {p1}, Lyr;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/camera/core/SessionConfig$Builder;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getCameraFilter$p(Landroidx/camera/core/SessionConfig$Builder;)Landroidx/camera/core/CameraFilter;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/SessionConfig$Builder;->cameraFilter:Landroidx/camera/core/CameraFilter;

    return-object p0
.end method

.method public static final synthetic access$getRequireNonEmptyUseCases$p(Landroidx/camera/core/SessionConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/core/SessionConfig$Builder;->requireNonEmptyUseCases:Z

    return p0
.end method

.method public static final synthetic access$getSessionType$p(Landroidx/camera/core/SessionConfig$Builder;)I
    .locals 0

    iget p0, p0, Landroidx/camera/core/SessionConfig$Builder;->sessionType:I

    return p0
.end method

.method public static final synthetic access$isAutoRotationEnabled$p(Landroidx/camera/core/SessionConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/core/SessionConfig$Builder;->isAutoRotationEnabled:Z

    return p0
.end method


# virtual methods
.method public final addEffect(Landroidx/camera/core/CameraEffect;)Landroidx/camera/core/SessionConfig$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/core/SessionConfig$Builder;->effects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final build()Landroidx/camera/core/SessionConfig;
    .locals 8

    iget-object v2, p0, Landroidx/camera/core/SessionConfig$Builder;->useCases:Ljava/util/List;

    iget-object v3, p0, Landroidx/camera/core/SessionConfig$Builder;->viewPort:Landroidx/camera/core/ViewPort;

    iget-object v0, p0, Landroidx/camera/core/SessionConfig$Builder;->effects:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Landroidx/camera/core/SessionConfig$Builder;->frameRateRange:Landroid/util/Range;

    iget-object v0, p0, Landroidx/camera/core/SessionConfig$Builder;->requiredFeatureGroup:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v6

    iget-object v0, p0, Landroidx/camera/core/SessionConfig$Builder;->preferredFeatureGroup:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    new-instance v0, Landroidx/camera/core/SessionConfig$Builder$build$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Landroidx/camera/core/SessionConfig$Builder$build$1;-><init>(Landroidx/camera/core/SessionConfig$Builder;Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;Landroid/util/Range;Ljava/util/Set;Ljava/util/List;)V

    return-object v0
.end method

.method public final setAutoRotationEnabled(Z)Landroidx/camera/core/SessionConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/camera/core/SessionConfig$Builder;->isAutoRotationEnabled:Z

    return-object p0
.end method

.method public final setFrameRateRange(Landroid/util/Range;)Landroidx/camera/core/SessionConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/camera/core/SessionConfig$Builder;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/core/SessionConfig$Builder;->frameRateRange:Landroid/util/Range;

    return-object p0
.end method

.method public final varargs setPreferredFeatureGroup([Landroidx/camera/core/featuregroup/GroupableFeature;)Landroidx/camera/core/SessionConfig$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/core/SessionConfig$Builder;->preferredFeatureGroup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroidx/camera/core/SessionConfig$Builder;->preferredFeatureGroup:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lnn1;->u(Ljava/util/Collection;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public final varargs setRequiredFeatureGroup([Landroidx/camera/core/featuregroup/GroupableFeature;)Landroidx/camera/core/SessionConfig$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/core/SessionConfig$Builder;->requiredFeatureGroup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroidx/camera/core/SessionConfig$Builder;->requiredFeatureGroup:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lnn1;->u(Ljava/util/Collection;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setViewPort(Landroidx/camera/core/ViewPort;)Landroidx/camera/core/SessionConfig$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/core/SessionConfig$Builder;->viewPort:Landroidx/camera/core/ViewPort;

    return-object p0
.end method
