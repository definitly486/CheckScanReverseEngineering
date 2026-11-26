.class public final Landroidx/camera/core/LegacySessionConfig;
.super Landroidx/camera/core/SessionConfig;
.source "SourceFile"


# instance fields
.field private final isLegacy:Z

.field private final requireNonEmptyUseCases:Z


# direct methods
.method public constructor <init>(Landroidx/camera/core/UseCaseGroup;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/camera/core/UseCaseGroup;->getUseCases()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/camera/core/UseCaseGroup;->getViewPort()Landroidx/camera/core/ViewPort;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/camera/core/UseCaseGroup;->getEffects()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0, v1, p1}, Landroidx/camera/core/LegacySessionConfig;-><init>(Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;",
            "Landroidx/camera/core/ViewPort;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/CameraEffect;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x38

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 27
    invoke-direct/range {v0 .. v8}, Landroidx/camera/core/SessionConfig;-><init>(Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;Landroid/util/Range;Ljava/util/Set;Ljava/util/List;ILjh2;)V

    const/4 p0, 0x1

    .line 28
    iput-boolean p0, v0, Landroidx/camera/core/LegacySessionConfig;->isLegacy:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;ILjh2;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 25
    sget-object p3, Lkx2;->b:Lkx2;

    .line 26
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/core/LegacySessionConfig;-><init>(Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getRequireNonEmptyUseCases()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/core/LegacySessionConfig;->requireNonEmptyUseCases:Z

    return p0
.end method

.method public isLegacy()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/core/LegacySessionConfig;->isLegacy:Z

    return p0
.end method
