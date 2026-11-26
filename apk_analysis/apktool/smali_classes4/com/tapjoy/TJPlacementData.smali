.class public Lcom/tapjoy/TJPlacementData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->j:Z

    .line 30
    iput-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->l:Z

    .line 31
    iput-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->m:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->j:Z

    .line 24
    iput-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->l:Z

    .line 25
    iput-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->m:Z

    .line 26
    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->a:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/tapjoy/TJPlacementData;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->j:Z

    iput-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->l:Z

    iput-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->m:Z

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJPlacementData;->setBaseURL(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/tapjoy/TJPlacementData;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/TJPlacementData;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/tapjoy/TJPlacementData;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/tapjoy/TJPlacementData;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseURL()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/tapjoy/TJPlacementData;->c:Ljava/lang/String;

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const/16 v1, 0x2f

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public getContentViewId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJPlacementData;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getHttpResponse()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJPlacementData;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJPlacementData;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getPlacementName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJPlacementData;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getRedirectURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJPlacementData;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestExpiration()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lcom/tapjoy/TJPlacementData;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public hasProgressSpinner()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tapjoy/TJPlacementData;->f:Z

    return p0
.end method

.method public isDidIncrementCache()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tapjoy/TJPlacementData;->l:Z

    return p0
.end method

.method public isDidIncrementPreRender()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tapjoy/TJPlacementData;->m:Z

    return p0
.end method

.method public isPreloadDisabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tapjoy/TJPlacementData;->j:Z

    return p0
.end method

.method public isPrerenderingRequested()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tapjoy/TJPlacementData;->h:Z

    return p0
.end method

.method public setBaseURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->c:Ljava/lang/String;

    return-void
.end method

.method public setContentViewId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->i:Ljava/lang/String;

    return-void
.end method

.method public setDidIncrementCache(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tapjoy/TJPlacementData;->l:Z

    return-void
.end method

.method public setDidIncrementPreRender(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tapjoy/TJPlacementData;->m:Z

    return-void
.end method

.method public setHandleDismissOnPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tapjoy/TJPlacementData;->k:Z

    return-void
.end method

.method public setHasProgressSpinner(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tapjoy/TJPlacementData;->f:Z

    return-void
.end method

.method public setHttpResponse(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->b:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->a:Ljava/lang/String;

    return-void
.end method

.method public setPlacementName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->e:Ljava/lang/String;

    return-void
.end method

.method public setPreloadDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tapjoy/TJPlacementData;->j:Z

    return-void
.end method

.method public setPrerenderingRequested(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tapjoy/TJPlacementData;->h:Z

    return-void
.end method

.method public setRedirectURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->g:Ljava/lang/String;

    return-void
.end method

.method public setRequestExpiration(Ljava/lang/Long;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tapjoy/TJPlacementData;->d:J

    return-void
.end method

.method public shouldHandleDismissOnPause()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tapjoy/TJPlacementData;->k:Z

    return p0
.end method
