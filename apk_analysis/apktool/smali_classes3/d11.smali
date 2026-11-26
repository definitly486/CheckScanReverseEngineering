.class public final Ld11;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ll01;

.field public b:Lhy5;

.field public c:Liy;

.field public d:Z

.field public e:Z

.field public f:Landroid/hardware/Camera$PreviewCallback;

.field public g:I

.field public h:I

.field public i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ld11;->g:I

    const/4 v0, -0x1

    iput v0, p0, Ld11;->h:I

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Ld11;->i:J

    new-instance v0, Ll01;

    invoke-direct {v0, p1}, Ll01;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ld11;->a:Ll01;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ld11;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld11;->b:Lhy5;

    iget-object v0, v0, Lhy5;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld11;->b:Lhy5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld11;->b:Lhy5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized c(Landroid/view/SurfaceHolder;II)V
    .locals 5

    const-string v0, "Resetting to saved camera params: "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ld11;->b:Lhy5;

    invoke-virtual {p0}, Ld11;->b()Z

    move-result v2

    if-nez v2, :cond_1

    iget v1, p0, Ld11;->h:I

    invoke-static {v1}, Liy5;->a(I)Lhy5;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, p0, Ld11;->b:Lhy5;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Camera.open() failed to return object from driver"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v2, v1, Lhy5;->b:Landroid/hardware/Camera;

    invoke-virtual {v2, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v2, v1, Lhy5;->b:Landroid/hardware/Camera;

    iget-object v3, p0, Ld11;->f:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v2, v1, Lhy5;->b:Landroid/hardware/Camera;

    iget v3, p0, Ld11;->g:I

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    iget-boolean v2, p0, Ld11;->d:Z

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iput-boolean v3, p0, Ld11;->d:Z

    iget-object v2, p0, Ld11;->a:Ll01;

    invoke-virtual {v2, v1, p2, p3}, Ll01;->c(Lhy5;II)V

    :cond_2
    iget-object p2, v1, Lhy5;->b:Landroid/hardware/Camera;

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p3

    if-nez p3, :cond_3

    const/4 p3, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    iget-object v2, p0, Ld11;->a:Ll01;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Ll01;->d(Lhy5;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_2
    const-string v2, "d11"

    const-string v4, "Camera rejected parameters. Setting only minimal safe-mode parameters"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "d11"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_4

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object p3, p0, Ld11;->a:Ll01;

    invoke-virtual {p3, v1, v3}, Ll01;->d(Lhy5;Z)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    :try_start_4
    const-string p3, "d11"

    const-string v0, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {p3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final declared-synchronized d()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld11;->b:Lhy5;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Ld11;->e:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lhy5;->b:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Ld11;->e:Z

    new-instance v1, Liy;

    iget-object v0, v0, Lhy5;->b:Landroid/hardware/Camera;

    invoke-direct {v1, v0}, Liy;-><init>(Landroid/hardware/Camera;)V

    iput-object v1, p0, Ld11;->c:Liy;

    iget-wide v2, p0, Ld11;->i:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iput-wide v2, v1, Liy;->a:J

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AutoFocusInterval must be greater than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld11;->c:Liy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Liy;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld11;->c:Liy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Ld11;->b:Lhy5;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Ld11;->e:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lhy5;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld11;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
