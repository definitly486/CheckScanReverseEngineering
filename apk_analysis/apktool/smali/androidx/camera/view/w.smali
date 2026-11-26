.class public final synthetic Landroidx/camera/view/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/view/PreviewView$OnFrameUpdateListener;

.field public final synthetic c:Landroid/graphics/SurfaceTexture;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/PreviewView$OnFrameUpdateListener;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/w;->b:Landroidx/camera/view/PreviewView$OnFrameUpdateListener;

    iput-object p2, p0, Landroidx/camera/view/w;->c:Landroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/view/w;->b:Landroidx/camera/view/PreviewView$OnFrameUpdateListener;

    iget-object p0, p0, Landroidx/camera/view/w;->c:Landroid/graphics/SurfaceTexture;

    invoke-static {v0, p0}, Landroidx/camera/view/TextureViewImplementation$1;->a(Landroidx/camera/view/PreviewView$OnFrameUpdateListener;Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
