.class public final Lyads/td2;
.super Lr0;
.source "SourceFile"


# instance fields
.field public final b:Lfr;

.field public final synthetic c:Lyads/wd2;


# direct methods
.method public constructor <init>(Lyads/wd2;Lyads/br0;Lyads/fs2;)V
    .locals 2

    iput-object p1, p0, Lyads/td2;->c:Lyads/wd2;

    invoke-direct {p0}, Lr0;-><init>()V

    new-instance v0, Lfr;

    invoke-direct {v0}, Lfr;-><init>()V

    new-instance v1, Lyads/cn1;

    invoke-direct {v1, p2, p3}, Lyads/cn1;-><init>(Lyads/br0;Lyads/fs2;)V

    invoke-static {p2}, Lyads/jf2;->b(Lyads/br0;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lyads/sd2;

    iget-object p3, p1, Lyads/wd2;->c:Lnl3;

    iget-object p1, p1, Lyads/wd2;->d:Lnl3;

    invoke-direct {p2, v1, p3, p1}, Lyads/sd2;-><init>(Lyads/cn1;Lnl3;Lnl3;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lyads/ud2;

    invoke-direct {p2, v1}, Lyads/ud2;-><init>(Lyads/cn1;)V

    :goto_0
    invoke-virtual {v0, p2}, Lfr;->addLast(Ljava/lang/Object;)V

    iput-object v0, p0, Lyads/td2;->b:Lfr;

    return-void
.end method


# virtual methods
.method public final a()Lyads/cn1;
    .locals 5

    iget-object v0, p0, Lyads/td2;->b:Lfr;

    invoke-virtual {v0}, Lfr;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/vd2;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {v0}, Lyads/vd2;->a()Lyads/cn1;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lyads/td2;->b:Lfr;

    invoke-virtual {v0}, Lfr;->removeLast()Ljava/lang/Object;

    invoke-virtual {p0}, Lyads/td2;->a()Lyads/cn1;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v0}, Lyads/vd2;->b()Lyads/cn1;

    move-result-object v0

    if-eq v1, v0, :cond_4

    iget-object v0, v1, Lyads/cn1;->a:Lyads/br0;

    invoke-static {v0}, Lyads/jf2;->b(Lyads/br0;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lyads/td2;->b:Lfr;

    invoke-virtual {v0}, Ld1;->size()I

    move-result v0

    const v2, 0x7fffffff

    if-lt v0, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lyads/td2;->b:Lfr;

    iget-object v2, v1, Lyads/cn1;->a:Lyads/br0;

    invoke-static {v2}, Lyads/jf2;->b(Lyads/br0;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lyads/sd2;

    iget-object v3, p0, Lyads/td2;->c:Lyads/wd2;

    iget-object v4, v3, Lyads/wd2;->c:Lnl3;

    iget-object v3, v3, Lyads/wd2;->d:Lnl3;

    invoke-direct {v2, v1, v4, v3}, Lyads/sd2;-><init>(Lyads/cn1;Lnl3;Lnl3;)V

    goto :goto_0

    :cond_3
    new-instance v2, Lyads/ud2;

    invoke-direct {v2, v1}, Lyads/ud2;-><init>(Lyads/cn1;)V

    :goto_0
    invoke-virtual {v0, v2}, Lfr;->addLast(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lyads/td2;->a()Lyads/cn1;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public final computeNext()V
    .locals 1

    invoke-virtual {p0}, Lyads/td2;->a()Lyads/cn1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lr0;->setNext(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lr0;->done()V

    return-void
.end method
