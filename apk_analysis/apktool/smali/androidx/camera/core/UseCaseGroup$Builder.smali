.class public final Landroidx/camera/core/UseCaseGroup$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/UseCaseGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final SUPPORTED_TARGETS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final mUseCases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPort:Landroidx/camera/core/ViewPort;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/UseCaseGroup$Builder;->SUPPORTED_TARGETS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/UseCaseGroup$Builder;->mUseCases:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/UseCaseGroup$Builder;->mEffects:Ljava/util/List;

    return-void
.end method

.method private checkEffectTargets()V
    .locals 3

    iget-object p0, p0, Landroidx/camera/core/UseCaseGroup$Builder;->mEffects:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/CameraEffect;

    invoke-virtual {v1}, Landroidx/camera/core/CameraEffect;->getTargets()I

    move-result v1

    sget-object v2, Landroidx/camera/core/UseCaseGroup$Builder;->SUPPORTED_TARGETS:Ljava/util/List;

    invoke-static {v2, v1}, Landroidx/camera/core/processing/TargetUtils;->checkSupportedTargets(Ljava/util/Collection;I)V

    and-int v2, v0, v1

    if-gtz v2, :cond_0

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Landroidx/camera/core/processing/TargetUtils;->getHumanReadableName(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "More than one effects has targets "

    const-string v1, "."

    invoke-static {v0, p0, v1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addEffect(Landroidx/camera/core/CameraEffect;)Landroidx/camera/core/UseCaseGroup$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/UseCaseGroup$Builder;->mEffects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addUseCase(Landroidx/camera/core/UseCase;)Landroidx/camera/core/UseCaseGroup$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/UseCaseGroup$Builder;->mUseCases:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroidx/camera/core/UseCaseGroup;
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/UseCaseGroup$Builder;->mUseCases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "UseCase must not be empty."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-direct {p0}, Landroidx/camera/core/UseCaseGroup$Builder;->checkEffectTargets()V

    new-instance v0, Landroidx/camera/core/UseCaseGroup;

    iget-object v1, p0, Landroidx/camera/core/UseCaseGroup$Builder;->mViewPort:Landroidx/camera/core/ViewPort;

    iget-object v2, p0, Landroidx/camera/core/UseCaseGroup$Builder;->mUseCases:Ljava/util/List;

    iget-object p0, p0, Landroidx/camera/core/UseCaseGroup$Builder;->mEffects:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Landroidx/camera/core/UseCaseGroup;-><init>(Landroidx/camera/core/ViewPort;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public setViewPort(Landroidx/camera/core/ViewPort;)Landroidx/camera/core/UseCaseGroup$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/camera/core/UseCaseGroup$Builder;->mViewPort:Landroidx/camera/core/ViewPort;

    return-object p0
.end method
