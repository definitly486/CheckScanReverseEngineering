.class public final Lyads/k11;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:Lyads/xr2;

.field public static final j:Lyads/w91;

.field public static final k:Lyads/xr2;


# instance fields
.field public final a:Lyads/as2;

.field public final b:Lyads/as2;

.field public final c:Lyads/as2;

.field public final d:Ljava/util/List;

.field public final e:Lyads/as2;

.field public final f:Lyads/x91;

.field public final g:Lyads/as2;

.field public final h:Lyads/as2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    sget-object v0, Lyads/o11;->j:Lyads/o11;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/k11;->i:Lyads/xr2;

    new-instance v0, Lyads/w91;

    new-instance v1, Lyads/sj1;

    invoke-direct {v1}, Lyads/sj1;-><init>()V

    invoke-direct {v0, v1}, Lyads/w91;-><init>(Lyads/sj1;)V

    sput-object v0, Lyads/k11;->j:Lyads/w91;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/k11;->k:Lyads/xr2;

    return-void
.end method

.method public constructor <init>(Lyads/as2;Lyads/as2;Lyads/as2;Ljava/util/List;Lyads/as2;Lyads/x91;Lyads/as2;Lyads/as2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/k11;->a:Lyads/as2;

    iput-object p2, p0, Lyads/k11;->b:Lyads/as2;

    iput-object p3, p0, Lyads/k11;->c:Lyads/as2;

    iput-object p4, p0, Lyads/k11;->d:Ljava/util/List;

    iput-object p5, p0, Lyads/k11;->e:Lyads/as2;

    iput-object p6, p0, Lyads/k11;->f:Lyads/x91;

    iput-object p7, p0, Lyads/k11;->g:Lyads/as2;

    iput-object p8, p0, Lyads/k11;->h:Lyads/as2;

    return-void
.end method

.method public synthetic constructor <init>(Lyads/xr2;Lyads/xr2;Lyads/xr2;Lyads/xr2;)V
    .locals 9

    .line 20
    sget-object v3, Lyads/k11;->i:Lyads/xr2;

    .line 21
    sget-object v6, Lyads/k11;->j:Lyads/w91;

    .line 22
    sget-object v7, Lyads/k11;->k:Lyads/xr2;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v8, p4

    .line 23
    invoke-direct/range {v0 .. v8}, Lyads/k11;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Ljava/util/List;Lyads/as2;Lyads/x91;Lyads/as2;Lyads/as2;)V

    return-void
.end method


# virtual methods
.method public final a(Lyads/k11;Lyads/fs2;Lyads/fs2;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lyads/k11;->a:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object v3, p1, Lyads/k11;->a:Lyads/as2;

    invoke-virtual {v3, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_b

    iget-object v1, p0, Lyads/k11;->b:Lyads/as2;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iget-object v3, p1, Lyads/k11;->b:Lyads/as2;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    invoke-static {v1, v3}, Laa4;->b(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lyads/k11;->c:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p1, Lyads/k11;->c:Lyads/as2;

    invoke-virtual {v3, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_b

    iget-object v1, p0, Lyads/k11;->d:Ljava/util/List;

    iget-object v3, p1, Lyads/k11;->d:Ljava/util/List;

    if-eqz v1, :cond_7

    if-nez v3, :cond_3

    return v0

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-ltz v4, :cond_6

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/k11;

    check-cast v5, Lyads/k11;

    invoke-virtual {v5, v4, p2, p3}, Lyads/k11;->a(Lyads/k11;Lyads/fs2;Lyads/fs2;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    move v4, v6

    goto :goto_2

    :cond_6
    invoke-static {}, Lu96;->o()V

    throw v2

    :cond_7
    if-nez v3, :cond_b

    :cond_8
    iget-object v1, p0, Lyads/k11;->e:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p1, Lyads/k11;->e:Lyads/as2;

    invoke-virtual {v3, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_b

    iget-object v1, p0, Lyads/k11;->f:Lyads/x91;

    iget-object v3, p1, Lyads/k11;->f:Lyads/x91;

    invoke-virtual {v1, v3, p2, p3}, Lyads/x91;->a(Lyads/x91;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lyads/k11;->g:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object v1, p1, Lyads/k11;->g:Lyads/as2;

    invoke-virtual {v1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_b

    iget-object p0, p0, Lyads/k11;->h:Lyads/as2;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    goto :goto_3

    :cond_9
    move-object p0, v2

    :goto_3
    iget-object p1, p1, Lyads/k11;->h:Lyads/as2;

    if-eqz p1, :cond_a

    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/Double;

    :cond_a
    invoke-static {p0, v2}, Laa4;->b(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    :goto_4
    return v0
.end method
