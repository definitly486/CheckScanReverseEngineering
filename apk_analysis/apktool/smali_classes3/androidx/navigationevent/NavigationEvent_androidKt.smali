.class public final Landroidx/navigationevent/NavigationEvent_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final NavigationEvent(Landroid/window/BackEvent;)Landroidx/navigationevent/NavigationEvent;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/window/BackEvent;->getTouchX()F

    move-result v3

    invoke-virtual {p0}, Landroid/window/BackEvent;->getTouchY()F

    move-result v4

    invoke-virtual {p0}, Landroid/window/BackEvent;->getProgress()F

    move-result v2

    invoke-virtual {p0}, Landroid/window/BackEvent;->getSwipeEdge()I

    move-result v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x24

    if-lt v0, v5, :cond_0

    invoke-virtual {p0}, Landroid/window/BackEvent;->getFrameTimeMillis()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    :goto_0
    new-instance v0, Landroidx/navigationevent/NavigationEvent;

    invoke-direct/range {v0 .. v6}, Landroidx/navigationevent/NavigationEvent;-><init>(IFFFJ)V

    return-object v0
.end method
