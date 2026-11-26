.class public final Lcom/tapjoy/internal/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Integer;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/Boolean;

.field public final i:Ljava/lang/Boolean;

.field public final j:Ljava/lang/Boolean;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/Long;

.field public final m:Ljava/lang/Long;

.field public final n:Ljava/lang/Boolean;

.field public final o:Ljava/lang/Boolean;

.field public final p:Ljava/lang/Integer;

.field public final q:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/x0;->a:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tapjoy/internal/x0;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/internal/x0;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/internal/x0;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/internal/x0;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/internal/x0;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/internal/x0;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/internal/x0;->h:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/tapjoy/internal/x0;->i:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/tapjoy/internal/x0;->j:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/tapjoy/internal/x0;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/internal/x0;->l:Ljava/lang/Long;

    iput-object v0, p0, Lcom/tapjoy/internal/x0;->m:Ljava/lang/Long;

    iput-object v0, p0, Lcom/tapjoy/internal/x0;->n:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/tapjoy/internal/x0;->o:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/tapjoy/internal/x0;->p:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tapjoy/internal/x0;->q:Ljava/lang/Integer;

    sget-object v1, Lcom/tapjoy/TJDeviceInfo;->INSTANCE:Lcom/tapjoy/TJDeviceInfo;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/TapjoyConnectCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/TJDeviceInfo;->getDeviceScreenLayoutSize(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/x0;->a:Ljava/lang/Integer;

    sget-object v1, Lcom/tapjoy/TJAppInfo;->INSTANCE:Lcom/tapjoy/TJAppInfo;

    invoke-virtual {v1}, Lcom/tapjoy/TJAppInfo;->getInstaller()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/x0;->b:Ljava/lang/String;

    sget-object v2, Lcom/tapjoy/TJTracking;->INSTANCE:Lcom/tapjoy/TJTracking;

    invoke-virtual {v2}, Lcom/tapjoy/TJTracking;->getAppSetID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tapjoy/internal/x0;->c:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/tapjoy/TJTracking;->getAndroidIDIfAllowed()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tapjoy/internal/x0;->d:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v3, p0, Lcom/tapjoy/internal/x0;->e:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/tapjoy/TJTracking;->getDeviceGpsVersion()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    iput-object v3, p0, Lcom/tapjoy/internal/x0;->f:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/tapjoy/TJTracking;->getPackagedGpsVersion()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/tapjoy/internal/x0;->g:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/tapjoy/TJTracking;->isAdvertisingIdAllowed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/x0;->h:Ljava/lang/Boolean;

    invoke-virtual {v2}, Lcom/tapjoy/TJTracking;->getAdIdCheckDisabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/x0;->i:Ljava/lang/Boolean;

    invoke-virtual {v2}, Lcom/tapjoy/TJTracking;->getLegacyIdFallbackAllowed()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/x0;->j:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/tapjoy/TJAppInfo;->getPkgSign()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/x0;->k:Ljava/lang/String;

    sget-object v0, Lcom/tapjoy/TJDeviceUtils;->INSTANCE:Lcom/tapjoy/TJDeviceUtils;

    invoke-virtual {v0}, Lcom/tapjoy/TJDeviceUtils;->getAvailableDiskSpace()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/x0;->l:Ljava/lang/Long;

    invoke-virtual {v0}, Lcom/tapjoy/TJDeviceUtils;->getTotalDiskSpace()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/x0;->m:Ljava/lang/Long;

    invoke-virtual {v1}, Lcom/tapjoy/TJAppInfo;->getTargetSdkVersion()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/x0;->q:Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/tapjoy/TJAppInfo;->getMinSdkVersion()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/x0;->p:Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/tapjoy/TJAppInfo;->getAdUnitThemeChanged()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/x0;->n:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/tapjoy/TJAppInfo;->getWebThemeChanged()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/x0;->o:Ljava/lang/Boolean;

    return-void
.end method
