.class public final Lyads/ti2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Lyads/lu0;

.field public final c:Lyads/ys0;

.field public final d:Landroidx/collection/ArrayMap;

.field public final e:Landroidx/collection/ArrayMap;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lyads/lu0;Lyads/ys0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ti2;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lyads/ti2;->b:Lyads/lu0;

    iput-object p3, p0, Lyads/ti2;->c:Lyads/ys0;

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lyads/ti2;->d:Landroidx/collection/ArrayMap;

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lyads/ti2;->e:Landroidx/collection/ArrayMap;

    return-void
.end method

.method public static final a([Lyads/r02;Lyads/ti2;Lyads/vq0;Lyads/fs2;Landroid/view/View;)Lj59;
    .locals 10

    array-length p4, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_a

    aget-object v2, p0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lyads/r02;->g()Lyads/as2;

    move-result-object v3

    invoke-virtual {v3, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p2}, Lyads/c50;->a(Ljava/lang/String;Lyads/vq0;)Lyads/b50;

    move-result-object v3

    instance-of v4, v2, Lyads/si2;

    if-eqz v4, :cond_0

    iget-object v5, p1, Lyads/ti2;->d:Landroidx/collection/ArrayMap;

    goto :goto_1

    :cond_0
    iget-object v5, p1, Lyads/ti2;->e:Landroidx/collection/ArrayMap;

    :goto_1
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v5

    sget v6, Lyads/cr3;->a:I

    sget-object v6, Lyads/vj5;->b:[Lyads/vj5;

    invoke-static {}, Lyads/cr3;->a()V

    invoke-interface {v2}, Lyads/r02;->f()Lyads/as2;

    move-result-object v6

    invoke-virtual {v6, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_2

    int-to-long v8, v5

    cmp-long v6, v8, v6

    if-gez v6, :cond_9

    :cond_2
    iget-object v6, p1, Lyads/ti2;->b:Lyads/lu0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, p2, Lyads/vq0;->R:Lyads/lu0;

    if-eqz v6, :cond_3

    invoke-virtual {v6, v2, p2, p3}, Lyads/lu0;->a(Lyads/r02;Lyads/vq0;Lyads/fs2;)Z

    move-result v6

    goto :goto_2

    :cond_3
    move v6, v0

    :goto_2
    if-nez v6, :cond_7

    iget-object v6, p1, Lyads/ti2;->b:Lyads/lu0;

    invoke-virtual {v6, v2, p2, p3}, Lyads/lu0;->a(Lyads/r02;Lyads/vq0;Lyads/fs2;)Z

    move-result v6

    if-nez v6, :cond_7

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move-object v6, v2

    check-cast v6, Lyads/gc1;

    :goto_3
    iget-object v6, p1, Lyads/ti2;->c:Lyads/ys0;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lyads/r02;->getUrl()Lyads/as2;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v6, "http"

    invoke-static {v2, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "https"

    invoke-static {v2, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {}, Lyads/cr3;->a()V

    :cond_7
    :goto_4
    if-eqz v4, :cond_8

    iget-object v2, p1, Lyads/ti2;->d:Landroidx/collection/ArrayMap;

    goto :goto_5

    :cond_8
    iget-object v2, p1, Lyads/ti2;->e:Landroidx/collection/ArrayMap;

    :goto_5
    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lyads/cr3;->a()V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final a(Lyads/vq0;Lyads/fs2;Landroid/view/View;[Lyads/r02;)V
    .locals 6

    .line 185
    new-instance v0, Le9a;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v1, p4

    invoke-direct/range {v0 .. v5}, Le9a;-><init>([Lyads/r02;Lyads/ti2;Lyads/vq0;Lyads/fs2;Landroid/view/View;)V

    invoke-virtual {v3, v0}, Lyads/vq0;->a(Lll3;)V

    return-void
.end method
