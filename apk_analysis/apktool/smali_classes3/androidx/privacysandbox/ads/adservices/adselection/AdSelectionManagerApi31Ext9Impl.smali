.class public final Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerApi31Ext9Impl;
.super Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/adservices/adselection/AdSelectionManager;->get(Landroid/content/Context;)Landroid/adservices/adselection/AdSelectionManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;-><init>(Landroid/adservices/adselection/AdSelectionManager;)V

    return-void
.end method
