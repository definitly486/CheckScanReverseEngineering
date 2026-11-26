.class public final Lcom/tapjoy/internal/n1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Boolean;

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Lcom/tapjoy/internal/x0;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lcom/tapjoy/internal/x0;

    invoke-direct {v0}, Lcom/tapjoy/internal/x0;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tapjoy/internal/n1;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/tapjoy/internal/n1;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/tapjoy/internal/n1;->c:Ljava/lang/Boolean;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tapjoy/internal/n1;->d:Z

    iput-object v1, p0, Lcom/tapjoy/internal/n1;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/tapjoy/internal/n1;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/tapjoy/internal/n1;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/tapjoy/internal/n1;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/tapjoy/internal/n1;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/internal/n1;->j:Lcom/tapjoy/internal/x0;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/n1;->a:Ljava/lang/String;

    sget-object v0, Lcom/tapjoy/TJStore;->INSTANCE:Lcom/tapjoy/TJStore;

    invoke-virtual {v0}, Lcom/tapjoy/TJStore;->getStore()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/n1;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tapjoy/TJStore;->getStoreView()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/n1;->c:Ljava/lang/Boolean;

    sget-object v0, Lcom/tapjoy/TJTracking;->INSTANCE:Lcom/tapjoy/TJTracking;

    invoke-virtual {v0}, Lcom/tapjoy/TJTracking;->getAdTrackingEnableIfPresent()Z

    move-result v1

    iput-boolean v1, p0, Lcom/tapjoy/internal/n1;->d:Z

    invoke-virtual {v0}, Lcom/tapjoy/TJTracking;->getAdvertisingIdIfAllowed()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/n1;->e:Ljava/lang/String;

    const-string v0, "android"

    iput-object v0, p0, Lcom/tapjoy/internal/n1;->f:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/internal/n1;->g:Ljava/lang/String;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/n1;->h:Ljava/lang/String;

    sget-object v0, Lcom/tapjoy/TJDeviceInfo;->INSTANCE:Lcom/tapjoy/TJDeviceInfo;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyConnectCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJDeviceInfo;->getTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/n1;->i:Ljava/lang/String;

    return-void
.end method
