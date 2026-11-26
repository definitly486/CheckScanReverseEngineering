.class public final Lq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqu3;
.implements Lj5a;
.implements Lrxa;


# static fields
.field public static final b:[Le02;

.field public static final synthetic c:Lq1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Le02;

    sput-object v0, Lq1;->b:[Le02;

    new-instance v0, Lq1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq1;->c:Lq1;

    return-void
.end method

.method public static final f(Lyt8;Ldm3;Ljava/lang/Throwable;Lf02;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lae3;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lae3;

    iget v1, v0, Lae3;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lae3;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lae3;

    invoke-direct {v0, p3}, Lf02;-><init>(Le02;)V

    :goto_0
    iget-object p3, v0, Lae3;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lae3;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p2, v0, Lae3;->l:Ljava/lang/Throwable;

    :try_start_0
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    :try_start_1
    iput-object p2, v0, Lae3;->l:Ljava/lang/Throwable;

    iput v3, v0, Lae3;->n:I

    invoke-interface {p1, p0, p2, v0}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :goto_2
    if-eqz p2, :cond_4

    if-eq p2, p0, :cond_4

    invoke-static {p0, p2}, Lsj0;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_4
    throw p0
.end method


# virtual methods
.method public a(Lt18;)Z
    .locals 2

    iget-object p0, p1, Lt18;->a:Lhn2;

    instance-of v0, p0, Lhn2$a;

    const v1, 0x7fffffff

    if-eqz v0, :cond_0

    check-cast p0, Lhn2$a;

    iget p0, p0, Lhn2$a;->a:I

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    const/16 v0, 0x64

    if-le p0, v0, :cond_2

    iget-object p0, p1, Lt18;->b:Lhn2;

    instance-of p1, p0, Lhn2$a;

    if-eqz p1, :cond_1

    check-cast p0, Lhn2$a;

    iget v1, p0, Lhn2$a;->a:I

    :cond_1
    if-le v1, v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public b(Lpp9;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public c(Lz8a;ZLr8a;)V
    .locals 0

    return-void
.end method

.method public d(Lz8a;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public e()Z
    .locals 6

    sget-object p0, Lj93;->a:Lj93;

    monitor-enter p0

    :try_start_0
    sget v0, Lj93;->c:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lj93;->c:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lj93;->d:J

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    :cond_0
    const/4 v0, 0x0

    sput v0, Lj93;->c:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lj93;->d:J

    sget-object v1, Lj93;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-array v1, v0, [Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    array-length v1, v1

    const/16 v2, 0x320

    if-ge v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    sput-boolean v0, Lj93;->e:Z

    :cond_3
    sget-boolean v0, Lj93;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public synthetic zza()Ljava/lang/Object;
    .locals 2

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzv()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
