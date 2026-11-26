.class public interface abstract Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery$Companion;

.field public static final NO_OP_FEATURE_COMBINATION_QUERY:Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery$Companion;->$$INSTANCE:Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery$Companion;

    sput-object v0, Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;->Companion:Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery$Companion;

    new-instance v0, Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery$Companion$NO_OP_FEATURE_COMBINATION_QUERY$1;

    invoke-direct {v0}, Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery$Companion$NO_OP_FEATURE_COMBINATION_QUERY$1;-><init>()V

    sput-object v0, Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;->NO_OP_FEATURE_COMBINATION_QUERY:Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;

    return-void
.end method

.method public static createSessionConfigBuilder(Landroidx/camera/core/impl/UseCaseConfig;Landroid/util/Size;Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroid/util/Size;",
            "Landroidx/camera/core/DynamicRange;",
            ")",
            "Landroidx/camera/core/impl/SessionConfig$Builder;"
        }
    .end annotation

    sget-object v0, Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;->Companion:Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery$Companion;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery$Companion;->createSessionConfigBuilder(Landroidx/camera/core/impl/UseCaseConfig;Landroid/util/Size;Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract isSupported(Landroidx/camera/core/impl/SessionConfig;)Z
.end method
