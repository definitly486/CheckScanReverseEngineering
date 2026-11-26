.class public final Lcom/warefly/checkscan/presentation/Deeplink$n;
.super Lcom/warefly/checkscan/presentation/Deeplink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/Deeplink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "n"
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZZLjava/lang/String;)V
    .locals 1

    const-string v0, "open_url"

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/Deeplink;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/Deeplink$n;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/Deeplink$n;->d:Z

    iput-boolean p3, p0, Lcom/warefly/checkscan/presentation/Deeplink$n;->e:Z

    iput-boolean p4, p0, Lcom/warefly/checkscan/presentation/Deeplink$n;->f:Z

    iput-boolean p5, p0, Lcom/warefly/checkscan/presentation/Deeplink$n;->g:Z

    iput-object p6, p0, Lcom/warefly/checkscan/presentation/Deeplink$n;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/warefly/checkscan/presentation/Deeplink$n;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/warefly/checkscan/presentation/Deeplink$n;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/Deeplink$n;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/warefly/checkscan/presentation/Deeplink$n;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/Deeplink$n;->d:Z

    iget-boolean v1, p1, Lcom/warefly/checkscan/presentation/Deeplink$n;->d:Z

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/Deeplink$n;->e:Z

    iget-boolean v1, p1, Lcom/warefly/checkscan/presentation/Deeplink$n;->e:Z

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/Deeplink$n;->f:Z

    iget-boolean v1, p1, Lcom/warefly/checkscan/presentation/Deeplink$n;->f:Z

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/Deeplink$n;->g:Z

    iget-boolean v1, p1, Lcom/warefly/checkscan/presentation/Deeplink$n;->g:Z

    if-eq v0, v1, :cond_6

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$n;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/warefly/checkscan/presentation/Deeplink$n;->h:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_7
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/Deeplink$n;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/warefly/checkscan/presentation/Deeplink$n;->d:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/warefly/checkscan/presentation/Deeplink$n;->e:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/warefly/checkscan/presentation/Deeplink$n;->f:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/warefly/checkscan/presentation/Deeplink$n;->g:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$n;->h:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", inYandex="

    const-string v1, ", inWebView="

    const-string v2, "OpenUrl(url="

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/Deeplink$n;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/warefly/checkscan/presentation/Deeplink$n;->d:Z

    invoke-static {v2, v3, v0, v1, v4}, Lp2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$n;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", inBrowser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$n;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", inUnitySdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/warefly/checkscan/presentation/Deeplink$n;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", unityPlacement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$n;->h:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
