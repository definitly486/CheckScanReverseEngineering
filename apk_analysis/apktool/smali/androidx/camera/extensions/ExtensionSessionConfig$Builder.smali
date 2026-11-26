.class public final Landroidx/camera/extensions/ExtensionSessionConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/extensions/ExtensionSessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final extensionsManager:Landroidx/camera/extensions/ExtensionsManager;

.field private final mode:I

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
.method public constructor <init>(ILandroidx/camera/extensions/ExtensionsManager;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/extensions/ExtensionSessionConfig$Builder;->mode:I

    iput-object p2, p0, Landroidx/camera/extensions/ExtensionSessionConfig$Builder;->extensionsManager:Landroidx/camera/extensions/ExtensionsManager;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/ExtensionSessionConfig$Builder;->useCases:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/ExtensionSessionConfig$Builder;->effects:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addEffect(Landroidx/camera/core/CameraEffect;)Landroidx/camera/extensions/ExtensionSessionConfig$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/extensions/ExtensionSessionConfig$Builder;->effects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addUseCase(Landroidx/camera/core/UseCase;)Landroidx/camera/extensions/ExtensionSessionConfig$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/extensions/ExtensionSessionConfig$Builder;->useCases:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final build()Landroidx/camera/extensions/ExtensionSessionConfig;
    .locals 6

    new-instance v0, Landroidx/camera/extensions/ExtensionSessionConfig;

    iget v1, p0, Landroidx/camera/extensions/ExtensionSessionConfig$Builder;->mode:I

    iget-object v2, p0, Landroidx/camera/extensions/ExtensionSessionConfig$Builder;->extensionsManager:Landroidx/camera/extensions/ExtensionsManager;

    iget-object v3, p0, Landroidx/camera/extensions/ExtensionSessionConfig$Builder;->useCases:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Landroidx/camera/extensions/ExtensionSessionConfig$Builder;->viewPort:Landroidx/camera/core/ViewPort;

    iget-object p0, p0, Landroidx/camera/extensions/ExtensionSessionConfig$Builder;->effects:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroidx/camera/extensions/ExtensionSessionConfig;-><init>(ILandroidx/camera/extensions/ExtensionsManager;Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;)V

    return-object v0
.end method

.method public final setViewPort(Landroidx/camera/core/ViewPort;)Landroidx/camera/extensions/ExtensionSessionConfig$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/extensions/ExtensionSessionConfig$Builder;->viewPort:Landroidx/camera/core/ViewPort;

    return-object p0
.end method
