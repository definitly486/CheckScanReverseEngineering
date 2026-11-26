.class public final synthetic Landroidx/camera/viewfinder/core/impl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroid/os/HandlerThread;


# direct methods
.method public synthetic constructor <init>(Landroid/os/HandlerThread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/viewfinder/core/impl/c;->b:Landroid/os/HandlerThread;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/camera/viewfinder/core/impl/c;->b:Landroid/os/HandlerThread;

    check-cast p1, Landroid/os/Handler;

    invoke-static {p0, p1}, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi24Impl;->a(Landroid/os/HandlerThread;Landroid/os/Handler;)Lj59;

    move-result-object p0

    return-object p0
.end method
