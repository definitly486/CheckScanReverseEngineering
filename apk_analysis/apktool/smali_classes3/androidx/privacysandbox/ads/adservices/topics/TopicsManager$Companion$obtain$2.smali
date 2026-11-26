.class final Landroidx/privacysandbox/ads/adservices/topics/TopicsManager$Companion$obtain$2;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/privacysandbox/ads/adservices/topics/TopicsManager$Companion;->obtain(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/topics/TopicsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/content/Context;",
        "Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerApi31Ext9Impl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/topics/TopicsManager$Companion$obtain$2;->$context:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerApi31Ext9Impl;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerApi31Ext9Impl;

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/topics/TopicsManager$Companion$obtain$2;->$context:Landroid/content/Context;

    invoke-direct {p1, p0}, Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerApi31Ext9Impl;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroidx/privacysandbox/ads/adservices/topics/TopicsManager$Companion$obtain$2;->invoke(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/topics/TopicsManagerApi31Ext9Impl;

    move-result-object p0

    return-object p0
.end method
