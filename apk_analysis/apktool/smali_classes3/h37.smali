.class public final Lh37;
.super Lee0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lee0<",
        "Lh37<",
        "TTranscodeType;>;>;"
    }
.end annotation


# instance fields
.field public A:Ljava/lang/Object;

.field public B:Ljava/util/ArrayList;

.field public C:Lh37;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh37<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field public D:Lh37;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh37<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field public E:Z

.field public F:Z

.field public G:Z

.field public final v:Landroid/content/Context;

.field public final w:Lp37;

.field public final x:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field public final y:Lwq3;

.field public z:Lo29;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo29<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls37;

    invoke-direct {v0}, Ls37;-><init>()V

    sget-object v1, Lsn2;->c:Lsn2$c;

    invoke-virtual {v0, v1}, Lee0;->g(Lsn2;)Lee0;

    move-result-object v0

    check-cast v0, Ls37;

    sget-object v1, Ljg6;->LOW:Ljg6;

    invoke-virtual {v0, v1}, Lee0;->s(Ljg6;)Lee0;

    move-result-object v0

    check-cast v0, Ls37;

    invoke-virtual {v0}, Lee0;->y()Lee0;

    move-result-object v0

    check-cast v0, Ls37;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/a;Lp37;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/a;",
            "Lp37;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lee0;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh37;->E:Z

    iput-object p2, p0, Lh37;->w:Lp37;

    iput-object p3, p0, Lh37;->x:Ljava/lang/Class;

    iput-object p4, p0, Lh37;->v:Landroid/content/Context;

    iget-object p4, p2, Lp37;->b:Lcom/bumptech/glide/a;

    iget-object p4, p4, Lcom/bumptech/glide/a;->d:Lwq3;

    iget-object p4, p4, Lwq3;->e:Landroidx/collection/ArrayMap;

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo29;

    if-nez v0, :cond_1

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo29;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Lwq3;->i:Lip3;

    :cond_2
    iput-object v0, p0, Lh37;->z:Lo29;

    iget-object p1, p1, Lcom/bumptech/glide/a;->d:Lwq3;

    iput-object p1, p0, Lh37;->y:Lwq3;

    iget-object p1, p2, Lp37;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo37;

    invoke-virtual {p0, p3}, Lh37;->F(Lo37;)Lh37;

    goto :goto_1

    :cond_3
    monitor-enter p2

    :try_start_0
    iget-object p1, p2, Lp37;->k:Ls37;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    invoke-virtual {p0, p1}, Lh37;->G(Lee0;)Lh37;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final F(Lo37;)Lh37;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo37<",
            "TTranscodeType;>;)",
            "Lh37<",
            "TTranscodeType;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lee0;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh37;->J()Lh37;

    move-result-object p0

    invoke-virtual {p0, p1}, Lh37;->F(Lo37;)Lh37;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lh37;->B:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh37;->B:Ljava/util/ArrayList;

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lee0;->v()V

    return-object p0
.end method

.method public final G(Lee0;)Lh37;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lee0<",
            "*>;)",
            "Lh37<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-static {p1}, Lr96;->b(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lee0;->b(Lee0;)Lee0;

    move-result-object p0

    check-cast p0, Lh37;

    return-object p0
.end method

.method public final H(Lh37;)Lh37;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh37<",
            "TTranscodeType;>;)",
            "Lh37<",
            "TTranscodeType;>;"
        }
    .end annotation

    iget-object p0, p0, Lh37;->v:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p1, v0}, Lee0;->z(Landroid/content/res/Resources$Theme;)Lee0;

    move-result-object p1

    check-cast p1, Lh37;

    sget-object v0, Lpq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lpq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkf4;

    if-nez v2, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot resolve info for"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppVersionSignature"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v3, Loq5;

    invoke-direct {v3, v2}, Loq5;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkf4;

    if-nez v0, :cond_1

    move-object v2, v3

    goto :goto_2

    :cond_1
    move-object v2, v0

    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    new-instance v0, Loj;

    invoke-direct {v0, p0, v2}, Loj;-><init>(ILkf4;)V

    invoke-virtual {p1, v0}, Lee0;->x(Lkf4;)Lee0;

    move-result-object p0

    check-cast p0, Lh37;

    return-object p0
.end method

.method public final I(Ljava/lang/Object;Lwk8;Lj37;Lo29;Ljg6;IILee0;)Lc37;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v1, p4

    move-object/from16 v7, p8

    iget-object v2, v0, Lh37;->D:Lh37;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lt03;

    move-object/from16 v5, p3

    invoke-direct {v2, v4, v5}, Lt03;-><init>(Ljava/lang/Object;Lj37;)V

    move-object v13, v2

    move-object/from16 v16, v13

    goto :goto_0

    :cond_0
    move-object/from16 v5, p3

    move-object/from16 v16, v3

    move-object v13, v5

    :goto_0
    iget-object v2, v0, Lh37;->C:Lh37;

    if-eqz v2, :cond_9

    iget-boolean v5, v0, Lh37;->G:Z

    if-nez v5, :cond_8

    iget-object v5, v2, Lh37;->z:Lo29;

    iget-boolean v6, v2, Lh37;->E:Z

    if-eqz v6, :cond_1

    move-object/from16 v17, v1

    goto :goto_1

    :cond_1
    move-object/from16 v17, v5

    :goto_1
    const/16 v5, 0x8

    iget v2, v2, Lee0;->b:I

    invoke-static {v2, v5}, Lee0;->k(II)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    iget-object v2, v0, Lh37;->C:Lh37;

    iget-object v2, v2, Lee0;->d:Ljg6;

    :goto_2
    move-object/from16 v18, v2

    goto :goto_4

    :cond_2
    sget-object v2, Lh37$a;->b:[I

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v2, v2, v6

    if-eq v2, v5, :cond_6

    const/4 v6, 0x2

    if-eq v2, v6, :cond_5

    const/4 v6, 0x3

    if-eq v2, v6, :cond_4

    const/4 v6, 0x4

    if-ne v2, v6, :cond_3

    goto :goto_3

    :cond_3
    const-string v1, "unknown priority: "

    iget-object v0, v0, Lee0;->d:Ljg6;

    invoke-static {v0, v1}, Lmz0;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    :cond_4
    :goto_3
    sget-object v2, Ljg6;->IMMEDIATE:Ljg6;

    goto :goto_2

    :cond_5
    sget-object v2, Ljg6;->HIGH:Ljg6;

    goto :goto_2

    :cond_6
    sget-object v2, Ljg6;->NORMAL:Ljg6;

    goto :goto_2

    :goto_4
    iget-object v2, v0, Lh37;->C:Lh37;

    iget v3, v2, Lee0;->j:I

    iget v2, v2, Lee0;->i:I

    invoke-static/range {p6 .. p7}, Leb9;->j(II)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v0, Lh37;->C:Lh37;

    iget v8, v6, Lee0;->j:I

    iget v6, v6, Lee0;->i:I

    invoke-static {v8, v6}, Leb9;->j(II)Z

    move-result v6

    if-nez v6, :cond_7

    iget v3, v7, Lee0;->j:I

    iget v2, v7, Lee0;->i:I

    :cond_7
    move/from16 v19, v2

    move/from16 v20, v3

    new-instance v2, Lbu8;

    invoke-direct {v2, v4, v13}, Lbu8;-><init>(Ljava/lang/Object;Lj37;)V

    move-object v13, v2

    iget-object v2, v0, Lh37;->v:Landroid/content/Context;

    iget-object v3, v0, Lh37;->y:Lwq3;

    move v6, v5

    iget-object v5, v0, Lh37;->A:Ljava/lang/Object;

    move v8, v6

    iget-object v6, v0, Lh37;->x:Ljava/lang/Class;

    iget-object v12, v0, Lh37;->B:Ljava/util/ArrayList;

    iget-object v14, v3, Lwq3;->f:Lkz2;

    iget-object v15, v1, Lo29;->b:Ll29;

    new-instance v1, Ly08;

    move-object/from16 v11, p2

    move-object/from16 v10, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v15}, Ly08;-><init>(Landroid/content/Context;Lwq3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lee0;IILjg6;Lwk8;Ljava/util/ArrayList;Lj37;Lkz2;Ll29;)V

    move-object v10, v1

    const/4 v8, 0x1

    iput-boolean v8, v0, Lh37;->G:Z

    iget-object v1, v0, Lh37;->C:Lh37;

    move-object v9, v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v13

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move/from16 v8, v19

    move/from16 v7, v20

    invoke-virtual/range {v1 .. v9}, Lh37;->I(Ljava/lang/Object;Lwk8;Lj37;Lo29;Ljg6;IILee0;)Lc37;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lh37;->G:Z

    iput-object v10, v13, Lbu8;->c:Ly08;

    iput-object v1, v13, Lbu8;->d:Lc37;

    move-object/from16 v7, p8

    goto :goto_5

    :cond_8
    const-string v0, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_9
    iget-object v2, v0, Lh37;->v:Landroid/content/Context;

    iget-object v3, v0, Lh37;->y:Lwq3;

    iget-object v5, v0, Lh37;->A:Ljava/lang/Object;

    iget-object v6, v0, Lh37;->x:Ljava/lang/Class;

    iget-object v12, v0, Lh37;->B:Ljava/util/ArrayList;

    iget-object v14, v3, Lwq3;->f:Lkz2;

    iget-object v15, v1, Lo29;->b:Ll29;

    new-instance v1, Ly08;

    move-object/from16 v4, p1

    move-object/from16 v11, p2

    move-object/from16 v10, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v15}, Ly08;-><init>(Landroid/content/Context;Lwq3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lee0;IILjg6;Lwk8;Ljava/util/ArrayList;Lj37;Lkz2;Ll29;)V

    move-object v13, v1

    :goto_5
    if-nez v16, :cond_a

    return-object v13

    :cond_a
    iget-object v1, v0, Lh37;->D:Lh37;

    iget v2, v1, Lee0;->j:I

    iget v1, v1, Lee0;->i:I

    invoke-static/range {p6 .. p7}, Leb9;->j(II)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v0, Lh37;->D:Lh37;

    iget v4, v3, Lee0;->j:I

    iget v3, v3, Lee0;->i:I

    invoke-static {v4, v3}, Leb9;->j(II)Z

    move-result v3

    if-nez v3, :cond_b

    iget v2, v7, Lee0;->j:I

    iget v1, v7, Lee0;->i:I

    :cond_b
    move v7, v1

    move v6, v2

    iget-object v0, v0, Lh37;->D:Lh37;

    iget-object v4, v0, Lh37;->z:Lo29;

    iget-object v5, v0, Lee0;->d:Ljg6;

    move-object v8, v0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    invoke-virtual/range {v0 .. v8}, Lh37;->I(Ljava/lang/Object;Lwk8;Lj37;Lo29;Ljg6;IILee0;)Lc37;

    move-result-object v0

    iput-object v13, v3, Lt03;->c:Lc37;

    iput-object v0, v3, Lt03;->d:Lc37;

    return-object v3
.end method

.method public final J()Lh37;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh37<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lee0;->e()Lee0;

    move-result-object p0

    check-cast p0, Lh37;

    iget-object v0, p0, Lh37;->z:Lo29;

    invoke-virtual {v0}, Lo29;->e()Lo29;

    move-result-object v0

    iput-object v0, p0, Lh37;->z:Lo29;

    iget-object v0, p0, Lh37;->B:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lh37;->B:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lh37;->B:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lh37;->C:Lh37;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lh37;->J()Lh37;

    move-result-object v0

    iput-object v0, p0, Lh37;->C:Lh37;

    :cond_1
    iget-object v0, p0, Lh37;->D:Lh37;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lh37;->J()Lh37;

    move-result-object v0

    iput-object v0, p0, Lh37;->D:Lh37;

    :cond_2
    return-object p0
.end method

.method public final K(Lwk8;Lee0;)V
    .locals 10

    invoke-static {p1}, Lr96;->b(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lh37;->F:Z

    if-eqz v0, :cond_5

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v5, p0, Lh37;->z:Lo29;

    iget-object v6, p2, Lee0;->d:Ljg6;

    iget v7, p2, Lee0;->j:I

    iget v8, p2, Lee0;->i:I

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v9, p2

    invoke-virtual/range {v1 .. v9}, Lh37;->I(Ljava/lang/Object;Lwk8;Lj37;Lo29;Ljg6;IILee0;)Lc37;

    move-result-object p0

    invoke-interface {v3}, Lwk8;->getRequest()Lc37;

    move-result-object p1

    invoke-interface {p0, p1}, Lc37;->d(Lc37;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-boolean p2, v9, Lee0;->h:Z

    if-nez p2, :cond_0

    invoke-interface {p1}, Lc37;->isComplete()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Argument must not be null"

    invoke-static {p1, p0}, Lr96;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lc37;->isRunning()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1}, Lc37;->i()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object p1, v1, Lh37;->w:Lp37;

    invoke-virtual {p1, v3}, Lp37;->c(Lwk8;)V

    invoke-interface {v3, p0}, Lwk8;->setRequest(Lc37;)V

    iget-object p1, v1, Lh37;->w:Lp37;

    monitor-enter p1

    :try_start_0
    iget-object p2, p1, Lp37;->g:Lyk8;

    iget-object p2, p2, Lyk8;->b:Ljava/util/Set;

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p2, p1, Lp37;->e:Lt37;

    const-string v0, "RequestTracker"

    iget-object v1, p2, Lt37;->a:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p2, Lt37;->c:Z

    if-nez v1, :cond_3

    invoke-interface {p0}, Lc37;->i()V

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Lc37;->clear()V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Paused, delaying request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p2, p2, Lt37;->b:Ljava/util/HashSet;

    invoke-virtual {p2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    const-string p0, "You must call #load() before calling #into()"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final L(Landroid/widget/ImageView;)V
    .locals 4

    invoke-static {}, Leb9;->a()V

    invoke-static {p1}, Lr96;->b(Ljava/lang/Object;)V

    const/16 v0, 0x800

    iget v1, p0, Lee0;->b:I

    invoke-static {v1, v0}, Lee0;->k(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lee0;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lh37$a;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lh37;->J()Lh37;

    move-result-object v0

    sget-object v2, Luq2;->b:Luq2$c;

    new-instance v3, Lt81;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2, v3, v1}, Lee0;->u(Luq2;Llj0;Z)Lee0;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lh37;->J()Lh37;

    move-result-object v0

    sget-object v2, Luq2;->a:Luq2$e;

    new-instance v3, Ldc3;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2, v3, v1}, Lee0;->u(Luq2;Llj0;Z)Lee0;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lh37;->J()Lh37;

    move-result-object v0

    sget-object v2, Luq2;->b:Luq2$c;

    new-instance v3, Lt81;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2, v3, v1}, Lee0;->u(Luq2;Llj0;Z)Lee0;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lh37;->J()Lh37;

    move-result-object v0

    sget-object v1, Luq2;->c:Luq2$d;

    new-instance v2, Ls81;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1, v2}, Lee0;->l(Luq2;Llj0;)Lee0;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, p0

    :goto_1
    iget-object v1, p0, Lh37;->y:Lwq3;

    iget-object v1, v1, Lwq3;->c:Lm24;

    const-class v1, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lh37;->x:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lgj0;

    invoke-direct {v1, p1}, Lqe9;-><init>(Landroid/widget/ImageView;)V

    goto :goto_2

    :cond_1
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lhs2;

    invoke-direct {v1, p1}, Lqe9;-><init>(Landroid/widget/ImageView;)V

    :goto_2
    invoke-virtual {p0, v1, v0}, Lh37;->K(Lwk8;Lee0;)V

    return-void

    :cond_2
    const-string p0, "Unhandled class: "

    const-string p1, ", try .as*(Class).transcode(ResourceTranscoder)"

    invoke-static {v2, p0, p1}, Lyq;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final M(Lo37;)Lh37;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo37<",
            "TTranscodeType;>;)",
            "Lh37<",
            "TTranscodeType;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lee0;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh37;->J()Lh37;

    move-result-object p0

    invoke-virtual {p0, p1}, Lh37;->M(Lo37;)Lh37;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lh37;->B:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lh37;->F(Lo37;)Lh37;

    move-result-object p0

    return-object p0
.end method

.method public final N(Ljava/lang/Object;)Lh37;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lh37<",
            "TTranscodeType;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lee0;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh37;->J()Lh37;

    move-result-object p0

    invoke-virtual {p0, p1}, Lh37;->N(Ljava/lang/Object;)Lh37;

    move-result-object p0

    return-object p0

    :cond_0
    iput-object p1, p0, Lh37;->A:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lh37;->F:Z

    invoke-virtual {p0}, Lee0;->v()V

    return-object p0
.end method

.method public final O()V
    .locals 2

    new-instance v0, Lmf6;

    iget-object v1, p0, Lh37;->w:Lp37;

    invoke-direct {v0, v1}, Lmf6;-><init>(Lp37;)V

    invoke-virtual {p0, v0, p0}, Lh37;->K(Lwk8;Lee0;)V

    return-void
.end method

.method public final P(Lqs2;)Lh37;
    .locals 1

    iget-boolean v0, p0, Lee0;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh37;->J()Lh37;

    move-result-object p0

    invoke-virtual {p0, p1}, Lh37;->P(Lqs2;)Lh37;

    move-result-object p0

    return-object p0

    :cond_0
    iput-object p1, p0, Lh37;->z:Lo29;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lh37;->E:Z

    invoke-virtual {p0}, Lee0;->v()V

    return-object p0
.end method

.method public final bridge synthetic b(Lee0;)Lee0;
    .locals 0

    invoke-virtual {p0, p1}, Lh37;->G(Lee0;)Lh37;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lh37;->J()Lh37;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic e()Lee0;
    .locals 0

    invoke-virtual {p0}, Lh37;->J()Lh37;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lh37;

    if-eqz v0, :cond_0

    check-cast p1, Lh37;

    invoke-super {p0, p1}, Lee0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh37;->x:Ljava/lang/Class;

    iget-object v1, p1, Lh37;->x:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh37;->z:Lo29;

    iget-object v1, p1, Lh37;->z:Lo29;

    invoke-virtual {v0, v1}, Lo29;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh37;->A:Ljava/lang/Object;

    iget-object v1, p1, Lh37;->A:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh37;->B:Ljava/util/ArrayList;

    iget-object v1, p1, Lh37;->B:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh37;->C:Lh37;

    iget-object v1, p1, Lh37;->C:Lh37;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh37;->D:Lh37;

    iget-object v1, p1, Lh37;->D:Lh37;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lh37;->E:Z

    iget-boolean v1, p1, Lh37;->E:Z

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lh37;->F:Z

    iget-boolean p1, p1, Lh37;->F:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    invoke-super {p0}, Lee0;->hashCode()I

    move-result v0

    iget-object v1, p0, Lh37;->x:Ljava/lang/Class;

    invoke-static {v0, v1}, Leb9;->i(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lh37;->z:Lo29;

    invoke-static {v0, v1}, Leb9;->i(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lh37;->A:Ljava/lang/Object;

    invoke-static {v0, v1}, Leb9;->i(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lh37;->B:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Leb9;->i(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lh37;->C:Lh37;

    invoke-static {v0, v1}, Leb9;->i(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lh37;->D:Lh37;

    invoke-static {v0, v1}, Leb9;->i(ILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leb9;->i(ILjava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lh37;->E:Z

    invoke-static {v1, v0}, Leb9;->h(II)I

    move-result v0

    iget-boolean p0, p0, Lh37;->F:Z

    invoke-static {p0, v0}, Leb9;->h(II)I

    move-result p0

    return p0
.end method
