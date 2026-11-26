.class public final Lyads/ri1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/oi1;


# instance fields
.field public final a:Lyads/oi1;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lyads/oi1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ri1;->a:Lyads/oi1;

    new-instance p1, Lyads/ai1;

    invoke-direct {p1}, Lyads/ai1;-><init>()V

    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lyads/ri1;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lyads/ji1;)Lyads/du3;
    .locals 2

    iget-object v0, p0, Lyads/ri1;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/xi1;

    check-cast v1, Lyads/ai1;

    invoke-virtual {v1, p1}, Lyads/ai1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyads/ri1;->a:Lyads/oi1;

    invoke-interface {p0, p1, p2}, Lyads/oi1;->a(Ljava/lang/String;Lyads/ji1;)Lyads/du3;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;Lyads/ji1;)Lyads/du3;
    .locals 2

    iget-object v0, p0, Lyads/ri1;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/xi1;

    check-cast v1, Lyads/ai1;

    invoke-virtual {v1, p1}, Lyads/ai1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyads/ri1;->a:Lyads/oi1;

    invoke-interface {p0, p1, p2}, Lyads/oi1;->b(Ljava/lang/String;Lyads/ji1;)Lyads/du3;

    move-result-object p0

    return-object p0
.end method
