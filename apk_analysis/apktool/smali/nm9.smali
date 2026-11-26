.class public final synthetic Lnm9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/adapter/ZslControlImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/adapter/ZslControlImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnm9;->a:Landroidx/camera/camera2/adapter/ZslControlImpl;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 0

    iget-object p0, p0, Lnm9;->a:Landroidx/camera/camera2/adapter/ZslControlImpl;

    invoke-static {p0, p1}, Landroidx/camera/camera2/adapter/ZslControlImpl;->b(Landroidx/camera/camera2/adapter/ZslControlImpl;Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method
