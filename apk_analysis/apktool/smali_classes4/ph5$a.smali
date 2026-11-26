.class public final Lph5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz94$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lph5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/my/target/x$a;

.field public final synthetic b:Lph5;


# direct methods
.method public constructor <init>(Lph5;Lcom/my/target/x$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lph5$a;->b:Lph5;

    iput-object p2, p0, Lph5$a;->a:Lcom/my/target/x$a;

    return-void
.end method


# virtual methods
.method public final a(Lz94;)V
    .locals 3

    const/4 p1, 0x0

    const-string v0, "MyTargetInterstitialAdAdapter: Ad displayed"

    invoke-static {p1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lph5$a;->a:Lcom/my/target/x$a;

    iget-object v1, v0, Lcom/my/target/x$a;->b:Lcom/my/target/x;

    iget-object v2, v1, Lcom/my/target/t;->d:Ll95;

    iget-object p0, p0, Lph5$a;->b:Lph5;

    if-eq v2, p0, :cond_0

    return-void

    :cond_0
    iget-object p0, v0, Lcom/my/target/x$a;->a:Let9;

    iget-object p0, p0, Let9;->d:Ln4a;

    const-string v0, "show"

    const/4 v2, 0x1

    invoke-static {p0, v0, v2, p1}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    iget-object p0, v1, Lcom/my/target/x;->j:Lz94$b;

    invoke-virtual {p0}, Lz94$b;->d()V

    return-void
.end method

.method public final b(Lz94;)V
    .locals 3

    const/4 p1, 0x0

    const-string v0, "MyTargetInterstitialAdAdapter: Video completed"

    invoke-static {p1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lph5$a;->a:Lcom/my/target/x$a;

    iget-object v1, v0, Lcom/my/target/x$a;->b:Lcom/my/target/x;

    iget-object v2, v1, Lcom/my/target/t;->d:Ll95;

    iget-object p0, p0, Lph5$a;->b:Lph5;

    if-eq v2, p0, :cond_0

    return-void

    :cond_0
    iget-object p0, v1, Lcom/my/target/x;->k:Lz94$b;

    invoke-virtual {p0}, Lz94$b;->b()V

    iget-object p0, v0, Lcom/my/target/x$a;->a:Let9;

    iget-object p0, p0, Let9;->d:Ln4a;

    const-string v0, "reward"

    const/16 v1, 0x3e7

    invoke-static {p0, v0, v1, p1}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    return-void
.end method

.method public final c(Lz94;)V
    .locals 1

    const-string p1, "MyTargetInterstitialAdAdapter: On failed to show"

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lph5$a;->a:Lcom/my/target/x$a;

    iget-object p1, p1, Lcom/my/target/x$a;->b:Lcom/my/target/x;

    iget-object v0, p1, Lcom/my/target/t;->d:Ll95;

    iget-object p0, p0, Lph5$a;->b:Lph5;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p1, Lcom/my/target/x;->j:Lz94$b;

    invoke-virtual {p0}, Lz94$b;->c()V

    return-void
.end method

.method public final d(Lz94;)V
    .locals 3

    const/4 p1, 0x0

    const-string v0, "MyTargetInterstitialAdAdapter: Ad loaded"

    invoke-static {p1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lph5$a;->a:Lcom/my/target/x$a;

    iget-object v1, v0, Lcom/my/target/x$a;->a:Let9;

    iget-object v0, v0, Lcom/my/target/x$a;->b:Lcom/my/target/x;

    iget-object v2, v0, Lcom/my/target/t;->d:Ll95;

    iget-object p0, p0, Lph5$a;->b:Lph5;

    if-eq v2, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "MediationInterstitialAdEngine$AdapterListener: Data from "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Let9;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ad network loaded successfully"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/my/target/t;->a(Let9;Z)V

    iget-object p0, v0, Lcom/my/target/x;->j:Lz94$b;

    iget-object p0, p0, Lz94$b;->b:Lz94;

    iget-object p1, p0, Lz94;->h:Lz94$a;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lz94$a;->d(Lz94;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final e(Lz94;)V
    .locals 1

    const-string p1, "MyTargetInterstitialAdAdapter: Ad dismissed"

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lph5$a;->a:Lcom/my/target/x$a;

    iget-object p1, p1, Lcom/my/target/x$a;->b:Lcom/my/target/x;

    iget-object v0, p1, Lcom/my/target/t;->d:Ll95;

    iget-object p0, p0, Lph5$a;->b:Lph5;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p1, Lcom/my/target/x;->j:Lz94$b;

    invoke-virtual {p0}, Lz94$b;->a()V

    return-void
.end method

.method public final f(Lz94;)V
    .locals 3

    const/4 p1, 0x0

    const-string v0, "MyTargetInterstitialAdAdapter: Ad clicked"

    invoke-static {p1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lph5$a;->a:Lcom/my/target/x$a;

    iget-object v1, v0, Lcom/my/target/x$a;->b:Lcom/my/target/x;

    iget-object v2, v1, Lcom/my/target/t;->d:Ll95;

    iget-object p0, p0, Lph5$a;->b:Lph5;

    if-eq v2, p0, :cond_0

    return-void

    :cond_0
    iget-object p0, v0, Lcom/my/target/x$a;->a:Let9;

    iget-object p0, p0, Let9;->d:Ln4a;

    const-string v0, "click"

    const/4 v2, 0x2

    invoke-static {p0, v0, v2, p1}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    iget-object p0, v1, Lcom/my/target/x;->j:Lz94$b;

    iget-object p0, p0, Lz94$b;->b:Lz94;

    iget-object p1, p0, Lz94;->h:Lz94$a;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lz94$a;->f(Lz94;)V

    :cond_1
    return-void
.end method

.method public final g(Ll6a;Lz94;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "MyTargetInterstitialAdAdapter: No ad ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Ll6a;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lph5$a;->a:Lcom/my/target/x$a;

    iget-object p0, p0, Lph5$a;->b:Lph5;

    invoke-virtual {p2, p1, p0}, Lcom/my/target/x$a;->a(Ll6a;Lm95;)V

    return-void
.end method
