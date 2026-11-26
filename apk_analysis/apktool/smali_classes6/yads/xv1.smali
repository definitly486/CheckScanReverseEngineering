.class public final Lyads/xv1;
.super Lyads/ji1;
.source "SourceFile"


# instance fields
.field public final a:Lyads/sv1;

.field public b:I

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>(Lyads/sv1;)V
    .locals 0

    invoke-direct {p0}, Lyads/ji1;-><init>()V

    iput-object p1, p0, Lyads/xv1;->a:Lyads/sv1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lyads/d46;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lyads/xv1;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lyads/xv1;->c:I

    invoke-virtual {p0}, Lyads/xv1;->b()V

    return-void

    :cond_0
    sget-object v0, Lyads/d46;->a:Landroid/os/Handler;

    new-instance v1, Lyads/uv1;

    invoke-direct {v1, p0}, Lyads/uv1;-><init>(Lyads/xv1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lyads/uw;)V
    .locals 0

    .line 27
    invoke-virtual {p0}, Lyads/xv1;->b()V

    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lyads/d46;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lyads/xv1;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lyads/xv1;->b:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lyads/xv1;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyads/xv1;->a:Lyads/sv1;

    iget p0, p0, Lyads/xv1;->c:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lyads/sv1;->a(Z)V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lyads/d46;->a:Landroid/os/Handler;

    new-instance v1, Lyads/tv1;

    invoke-direct {v1, p0}, Lyads/tv1;-><init>(Lyads/xv1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lyads/d46;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/xv1;->d:Z

    iget v1, p0, Lyads/xv1;->b:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lyads/xv1;->a:Lyads/sv1;

    iget p0, p0, Lyads/xv1;->c:I

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lyads/sv1;->a(Z)V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lyads/d46;->a:Landroid/os/Handler;

    new-instance v1, Lyads/vv1;

    invoke-direct {v1, p0}, Lyads/vv1;-><init>(Lyads/xv1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
