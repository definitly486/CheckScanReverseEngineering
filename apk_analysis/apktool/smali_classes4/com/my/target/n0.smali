.class public final Lcom/my/target/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:J

.field public final c:Ld9a;

.field public final d:Ls5a;

.field public final e:Ls5a;

.field public final f:Lxl;

.field public g:Ljava/lang/ref/WeakReference;

.field public final h:Lcom/my/target/m1$b;


# direct methods
.method public constructor <init>(Ls5a;Ls5a;Lcom/my/target/m1$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/n0;->a:Z

    sget-object v0, Ld9a;->f:Ld9a;

    iput-object v0, p0, Lcom/my/target/n0;->c:Ld9a;

    new-instance v0, Lxl;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lxl;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/my/target/n0;->f:Lxl;

    iput-object p2, p0, Lcom/my/target/n0;->e:Ls5a;

    iput-object p1, p0, Lcom/my/target/n0;->d:Ls5a;

    iput-object p3, p0, Lcom/my/target/n0;->h:Lcom/my/target/m1$b;

    return-void
.end method

.method public static a(Ln4a;Lcom/my/target/m1$b;)Lcom/my/target/n0;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ln4a;->e(I)Ls5a;

    move-result-object v1

    invoke-virtual {p0, v0}, Ln4a;->a(I)Ls5a;

    move-result-object p0

    new-instance v0, Lcom/my/target/n0;

    invoke-direct {v0, v1, p0, p1}, Lcom/my/target/n0;-><init>(Ls5a;Ls5a;Lcom/my/target/m1$b;)V

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/my/target/n0;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/my/target/n0;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Lcom/my/target/n0;->a:Z

    if-eqz v0, :cond_0

    const-string p0, "ViewabilityBannerTracker"

    const-string v0, "banner viewability already tracking"

    invoke-static {p0, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/n0;->a:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/my/target/n0;->b:J

    iget-object v0, p0, Lcom/my/target/n0;->c:Ld9a;

    iget-object p0, p0, Lcom/my/target/n0;->f:Lxl;

    invoke-virtual {v0, p0}, Ld9a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/my/target/n0;->c:Ld9a;

    iget-object v1, p0, Lcom/my/target/n0;->f:Lxl;

    invoke-virtual {v0, v1}, Ld9a;->e(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/my/target/n0;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/my/target/n0;->e:Ls5a;

    iget-object v0, v0, Ls5a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/my/target/n0;->d:Ls5a;

    iget-object v0, v0, Ls5a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/my/target/n0;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method
