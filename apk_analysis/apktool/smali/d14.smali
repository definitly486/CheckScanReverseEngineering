.class public final synthetic Ld14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/core/ImageCapture;

.field public final synthetic c:Landroidx/camera/core/ImageCapture$OutputFileOptions;

.field public final synthetic d:Ljava/util/concurrent/Executor;

.field public final synthetic e:Landroidx/camera/core/ImageCapture$OnImageSavedCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld14;->b:Landroidx/camera/core/ImageCapture;

    iput-object p2, p0, Ld14;->c:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    iput-object p3, p0, Ld14;->d:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Ld14;->e:Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ld14;->d:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Ld14;->e:Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    iget-object v2, p0, Ld14;->b:Landroidx/camera/core/ImageCapture;

    iget-object p0, p0, Ld14;->c:Landroidx/camera/core/ImageCapture$OutputFileOptions;

    invoke-static {v2, p0, v0, v1}, Landroidx/camera/core/ImageCapture;->f(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    return-void
.end method
