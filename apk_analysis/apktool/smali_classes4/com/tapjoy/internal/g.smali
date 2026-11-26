.class public final Lcom/tapjoy/internal/g;
.super Lcom/tapjoy/internal/v0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tapjoy/internal/v0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/tapjoy/internal/u0;)Lcom/tapjoy/TJPlacement;
    .locals 1

    .line 11
    const-string p0, "AppLaunch"

    const/4 v0, 0x1

    invoke-static {p1, p0, v0, p2}, Lcom/tapjoy/TJPlacementManager;->createPlacement(Landroid/content/Context;Ljava/lang/String;ZLcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;

    move-result-object p0

    return-object p0
.end method

.method public final a()Z
    .locals 0

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnectCore;->isViewOpen()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final bridge synthetic b()Ljava/lang/String;
    .locals 0

    const-string p0, "AppLaunch"

    return-object p0
.end method
