.class public final Lyads/m52;
.super Lyads/oh2;
.source "SourceFile"


# instance fields
.field public final b:Lyads/f36;


# direct methods
.method public constructor <init>(Lyads/v41;Lyads/f36;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/oh2;-><init>(Lyads/v41;)V

    iput-object p2, p0, Lyads/m52;->b:Lyads/f36;

    return-void
.end method

.method public static final a(Lyads/m52;Lyads/s52;Lyads/k52;Lyads/fs2;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    iget-object p0, p2, Lyads/k52;->o:Lyads/as2;

    invoke-virtual {p0, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 63
    invoke-virtual {p1, p0}, Lyads/yt5;->setEnabled(Z)V

    .line 64
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final b(Lyads/m52;Lyads/s52;Lyads/k52;Lyads/fs2;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    iget-object p0, p2, Lyads/k52;->s:Lyads/as2;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 66
    :goto_0
    invoke-virtual {p1, p0}, Lyads/yt5;->setColorOn(Ljava/lang/Integer;)V

    .line 67
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/View;Lyads/tt;Lyads/p41;Lyads/p41;Lyads/n32;)V
    .locals 0

    .line 52
    check-cast p1, Lyads/s52;

    check-cast p3, Lyads/k52;

    check-cast p4, Lyads/k52;

    .line 53
    iget-object p5, p2, Lyads/tt;->b:Lyads/fs2;

    .line 54
    invoke-virtual {p0, p1, p3, p4, p5}, Lyads/m52;->a(Lyads/s52;Lyads/k52;Lyads/k52;Lyads/fs2;)V

    .line 55
    iget-object p5, p2, Lyads/tt;->b:Lyads/fs2;

    .line 56
    invoke-virtual {p0, p1, p3, p4, p5}, Lyads/m52;->b(Lyads/s52;Lyads/k52;Lyads/k52;Lyads/fs2;)V

    .line 57
    new-instance p4, Lyads/l52;

    invoke-direct {p4, p1}, Lyads/l52;-><init>(Lyads/s52;)V

    .line 58
    iget-object p0, p0, Lyads/m52;->b:Lyads/f36;

    iget-object p3, p3, Lyads/k52;->p:Ljava/lang/String;

    invoke-virtual {p0, p2, p3, p4}, Lyads/j36;->a(Lyads/tt;Ljava/lang/String;Lyads/i36;)Lyads/tp0;

    move-result-object p0

    .line 59
    iget-object p1, p1, Lyads/s52;->e:Lyads/xh1;

    .line 60
    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final a(Lyads/s52;Lyads/k52;Lyads/k52;Lyads/fs2;)V
    .locals 1

    iget-object v0, p2, Lyads/k52;->o:Lyads/as2;

    if-eqz p3, :cond_0

    iget-object p3, p3, Lyads/k52;->o:Lyads/as2;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {v0, p3}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    iget-object p3, p2, Lyads/k52;->o:Lyads/as2;

    invoke-virtual {p3, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p3}, Lyads/yt5;->setEnabled(Z)V

    iget-object p3, p2, Lyads/k52;->o:Lyads/as2;

    instance-of v0, p3, Lyads/xr2;

    if-eqz v0, :cond_2

    :goto_1
    return-void

    :cond_2
    new-instance v0, Lh2a;

    invoke-direct {v0, p0, p1, p2, p4}, Lh2a;-><init>(Lyads/m52;Lyads/s52;Lyads/k52;Lyads/fs2;)V

    invoke-virtual {p3, p4, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    iget-object p1, p1, Lyads/s52;->e:Lyads/xh1;

    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final b(Lyads/s52;Lyads/k52;Lyads/k52;Lyads/fs2;)V
    .locals 8

    iget-object v0, p2, Lyads/k52;->s:Lyads/as2;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object p3, p3, Lyads/k52;->s:Lyads/as2;

    goto :goto_0

    :cond_0
    move-object p3, v1

    :goto_0
    invoke-static {v0, p3}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_2

    :cond_1
    iget-object p3, p2, Lyads/k52;->s:Lyads/as2;

    if-eqz p3, :cond_2

    invoke-virtual {p3, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    move-object p3, v1

    :goto_1
    invoke-virtual {p1, p3}, Lyads/yt5;->setColorOn(Ljava/lang/Integer;)V

    iget-object p3, p2, Lyads/k52;->s:Lyads/as2;

    invoke-static {p3}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_3

    :goto_2
    return-void

    :cond_3
    new-instance v2, Lc1a;

    const/4 v7, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lc1a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lyads/fs2;I)V

    iget-object p0, v5, Lyads/k52;->s:Lyads/as2;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v6, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    :cond_4
    iget-object p0, v4, Lyads/s52;->e:Lyads/xh1;

    invoke-interface {p0, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method
