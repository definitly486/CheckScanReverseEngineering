.class public final Lyads/rl4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/bb6;


# instance fields
.field public final synthetic a:Lyads/tl4;


# direct methods
.method public constructor <init>(Lyads/tl4;)V
    .locals 0

    iput-object p1, p0, Lyads/rl4;->a:Lyads/tl4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lyads/tl4;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lyads/tl4;->i:Lyads/yv4;

    .line 9
    invoke-virtual {p0, v0}, Lyads/tl4;->a(Lyads/yv4;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lyads/rl4;->a:Lyads/tl4;

    iget-object p0, p0, Lyads/tl4;->c:Lyads/nl4;

    invoke-interface {p0}, Lyads/nl4;->a()V

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lyads/rl4;->a:Lyads/tl4;

    const/4 v1, 0x0

    iput-object v1, v0, Lyads/tl4;->m:Lyads/yv4;

    iget-object v1, v0, Lyads/tl4;->d:Lyads/uj5;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lyads/uj5;->d:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lyads/tl4;->e:Lyads/bw3;

    new-instance v2, Lv65;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lv65;-><init>(Ljava/lang/Object;I)V

    iget-object v0, v1, Lyads/bw3;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lyads/tl4;->k:Lyads/u65;

    invoke-virtual {v0}, Lyads/u65;->a()V

    :goto_0
    iget-object p0, p0, Lyads/rl4;->a:Lyads/tl4;

    iget-object p0, p0, Lyads/tl4;->c:Lyads/nl4;

    invoke-interface {p0}, Lyads/nl4;->b()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object p0, p0, Lyads/rl4;->a:Lyads/tl4;

    iget-object p0, p0, Lyads/tl4;->b:Lyads/nf6;

    invoke-virtual {p0}, Lyads/rf6;->b()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lyads/am4;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    return-void
.end method
