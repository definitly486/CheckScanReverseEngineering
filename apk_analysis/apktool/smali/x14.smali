.class public final synthetic Lx14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;


# instance fields
.field public final synthetic a:Landroidx/camera/core/ImageProxy;

.field public final synthetic b:Landroidx/camera/core/ImageProxy;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageProxy;Landroidx/camera/core/ImageProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx14;->a:Landroidx/camera/core/ImageProxy;

    iput-object p2, p0, Lx14;->b:Landroidx/camera/core/ImageProxy;

    return-void
.end method


# virtual methods
.method public final onImageClose(Landroidx/camera/core/ImageProxy;)V
    .locals 1

    iget-object v0, p0, Lx14;->a:Landroidx/camera/core/ImageProxy;

    iget-object p0, p0, Lx14;->b:Landroidx/camera/core/ImageProxy;

    invoke-static {v0, p0, p1}, Landroidx/camera/core/ImageProcessingUtil;->a(Landroidx/camera/core/ImageProxy;Landroidx/camera/core/ImageProxy;Landroidx/camera/core/ImageProxy;)V

    return-void
.end method
