.class public final Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerApi33Ext4Impl;
.super Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Landroid/adservices/adselection/AdSelectionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Li8;->c(Ljava/lang/Object;)Landroid/adservices/adselection/AdSelectionManager;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;-><init>(Landroid/adservices/adselection/AdSelectionManager;)V

    return-void
.end method
