.class public final Lcom/tapjoy/internal/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Lcom/tapjoy/internal/q1;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lcom/tapjoy/internal/q1;

    invoke-direct {v0}, Lcom/tapjoy/internal/q1;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tapjoy/internal/z0;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/tapjoy/internal/z0;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/tapjoy/internal/z0;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/tapjoy/internal/z0;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/tapjoy/internal/z0;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/tapjoy/internal/z0;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/tapjoy/internal/z0;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/tapjoy/internal/z0;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/tapjoy/internal/z0;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/internal/z0;->j:Lcom/tapjoy/internal/q1;

    sget-object v0, Lcom/tapjoy/TJApiDecoded;->INSTANCE:Lcom/tapjoy/TJApiDecoded;

    invoke-virtual {v0}, Lcom/tapjoy/TJApiDecoded;->getAppID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/z0;->a:Ljava/lang/String;

    sget-object v0, Lcom/tapjoy/TJTracking;->INSTANCE:Lcom/tapjoy/TJTracking;

    invoke-virtual {v0}, Lcom/tapjoy/TJTracking;->getUnityAdsIdfi()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/z0;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tapjoy/TJTracking;->getLevelPlayAuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/z0;->c:Ljava/lang/String;

    sget-object v0, Lcom/tapjoy/TJAppInfo;->INSTANCE:Lcom/tapjoy/TJAppInfo;

    invoke-virtual {v0}, Lcom/tapjoy/TJAppInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/z0;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tapjoy/TJAppInfo;->getPkgId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/z0;->e:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tapjoy/TJAppInfo;->getPkgVer()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/z0;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tapjoy/TJAppInfo;->getPkgRev()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/tapjoy/internal/z0;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tapjoy/TJAppInfo;->getAppGroupId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/z0;->h:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tapjoy/TJAppInfo;->getAppCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/z0;->i:Ljava/lang/String;

    return-void
.end method
