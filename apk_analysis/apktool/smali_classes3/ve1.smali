.class public final synthetic Lve1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Leh8$a;
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lve1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lve1;->b:Ljava/lang/Object;

    check-cast p0, Lnl3;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->o(Lnl3;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public execute()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lve1;->b:Ljava/lang/Object;

    check-cast p0, Lr89;

    iget-object p0, p0, Lr89;->i:Lvl1;

    invoke-interface {p0}, Lvl1;->m()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public get(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/drm/DrmSessionManager;
    .locals 0

    iget-object p0, p0, Lve1;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/drm/DrmSessionManager;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper;->c(Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/drm/DrmSessionManager;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lve1;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/SimpleBasePlayer$State;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->P(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 0

    iget-object p0, p0, Lve1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/my/tracker/obfuscated/q0;

    invoke-static {p0, p1, p2}, Lcom/my/tracker/obfuscated/q0;->c(Lcom/my/tracker/obfuscated/q0;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    return-void
.end method
