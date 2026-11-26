.class public final Lyads/hd4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ds2;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lyads/st3;

.field public final d:Lyads/et4;

.field public e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Lyads/st3;Lyads/et4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/hd4;->a:Ljava/lang/String;

    iput-object p2, p0, Lyads/hd4;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lyads/hd4;->c:Lyads/st3;

    iput-object p4, p0, Lyads/hd4;->d:Lyads/et4;

    return-void
.end method

.method public static final a(Lnl3;Lyads/hd4;Lyads/fs2;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 64
    invoke-virtual {p1, p2}, Lyads/hd4;->a(Lyads/fs2;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final a(Lyads/fs2;)Ljava/util/List;
    .locals 1

    .line 59
    :try_start_0
    invoke-virtual {p0, p1}, Lyads/hd4;->b(Lyads/fs2;)Ljava/util/ArrayList;

    move-result-object p1

    .line 60
    iput-object p1, p0, Lyads/hd4;->e:Ljava/util/ArrayList;
    :try_end_0
    .catch Lyads/ft4; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 61
    iget-object v0, p0, Lyads/hd4;->d:Lyads/et4;

    invoke-interface {v0, p1}, Lyads/et4;->b(Ljava/lang/Exception;)V

    .line 62
    iget-object p0, p0, Lyads/hd4;->e:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    return-object p0

    .line 63
    :cond_0
    throw p1
.end method

.method public final a(Lyads/fs2;Lnl3;)Lyads/tp0;
    .locals 2

    new-instance v0, Lx19;

    const/4 v1, 0x1

    invoke-direct {v0, p2, p0, p1, v1}, Lx19;-><init>(Lnl3;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p2, p0, Lyads/hd4;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p2, v1, :cond_0

    iget-object p0, p0, Lyads/hd4;->b:Ljava/util/ArrayList;

    invoke-static {p0}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/as2;

    invoke-virtual {p0, p1, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p2, Lyads/x40;

    invoke-direct {p2}, Lyads/x40;-><init>()V

    iget-object p0, p0, Lyads/hd4;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/as2;

    invoke-virtual {v1, p1, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    invoke-virtual {p2, v1}, Lyads/x40;->a(Lyads/tp0;)V

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public final b(Lyads/fs2;)Ljava/util/ArrayList;
    .locals 3

    iget-object v0, p0, Lyads/hd4;->b:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/as2;

    invoke-virtual {v2, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lyads/hd4;->c:Lyads/st3;

    invoke-interface {p1, v1}, Lyads/st3;->a(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    iget-object p0, p0, Lyads/hd4;->a:Ljava/lang/String;

    invoke-static {v1, p0}, Lyads/gt4;->a(Ljava/lang/Object;Ljava/lang/String;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lyads/hd4;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/hd4;->b:Ljava/util/ArrayList;

    check-cast p1, Lyads/hd4;

    iget-object p1, p1, Lyads/hd4;->b:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lyads/hd4;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x10

    return p0
.end method
