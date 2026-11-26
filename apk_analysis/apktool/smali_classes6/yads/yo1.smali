.class public final Lyads/yo1;
.super Lyads/rd2;
.source "SourceFile"

# interfaces
.implements Lyads/hs2;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lyads/rd2;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyads/yo1;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyads/yo1;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static final a(Lyads/yo1;Lyads/yr2;Lyads/fs2;J)Lj59;
    .locals 0

    .line 47
    iget-object p0, p0, Lyads/yo1;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lyads/yr2;->b(Lyads/fs2;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final a(Lyads/br0;Lyads/tt;Lyads/n32;)Lj59;
    .locals 0

    .line 42
    invoke-virtual {p1}, Lyads/br0;->a()Lyads/p41;

    move-result-object p1

    .line 43
    iget-object p2, p2, Lyads/tt;->b:Lyads/fs2;

    .line 44
    invoke-interface {p1}, Lyads/p41;->getWidth()Lyads/x02;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lyads/yo1;->a(Lyads/x02;Lyads/fs2;)V

    .line 45
    invoke-interface {p1}, Lyads/p41;->getHeight()Lyads/x02;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lyads/yo1;->a(Lyads/x02;Lyads/fs2;)V

    .line 46
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final a(Lyads/x02;Lyads/fs2;)V
    .locals 2

    invoke-virtual {p1}, Lyads/x02;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lyads/af1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lyads/af1;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lyads/af1;->b:Lyads/as2;

    instance-of v0, p1, Lyads/yr2;

    if-eqz v0, :cond_2

    move-object v1, p1

    check-cast v1, Lyads/yr2;

    :cond_2
    if-nez v1, :cond_3

    :goto_1
    return-void

    :cond_3
    new-instance p1, Luh0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v1, p2, v0}, Luh0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, p2, p1}, Lyads/yr2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p1

    invoke-interface {p0, p1}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyads/yo1;->b:Ljava/util/ArrayList;

    return-object p0
.end method
