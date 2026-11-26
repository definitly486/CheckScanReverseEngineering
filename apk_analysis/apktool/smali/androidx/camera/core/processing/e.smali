.class public final synthetic Landroidx/camera/core/processing/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/processing/e;->b:Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/processing/e;->b:Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;

    invoke-static {p0}, Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;->d(Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;)V

    return-void
.end method
