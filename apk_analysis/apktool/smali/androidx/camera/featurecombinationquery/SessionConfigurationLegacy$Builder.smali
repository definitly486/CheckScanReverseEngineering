.class public final Landroidx/camera/featurecombinationquery/SessionConfigurationLegacy$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/featurecombinationquery/SessionConfigurationLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mOutputConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionParams:Landroidx/camera/featurecombinationquery/SessionParametersLegacy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/featurecombinationquery/SessionConfigurationLegacy$Builder;->mOutputConfigs:Ljava/util/ArrayList;

    new-instance v0, Landroidx/camera/featurecombinationquery/SessionParametersLegacy$Builder;

    invoke-direct {v0}, Landroidx/camera/featurecombinationquery/SessionParametersLegacy$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/camera/featurecombinationquery/SessionParametersLegacy$Builder;->build()Landroidx/camera/featurecombinationquery/SessionParametersLegacy;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/featurecombinationquery/SessionConfigurationLegacy$Builder;->mSessionParams:Landroidx/camera/featurecombinationquery/SessionParametersLegacy;

    return-void
.end method


# virtual methods
.method public addOutputConfiguration(Landroid/hardware/camera2/params/OutputConfiguration;)Landroidx/camera/featurecombinationquery/SessionConfigurationLegacy$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/camera/featurecombinationquery/SessionConfigurationLegacy$Builder;->mOutputConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addOutputConfigurations(Ljava/util/Collection;)Landroidx/camera/featurecombinationquery/SessionConfigurationLegacy$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)",
            "Landroidx/camera/featurecombinationquery/SessionConfigurationLegacy$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/featurecombinationquery/SessionConfigurationLegacy$Builder;->mOutputConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public build()Landroidx/camera/featurecombinationquery/SessionConfigurationLegacy;
    .locals 4

    new-instance v0, Landroidx/camera/featurecombinationquery/SessionConfigurationLegacy;

    iget-object v1, p0, Landroidx/camera/featurecombinationquery/SessionConfigurationLegacy$Builder;->mOutputConfigs:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Landroidx/camera/featurecombinationquery/SessionConfigurationLegacy$Builder;->mSessionParams:Landroidx/camera/featurecombinationquery/SessionParametersLegacy;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroidx/camera/featurecombinationquery/SessionConfigurationLegacy;-><init>(Ljava/util/List;Landroidx/camera/featurecombinationquery/SessionParametersLegacy;Landroidx/camera/featurecombinationquery/SessionConfigurationLegacy$1;)V

    return-object v0
.end method

.method public setSessionParameters(Landroidx/camera/featurecombinationquery/SessionParametersLegacy;)Landroidx/camera/featurecombinationquery/SessionConfigurationLegacy$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/camera/featurecombinationquery/SessionConfigurationLegacy$Builder;->mSessionParams:Landroidx/camera/featurecombinationquery/SessionParametersLegacy;

    return-object p0
.end method
