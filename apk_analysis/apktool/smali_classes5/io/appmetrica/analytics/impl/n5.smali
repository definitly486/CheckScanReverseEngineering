.class public Lio/appmetrica/analytics/impl/n5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/l5;

.field public final b:Lio/appmetrica/analytics/impl/m5;

.field protected final c:Landroid/content/Context;

.field public final d:Lio/appmetrica/analytics/impl/b5;

.field public final e:Lio/appmetrica/analytics/impl/A4;

.field public final f:Lio/appmetrica/analytics/impl/g5;

.field protected final g:Lio/appmetrica/analytics/impl/vm;

.field public final h:Lio/appmetrica/analytics/impl/oh;

.field public final i:Lio/appmetrica/analytics/impl/T8;

.field public final j:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

.field public final k:Lio/appmetrica/analytics/impl/Ub;

.field public final l:Lio/appmetrica/analytics/impl/E9;

.field public final m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/g5;Lio/appmetrica/analytics/impl/vm;Lio/appmetrica/analytics/impl/oh;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;ILio/appmetrica/analytics/impl/Ub;Lio/appmetrica/analytics/impl/E9;)V
    .locals 14

    new-instance v8, Lio/appmetrica/analytics/impl/T8;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/T8;-><init>()V

    new-instance v10, Lio/appmetrica/analytics/impl/l5;

    move-object/from16 v3, p3

    iget-object v0, v3, Lio/appmetrica/analytics/impl/A4;->a:Ljava/lang/String;

    invoke-direct {v10, v0}, Lio/appmetrica/analytics/impl/l5;-><init>(Ljava/lang/String;)V

    new-instance v11, Lio/appmetrica/analytics/impl/m5;

    move-object/from16 v2, p2

    invoke-direct {v11, p1, v2}, Lio/appmetrica/analytics/impl/m5;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v0 .. v13}, Lio/appmetrica/analytics/impl/n5;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/g5;Lio/appmetrica/analytics/impl/vm;Lio/appmetrica/analytics/impl/oh;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;Lio/appmetrica/analytics/impl/T8;ILio/appmetrica/analytics/impl/l5;Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/Ub;Lio/appmetrica/analytics/impl/E9;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/g5;Lio/appmetrica/analytics/impl/vm;Lio/appmetrica/analytics/impl/oh;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;Lio/appmetrica/analytics/impl/T8;ILio/appmetrica/analytics/impl/l5;Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/Ub;Lio/appmetrica/analytics/impl/E9;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lio/appmetrica/analytics/impl/n5;->c:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lio/appmetrica/analytics/impl/n5;->d:Lio/appmetrica/analytics/impl/b5;

    .line 44
    iput-object p3, p0, Lio/appmetrica/analytics/impl/n5;->e:Lio/appmetrica/analytics/impl/A4;

    .line 45
    iput-object p4, p0, Lio/appmetrica/analytics/impl/n5;->f:Lio/appmetrica/analytics/impl/g5;

    .line 46
    iput-object p5, p0, Lio/appmetrica/analytics/impl/n5;->g:Lio/appmetrica/analytics/impl/vm;

    .line 47
    iput-object p6, p0, Lio/appmetrica/analytics/impl/n5;->h:Lio/appmetrica/analytics/impl/oh;

    .line 48
    iput-object p7, p0, Lio/appmetrica/analytics/impl/n5;->j:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    .line 49
    iput-object p8, p0, Lio/appmetrica/analytics/impl/n5;->i:Lio/appmetrica/analytics/impl/T8;

    .line 50
    iput p9, p0, Lio/appmetrica/analytics/impl/n5;->m:I

    .line 51
    iput-object p10, p0, Lio/appmetrica/analytics/impl/n5;->a:Lio/appmetrica/analytics/impl/l5;

    .line 52
    iput-object p11, p0, Lio/appmetrica/analytics/impl/n5;->b:Lio/appmetrica/analytics/impl/m5;

    .line 53
    iput-object p12, p0, Lio/appmetrica/analytics/impl/n5;->k:Lio/appmetrica/analytics/impl/Ub;

    .line 54
    iput-object p13, p0, Lio/appmetrica/analytics/impl/n5;->l:Lio/appmetrica/analytics/impl/E9;

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/j9;)Lio/appmetrica/analytics/impl/Bi;
    .locals 1

    .line 79
    new-instance v0, Lio/appmetrica/analytics/impl/Bi;

    invoke-direct {v0, p1, p0}, Lio/appmetrica/analytics/impl/Bi;-><init>(Lio/appmetrica/analytics/impl/Tf;Lio/appmetrica/analytics/impl/i5;)V

    return-object v0
.end method

.method public static a(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/Go;Lio/appmetrica/analytics/impl/h5;)Lio/appmetrica/analytics/impl/jl;
    .locals 7

    new-instance v0, Lio/appmetrica/analytics/impl/jl;

    new-instance v3, Lio/appmetrica/analytics/impl/il;

    invoke-direct {v3, p1}, Lio/appmetrica/analytics/impl/il;-><init>(Lio/appmetrica/analytics/impl/Go;)V

    new-instance v1, Lio/appmetrica/analytics/impl/wa;

    new-instance v4, Lio/appmetrica/analytics/impl/nl;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/i5;->h()Lio/appmetrica/analytics/impl/jf;

    move-result-object p1

    const-string v2, "foreground"

    invoke-direct {v4, p1, v2}, Lio/appmetrica/analytics/impl/nl;-><init>(Lio/appmetrica/analytics/impl/jf;Ljava/lang/String;)V

    invoke-static {}, Lio/appmetrica/analytics/impl/B1;->a()Lio/appmetrica/analytics/impl/ek;

    move-result-object v5

    new-instance v6, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {v6}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/wa;-><init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/il;Lio/appmetrica/analytics/impl/nl;Lio/appmetrica/analytics/impl/ek;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V

    move-object p0, v1

    new-instance v1, Lio/appmetrica/analytics/impl/O2;

    new-instance v4, Lio/appmetrica/analytics/impl/nl;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/i5;->h()Lio/appmetrica/analytics/impl/jf;

    move-result-object p1

    const-string v5, "background"

    invoke-direct {v4, p1, v5}, Lio/appmetrica/analytics/impl/nl;-><init>(Lio/appmetrica/analytics/impl/jf;Ljava/lang/String;)V

    invoke-static {}, Lio/appmetrica/analytics/impl/B1;->a()Lio/appmetrica/analytics/impl/ek;

    move-result-object v5

    new-instance v6, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {v6}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/O2;-><init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/il;Lio/appmetrica/analytics/impl/nl;Lio/appmetrica/analytics/impl/ek;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V

    new-instance v5, Lio/appmetrica/analytics/impl/hl;

    invoke-direct {v5, v2, v3}, Lio/appmetrica/analytics/impl/hl;-><init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/il;)V

    move-object v3, p0

    move-object v4, v1

    move-object v1, v2

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/jl;-><init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/wa;Lio/appmetrica/analytics/impl/O2;Lio/appmetrica/analytics/impl/hl;)V

    return-object v0
.end method

.method public static b()Lio/appmetrica/analytics/impl/d5;
    .locals 1

    .line 34
    new-instance v0, Lio/appmetrica/analytics/impl/d5;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/d5;-><init>()V

    return-object v0
.end method

.method public static c(Lio/appmetrica/analytics/impl/i5;)Lio/appmetrica/analytics/impl/j9;
    .locals 1

    .line 10
    new-instance v0, Lio/appmetrica/analytics/impl/j9;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/j9;-><init>(Lio/appmetrica/analytics/impl/i5;)V

    return-object v0
.end method


# virtual methods
.method public a(Lio/appmetrica/analytics/impl/H9;Lio/appmetrica/analytics/impl/Y6;Lio/appmetrica/analytics/impl/Tg;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/jf;)Lio/appmetrica/analytics/impl/C9;
    .locals 0

    .line 80
    iget-object p0, p0, Lio/appmetrica/analytics/impl/n5;->l:Lio/appmetrica/analytics/impl/E9;

    invoke-interface/range {p0 .. p6}, Lio/appmetrica/analytics/impl/E9;->a(Lio/appmetrica/analytics/impl/H9;Lio/appmetrica/analytics/impl/Y6;Lio/appmetrica/analytics/impl/Tg;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/jf;)Lio/appmetrica/analytics/impl/D9;

    move-result-object p0

    .line 81
    invoke-interface {p0}, Lio/appmetrica/analytics/impl/D9;->a()Lio/appmetrica/analytics/impl/C9;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/jf;)Lio/appmetrica/analytics/impl/E2;
    .locals 1

    .line 82
    new-instance v0, Lio/appmetrica/analytics/impl/E2;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/n5;->d:Lio/appmetrica/analytics/impl/b5;

    invoke-direct {v0, p0, p1}, Lio/appmetrica/analytics/impl/E2;-><init>(Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/jf;)V

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/i5;)Lio/appmetrica/analytics/impl/Tg;
    .locals 4

    .line 72
    new-instance v0, Lio/appmetrica/analytics/impl/Tg;

    new-instance v1, Lio/appmetrica/analytics/impl/ph;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/n5;->h:Lio/appmetrica/analytics/impl/oh;

    .line 73
    new-instance v3, Lio/appmetrica/analytics/impl/Q3;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/Q3;-><init>()V

    invoke-direct {v1, p1, v2, v3}, Lio/appmetrica/analytics/impl/ph;-><init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/oh;Lio/appmetrica/analytics/impl/Q3;)V

    .line 74
    iget-object p1, p0, Lio/appmetrica/analytics/impl/n5;->g:Lio/appmetrica/analytics/impl/vm;

    new-instance v2, Lio/appmetrica/analytics/impl/mh;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/n5;->e:Lio/appmetrica/analytics/impl/A4;

    invoke-direct {v2, p0}, Lio/appmetrica/analytics/impl/mh;-><init>(Lio/appmetrica/analytics/impl/A4;)V

    invoke-direct {v0, v1, p1, v2}, Lio/appmetrica/analytics/impl/Tg;-><init>(Lio/appmetrica/analytics/impl/ph;Lio/appmetrica/analytics/impl/vm;Lio/appmetrica/analytics/impl/mh;)V

    return-object v0
.end method

.method public final a()Lio/appmetrica/analytics/impl/Y8;
    .locals 4

    .line 75
    new-instance v0, Lio/appmetrica/analytics/impl/Y8;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/n5;->c:Landroid/content/Context;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/n5;->d:Lio/appmetrica/analytics/impl/b5;

    iget p0, p0, Lio/appmetrica/analytics/impl/n5;->m:I

    .line 76
    new-instance v3, Lio/appmetrica/analytics/impl/d9;

    invoke-direct {v3, v1, v2}, Lio/appmetrica/analytics/impl/d9;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;)V

    invoke-direct {v0, v3, p0}, Lio/appmetrica/analytics/impl/Y8;-><init>(Lio/appmetrica/analytics/impl/d9;I)V

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/jf;Lio/appmetrica/analytics/impl/Go;Lio/appmetrica/analytics/impl/jl;Lio/appmetrica/analytics/impl/Y6;Lio/appmetrica/analytics/impl/m0;Lio/appmetrica/analytics/impl/al;Lio/appmetrica/analytics/impl/Di;)Lio/appmetrica/analytics/impl/w9;
    .locals 11

    .line 77
    new-instance v0, Lio/appmetrica/analytics/impl/w9;

    iget-object v6, p0, Lio/appmetrica/analytics/impl/n5;->i:Lio/appmetrica/analytics/impl/T8;

    iget v8, p0, Lio/appmetrica/analytics/impl/n5;->m:I

    new-instance v9, Lio/appmetrica/analytics/impl/k5;

    move-object/from16 p0, p7

    invoke-direct {v9, p0}, Lio/appmetrica/analytics/impl/k5;-><init>(Lio/appmetrica/analytics/impl/Di;)V

    .line 78
    new-instance v10, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {v10}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v10}, Lio/appmetrica/analytics/impl/w9;-><init>(Lio/appmetrica/analytics/impl/jf;Lio/appmetrica/analytics/impl/Go;Lio/appmetrica/analytics/impl/jl;Lio/appmetrica/analytics/impl/Y6;Lio/appmetrica/analytics/impl/m0;Lio/appmetrica/analytics/impl/T8;Lio/appmetrica/analytics/impl/al;ILio/appmetrica/analytics/impl/k5;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V

    return-object v0
.end method

.method public final b(Lio/appmetrica/analytics/impl/jf;)Lio/appmetrica/analytics/impl/A3;
    .locals 3

    .line 35
    new-instance v0, Lio/appmetrica/analytics/impl/A3;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/n5;->c:Landroid/content/Context;

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    invoke-direct {v2}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;-><init>()V

    invoke-direct {v0, p0, p1, v1, v2}, Lio/appmetrica/analytics/impl/A3;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/jf;Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;)V

    return-object v0
.end method

.method public final b(Lio/appmetrica/analytics/impl/i5;)Lio/appmetrica/analytics/impl/Y6;
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/impl/Y6;

    sget-object v1, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Fa;->B()Lio/appmetrica/analytics/impl/Ok;

    move-result-object v1

    iget-object v2, p0, Lio/appmetrica/analytics/impl/n5;->c:Landroid/content/Context;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/n5;->d:Lio/appmetrica/analytics/impl/b5;

    invoke-virtual {v1, v2, p0}, Lio/appmetrica/analytics/impl/Ok;->c(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;)Lio/appmetrica/analytics/impl/l7;

    move-result-object p0

    new-instance v1, Lio/appmetrica/analytics/impl/V6;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/i5;->b()Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/V6;-><init>(Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;)V

    new-instance v2, Lio/appmetrica/analytics/impl/s7;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/s7;-><init>()V

    invoke-direct {v0, p1, p0, v1, v2}, Lio/appmetrica/analytics/impl/Y6;-><init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/l7;Lio/appmetrica/analytics/impl/V6;Lio/appmetrica/analytics/impl/s7;)V

    return-object v0
.end method

.method public final c()Lio/appmetrica/analytics/impl/al;
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/impl/al;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/n5;->c:Landroid/content/Context;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/n5;->d:Lio/appmetrica/analytics/impl/b5;

    invoke-direct {v0, v1, p0}, Lio/appmetrica/analytics/impl/al;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;)V

    return-object v0
.end method

.method public final d(Lio/appmetrica/analytics/impl/i5;)Lio/appmetrica/analytics/impl/Di;
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/impl/Di;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/n5;->f:Lio/appmetrica/analytics/impl/g5;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/g5;->a()Lio/appmetrica/analytics/impl/am;

    move-result-object v1

    iget-object v2, p0, Lio/appmetrica/analytics/impl/n5;->j:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    invoke-direct {v0, p1, v1, v2}, Lio/appmetrica/analytics/impl/Di;-><init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/am;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/n5;->k:Lio/appmetrica/analytics/impl/Ub;

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ub;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final d()Lio/appmetrica/analytics/impl/l5;
    .locals 0

    .line 26
    iget-object p0, p0, Lio/appmetrica/analytics/impl/n5;->a:Lio/appmetrica/analytics/impl/l5;

    return-object p0
.end method

.method public final e()Lio/appmetrica/analytics/impl/m5;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/n5;->b:Lio/appmetrica/analytics/impl/m5;

    return-object p0
.end method

.method public final f()Lio/appmetrica/analytics/impl/Go;
    .locals 15

    sget-object v0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->D()Lio/appmetrica/analytics/impl/Jo;

    move-result-object v1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/n5;->d:Lio/appmetrica/analytics/impl/b5;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lio/appmetrica/analytics/impl/Jo;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Lio/appmetrica/analytics/impl/Go;

    new-instance v4, Lio/appmetrica/analytics/impl/jf;

    sget-object v5, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v5}, Lio/appmetrica/analytics/impl/Fa;->B()Lio/appmetrica/analytics/impl/Ok;

    move-result-object v5

    iget-object v6, v1, Lio/appmetrica/analytics/impl/Jo;->a:Landroid/content/Context;

    invoke-virtual {v5, v6, p0}, Lio/appmetrica/analytics/impl/Ok;->b(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;)Lio/appmetrica/analytics/impl/Va;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/appmetrica/analytics/impl/jf;-><init>(Lio/appmetrica/analytics/impl/Va;)V

    sget-object v5, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    iget-object v5, v5, Lio/appmetrica/analytics/impl/Fa;->d:Lio/appmetrica/analytics/impl/Ak;

    invoke-virtual {v5}, Lio/appmetrica/analytics/impl/Ak;->e()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v9

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/b5;->d()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "appmetrica_vital_main.dat"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "appmetrica_vital_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/b5;->b:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".dat"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance p0, Lio/appmetrica/analytics/impl/r5;

    new-instance v6, Lio/appmetrica/analytics/impl/qa;

    iget-object v7, v1, Lio/appmetrica/analytics/impl/Jo;->a:Landroid/content/Context;

    const/16 v12, 0x8

    const/4 v13, 0x0

    const-wide/16 v10, 0x0

    invoke-direct/range {v6 .. v13}, Lio/appmetrica/analytics/impl/qa;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;JILjh2;)V

    new-instance v14, Lb36;

    invoke-direct {v14, v8, v6}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lio/appmetrica/analytics/impl/qa;

    iget-object v7, v1, Lio/appmetrica/analytics/impl/Jo;->a:Landroid/content/Context;

    const/16 v12, 0x8

    const/4 v13, 0x0

    const-wide/16 v10, 0x0

    move-object v8, v5

    invoke-direct/range {v6 .. v13}, Lio/appmetrica/analytics/impl/qa;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;JILjh2;)V

    new-instance v5, Lb36;

    invoke-direct {v5, v8, v6}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v14, v5}, [Lb36;

    move-result-object v5

    invoke-static {v5}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lio/appmetrica/analytics/impl/r5;-><init>(Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    new-instance v6, Lio/appmetrica/analytics/impl/qa;

    iget-object v7, v1, Lio/appmetrica/analytics/impl/Jo;->a:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "appmetrica_vital_"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/b5;->b:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".dat"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v12, 0x8

    const/4 v13, 0x0

    const-wide/16 v10, 0x0

    invoke-direct/range {v6 .. v13}, Lio/appmetrica/analytics/impl/qa;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;JILjh2;)V

    move-object p0, v6

    :goto_0
    invoke-direct {v3, v4, p0, v0}, Lio/appmetrica/analytics/impl/Go;-><init>(Lio/appmetrica/analytics/impl/jf;Lio/appmetrica/analytics/impl/Ko;Ljava/lang/String;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v3, Lio/appmetrica/analytics/impl/Go;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v3

    :goto_1
    monitor-exit v1

    throw p0
.end method
