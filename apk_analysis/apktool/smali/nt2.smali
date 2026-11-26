.class public final synthetic Lnt2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;

.field public final synthetic c:Landroidx/camera/core/DynamicRange;

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;Landroidx/camera/core/DynamicRange;Ljava/util/Map;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnt2;->b:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;

    iput-object p2, p0, Lnt2;->c:Landroidx/camera/core/DynamicRange;

    iput-object p3, p0, Lnt2;->d:Ljava/util/Map;

    iput-object p4, p0, Lnt2;->e:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lnt2;->d:Ljava/util/Map;

    iget-object v1, p0, Lnt2;->e:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object v2, p0, Lnt2;->b:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;

    iget-object p0, p0, Lnt2;->c:Landroidx/camera/core/DynamicRange;

    invoke-static {v2, p0, v0, v1}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->h(Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;Landroidx/camera/core/DynamicRange;Ljava/util/Map;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method
