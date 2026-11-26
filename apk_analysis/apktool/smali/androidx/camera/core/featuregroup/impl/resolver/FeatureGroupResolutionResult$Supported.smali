.class public final Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$Supported;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Supported"
.end annotation


# instance fields
.field private final resolvedFeatureGroup:Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;


# direct methods
.method public constructor <init>(Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$Supported;->resolvedFeatureGroup:Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$Supported;Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;ILjava/lang/Object;)Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$Supported;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$Supported;->resolvedFeatureGroup:Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$Supported;->copy(Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;)Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$Supported;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$Supported;->resolvedFeatureGroup:Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;

    return-object p0
.end method

.method public final copy(Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;)Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$Supported;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$Supported;

    invoke-direct {p0, p1}, Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$Supported;-><init>(Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$Supported;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$Supported;

    iget-object p0, p0, Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$Supported;->resolvedFeatureGroup:Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;

    iget-object p1, p1, Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$Supported;->resolvedFeatureGroup:Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getResolvedFeatureGroup()Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$Supported;->resolvedFeatureGroup:Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$Supported;->resolvedFeatureGroup:Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Supported(resolvedFeatureGroup="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult$Supported;->resolvedFeatureGroup:Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
