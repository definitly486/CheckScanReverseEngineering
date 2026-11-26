.class public final Lyads/bp5;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final b:Landroid/hardware/SensorManager;

.field public final c:Landroid/hardware/Sensor;

.field public final d:Lyads/br4;

.field public final e:Landroid/os/Handler;

.field public final f:Lyads/xc5;

.field public g:Landroid/graphics/SurfaceTexture;

.field public h:Landroid/view/Surface;

.field public i:Z

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, v0}, Lyads/bp5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lyads/bp5;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lyads/bp5;->e:Landroid/os/Handler;

    const-string p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroid/hardware/SensorManager;

    iput-object p2, p0, Lyads/bp5;->b:Landroid/hardware/SensorManager;

    sget v0, Lyads/u56;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lyads/bp5;->c:Landroid/hardware/Sensor;

    new-instance p2, Lyads/xc5;

    invoke-direct {p2}, Lyads/xc5;-><init>()V

    iput-object p2, p0, Lyads/bp5;->f:Lyads/xc5;

    new-instance v0, Lyads/zo5;

    invoke-direct {v0, p0, p2}, Lyads/zo5;-><init>(Lyads/bp5;Lyads/xc5;)V

    new-instance p2, Lyads/a06;

    invoke-direct {p2, p1, v0}, Lyads/a06;-><init>(Landroid/content/Context;Lyads/zo5;)V

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance v1, Lyads/br4;

    const/4 v2, 0x2

    new-array v3, v2, [Lyads/ar4;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v1, p1, v3}, Lyads/br4;-><init>(Landroid/view/Display;[Lyads/ar4;)V

    iput-object v1, p0, Lyads/bp5;->d:Lyads/br4;

    iput-boolean v4, p0, Lyads/bp5;->i:Z

    invoke-virtual {p0, v2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 50
    iget-object v0, p0, Lyads/bp5;->h:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 51
    iget-object v2, p0, Lyads/bp5;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/ap5;

    .line 52
    check-cast v3, Lyads/bq2;

    .line 53
    iget-object v3, v3, Lyads/bq2;->a:Lyads/eq2;

    .line 54
    invoke-virtual {v3, v1}, Lyads/eq2;->a(Landroid/view/Surface;)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object v2, p0, Lyads/bp5;->g:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_1

    .line 56
    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_1
    if-eqz v0, :cond_2

    .line 57
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 58
    :cond_2
    iput-object v1, p0, Lyads/bp5;->g:Landroid/graphics/SurfaceTexture;

    .line 59
    iput-object v1, p0, Lyads/bp5;->h:Landroid/view/Surface;

    return-void
.end method

.method public final a(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    iget-object v0, p0, Lyads/bp5;->g:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lyads/bp5;->h:Landroid/view/Surface;

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lyads/bp5;->g:Landroid/graphics/SurfaceTexture;

    iput-object v2, p0, Lyads/bp5;->h:Landroid/view/Surface;

    iget-object p0, p0, Lyads/bp5;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/ap5;

    check-cast p1, Lyads/bq2;

    iget-object p1, p1, Lyads/bq2;->a:Lyads/eq2;

    invoke-virtual {p1, v2}, Lyads/eq2;->a(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 5

    iget-boolean v0, p0, Lyads/bp5;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lyads/bp5;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lyads/bp5;->c:Landroid/hardware/Sensor;

    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lyads/bp5;->k:Z

    if-ne v0, v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lyads/bp5;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lyads/bp5;->d:Lyads/br4;

    invoke-virtual {v3, v4, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lyads/bp5;->d:Lyads/br4;

    invoke-virtual {v3, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :goto_1
    iput-boolean v0, p0, Lyads/bp5;->k:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public final b(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .line 39
    iget-object v0, p0, Lyads/bp5;->e:Landroid/os/Handler;

    new-instance v1, Ldu;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, Ldu;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    iget-object v0, p0, Lyads/bp5;->e:Landroid/os/Handler;

    new-instance v1, Lj00;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lj00;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/bp5;->j:Z

    invoke-virtual {p0}, Lyads/bp5;->b()V

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/bp5;->j:Z

    invoke-virtual {p0}, Lyads/bp5;->b()V

    return-void
.end method

.method public setDefaultStereoMode(I)V
    .locals 0

    iget-object p0, p0, Lyads/bp5;->f:Lyads/xc5;

    iput p1, p0, Lyads/xc5;->l:I

    return-void
.end method

.method public setUseSensorRotation(Z)V
    .locals 0

    iput-boolean p1, p0, Lyads/bp5;->i:Z

    invoke-virtual {p0}, Lyads/bp5;->b()V

    return-void
.end method
