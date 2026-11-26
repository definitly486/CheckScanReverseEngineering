.class public final Lyads/pd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/Object;

.field public static volatile g:Lyads/pd;


# instance fields
.field public final a:Lyads/yd;

.field public final b:Lyads/ld;

.field public final c:Lyads/qd;

.field public final d:Lyads/zi0;

.field public final e:Lmk2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/pd;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    new-instance v0, Lyads/i90;

    invoke-direct {v0}, Lyads/i90;-><init>()V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v1

    sget-object v2, Lqo2;->a:Loi2;

    sget-object v2, Lsh2;->c:Lsh2;

    invoke-static {v1, v2}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object v1

    invoke-interface {v1, v0}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v0

    invoke-static {v0}, Lz22;->a(Lo22;)Lkz1;

    move-result-object v0

    new-instance v1, Lyads/be;

    invoke-direct {v1, p1}, Lyads/be;-><init>(Landroid/content/Context;)V

    new-instance v2, Lyads/yd;

    invoke-direct {v2, p1}, Lyads/yd;-><init>(Landroid/content/Context;)V

    new-instance v3, Lyads/ld;

    invoke-direct {v3, p1}, Lyads/ld;-><init>(Landroid/content/Context;)V

    new-instance p1, Lyads/qd;

    invoke-direct {p1}, Lyads/qd;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lyads/pd;->a:Lyads/yd;

    iput-object v3, p0, Lyads/pd;->b:Lyads/ld;

    iput-object p1, p0, Lyads/pd;->c:Lyads/qd;

    iget-object p1, v1, Lyads/be;->a:Lyads/zg5;

    iget-object v1, v1, Lyads/be;->b:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lyads/fe5;->U0:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x3e8

    :goto_1
    new-instance p1, Lyads/zi0;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p1, v2, v3, v4}, Lyads/zi0;-><init>(JLjava/util/concurrent/TimeUnit;)V

    iput-object p1, p0, Lyads/pd;->d:Lyads/zi0;

    sget-object p1, Lc32;->LAZY:Lc32;

    new-instance v2, Lyads/md;

    invoke-direct {v2, p0, v1}, Lyads/md;-><init>(Lyads/pd;Le02;)V

    const/4 v3, 0x1

    invoke-static {v0, v1, p1, v2, v3}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object p1

    iput-object p1, p0, Lyads/pd;->e:Lmk2;

    return-void
.end method


# virtual methods
.method public final a(Lf02;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lyads/nd;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lyads/nd;

    iget v1, v0, Lyads/nd;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/nd;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/nd;

    invoke-direct {v0, p0, p1}, Lyads/nd;-><init>(Lyads/pd;Lf02;)V

    :goto_0
    iget-object p1, v0, Lyads/nd;->b:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/nd;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/pd;->d:Lyads/zi0;

    iget-object p1, p1, Lyads/zi0;->c:Lcl4;

    invoke-interface {p1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    new-instance p1, Lyads/od;

    invoke-direct {p1, p0, v4}, Lyads/od;-><init>(Lyads/pd;Le02;)V

    iput v3, v0, Lyads/nd;->d:I

    invoke-static {v5, v6, p1, v0}, Lyv8;->c(JLbm3;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lyads/kd;

    iget-object v0, p0, Lyads/pd;->b:Lyads/ld;

    iget-object v1, v0, Lyads/ld;->b:Lyads/zg5;

    iget-object v2, v0, Lyads/ld;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-boolean v1, v1, Lyads/fe5;->T0:Z

    if-ne v1, v3, :cond_6

    iget-object v0, v0, Lyads/ld;->a:Lyads/gd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lyads/gd;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v3, v0, Lyads/gd;->a:Lyads/zu3;

    const-string v5, "google_advertising_id_key"

    check-cast v3, Lyads/av3;

    invoke-virtual {v3, v5}, Lyads/av3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lyads/gd;->a:Lyads/zu3;

    const-string v6, "huawei_advertising_id_key"

    check-cast v5, Lyads/av3;

    invoke-virtual {v5, v6}, Lyads/av3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Lyads/gd;->a:Lyads/zu3;

    const-string v6, "app_set_advertising_id_key"

    check-cast v0, Lyads/av3;

    invoke-virtual {v0, v6}, Lyads/av3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-eqz v3, :cond_4

    new-instance v1, Lyads/id;

    invoke-direct {v1, v3, v2}, Lyads/id;-><init>(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_4
    move-object v1, v4

    :goto_2
    if-eqz v5, :cond_5

    new-instance v3, Lyads/id;

    invoke-direct {v3, v5, v2}, Lyads/id;-><init>(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_5
    move-object v3, v4

    :goto_3
    new-instance v5, Lyads/kd;

    invoke-direct {v5, v1, v3, v2, v0}, Lyads/kd;-><init>(Lyads/id;Lyads/id;ZLjava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_6
    move-object v5, v4

    :goto_4
    iget-object p0, p0, Lyads/pd;->c:Lyads/qd;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_7

    iget-object p0, p1, Lyads/kd;->a:Lyads/id;

    if-nez p0, :cond_9

    :cond_7
    if-eqz v5, :cond_8

    iget-object p0, v5, Lyads/kd;->a:Lyads/id;

    goto :goto_5

    :cond_8
    move-object p0, v4

    :cond_9
    :goto_5
    if-eqz p1, :cond_a

    iget-object v0, p1, Lyads/kd;->b:Lyads/id;

    if-nez v0, :cond_c

    :cond_a
    if-eqz v5, :cond_b

    iget-object v0, v5, Lyads/kd;->b:Lyads/id;

    goto :goto_6

    :cond_b
    move-object v0, v4

    :cond_c
    :goto_6
    if-eqz p1, :cond_d

    iget-boolean v2, p1, Lyads/kd;->c:Z

    goto :goto_7

    :cond_d
    if-eqz v5, :cond_e

    iget-boolean v2, v5, Lyads/kd;->c:Z

    :cond_e
    :goto_7
    if-eqz p1, :cond_f

    iget-object p1, p1, Lyads/kd;->d:Ljava/lang/String;

    if-nez p1, :cond_11

    :cond_f
    if-eqz v5, :cond_10

    iget-object p1, v5, Lyads/kd;->d:Ljava/lang/String;

    goto :goto_8

    :cond_10
    move-object p1, v4

    :cond_11
    :goto_8
    if-nez p0, :cond_13

    if-nez v0, :cond_13

    if-eqz p1, :cond_12

    goto :goto_9

    :cond_12
    return-object v4

    :cond_13
    :goto_9
    new-instance v1, Lyads/kd;

    invoke-direct {v1, p0, v0, v2, p1}, Lyads/kd;-><init>(Lyads/id;Lyads/id;ZLjava/lang/String;)V

    return-object v1
.end method
