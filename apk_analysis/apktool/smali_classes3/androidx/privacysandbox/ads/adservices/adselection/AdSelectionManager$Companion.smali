.class public final Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final obtain(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;

    invoke-virtual {p0}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->adServicesVersion()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    new-instance p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerApi33Ext4Impl;

    invoke-direct {p0, p1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerApi33Ext4Impl;-><init>(Landroid/content/Context;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->extServicesVersionS()I

    move-result p0

    const/16 v0, 0x9

    if-lt p0, v0, :cond_1

    sget-object p0, Landroidx/privacysandbox/ads/adservices/internal/BackCompatManager;->INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/BackCompatManager;

    new-instance v0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Companion$obtain$1;

    invoke-direct {v0, p1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Companion$obtain$1;-><init>(Landroid/content/Context;)V

    const-string v1, "AdSelectionManager"

    invoke-virtual {p0, p1, v1, v0}, Landroidx/privacysandbox/ads/adservices/internal/BackCompatManager;->getManager(Landroid/content/Context;Ljava/lang/String;Lnl3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
