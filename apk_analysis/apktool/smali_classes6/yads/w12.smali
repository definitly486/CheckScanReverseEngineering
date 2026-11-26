.class public final Lyads/w12;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/as2;

.field public final b:Lyads/as2;

.field public final c:Lyads/as2;

.field public final d:Lyads/as2;

.field public final e:Lyads/as2;

.field public final f:Lyads/as2;

.field public final g:Lyads/as2;

.field public final h:Lyads/nv1;

.field public final i:Lyads/as2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0xc

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    sget-object v0, Lyads/g12;->f:Lyads/g12;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    const/high16 v0, -0x1000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    return-void
.end method

.method public constructor <init>(Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/nv1;Lyads/as2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/w12;->a:Lyads/as2;

    iput-object p2, p0, Lyads/w12;->b:Lyads/as2;

    iput-object p3, p0, Lyads/w12;->c:Lyads/as2;

    iput-object p4, p0, Lyads/w12;->d:Lyads/as2;

    iput-object p5, p0, Lyads/w12;->e:Lyads/as2;

    iput-object p6, p0, Lyads/w12;->f:Lyads/as2;

    iput-object p7, p0, Lyads/w12;->g:Lyads/as2;

    iput-object p8, p0, Lyads/w12;->h:Lyads/nv1;

    iput-object p9, p0, Lyads/w12;->i:Lyads/as2;

    return-void
.end method


# virtual methods
.method public final a(Lyads/w12;Lyads/fs2;Lyads/fs2;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lyads/w12;->a:Lyads/as2;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iget-object v3, p1, Lyads/w12;->a:Lyads/as2;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lyads/w12;->b:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object v1, p1, Lyads/w12;->b:Lyads/as2;

    invoke-virtual {v1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_b

    iget-object v1, p0, Lyads/w12;->c:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p1, Lyads/w12;->c:Lyads/as2;

    invoke-virtual {v3, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_b

    iget-object v1, p0, Lyads/w12;->d:Lyads/as2;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    iget-object v3, p1, Lyads/w12;->d:Lyads/as2;

    if-eqz v3, :cond_4

    invoke-virtual {v3, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    goto :goto_3

    :cond_4
    move-object v3, v2

    :goto_3
    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lyads/w12;->e:Lyads/as2;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/tf1;

    goto :goto_4

    :cond_5
    move-object v1, v2

    :goto_4
    iget-object v3, p1, Lyads/w12;->e:Lyads/as2;

    if-eqz v3, :cond_6

    invoke-virtual {v3, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/tf1;

    goto :goto_5

    :cond_6
    move-object v3, v2

    :goto_5
    if-ne v1, v3, :cond_b

    iget-object v1, p0, Lyads/w12;->f:Lyads/as2;

    if-eqz v1, :cond_7

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_6

    :cond_7
    move-object v1, v2

    :goto_6
    iget-object v3, p1, Lyads/w12;->f:Lyads/as2;

    if-eqz v3, :cond_8

    invoke-virtual {v3, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    :cond_8
    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lyads/w12;->g:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    iget-object v3, p1, Lyads/w12;->g:Lyads/as2;

    invoke-virtual {v3, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    cmpg-double v1, v1, v3

    if-nez v1, :cond_b

    iget-object v1, p0, Lyads/w12;->h:Lyads/nv1;

    iget-object v2, p1, Lyads/w12;->h:Lyads/nv1;

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    invoke-virtual {v1, v2, p2, p3}, Lyads/nv1;->a(Lyads/nv1;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    goto :goto_7

    :cond_9
    if-nez v2, :cond_a

    move v1, v3

    goto :goto_7

    :cond_a
    move v1, v0

    :goto_7
    if-eqz v1, :cond_b

    iget-object p0, p0, Lyads/w12;->i:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    iget-object p1, p1, Lyads/w12;->i:Lyads/as2;

    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ne p0, p1, :cond_b

    return v3

    :cond_b
    return v0
.end method
