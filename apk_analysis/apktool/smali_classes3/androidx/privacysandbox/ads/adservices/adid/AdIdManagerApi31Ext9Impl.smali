.class public final Landroidx/privacysandbox/ads/adservices/adid/AdIdManagerApi31Ext9Impl;
.super Landroidx/privacysandbox/ads/adservices/adid/AdIdManagerImplCommon;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/adservices/adid/AdIdManager;->get(Landroid/content/Context;)Landroid/adservices/adid/AdIdManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Landroidx/privacysandbox/ads/adservices/adid/AdIdManagerImplCommon;-><init>(Landroid/adservices/adid/AdIdManager;)V

    return-void
.end method
