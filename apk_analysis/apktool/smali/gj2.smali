.class public final synthetic Lgj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic b:Landroidx/camera/core/processing/DefaultSurfaceProcessor;

.field public final synthetic c:Landroidx/camera/core/DynamicRange;

.field public final synthetic d:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroidx/camera/core/DynamicRange;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgj2;->b:Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    iput-object p2, p0, Lgj2;->c:Landroidx/camera/core/DynamicRange;

    iput-object p3, p0, Lgj2;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lgj2;->c:Landroidx/camera/core/DynamicRange;

    iget-object v1, p0, Lgj2;->d:Ljava/util/Map;

    iget-object p0, p0, Lgj2;->b:Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    invoke-static {p0, v0, v1, p1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->i(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroidx/camera/core/DynamicRange;Ljava/util/Map;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
