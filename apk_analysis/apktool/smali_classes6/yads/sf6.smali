.class public final Lyads/sf6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/rf6;


# direct methods
.method public constructor <init>(Lyads/rf6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/sf6;->a:Lyads/rf6;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 22
    iget-object v0, p0, Lyads/sf6;->a:Lyads/rf6;

    invoke-virtual {v0}, Lyads/rf6;->b()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 23
    :cond_0
    iget-object p0, p0, Lyads/sf6;->a:Lyads/rf6;

    invoke-virtual {p0, v0}, Lyads/rf6;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lyads/ak;Lyads/vf6;Ljava/lang/Object;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lyads/sf6;->a:Lyads/rf6;

    invoke-virtual {v0}, Lyads/rf6;->b()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 21
    :cond_0
    iget-object p0, p0, Lyads/sf6;->a:Lyads/rf6;

    invoke-virtual {p0, p1, p2, p3}, Lyads/rf6;->a(Lyads/ak;Lyads/vf6;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lyads/sf6;->a:Lyads/rf6;

    invoke-virtual {v0}, Lyads/rf6;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/sf6;->a:Lyads/rf6;

    invoke-virtual {p0, v0, p1}, Lyads/rf6;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lyads/sf6;->a:Lyads/rf6;

    invoke-virtual {v0}, Lyads/rf6;->b()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lyads/sf6;->a:Lyads/rf6;

    invoke-virtual {p0, v0, p1}, Lyads/rf6;->b(Landroid/view/View;Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
