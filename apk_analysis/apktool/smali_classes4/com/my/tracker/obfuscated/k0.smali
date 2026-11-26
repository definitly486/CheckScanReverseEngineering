.class public final Lcom/my/tracker/obfuscated/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile l:Lcom/my/tracker/obfuscated/k0;


# instance fields
.field private final a:Lcom/my/tracker/obfuscated/h;

.field private final b:Lcom/my/tracker/obfuscated/c1;

.field private final c:Lcom/my/tracker/obfuscated/d0;

.field private final d:Lcom/my/tracker/obfuscated/p0;

.field private final e:Lcom/my/tracker/obfuscated/y0;

.field private final f:Lcom/my/tracker/obfuscated/m1;

.field private final g:Lcom/my/tracker/obfuscated/e1;

.field private final h:Lcom/my/tracker/obfuscated/k;

.field private final i:Lcom/my/tracker/obfuscated/h0;

.field private final j:Lcom/my/tracker/obfuscated/p;

.field private final k:Lcom/my/tracker/obfuscated/m0;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/my/tracker/obfuscated/h;

    invoke-direct {v0}, Lcom/my/tracker/obfuscated/h;-><init>()V

    iput-object v0, p0, Lcom/my/tracker/obfuscated/k0;->a:Lcom/my/tracker/obfuscated/h;

    new-instance v0, Lcom/my/tracker/obfuscated/c1;

    invoke-direct {v0}, Lcom/my/tracker/obfuscated/c1;-><init>()V

    iput-object v0, p0, Lcom/my/tracker/obfuscated/k0;->b:Lcom/my/tracker/obfuscated/c1;

    new-instance v0, Lcom/my/tracker/obfuscated/d0;

    invoke-direct {v0}, Lcom/my/tracker/obfuscated/d0;-><init>()V

    iput-object v0, p0, Lcom/my/tracker/obfuscated/k0;->c:Lcom/my/tracker/obfuscated/d0;

    new-instance v0, Lcom/my/tracker/obfuscated/p0;

    invoke-direct {v0}, Lcom/my/tracker/obfuscated/p0;-><init>()V

    iput-object v0, p0, Lcom/my/tracker/obfuscated/k0;->d:Lcom/my/tracker/obfuscated/p0;

    new-instance v0, Lcom/my/tracker/obfuscated/y0;

    invoke-direct {v0}, Lcom/my/tracker/obfuscated/y0;-><init>()V

    iput-object v0, p0, Lcom/my/tracker/obfuscated/k0;->e:Lcom/my/tracker/obfuscated/y0;

    new-instance v0, Lcom/my/tracker/obfuscated/m1;

    invoke-direct {v0}, Lcom/my/tracker/obfuscated/m1;-><init>()V

    iput-object v0, p0, Lcom/my/tracker/obfuscated/k0;->f:Lcom/my/tracker/obfuscated/m1;

    new-instance v0, Lcom/my/tracker/obfuscated/e1;

    invoke-direct {v0}, Lcom/my/tracker/obfuscated/e1;-><init>()V

    iput-object v0, p0, Lcom/my/tracker/obfuscated/k0;->g:Lcom/my/tracker/obfuscated/e1;

    new-instance v0, Lcom/my/tracker/obfuscated/k;

    invoke-direct {v0}, Lcom/my/tracker/obfuscated/k;-><init>()V

    iput-object v0, p0, Lcom/my/tracker/obfuscated/k0;->h:Lcom/my/tracker/obfuscated/k;

    new-instance v0, Lcom/my/tracker/obfuscated/h0;

    invoke-direct {v0}, Lcom/my/tracker/obfuscated/h0;-><init>()V

    iput-object v0, p0, Lcom/my/tracker/obfuscated/k0;->i:Lcom/my/tracker/obfuscated/h0;

    new-instance v0, Lcom/my/tracker/obfuscated/p;

    invoke-direct {v0}, Lcom/my/tracker/obfuscated/p;-><init>()V

    iput-object v0, p0, Lcom/my/tracker/obfuscated/k0;->j:Lcom/my/tracker/obfuscated/p;

    new-instance v0, Lcom/my/tracker/obfuscated/m0;

    invoke-direct {v0}, Lcom/my/tracker/obfuscated/m0;-><init>()V

    iput-object v0, p0, Lcom/my/tracker/obfuscated/k0;->k:Lcom/my/tracker/obfuscated/m0;

    return-void
.end method

.method public static a()Lcom/my/tracker/obfuscated/k0;
    .locals 2

    .line 104
    sget-object v0, Lcom/my/tracker/obfuscated/k0;->l:Lcom/my/tracker/obfuscated/k0;

    if-nez v0, :cond_1

    .line 105
    const-class v1, Lcom/my/tracker/obfuscated/k0;

    monitor-enter v1

    .line 106
    :try_start_0
    sget-object v0, Lcom/my/tracker/obfuscated/k0;->l:Lcom/my/tracker/obfuscated/k0;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/my/tracker/obfuscated/k0;

    invoke-direct {v0}, Lcom/my/tracker/obfuscated/k0;-><init>()V

    .line 108
    sput-object v0, Lcom/my/tracker/obfuscated/k0;->l:Lcom/my/tracker/obfuscated/k0;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 109
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Lcom/my/tracker/MyTrackerConfig$InstalledPackagesProvider;ZIZLjava/lang/String;Lcom/my/tracker/MyTrackerConfig$OkHttpClientProvider;Landroid/content/Context;)Lcom/my/tracker/obfuscated/j0;
    .locals 14

    move-object/from16 v0, p7

    iget-object v1, p0, Lcom/my/tracker/obfuscated/k0;->a:Lcom/my/tracker/obfuscated/h;

    invoke-virtual {v1, v0}, Lcom/my/tracker/obfuscated/h;->a(Landroid/content/Context;)Lcom/my/tracker/obfuscated/g;

    move-result-object v3

    iget-object v1, p0, Lcom/my/tracker/obfuscated/k0;->c:Lcom/my/tracker/obfuscated/d0;

    invoke-virtual {v1, v0}, Lcom/my/tracker/obfuscated/d0;->a(Landroid/content/Context;)Lcom/my/tracker/obfuscated/c0;

    move-result-object v5

    iget-object v1, p0, Lcom/my/tracker/obfuscated/k0;->f:Lcom/my/tracker/obfuscated/m1;

    invoke-virtual {v1, v0}, Lcom/my/tracker/obfuscated/m1;->a(Landroid/content/Context;)Lcom/my/tracker/obfuscated/l1;

    move-result-object v8

    iget-object v1, p0, Lcom/my/tracker/obfuscated/k0;->h:Lcom/my/tracker/obfuscated/k;

    invoke-virtual {v1, p1, v0}, Lcom/my/tracker/obfuscated/k;->a(Lcom/my/tracker/MyTrackerConfig$InstalledPackagesProvider;Landroid/content/Context;)Lcom/my/tracker/obfuscated/j;

    move-result-object v10

    if-eqz p4, :cond_0

    sget-object v1, Lcom/my/tracker/obfuscated/g0;->c:Lcom/my/tracker/obfuscated/g0;

    sget-object v2, Lcom/my/tracker/obfuscated/d1;->g:Lcom/my/tracker/obfuscated/d1;

    const/4 v4, 0x0

    move-object v11, v1

    move-object v9, v2

    move-object v6, v4

    move-object v7, v6

    move-object v13, v7

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/my/tracker/obfuscated/k0;->e:Lcom/my/tracker/obfuscated/y0;

    invoke-virtual {v1, v0}, Lcom/my/tracker/obfuscated/y0;->a(Landroid/content/Context;)Lcom/my/tracker/obfuscated/x0;

    move-result-object v4

    iget-object v1, p0, Lcom/my/tracker/obfuscated/k0;->d:Lcom/my/tracker/obfuscated/p0;

    invoke-virtual {v1, v0}, Lcom/my/tracker/obfuscated/p0;->a(Landroid/content/Context;)Lcom/my/tracker/obfuscated/o0;

    move-result-object v1

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/my/tracker/obfuscated/k0;->i:Lcom/my/tracker/obfuscated/h0;

    invoke-virtual {v2, v0}, Lcom/my/tracker/obfuscated/h0;->b(Landroid/content/Context;)Lcom/my/tracker/obfuscated/g0;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/my/tracker/obfuscated/g0;->c:Lcom/my/tracker/obfuscated/g0;

    :goto_0
    iget-object v6, p0, Lcom/my/tracker/obfuscated/k0;->k:Lcom/my/tracker/obfuscated/m0;

    invoke-virtual {v6, v0}, Lcom/my/tracker/obfuscated/m0;->a(Landroid/content/Context;)Lcom/my/tracker/obfuscated/l0;

    move-result-object v6

    iget-object v7, p0, Lcom/my/tracker/obfuscated/k0;->b:Lcom/my/tracker/obfuscated/c1;

    move-object/from16 v9, p5

    move-object/from16 v11, p6

    invoke-virtual {v7, v9, v11}, Lcom/my/tracker/obfuscated/c1;->a(Ljava/lang/String;Lcom/my/tracker/MyTrackerConfig$OkHttpClientProvider;)Lcom/my/tracker/obfuscated/b1;

    move-result-object v7

    iget-object v9, p0, Lcom/my/tracker/obfuscated/k0;->g:Lcom/my/tracker/obfuscated/e1;

    move/from16 v11, p3

    invoke-virtual {v9, v11, v0}, Lcom/my/tracker/obfuscated/e1;->a(ILandroid/content/Context;)Lcom/my/tracker/obfuscated/d1;

    move-result-object v9

    move-object v11, v7

    move-object v7, v4

    move-object v4, v11

    move-object v11, v2

    move-object v13, v6

    move-object v6, v1

    :goto_1
    iget-object p0, p0, Lcom/my/tracker/obfuscated/k0;->j:Lcom/my/tracker/obfuscated/p;

    invoke-virtual {p0, v0}, Lcom/my/tracker/obfuscated/p;->a(Landroid/content/Context;)Lcom/my/tracker/obfuscated/o;

    move-result-object v12

    new-instance v2, Lcom/my/tracker/obfuscated/j0;

    invoke-direct/range {v2 .. v13}, Lcom/my/tracker/obfuscated/j0;-><init>(Lcom/my/tracker/obfuscated/g;Lcom/my/tracker/obfuscated/b1;Lcom/my/tracker/obfuscated/c0;Lcom/my/tracker/obfuscated/o0;Lcom/my/tracker/obfuscated/x0;Lcom/my/tracker/obfuscated/l1;Lcom/my/tracker/obfuscated/d1;Lcom/my/tracker/obfuscated/j;Lcom/my/tracker/obfuscated/g0;Lcom/my/tracker/obfuscated/o;Lcom/my/tracker/obfuscated/l0;)V

    return-object v2
.end method
