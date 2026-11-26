.class public final Landroidx/camera/core/SessionConfig$Builder$build$1;
.super Landroidx/camera/core/SessionConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/SessionConfig$Builder;->build()Landroidx/camera/core/SessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final cameraFilter:Landroidx/camera/core/CameraFilter;

.field private final isAutoRotationEnabled:Z

.field private final requireNonEmptyUseCases:Z

.field private final sessionType:I


# direct methods
.method public constructor <init>(Landroidx/camera/core/SessionConfig$Builder;Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;Landroid/util/Range;Ljava/util/Set;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/SessionConfig$Builder;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;",
            "Landroidx/camera/core/ViewPort;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/CameraEffect;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Landroidx/camera/core/featuregroup/GroupableFeature;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/featuregroup/GroupableFeature;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Landroidx/camera/core/SessionConfig;-><init>(Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;Landroid/util/Range;Ljava/util/Set;Ljava/util/List;)V

    invoke-static {p1}, Landroidx/camera/core/SessionConfig$Builder;->access$isAutoRotationEnabled$p(Landroidx/camera/core/SessionConfig$Builder;)Z

    move-result p0

    iput-boolean p0, v0, Landroidx/camera/core/SessionConfig$Builder$build$1;->isAutoRotationEnabled:Z

    invoke-static {p1}, Landroidx/camera/core/SessionConfig$Builder;->access$getCameraFilter$p(Landroidx/camera/core/SessionConfig$Builder;)Landroidx/camera/core/CameraFilter;

    move-result-object p0

    iput-object p0, v0, Landroidx/camera/core/SessionConfig$Builder$build$1;->cameraFilter:Landroidx/camera/core/CameraFilter;

    invoke-static {p1}, Landroidx/camera/core/SessionConfig$Builder;->access$getSessionType$p(Landroidx/camera/core/SessionConfig$Builder;)I

    move-result p0

    iput p0, v0, Landroidx/camera/core/SessionConfig$Builder$build$1;->sessionType:I

    invoke-static {p1}, Landroidx/camera/core/SessionConfig$Builder;->access$getRequireNonEmptyUseCases$p(Landroidx/camera/core/SessionConfig$Builder;)Z

    move-result p0

    iput-boolean p0, v0, Landroidx/camera/core/SessionConfig$Builder$build$1;->requireNonEmptyUseCases:Z

    return-void
.end method


# virtual methods
.method public getCameraFilter()Landroidx/camera/core/CameraFilter;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/SessionConfig$Builder$build$1;->cameraFilter:Landroidx/camera/core/CameraFilter;

    return-object p0
.end method

.method public getRequireNonEmptyUseCases()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/core/SessionConfig$Builder$build$1;->requireNonEmptyUseCases:Z

    return p0
.end method

.method public getSessionType()I
    .locals 0

    iget p0, p0, Landroidx/camera/core/SessionConfig$Builder$build$1;->sessionType:I

    return p0
.end method

.method public isAutoRotationEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/core/SessionConfig$Builder$build$1;->isAutoRotationEnabled:Z

    return p0
.end method
