.class public final synthetic Lzo4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;

.field public final synthetic c:Landroidx/camera/core/SessionConfig;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;Landroidx/camera/core/SessionConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzo4;->b:Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;

    iput-object p2, p0, Lzo4;->c:Landroidx/camera/core/SessionConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lzo4;->b:Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;

    iget-object p0, p0, Lzo4;->c:Landroidx/camera/core/SessionConfig;

    invoke-static {v0, p0}, Landroidx/camera/lifecycle/LifecycleCamera;->a(Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;Landroidx/camera/core/SessionConfig;)V

    return-void
.end method
