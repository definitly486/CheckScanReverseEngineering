.class public final Lcom/tapjoy/internal/v1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Long;

.field public final c:Ljava/lang/Long;

.field public final d:Ljava/lang/Integer;

.field public final e:Ljava/lang/Long;

.field public final f:Ljava/lang/Long;

.field public final g:Ljava/lang/Integer;

.field public final h:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/v1;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/v1;->b:Ljava/lang/Long;

    iput-object v0, p0, Lcom/tapjoy/internal/v1;->c:Ljava/lang/Long;

    iput-object v0, p0, Lcom/tapjoy/internal/v1;->d:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tapjoy/internal/v1;->e:Ljava/lang/Long;

    iput-object v0, p0, Lcom/tapjoy/internal/v1;->f:Ljava/lang/Long;

    iput-object v0, p0, Lcom/tapjoy/internal/v1;->g:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tapjoy/internal/v1;->h:Ljava/lang/Integer;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/internal/c;->e:Lcom/tapjoy/internal/c;

    iget-object v0, v0, Lcom/tapjoy/internal/c;->c:Lcom/tapjoy/TJSession;

    invoke-virtual {v0}, Lcom/tapjoy/TJSession;->getSessionId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/v1;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tapjoy/TJSession;->getSessionLastLength()Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/v1;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Lcom/tapjoy/TJSession;->getSessionLastTime()Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/v1;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Lcom/tapjoy/TJSession;->getSessionTotalCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/v1;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/tapjoy/TJSession;->getSessionTotalLength()Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/v1;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Lcom/tapjoy/TJSession;->getDuration()Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/v1;->f:Ljava/lang/Long;

    invoke-virtual {v0}, Lcom/tapjoy/TJSession;->getSessionWeeklyFrequency()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/v1;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/tapjoy/TJSession;->getSessionMonthlyFrequency()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/v1;->h:Ljava/lang/Integer;

    :cond_0
    return-void
.end method
