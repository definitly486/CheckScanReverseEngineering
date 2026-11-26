.class public final synthetic Lqt2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;

.field public final synthetic c:Ljava/lang/Runnable;

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqt2;->b:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;

    iput-object p2, p0, Lqt2;->c:Ljava/lang/Runnable;

    iput-object p3, p0, Lqt2;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lqt2;->c:Ljava/lang/Runnable;

    iget-object v1, p0, Lqt2;->d:Ljava/lang/Runnable;

    iget-object p0, p0, Lqt2;->b:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;

    invoke-static {p0, v0, v1}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->a(Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
