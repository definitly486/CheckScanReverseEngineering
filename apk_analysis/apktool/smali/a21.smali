.class public final synthetic La21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/core/CameraX;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/util/concurrent/Executor;

.field public final synthetic e:I

.field public final synthetic f:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field public final synthetic g:J


# direct methods
.method public synthetic constructor <init>(IJLandroid/content/Context;Landroidx/camera/core/CameraX;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, La21;->b:Landroidx/camera/core/CameraX;

    iput-object p4, p0, La21;->c:Landroid/content/Context;

    iput-object p7, p0, La21;->d:Ljava/util/concurrent/Executor;

    iput p1, p0, La21;->e:I

    iput-object p6, p0, La21;->f:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-wide p2, p0, La21;->g:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v5, p0, La21;->f:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-wide v1, p0, La21;->g:J

    iget v0, p0, La21;->e:I

    iget-object v3, p0, La21;->c:Landroid/content/Context;

    iget-object v4, p0, La21;->b:Landroidx/camera/core/CameraX;

    iget-object v6, p0, La21;->d:Ljava/util/concurrent/Executor;

    invoke-static/range {v0 .. v6}, Landroidx/camera/core/CameraX;->f(IJLandroid/content/Context;Landroidx/camera/core/CameraX;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/util/concurrent/Executor;)V

    return-void
.end method
