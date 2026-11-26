.class public final Lcom/my/target/x;
.super Lcom/my/target/t;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/b3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/x$a;
    }
.end annotation


# instance fields
.field public final j:Lz94$b;

.field public final k:Lz94$b;


# direct methods
.method public constructor <init>(Lfq9;Lz2a;Lcom/my/target/t0$a;Lz94$b;Lz94$b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/my/target/t;-><init>(Lfq9;Lz2a;Lcom/my/target/t0$a;)V

    iput-object p4, p0, Lcom/my/target/x;->j:Lz94$b;

    iput-object p5, p0, Lcom/my/target/x;->k:Lz94$b;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    iget-object p1, p0, Lcom/my/target/t;->d:Ll95;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/my/target/x;->j:Lz94$b;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lz94$b;->c()V

    const-string p0, "MediationInterstitialAdEngine: Error - can\'t show ad, adapter is not set"

    invoke-static {v0, p0}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    check-cast p1, Lm95;

    invoke-interface {p1}, Lm95;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lz94$b;->c()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "MediationInterstitialAdEngine: Error - "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final destroy()V
    .locals 4

    iget-object v0, p0, Lcom/my/target/t;->d:Ll95;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "MediationInterstitialAdEngine: Error - can\'t destroy ad, adapter is not set"

    invoke-static {v1, p0}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    check-cast v0, Lm95;

    invoke-interface {v0}, Ll95;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MediationInterstitialAdEngine: Error - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-object v1, p0, Lcom/my/target/t;->d:Ll95;

    return-void
.end method
