.class public final Lcom/tapjoy/internal/p;
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

    const-string p0, "InsufficientCurrency"

    const/4 v0, 0x1

    invoke-static {p1, p0, v0, p2}, Lcom/tapjoy/TJPlacementManager;->createPlacement(Landroid/content/Context;Ljava/lang/String;ZLcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic b()Ljava/lang/String;
    .locals 0

    const-string p0, "InsufficientCurrency"

    return-object p0
.end method
