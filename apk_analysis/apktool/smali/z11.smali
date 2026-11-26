.class public final synthetic Lz11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/core/CameraX;

.field public final synthetic c:Ljava/util/concurrent/Executor;

.field public final synthetic d:J

.field public final synthetic e:I

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method public synthetic constructor <init>(IJLandroid/content/Context;Landroidx/camera/core/CameraX;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lz11;->b:Landroidx/camera/core/CameraX;

    iput-object p7, p0, Lz11;->c:Ljava/util/concurrent/Executor;

    iput-wide p2, p0, Lz11;->d:J

    iput p1, p0, Lz11;->e:I

    iput-object p4, p0, Lz11;->f:Landroid/content/Context;

    iput-object p6, p0, Lz11;->g:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v3, p0, Lz11;->f:Landroid/content/Context;

    iget-object v5, p0, Lz11;->g:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget v0, p0, Lz11;->e:I

    iget-wide v1, p0, Lz11;->d:J

    iget-object v4, p0, Lz11;->b:Landroidx/camera/core/CameraX;

    iget-object v6, p0, Lz11;->c:Ljava/util/concurrent/Executor;

    invoke-static/range {v0 .. v6}, Landroidx/camera/core/CameraX;->e(IJLandroid/content/Context;Landroidx/camera/core/CameraX;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Ljava/util/concurrent/Executor;)V

    return-void
.end method
