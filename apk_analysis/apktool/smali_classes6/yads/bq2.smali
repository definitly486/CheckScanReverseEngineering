.class public final Lyads/bq2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/oe6;
.implements Lyads/om;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lyads/ap5;
.implements Lyads/im;
.implements Lyads/cm;
.implements Lyads/gs5;
.implements Lyads/vp2;


# instance fields
.field public final synthetic a:Lyads/eq2;


# direct methods
.method public constructor <init>(Lyads/eq2;)V
    .locals 0

    iput-object p1, p0, Lyads/bq2;->a:Lyads/eq2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(IZLyads/iw4;)V
    .locals 0

    .line 129
    invoke-interface {p2, p0, p1}, Lyads/iw4;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lyads/iw4;)V
    .locals 0

    .line 100
    invoke-interface {p1, p0}, Lyads/iw4;->onCues(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic a(Lyads/h84;Lyads/iw4;)V
    .locals 0

    .line 114
    invoke-interface {p1, p0}, Lyads/iw4;->a(Lyads/h84;)V

    return-void
.end method

.method public static synthetic a(Lyads/ub0;Lyads/iw4;)V
    .locals 0

    .line 108
    invoke-interface {p1, p0}, Lyads/iw4;->a(Lyads/ub0;)V

    return-void
.end method

.method public static synthetic a(Lyads/ye6;Lyads/iw4;)V
    .locals 0

    .line 88
    invoke-interface {p1, p0}, Lyads/iw4;->a(Lyads/ye6;)V

    return-void
.end method

.method public static synthetic a(Lyads/yn0;Lyads/iw4;)V
    .locals 0

    .line 125
    invoke-interface {p1, p0}, Lyads/iw4;->a(Lyads/yn0;)V

    return-void
.end method

.method public static synthetic a(ZLyads/iw4;)V
    .locals 0

    .line 99
    invoke-interface {p1, p0}, Lyads/iw4;->onSkipSilenceEnabledChanged(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 115
    iget-object v0, p0, Lyads/bq2;->a:Lyads/eq2;

    iget-object v0, v0, Lyads/eq2;->x:Lyads/is5;

    .line 116
    new-instance v1, Lyads/yn0;

    .line 117
    invoke-virtual {v0}, Lyads/is5;->a()I

    move-result v2

    .line 118
    iget-object v3, v0, Lyads/is5;->d:Landroid/media/AudioManager;

    iget v0, v0, Lyads/is5;->g:I

    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    const/4 v3, 0x0

    .line 119
    invoke-direct {v1, v3, v2, v0}, Lyads/yn0;-><init>(III)V

    .line 120
    iget-object v0, p0, Lyads/bq2;->a:Lyads/eq2;

    iget-object v0, v0, Lyads/eq2;->Z:Lyads/yn0;

    invoke-virtual {v1, v0}, Lyads/yn0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object p0, p0, Lyads/bq2;->a:Lyads/eq2;

    iput-object v1, p0, Lyads/eq2;->Z:Lyads/yn0;

    .line 122
    iget-object p0, p0, Lyads/eq2;->k:Lyads/wt3;

    new-instance v0, Lea;

    invoke-direct {v0, v1}, Lea;-><init>(Ljava/lang/Object;)V

    const/16 v1, 0x1d

    .line 123
    invoke-virtual {p0, v1, v0}, Lyads/wt3;->a(ILyads/tt3;)V

    .line 124
    invoke-virtual {p0}, Lyads/wt3;->a()V

    :cond_0
    return-void
.end method

.method public final a(IZ)V
    .locals 1

    .line 126
    iget-object p0, p0, Lyads/bq2;->a:Lyads/eq2;

    iget-object p0, p0, Lyads/eq2;->k:Lyads/wt3;

    new-instance v0, Lvo9;

    invoke-direct {v0, p1, p2}, Lvo9;-><init>(IZ)V

    const/16 p1, 0x1e

    .line 127
    invoke-virtual {p0, p1, v0}, Lyads/wt3;->a(ILyads/tt3;)V

    .line 128
    invoke-virtual {p0}, Lyads/wt3;->a()V

    return-void
.end method

.method public final a(Ljava/lang/Object;J)V
    .locals 1

    .line 89
    iget-object v0, p0, Lyads/bq2;->a:Lyads/eq2;

    iget-object v0, v0, Lyads/eq2;->p:Lyads/ge;

    check-cast v0, Lyads/cj0;

    invoke-virtual {v0, p1, p2, p3}, Lyads/cj0;->a(Ljava/lang/Object;J)V

    .line 90
    iget-object p0, p0, Lyads/bq2;->a:Lyads/eq2;

    iget-object p2, p0, Lyads/eq2;->K:Landroid/view/Surface;

    if-ne p2, p1, :cond_0

    .line 91
    iget-object p0, p0, Lyads/eq2;->k:Lyads/wt3;

    new-instance p1, Lbh;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/16 p2, 0x1a

    .line 92
    invoke-virtual {p0, p2, p1}, Lyads/wt3;->a(ILyads/tt3;)V

    .line 93
    invoke-virtual {p0}, Lyads/wt3;->a()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1

    .line 101
    iget-object p0, p0, Lyads/bq2;->a:Lyads/eq2;

    iget-object p0, p0, Lyads/eq2;->k:Lyads/wt3;

    new-instance v0, Ls77;

    invoke-direct {v0, p1}, Ls77;-><init>(Ljava/lang/Object;)V

    const/16 p1, 0x1b

    .line 102
    invoke-virtual {p0, p1, v0}, Lyads/wt3;->a(ILyads/tt3;)V

    .line 103
    invoke-virtual {p0}, Lyads/wt3;->a()V

    return-void
.end method

.method public final a(Lyads/h84;)V
    .locals 5

    iget-object v0, p0, Lyads/bq2;->a:Lyads/eq2;

    iget-object v1, v0, Lyads/eq2;->a0:Lyads/t04;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lyads/s04;

    invoke-direct {v2, v1}, Lyads/s04;-><init>(Lyads/t04;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lyads/h84;->b:[Lyads/g84;

    array-length v4, v3

    if-ge v1, v4, :cond_0

    aget-object v3, v3, v1

    invoke-interface {v3, v2}, Lyads/g84;->a(Lyads/s04;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lyads/t04;

    invoke-direct {v1, v2}, Lyads/t04;-><init>(Lyads/s04;)V

    iput-object v1, v0, Lyads/eq2;->a0:Lyads/t04;

    iget-object v0, p0, Lyads/bq2;->a:Lyads/eq2;

    invoke-virtual {v0}, Lyads/eq2;->c()Lyads/t04;

    move-result-object v0

    iget-object v1, p0, Lyads/bq2;->a:Lyads/eq2;

    iget-object v1, v1, Lyads/eq2;->I:Lyads/t04;

    invoke-virtual {v0, v1}, Lyads/t04;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lyads/bq2;->a:Lyads/eq2;

    iput-object v0, v1, Lyads/eq2;->I:Lyads/t04;

    iget-object v0, v1, Lyads/eq2;->k:Lyads/wt3;

    new-instance v1, Lkk2;

    invoke-direct {v1, p0}, Lkk2;-><init>(Ljava/lang/Object;)V

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lyads/wt3;->a(ILyads/tt3;)V

    :cond_1
    iget-object v0, p0, Lyads/bq2;->a:Lyads/eq2;

    iget-object v0, v0, Lyads/eq2;->k:Lyads/wt3;

    new-instance v1, Lx3;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v2}, Lx3;-><init>(Ljava/lang/Object;I)V

    const/16 p1, 0x1c

    invoke-virtual {v0, p1, v1}, Lyads/wt3;->a(ILyads/tt3;)V

    iget-object p0, p0, Lyads/bq2;->a:Lyads/eq2;

    iget-object p0, p0, Lyads/eq2;->k:Lyads/wt3;

    invoke-virtual {p0}, Lyads/wt3;->a()V

    return-void
.end method

.method public final synthetic a(Lyads/iw4;)V
    .locals 0

    .line 113
    iget-object p0, p0, Lyads/bq2;->a:Lyads/eq2;

    iget-object p0, p0, Lyads/eq2;->I:Lyads/t04;

    invoke-interface {p1, p0}, Lyads/iw4;->a(Lyads/t04;)V

    return-void
.end method

.method public final a(Lyads/ub0;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lyads/bq2;->a:Lyads/eq2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    iget-object p0, p0, Lyads/bq2;->a:Lyads/eq2;

    iget-object p0, p0, Lyads/eq2;->k:Lyads/wt3;

    new-instance v0, Lhu2;

    invoke-direct {v0, p1}, Lhu2;-><init>(Ljava/lang/Object;)V

    const/16 p1, 0x1b

    .line 106
    invoke-virtual {p0, p1, v0}, Lyads/wt3;->a(ILyads/tt3;)V

    .line 107
    invoke-virtual {p0}, Lyads/wt3;->a()V

    return-void
.end method

.method public final a(Lyads/ye6;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lyads/bq2;->a:Lyads/eq2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    iget-object p0, p0, Lyads/bq2;->a:Lyads/eq2;

    iget-object p0, p0, Lyads/eq2;->k:Lyads/wt3;

    new-instance v0, Lc21;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lc21;-><init>(Ljava/lang/Object;I)V

    const/16 p1, 0x19

    .line 111
    invoke-virtual {p0, p1, v0}, Lyads/wt3;->a(ILyads/tt3;)V

    .line 112
    invoke-virtual {p0}, Lyads/wt3;->a()V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 94
    iget-object p0, p0, Lyads/bq2;->a:Lyads/eq2;

    iget-boolean v0, p0, Lyads/eq2;->W:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 95
    :cond_0
    iput-boolean p1, p0, Lyads/eq2;->W:Z

    .line 96
    iget-object p0, p0, Lyads/eq2;->k:Lyads/wt3;

    new-instance v0, Lwo9;

    invoke-direct {v0, p1}, Lwo9;-><init>(Z)V

    const/16 p1, 0x17

    .line 97
    invoke-virtual {p0, p1, v0}, Lyads/wt3;->a(ILyads/tt3;)V

    .line 98
    invoke-virtual {p0}, Lyads/wt3;->a()V

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object v0, p0, Lyads/bq2;->a:Lyads/eq2;

    invoke-virtual {v0, p1}, Lyads/eq2;->a(Landroid/graphics/SurfaceTexture;)V

    iget-object p0, p0, Lyads/bq2;->a:Lyads/eq2;

    invoke-virtual {p0, p2, p3}, Lyads/eq2;->a(II)V

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    iget-object p1, p0, Lyads/bq2;->a:Lyads/eq2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lyads/eq2;->a(Landroid/view/Surface;)V

    iget-object p0, p0, Lyads/bq2;->a:Lyads/eq2;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lyads/eq2;->a(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p0, p0, Lyads/bq2;->a:Lyads/eq2;

    invoke-virtual {p0, p2, p3}, Lyads/eq2;->a(II)V

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p0, p0, Lyads/bq2;->a:Lyads/eq2;

    invoke-virtual {p0, p3, p4}, Lyads/eq2;->a(II)V

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p0, p0, Lyads/bq2;->a:Lyads/eq2;

    iget-boolean v0, p0, Lyads/eq2;->O:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyads/eq2;->a(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p1, p0, Lyads/bq2;->a:Lyads/eq2;

    iget-boolean v0, p1, Lyads/eq2;->O:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lyads/eq2;->a(Landroid/view/Surface;)V

    :cond_0
    iget-object p0, p0, Lyads/bq2;->a:Lyads/eq2;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lyads/eq2;->a(II)V

    return-void
.end method
