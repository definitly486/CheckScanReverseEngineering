.class public final Lyads/j71;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/as2;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lyads/as2;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/j71;->a:Lyads/as2;

    iput-object p2, p0, Lyads/j71;->b:Ljava/lang/String;

    iput-object p3, p0, Lyads/j71;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lyads/j71;Lyads/fs2;Lyads/fs2;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lyads/j71;->a:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Lyads/j71;->a:Lyads/as2;

    invoke-virtual {v2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lyads/j71;->b:Ljava/lang/String;

    iget-object v2, p1, Lyads/j71;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object p0, p0, Lyads/j71;->c:Ljava/util/List;

    iget-object p1, p1, Lyads/j71;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    if-ltz v1, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/i71;

    check-cast v2, Lyads/i71;

    if-nez v1, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_2
    iget-object v5, v2, Lyads/i71;->a:Lyads/br0;

    iget-object v6, v1, Lyads/i71;->a:Lyads/br0;

    invoke-virtual {v5, v6, p2, p3}, Lyads/br0;->a(Lyads/br0;Lyads/fs2;Lyads/fs2;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v2, Lyads/i71;->b:Lyads/as2;

    if-eqz v5, :cond_3

    invoke-virtual {v5, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v5, v4

    :goto_1
    iget-object v6, v1, Lyads/i71;->b:Lyads/as2;

    if-eqz v6, :cond_4

    invoke-virtual {v6, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :cond_4
    invoke-static {v5, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v2, v2, Lyads/i71;->c:Lyads/as2;

    invoke-virtual {v2, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v1, v1, Lyads/i71;->c:Lyads/as2;

    invoke-virtual {v1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v2, v1, :cond_7

    move v1, v3

    goto :goto_0

    :cond_5
    invoke-static {}, Lu96;->o()V

    throw v4

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_2
    return v0
.end method
