.class public final Lcom/tapjoy/internal/j1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/Float;

.field public final g:Ljava/lang/Float;

.field public final h:Ljava/lang/Float;

.field public final i:Ljava/lang/Integer;

.field public final j:Ljava/lang/Integer;

.field public final k:Ljava/lang/Integer;

.field public final l:Lcom/tapjoy/internal/k1;

.field public final m:Lcom/tapjoy/internal/f1;

.field public final n:Lcom/tapjoy/internal/n1;


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/tapjoy/internal/k1;

    invoke-direct {v0}, Lcom/tapjoy/internal/k1;-><init>()V

    new-instance v1, Lcom/tapjoy/internal/f1;

    invoke-direct {v1}, Lcom/tapjoy/internal/f1;-><init>()V

    new-instance v2, Lcom/tapjoy/internal/n1;

    invoke-direct {v2}, Lcom/tapjoy/internal/n1;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/tapjoy/internal/j1;->a:Ljava/lang/String;

    iput-object v3, p0, Lcom/tapjoy/internal/j1;->b:Ljava/lang/String;

    iput-object v3, p0, Lcom/tapjoy/internal/j1;->c:Ljava/lang/String;

    iput-object v3, p0, Lcom/tapjoy/internal/j1;->d:Ljava/lang/String;

    iput-object v3, p0, Lcom/tapjoy/internal/j1;->e:Ljava/lang/String;

    iput-object v3, p0, Lcom/tapjoy/internal/j1;->f:Ljava/lang/Float;

    iput-object v3, p0, Lcom/tapjoy/internal/j1;->g:Ljava/lang/Float;

    iput-object v3, p0, Lcom/tapjoy/internal/j1;->h:Ljava/lang/Float;

    iput-object v3, p0, Lcom/tapjoy/internal/j1;->i:Ljava/lang/Integer;

    iput-object v3, p0, Lcom/tapjoy/internal/j1;->j:Ljava/lang/Integer;

    iput-object v3, p0, Lcom/tapjoy/internal/j1;->k:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tapjoy/internal/j1;->l:Lcom/tapjoy/internal/k1;

    iput-object v1, p0, Lcom/tapjoy/internal/j1;->m:Lcom/tapjoy/internal/f1;

    iput-object v2, p0, Lcom/tapjoy/internal/j1;->n:Lcom/tapjoy/internal/n1;

    sget-object v0, Lcom/tapjoy/TJAppInfo;->INSTANCE:Lcom/tapjoy/TJAppInfo;

    invoke-virtual {v0}, Lcom/tapjoy/TJAppInfo;->getManagedDeviceID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/j1;->a:Ljava/lang/String;

    const-string v0, "android"

    iput-object v0, p0, Lcom/tapjoy/internal/j1;->b:Ljava/lang/String;

    sget-object v0, Lcom/tapjoy/TJDeviceNetwork;->INSTANCE:Lcom/tapjoy/TJDeviceNetwork;

    invoke-virtual {v0}, Lcom/tapjoy/TJDeviceNetwork;->getConnectionType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/j1;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tapjoy/TJDeviceNetwork;->getConnectionSubType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/j1;->d:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/internal/j1;->e:Ljava/lang/String;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TJDeviceInfo;->INSTANCE:Lcom/tapjoy/TJDeviceInfo;

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJDeviceInfo;->getVolume(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/j1;->f:Ljava/lang/Float;

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJDeviceInfo;->getBatteryLevel(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/j1;->g:Ljava/lang/Float;

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJDeviceInfo;->getBrightness(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/j1;->h:Ljava/lang/Float;

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJDeviceInfo;->getScreenWidth(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/j1;->i:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJDeviceInfo;->getScreenHeight(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/j1;->j:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJDeviceInfo;->getScreenDPI(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/j1;->k:Ljava/lang/Integer;

    return-void
.end method
