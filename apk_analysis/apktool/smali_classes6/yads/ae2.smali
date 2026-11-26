.class public final Lyads/ae2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lyads/as2;

.field public final c:Lyads/as2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lyads/zd2;->e:Lyads/zd2;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lyads/as2;Lyads/as2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ae2;->a:Ljava/util/List;

    iput-object p2, p0, Lyads/ae2;->b:Lyads/as2;

    iput-object p3, p0, Lyads/ae2;->c:Lyads/as2;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ae2;Lyads/fs2;Lyads/fs2;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lyads/ae2;->a:Ljava/util/List;

    iget-object v2, p1, Lyads/ae2;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-ltz v3, :cond_3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/xr0;

    check-cast v4, Lyads/xr0;

    invoke-virtual {v4, v3, p2, p3}, Lyads/xr0;->a(Lyads/xr0;Lyads/fs2;Lyads/fs2;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    invoke-static {}, Lu96;->o()V

    const/4 p0, 0x0

    throw p0

    :cond_4
    iget-object v1, p0, Lyads/ae2;->b:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p1, Lyads/ae2;->b:Lyads/as2;

    invoke-virtual {v2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_5

    iget-object p0, p0, Lyads/ae2;->c:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Lyads/ae2;->c:Lyads/as2;

    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    return v0
.end method
