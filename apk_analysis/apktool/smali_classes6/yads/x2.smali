.class public final Lyads/x2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/mobile/ads/common/AdActivity;

.field public final b:Lyads/h9;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/common/AdActivity;Lyads/h9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/x2;->a:Lcom/yandex/mobile/ads/common/AdActivity;

    iput-object p2, p0, Lyads/x2;->b:Lyads/h9;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lyads/x2;->a:Lcom/yandex/mobile/ads/common/AdActivity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    const/16 p1, 0xe

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final a(ILandroid/os/Bundle;)V
    .locals 0

    .line 28
    iget-object p0, p0, Lyads/x2;->b:Lyads/h9;

    if-eqz p0, :cond_0

    .line 29
    invoke-virtual {p0, p1, p2}, Lyads/h9;->a(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
