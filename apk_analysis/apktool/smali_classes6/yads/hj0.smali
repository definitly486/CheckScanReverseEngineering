.class public Lyads/hj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/bk;


# instance fields
.field public final a:Lyads/rf6;


# direct methods
.method public constructor <init>(Lyads/rf6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/hj0;->a:Lyads/rf6;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 23
    iget-object v0, p0, Lyads/hj0;->a:Lyads/rf6;

    invoke-virtual {v0}, Lyads/rf6;->b()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 24
    :cond_0
    iget-object p0, p0, Lyads/hj0;->a:Lyads/rf6;

    invoke-virtual {p0, v0}, Lyads/rf6;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lyads/ak;Lyads/vf6;)V
    .locals 1

    .line 20
    iget-object p0, p0, Lyads/hj0;->a:Lyads/rf6;

    .line 21
    iget-object v0, p1, Lyads/ak;->c:Ljava/lang/Object;

    .line 22
    invoke-virtual {p0, p1, p2, v0}, Lyads/rf6;->a(Lyads/ak;Lyads/vf6;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lyads/hj0;->a:Lyads/rf6;

    invoke-virtual {v0}, Lyads/rf6;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/hj0;->a:Lyads/rf6;

    invoke-virtual {p0, v0, p1}, Lyads/rf6;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lyads/hj0;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Lyads/hj0;->a:Lyads/rf6;

    invoke-virtual {p0}, Lyads/rf6;->b()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c()Lyads/tg6;
    .locals 1

    .line 19
    iget-object p0, p0, Lyads/hj0;->a:Lyads/rf6;

    invoke-virtual {p0}, Lyads/rf6;->b()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lyads/tg6;

    invoke-direct {v0, p0}, Lyads/tg6;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lyads/hj0;->a:Lyads/rf6;

    invoke-virtual {v0}, Lyads/rf6;->b()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lyads/hj0;->a:Lyads/rf6;

    invoke-virtual {p0, v0, p1}, Lyads/rf6;->b(Landroid/view/View;Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-object p0, p0, Lyads/hj0;->a:Lyads/rf6;

    invoke-virtual {p0}, Lyads/rf6;->b()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lyads/eh6;->a(Landroid/view/View;)I

    move-result p0

    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final destroy()V
    .locals 0

    return-void
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Lyads/hj0;->a:Lyads/rf6;

    invoke-virtual {p0}, Lyads/rf6;->c()Z

    move-result p0

    return p0
.end method
