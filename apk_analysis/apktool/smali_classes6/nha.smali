.class public final synthetic Lnha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final synthetic b:Lyads/xc5;


# direct methods
.method public synthetic constructor <init>(Lyads/xc5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnha;->b:Lyads/xc5;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-object p0, p0, Lnha;->b:Lyads/xc5;

    invoke-virtual {p0, p1}, Lyads/xc5;->a(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
