.class public final Landroidx/camera/camera2/impl/DisplayInfoManager$displayListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/DisplayInfoManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/impl/DisplayInfoManager;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/DisplayInfoManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager$displayListener$1;->this$0:Landroidx/camera/camera2/impl/DisplayInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 1

    iget-object p1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager$displayListener$1;->this$0:Landroidx/camera/camera2/impl/DisplayInfoManager;

    invoke-static {p1}, Landroidx/camera/camera2/impl/DisplayInfoManager;->access$getLock$p(Landroidx/camera/camera2/impl/DisplayInfoManager;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager$displayListener$1;->this$0:Landroidx/camera/camera2/impl/DisplayInfoManager;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroidx/camera/camera2/impl/DisplayInfoManager;->access$setDisplays$p(Landroidx/camera/camera2/impl/DisplayInfoManager;[Landroid/view/Display;)V

    invoke-static {p0, v0}, Landroidx/camera/camera2/impl/DisplayInfoManager;->access$setPreviewSize$p(Landroidx/camera/camera2/impl/DisplayInfoManager;Landroid/util/Size;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public onDisplayChanged(I)V
    .locals 1

    iget-object p1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager$displayListener$1;->this$0:Landroidx/camera/camera2/impl/DisplayInfoManager;

    invoke-static {p1}, Landroidx/camera/camera2/impl/DisplayInfoManager;->access$getLock$p(Landroidx/camera/camera2/impl/DisplayInfoManager;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager$displayListener$1;->this$0:Landroidx/camera/camera2/impl/DisplayInfoManager;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroidx/camera/camera2/impl/DisplayInfoManager;->access$setDisplays$p(Landroidx/camera/camera2/impl/DisplayInfoManager;[Landroid/view/Display;)V

    invoke-static {p0, v0}, Landroidx/camera/camera2/impl/DisplayInfoManager;->access$setPreviewSize$p(Landroidx/camera/camera2/impl/DisplayInfoManager;Landroid/util/Size;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public onDisplayRemoved(I)V
    .locals 1

    iget-object p1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager$displayListener$1;->this$0:Landroidx/camera/camera2/impl/DisplayInfoManager;

    invoke-static {p1}, Landroidx/camera/camera2/impl/DisplayInfoManager;->access$getLock$p(Landroidx/camera/camera2/impl/DisplayInfoManager;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager$displayListener$1;->this$0:Landroidx/camera/camera2/impl/DisplayInfoManager;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroidx/camera/camera2/impl/DisplayInfoManager;->access$setDisplays$p(Landroidx/camera/camera2/impl/DisplayInfoManager;[Landroid/view/Display;)V

    invoke-static {p0, v0}, Landroidx/camera/camera2/impl/DisplayInfoManager;->access$setPreviewSize$p(Landroidx/camera/camera2/impl/DisplayInfoManager;Landroid/util/Size;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method
