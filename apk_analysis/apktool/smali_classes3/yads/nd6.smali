.class public final Lyads/nd6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ld6;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final a:Landroid/hardware/display/DisplayManager;

.field public b:Lyads/kd6;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/nd6;->a:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lyads/nd6;
    .locals 1

    .line 25
    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    if-eqz p0, :cond_0

    .line 26
    new-instance v0, Lyads/nd6;

    invoke-direct {v0, p0}, Lyads/nd6;-><init>(Landroid/hardware/display/DisplayManager;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 27
    iget-object v0, p0, Lyads/nd6;->a:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lyads/nd6;->b:Lyads/kd6;

    return-void
.end method

.method public final a(Lyads/kd6;)V
    .locals 2

    iput-object p1, p0, Lyads/nd6;->b:Lyads/kd6;

    iget-object v0, p0, Lyads/nd6;->a:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-static {v1}, Lyads/u56;->a(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object p0, p0, Lyads/nd6;->a:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    check-cast p1, Lfg2;

    invoke-virtual {p1, p0}, Lfg2;->a(Landroid/view/Display;)V

    return-void
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    iget-object v0, p0, Lyads/nd6;->b:Lyads/kd6;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object p0, p0, Lyads/nd6;->a:Landroid/hardware/display/DisplayManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    check-cast v0, Lfg2;

    invoke-virtual {v0, p0}, Lfg2;->a(Landroid/view/Display;)V

    :cond_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
