.class public final Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerApi31Ext9Impl;
.super Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/adservices/appsetid/AppSetIdManager;->get(Landroid/content/Context;)Landroid/adservices/appsetid/AppSetIdManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;-><init>(Landroid/adservices/appsetid/AppSetIdManager;)V

    return-void
.end method
