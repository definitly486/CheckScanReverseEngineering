.class public final Lra6$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lra6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lta6;)V
    .locals 10

    iget-object v0, p1, Lnb6;->v:Lic6;

    instance-of v1, v0, Lmc6;

    if-eqz v1, :cond_0

    new-instance v0, Lly1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lnb6;->v:Lic6;

    invoke-static {p0, p1}, Lza6;->b(Landroid/content/Context;Lta6;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-nez v2, :cond_2

    :cond_1
    move-object v2, v1

    :cond_2
    if-eqz v0, :cond_4

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, v3

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    invoke-static {v0}, Lza6;->f(Landroid/content/pm/PackageInfo;)J

    move-result-wide v3

    goto :goto_1

    :cond_5
    const-wide/16 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x0

    if-lez v0, :cond_6

    const-string v0, "android."

    invoke-static {v2, v0, v5}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lnb6;->q:Lub6;

    iget-object v0, v0, Lub6;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p1, Lnb6;->x:Lob6;

    if-nez v0, :cond_7

    new-instance v0, Lua6;

    invoke-direct {v0, p0, p1}, Lua6;-><init>(Landroid/content/Context;Lta6;)V

    :cond_7
    iput-object v0, p1, Lnb6;->x:Lob6;

    const-string v0, "app_posthog-disk-queue"

    invoke-virtual {p0, v0, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "posthog-disk-queue"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "posthog-disk-replay-queue"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "posthog-disk-logs-queue"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v8, p1, Lnb6;->A:Ljava/lang/String;

    if-nez v8, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    :cond_8
    iput-object v8, p1, Lnb6;->A:Ljava/lang/String;

    iget-object v0, p1, Lnb6;->B:Ljava/lang/String;

    if-nez v0, :cond_9

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_9
    iput-object v0, p1, Lnb6;->B:Ljava/lang/String;

    iget-object v0, p1, Lnb6;->C:Ljava/lang/String;

    if-nez v0, :cond_a

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_a
    iput-object v0, p1, Lnb6;->C:Ljava/lang/String;

    iget-object v0, p1, Lnb6;->D:Ljava/lang/String;

    if-nez v0, :cond_b

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_b
    iput-object v0, p1, Lnb6;->D:Ljava/lang/String;

    iget-object v0, p1, Lnb6;->E:Loc6;

    if-nez v0, :cond_c

    new-instance v0, Lzd6;

    invoke-direct {v0, p0, p1}, Lzd6;-><init>(Landroid/content/Context;Lta6;)V

    :cond_c
    iput-object v0, p1, Lnb6;->E:Loc6;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x21

    const/4 v6, 0x0

    if-lt v0, v5, :cond_e

    iget-object v0, p1, Lnb6;->I:Lqb6;

    instance-of v5, v0, Lsb6;

    if-eqz v5, :cond_d

    new-instance v0, Lwa6;

    invoke-direct {v0, v6}, Lwa6;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lnb6;->I:Lqb6;

    sput-object v0, Lgu8;->e:Lqb6;

    sget-object v5, Lyd6;->a:Ljava/lang/Object;

    sput-object v0, Lyd6;->d:Lqb6;

    goto :goto_2

    :cond_d
    sget-object v5, Lgu8;->b:[B

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v0, Lgu8;->e:Lqb6;

    sget-object v0, Lyd6;->a:Ljava/lang/Object;

    iget-object v0, p1, Lnb6;->I:Lqb6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v0, Lyd6;->d:Lqb6;

    :cond_e
    :goto_2
    iget-object v0, p1, Lnb6;->F:Llc6;

    if-nez v0, :cond_f

    new-instance v0, Lya6;

    invoke-direct {v0, p0}, Lya6;-><init>(Landroid/content/Context;)V

    :cond_f
    iput-object v0, p1, Lnb6;->F:Llc6;

    iget-object v0, p1, Lnb6;->y:Ljava/lang/String;

    const-string v5, "posthog-flutter"

    invoke-static {v0, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v5, "posthog-react-native"

    if-nez v0, :cond_10

    iget-object v0, p1, Lnb6;->y:Ljava/lang/String;

    invoke-static {v0, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p1, Lnb6;->y:Ljava/lang/String;

    const-string v7, "posthog-kmp"

    invoke-static {v0, v7}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "posthog-android"

    iput-object v0, p1, Lnb6;->y:Ljava/lang/String;

    const-string v0, "3.56.0"

    iput-object v0, p1, Lnb6;->z:Ljava/lang/String;

    :cond_10
    sget-object v0, Lyd6;->a:Ljava/lang/Object;

    iget-object v0, p1, Lnb6;->y:Ljava/lang/String;

    invoke-static {v0, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lyd6;->g:Z

    const/4 v0, 0x1

    sput-boolean v0, Lyd6;->h:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    const-string v3, "posthog-meta.properties"

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-static {v1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, v1

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v3

    :try_start_4
    invoke-static {v2, v1}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    iget-object v2, p1, Lnb6;->v:Lic6;

    const-string v3, "Failed reading the meta properties: "

    const/16 v4, 0x2e

    invoke-static {v3, v1, v4, v2}, Lsg;->f(Ljava/lang/String;Ljava/lang/Throwable;CLic6;)V

    :catch_0
    :goto_4
    iget-object v1, p1, Lnb6;->r:Ljava/lang/String;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_15

    :cond_11
    move-object v1, v6

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_15

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_6

    :cond_12
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Properties;

    const-string v2, "io.posthog.proguard.mapid"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_14

    goto :goto_5

    :cond_14
    iget-object v0, p1, Lnb6;->v:Lic6;

    const-string v2, "releaseIdentifier found: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lic6;->a(Ljava/lang/String;)V

    iput-object v1, p1, Lnb6;->r:Ljava/lang/String;

    goto :goto_7

    :cond_15
    :goto_6
    iget-object v1, p1, Lnb6;->v:Lic6;

    const-string v2, "releaseIdentifier not found, using fallback: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lic6;->a(Ljava/lang/String;)V

    iput-object v0, p1, Lnb6;->r:Ljava/lang/String;

    :cond_16
    :goto_7
    new-instance v0, Laz0;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Laz0;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Laz4;

    invoke-direct {v0}, Laz4;-><init>()V

    new-instance v1, Lod6;

    invoke-direct {v1, p0, p1, v0}, Lod6;-><init>(Landroid/content/Context;Lta6;Laz4;)V

    invoke-virtual {p1, v1}, Lnb6;->a(Lac6;)V

    new-instance v1, Lge6;

    invoke-direct {v1, p1}, Lge6;-><init>(Lta6;)V

    invoke-virtual {p1, v1}, Lnb6;->a(Lac6;)V

    new-instance v1, Lfc6;

    invoke-direct {v1, p1}, Lfc6;-><init>(Lta6;)V

    invoke-virtual {p1, v1}, Lnb6;->a(Lac6;)V

    new-instance v1, Ldc6;

    invoke-direct {v1, p0, p1, v0}, Ldc6;-><init>(Landroid/content/Context;Lta6;Laz4;)V

    invoke-virtual {p1, v1}, Lnb6;->a(Lac6;)V

    return-void
.end method
