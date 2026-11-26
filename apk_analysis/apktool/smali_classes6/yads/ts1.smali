.class public final Lyads/ts1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/fs2;

.field public final b:Landroid/util/DisplayMetrics;

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:Ljava/lang/Integer;

.field public final j:Ljava/lang/Integer;

.field public final k:Ljava/lang/Integer;

.field public final l:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lyads/yc1;Lyads/fs2;Lyads/et1;Landroid/util/DisplayMetrics;ZLyads/rr1;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/ts1;->a:Lyads/fs2;

    iput-object p4, p0, Lyads/ts1;->b:Landroid/util/DisplayMetrics;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p4, p1, Lyads/yc1;->e:Lyads/as2;

    goto :goto_0

    :cond_0
    move-object p4, p2

    :goto_0
    if-nez p4, :cond_3

    if-eqz p1, :cond_1

    iget-object p4, p1, Lyads/yc1;->b:Lyads/as2;

    goto :goto_1

    :cond_1
    move-object p4, p2

    :goto_1
    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    const/4 p4, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p4, 0x1

    :goto_3
    if-nez p4, :cond_4

    if-eqz p1, :cond_6

    iget-object v0, p1, Lyads/yc1;->c:Lyads/as2;

    goto :goto_4

    :cond_4
    invoke-static {p3}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_6

    iget-object v0, p1, Lyads/yc1;->b:Lyads/as2;

    goto :goto_4

    :cond_5
    if-eqz p1, :cond_6

    iget-object v0, p1, Lyads/yc1;->e:Lyads/as2;

    goto :goto_4

    :cond_6
    move-object v0, p2

    :goto_4
    invoke-virtual {p0, v0}, Lyads/ts1;->a(Lyads/as2;)F

    move-result v0

    iput v0, p0, Lyads/ts1;->c:F

    if-eqz p1, :cond_7

    iget-object v1, p1, Lyads/yc1;->f:Lyads/as2;

    goto :goto_5

    :cond_7
    move-object v1, p2

    :goto_5
    invoke-virtual {p0, v1}, Lyads/ts1;->a(Lyads/as2;)F

    move-result v1

    iput v1, p0, Lyads/ts1;->d:F

    if-nez p4, :cond_8

    if-eqz p1, :cond_a

    iget-object p4, p1, Lyads/yc1;->d:Lyads/as2;

    goto :goto_6

    :cond_8
    invoke-static {p3}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_9

    if-eqz p1, :cond_a

    iget-object p4, p1, Lyads/yc1;->e:Lyads/as2;

    goto :goto_6

    :cond_9
    if-eqz p1, :cond_a

    iget-object p4, p1, Lyads/yc1;->b:Lyads/as2;

    goto :goto_6

    :cond_a
    move-object p4, p2

    :goto_6
    invoke-virtual {p0, p4}, Lyads/ts1;->a(Lyads/as2;)F

    move-result p4

    iput p4, p0, Lyads/ts1;->e:F

    if-eqz p1, :cond_b

    iget-object p1, p1, Lyads/yc1;->a:Lyads/as2;

    goto :goto_7

    :cond_b
    move-object p1, p2

    :goto_7
    invoke-virtual {p0, p1}, Lyads/ts1;->a(Lyads/as2;)F

    move-result p1

    iput p1, p0, Lyads/ts1;->f:F

    if-nez p5, :cond_c

    move v2, v1

    goto :goto_8

    :cond_c
    invoke-static {p3}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, p4

    goto :goto_8

    :cond_d
    move v2, v0

    :goto_8
    iput v2, p0, Lyads/ts1;->g:F

    if-nez p5, :cond_e

    move v2, p1

    goto :goto_9

    :cond_e
    invoke-static {p3}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v0

    goto :goto_9

    :cond_f
    move v2, p4

    :goto_9
    iput v2, p0, Lyads/ts1;->h:F

    if-eqz p5, :cond_12

    sget-object v2, Lyads/rr1;->e:Lyads/rr1;

    if-ne p6, v2, :cond_10

    invoke-static {p3}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_10
    sget-object v2, Lyads/rr1;->g:Lyads/rr1;

    if-ne p6, v2, :cond_11

    invoke-static {p3}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_a

    :cond_11
    move-object v0, p2

    goto :goto_b

    :cond_12
    :goto_a
    invoke-static {v0}, Lw65;->b(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lyads/ts1;->i:Ljava/lang/Integer;

    if-nez p5, :cond_14

    sget-object v0, Lyads/rr1;->e:Lyads/rr1;

    if-ne p6, v0, :cond_13

    goto :goto_c

    :cond_13
    move-object v0, p2

    goto :goto_d

    :cond_14
    :goto_c
    invoke-static {v1}, Lw65;->b(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_d
    iput-object v0, p0, Lyads/ts1;->j:Ljava/lang/Integer;

    if-eqz p5, :cond_17

    sget-object v0, Lyads/rr1;->e:Lyads/rr1;

    if-ne p6, v0, :cond_15

    invoke-static {p3}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_15
    sget-object v0, Lyads/rr1;->g:Lyads/rr1;

    if-ne p6, v0, :cond_16

    invoke-static {p3}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result p3

    if-nez p3, :cond_16

    goto :goto_e

    :cond_16
    move-object p3, p2

    goto :goto_f

    :cond_17
    :goto_e
    invoke-static {p4}, Lw65;->b(F)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :goto_f
    iput-object p3, p0, Lyads/ts1;->k:Ljava/lang/Integer;

    if-nez p5, :cond_18

    sget-object p3, Lyads/rr1;->g:Lyads/rr1;

    if-ne p6, p3, :cond_19

    :cond_18
    invoke-static {p1}, Lw65;->b(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_19
    iput-object p2, p0, Lyads/ts1;->l:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final a(Lyads/as2;)F
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lyads/ts1;->a:Lyads/fs2;

    invoke-virtual {p1, v0}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p0, p0, Lyads/ts1;->b:Landroid/util/DisplayMetrics;

    invoke-static {p1, p0}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
