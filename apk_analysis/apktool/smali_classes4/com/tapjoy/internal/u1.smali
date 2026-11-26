.class public final Lcom/tapjoy/internal/u1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Boolean;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/Long;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Lcom/tapjoy/internal/v1;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    new-instance v0, Lcom/tapjoy/internal/v1;

    invoke-direct {v0}, Lcom/tapjoy/internal/v1;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tapjoy/internal/u1;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/tapjoy/internal/u1;->b:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/tapjoy/internal/u1;->d:Ljava/lang/Long;

    iput-object v1, p0, Lcom/tapjoy/internal/u1;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/tapjoy/internal/u1;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/tapjoy/internal/u1;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/tapjoy/internal/u1;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/tapjoy/internal/u1;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/tapjoy/internal/u1;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/internal/u1;->k:Lcom/tapjoy/internal/v1;

    const-string v0, "event"

    iput-object v0, p0, Lcom/tapjoy/internal/u1;->c:Ljava/lang/String;

    sget-object v0, Lcom/tapjoy/TapjoyLog;->INSTANCE:Lcom/tapjoy/TapjoyLog;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyLog;->isLoggingEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/u1;->b:Ljava/lang/Boolean;

    sget-object v0, Lcom/tapjoy/TJAppInfo;->INSTANCE:Lcom/tapjoy/TJAppInfo;

    invoke-virtual {v0}, Lcom/tapjoy/TJAppInfo;->getInstallTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/u1;->d:Ljava/lang/Long;

    invoke-static {}, Lcom/tapjoy/TapjoyPluginAPI;->getPlugin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/u1;->e:Ljava/lang/String;

    sget-object v0, Lcom/tapjoy/TJTracking;->INSTANCE:Lcom/tapjoy/TJTracking;

    invoke-virtual {v0}, Lcom/tapjoy/TJTracking;->getTestID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/u1;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tapjoy/TJTracking;->getInstallID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/u1;->g:Ljava/lang/String;

    const-string v0, "14.8.0"

    iput-object v0, p0, Lcom/tapjoy/internal/u1;->h:Ljava/lang/String;

    const-string v0, "3aebb7e"

    iput-object v0, p0, Lcom/tapjoy/internal/u1;->i:Ljava/lang/String;

    const-string v0, "1.2.6"

    iput-object v0, p0, Lcom/tapjoy/internal/u1;->j:Ljava/lang/String;

    sget-object v0, Lcom/tapjoy/TJVerifier;->INSTANCE:Lcom/tapjoy/TJVerifier;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJVerifier;->getVerifier(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/u1;->a:Ljava/lang/String;

    return-void
.end method
