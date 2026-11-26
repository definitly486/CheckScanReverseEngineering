.class public final Lcom/bumptech/glide/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field public static volatile i:Lcom/bumptech/glide/a;

.field public static volatile j:Z


# instance fields
.field public final b:Lij0;

.field public final c:Liy4;

.field public final d:Lwq3;

.field public final e:Lpr;

.field public final f:Lq37;

.field public final g:Lbx1;

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkz2;Liy4;Lij0;Lpr;Lq37;Lbx1;Lrq3;Landroidx/collection/ArrayMap;Ljava/util/List;Ljava/util/ArrayList;Lkp;Lyq3;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/a;->h:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/bumptech/glide/a;->b:Lij0;

    iput-object p5, p0, Lcom/bumptech/glide/a;->e:Lpr;

    iput-object p3, p0, Lcom/bumptech/glide/a;->c:Liy4;

    iput-object p6, p0, Lcom/bumptech/glide/a;->f:Lq37;

    iput-object p7, p0, Lcom/bumptech/glide/a;->g:Lbx1;

    new-instance p4, Lq17;

    invoke-direct {p4, p0, p11, p12}, Lq17;-><init>(Lcom/bumptech/glide/a;Ljava/util/ArrayList;Lkp;)V

    move-object p3, p5

    new-instance p5, Lm24;

    const/4 p6, 0x0

    invoke-direct {p5, p6}, Lm24;-><init>(I)V

    move-object p7, p9

    move-object p9, p2

    move-object p2, p1

    new-instance p1, Lwq3;

    move-object p6, p8

    move-object p8, p10

    move-object p10, p13

    invoke-direct/range {p1 .. p10}, Lwq3;-><init>(Landroid/content/Context;Lpr;Lq17;Lm24;Lrq3;Landroidx/collection/ArrayMap;Ljava/util/List;Lkz2;Lyq3;)V

    iput-object p1, p0, Lcom/bumptech/glide/a;->d:Lwq3;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bumptech/glide/a;
    .locals 5

    sget-object v0, Lcom/bumptech/glide/a;->i:Lcom/bumptech/glide/a;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Glide"

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/content/Context;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    :goto_0
    const-string v0, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-static {v0, p0}, Lh2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :goto_1
    const-string v0, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-static {v0, p0}, Lh2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :goto_2
    const-string v0, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-static {v0, p0}, Lh2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :goto_3
    const-string v0, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-static {v0, p0}, Lh2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :catch_4
    const/4 v0, 0x5

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_4
    const-class v0, Lcom/bumptech/glide/a;

    monitor-enter v0

    :try_start_1
    sget-object v1, Lcom/bumptech/glide/a;->i:Lcom/bumptech/glide/a;

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/bumptech/glide/a;->j:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Lcom/bumptech/glide/a;->j:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0, v2}, Lcom/bumptech/glide/a;->c(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sput-boolean v1, Lcom/bumptech/glide/a;->j:Z

    goto :goto_5

    :catchall_0
    move-exception p0

    sput-boolean v1, Lcom/bumptech/glide/a;->j:Z

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Glide has been called recursively, this is probably an internal library error!"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_5
    monitor-exit v0

    goto :goto_6

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_3
    :goto_6
    sget-object p0, Lcom/bumptech/glide/a;->i:Lcom/bumptech/glide/a;

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Lq37;
    .locals 1

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {p0, v0}, Lr96;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/bumptech/glide/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/a;

    move-result-object p0

    iget-object p0, p0, Lcom/bumptech/glide/a;->f:Lq37;

    return-object p0
.end method

.method public static c(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 30

    new-instance v9, Landroidx/collection/ArrayMap;

    invoke-direct {v9}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v1, Lyq3$a;

    invoke-direct {v1}, Lyq3$a;-><init>()V

    new-instance v8, Lrq3;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const-string v0, "Got app info metadata: "

    const-string v3, "ManifestParser"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Loading Glide modules"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x2

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x80

    invoke-virtual {v6, v7, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_0
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v10, "GlideModule"

    iget-object v12, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v12, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v7}, Lsz4;->a(Ljava/lang/String;)Lzq3;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Loaded Glide module: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Finished loading Glide modules"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    :goto_2
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Got null app info metadata"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    const/4 v6, 0x6

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "Failed to parse glide modules"

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_4
    const-string v0, "Glide"

    if-eqz p1, :cond_9

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lzq3;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_8

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "AppGlideModule excludes manifest GlideModule: "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_9
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzq3;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Discovered GlideModule from manifest: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_a
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzq3;

    invoke-interface {v3}, Lzq3;->b()V

    goto :goto_7

    :cond_b
    new-instance v0, Lxq3$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget v3, Lxq3;->c:I

    const/4 v4, 0x4

    if-nez v3, :cond_c

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Lxq3;->c:I

    :cond_c
    sget v13, Lxq3;->c:I

    const-string v3, "source"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12

    new-instance v12, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v18, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v18 .. v18}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v6, Lxq3$b;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v3, v7}, Lxq3$b;-><init>(Lxq3$a;Ljava/lang/String;Z)V

    const-wide/16 v15, 0x0

    sget-object v17, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move v14, v13

    move-object/from16 v19, v6

    invoke-direct/range {v12 .. v19}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v0, Lxq3;

    invoke-direct {v0, v12}, Lxq3;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    new-instance v3, Lxq3$a;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const-string v6, "disk-cache"

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_11

    new-instance v12, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v18, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v18 .. v18}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v10, Lxq3$b;

    const/4 v13, 0x1

    invoke-direct {v10, v3, v6, v13}, Lxq3$b;-><init>(Lxq3$a;Ljava/lang/String;Z)V

    const-wide/16 v15, 0x0

    sget-object v17, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move v14, v13

    move-object/from16 v19, v10

    invoke-direct/range {v12 .. v19}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v3, Lxq3;

    invoke-direct {v3, v12}, Lxq3;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    sget v6, Lxq3;->c:I

    if-nez v6, :cond_d

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    sput v6, Lxq3;->c:I

    :cond_d
    sget v6, Lxq3;->c:I

    const/4 v10, 0x1

    if-lt v6, v4, :cond_e

    move v13, v5

    goto :goto_8

    :cond_e
    move v13, v10

    :goto_8
    new-instance v4, Lxq3$a;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const-string v5, "animation"

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    new-instance v12, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v18, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v18 .. v18}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v6, Lxq3$b;

    invoke-direct {v6, v4, v5, v10}, Lxq3$b;-><init>(Lxq3$a;Ljava/lang/String;Z)V

    const-wide/16 v15, 0x0

    sget-object v17, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move v14, v13

    move-object/from16 v19, v6

    invoke-direct/range {v12 .. v19}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v4, Lxq3;

    invoke-direct {v4, v12}, Lxq3;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    new-instance v5, Lq95$a;

    invoke-direct {v5, v2}, Lq95$a;-><init>(Landroid/content/Context;)V

    new-instance v6, Lq95;

    invoke-direct {v6, v5}, Lq95;-><init>(Lq95$a;)V

    new-instance v5, Lih2;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iget v10, v6, Lq95;->a:I

    if-lez v10, :cond_f

    new-instance v12, Lfy4;

    int-to-long v13, v10

    invoke-direct {v12, v13, v14}, Lfy4;-><init>(J)V

    :goto_9
    move-object v10, v5

    goto :goto_a

    :cond_f
    new-instance v12, Ljj0;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    goto :goto_9

    :goto_a
    new-instance v5, Ley4;

    iget v13, v6, Lq95;->c:I

    invoke-direct {v5, v13}, Ley4;-><init>(I)V

    new-instance v14, Liy4;

    iget v6, v6, Lq95;->b:I

    move-object/from16 v20, v8

    int-to-long v7, v6

    invoke-direct {v14, v7, v8}, Lgy4;-><init>(J)V

    new-instance v15, Lg94;

    new-instance v6, Lik0;

    invoke-direct {v6, v2}, Lik0;-><init>(Ljava/lang/Object;)V

    invoke-direct {v15, v6}, Lbo2;-><init>(Lik0;)V

    new-instance v13, Lkz2;

    new-instance v6, Lxq3;

    new-instance v21, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v27, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct/range {v27 .. v27}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Lxq3$b;

    new-instance v8, Lxq3$a;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    move-object/from16 v17, v0

    const-string v0, "source-unlimited"

    move-object/from16 v29, v2

    const/4 v2, 0x0

    invoke-direct {v7, v8, v0, v2}, Lxq3$b;-><init>(Lxq3$a;Ljava/lang/String;Z)V

    const/16 v22, 0x0

    const v23, 0x7fffffff

    const-wide/16 v24, 0x2710

    sget-object v26, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v28, v7

    invoke-direct/range {v21 .. v28}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Lxq3;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    move-object/from16 v16, v3

    move-object/from16 v19, v4

    move-object/from16 v18, v6

    invoke-direct/range {v13 .. v19}, Lkz2;-><init>(Liy4;Lrn2$a;Lxq3;Lxq3;Lxq3;Lxq3;)V

    move-object v7, v10

    move-object v2, v13

    sget-object v10, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    new-instance v13, Lyq3;

    invoke-direct {v13, v1}, Lyq3;-><init>(Lyq3$a;)V

    new-instance v6, Lq37;

    invoke-direct {v6}, Lq37;-><init>()V

    new-instance v0, Lcom/bumptech/glide/a;

    move-object v4, v12

    move-object v3, v14

    move-object/from16 v8, v20

    move-object/from16 v1, v29

    move-object/from16 v12, p1

    invoke-direct/range {v0 .. v13}, Lcom/bumptech/glide/a;-><init>(Landroid/content/Context;Lkz2;Liy4;Lij0;Lpr;Lq37;Lbx1;Lrq3;Landroidx/collection/ArrayMap;Ljava/util/List;Ljava/util/ArrayList;Lkp;Lyq3;)V

    invoke-virtual {v1, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sput-object v0, Lcom/bumptech/glide/a;->i:Lcom/bumptech/glide/a;

    return-void

    :cond_10
    const-string v0, "Name must be non-null and non-empty, but given: animation"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_11
    const-string v0, "Name must be non-null and non-empty, but given: disk-cache"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_12
    const-string v0, "Name must be non-null and non-empty, but given: source"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Landroid/content/Context;)Lp37;
    .locals 1

    invoke-static {p0}, Lcom/bumptech/glide/a;->b(Landroid/content/Context;)Lq37;

    move-result-object v0

    invoke-virtual {v0, p0}, Lq37;->c(Landroid/content/Context;)Lp37;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/View;)Lp37;
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/a;->b(Landroid/content/Context;)Lq37;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lq37;->c(Landroid/content/Context;)Lp37;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Unable to obtain a request manager for a view without a Context"

    invoke-static {v1, v2}, Lr96;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lq37;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lq37;->c(Landroid/content/Context;)Lp37;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v2, v1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v2, :cond_6

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    iget-object v2, v0, Lq37;->c:Landroidx/collection/ArrayMap;

    invoke-virtual {v2}, Landroidx/collection/SimpleArrayMap;->clear()V

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3, v2}, Lq37;->b(Ljava/util/List;Landroidx/collection/ArrayMap;)V

    const v3, 0x1020002

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v2, p0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {v2}, Landroidx/collection/SimpleArrayMap;->clear()V

    if-eqz v4, :cond_5

    invoke-virtual {v0, v4}, Lq37;->d(Landroidx/fragment/app/Fragment;)Lp37;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {v0, v1}, Lq37;->e(Landroidx/fragment/app/FragmentActivity;)Lp37;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lq37;->c(Landroid/content/Context;)Lp37;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 3

    invoke-static {}, Leb9;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/a;->c:Liy4;

    check-cast v0, Lgy4;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lgy4;->e(J)V

    iget-object v0, p0, Lcom/bumptech/glide/a;->b:Lij0;

    invoke-interface {v0}, Lij0;->b()V

    iget-object p0, p0, Lcom/bumptech/glide/a;->e:Lpr;

    invoke-interface {p0}, Lpr;->b()V

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 6

    invoke-static {}, Leb9;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/a;->h:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp37;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/bumptech/glide/a;->c:Liy4;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x28

    if-lt p1, v0, :cond_1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lgy4;->e(J)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x14

    if-ge p1, v0, :cond_2

    const/16 v0, 0xf

    if-ne p1, v0, :cond_3

    :cond_2
    monitor-enter v1

    :try_start_1
    iget-wide v2, v1, Lgy4;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lgy4;->e(J)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/bumptech/glide/a;->b:Lij0;

    invoke-interface {v0, p1}, Lij0;->a(I)V

    iget-object p0, p0, Lcom/bumptech/glide/a;->e:Lpr;

    invoke-interface {p0, p1}, Lpr;->a(I)V

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
