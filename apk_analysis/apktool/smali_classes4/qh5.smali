.class public final synthetic Lqh5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lqh5;->b:I

    iput-object p2, p0, Lqh5;->c:Ljava/lang/Object;

    iput-object p3, p0, Lqh5;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lqh5;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lqh5;->c:Ljava/lang/Object;

    check-cast v0, Lyads/o25;

    iget-object p0, p0, Lqh5;->d:Ljava/lang/Object;

    check-cast p0, Lyads/j5;

    invoke-static {v0, p0}, Lyads/o25;->a(Lyads/o25;Lyads/j5;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lqh5;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;

    iget-object p0, p0, Lqh5;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    invoke-static {v0, p0}, Landroidx/camera/core/SurfaceRequest;->b(Landroidx/camera/core/SurfaceRequest$TransformationInfoListener;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lqh5;->c:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lkt9;

    iget-object p0, p0, Lqh5;->d:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    const-string v0, "com_my_target_sdk.db"

    iget-object v1, v6, Lkt9;->a:Landroid/content/Context;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v8, v9}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "MyTargetDatabase error: can\'t open database"

    invoke-static {v9, v0}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Le;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    move-object v1, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    if-eq v3, v7, :cond_1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->close()V

    invoke-virtual {v1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    invoke-static {v1}, Ldv9;->b(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    :cond_1
    new-instance v0, Ldv9;

    invoke-direct {v0, v2}, Ldv9;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyTargetDatabase error: exception occurred while initialization database, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Le;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :goto_2
    invoke-interface {v1}, Lft9;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_1
    new-instance v2, Lgq9;

    invoke-direct {v2, v0}, Lgq9;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CookieStore error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v2, v9

    :goto_3
    if-nez v2, :cond_3

    new-instance v2, Ljo9;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    :cond_3
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0, v2, v9}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    new-instance v5, Lln9;

    invoke-direct {v5, v0}, Lln9;-><init>(Ljava/net/CookieManager;)V

    invoke-interface {v1}, Lft9;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_2
    new-instance v1, Lcom/my/target/p2;

    invoke-direct {v1, v0}, Lcom/my/target/p2;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    new-instance v2, Lcom/my/target/u2;

    invoke-direct {v2, v0}, Lcom/my/target/u2;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-object v2, v9

    goto :goto_4

    :catch_1
    :cond_4
    move-object v1, v9

    move-object v2, v1

    :goto_4
    if-nez v1, :cond_5

    new-instance v1, Lcom/my/target/i2;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    :cond_5
    move-object v3, v1

    if-nez v2, :cond_6

    new-instance v2, Lcom/my/target/q2;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    :cond_6
    move-object v0, v2

    new-instance v4, Lcom/my/target/d1;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lw4a;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/my/target/z2;

    invoke-direct/range {v1 .. v6}, Lcom/my/target/z2;-><init>(Ljava/util/concurrent/Executor;Lcom/my/target/b2;Lcom/my/target/d1;Lln9;Lkt9;)V

    sput-object v0, Lcom/my/target/a3;->a:Lcom/my/target/j2;

    sget-object v0, Lcom/my/target/a3;->a:Lcom/my/target/j2;

    if-nez v0, :cond_7

    goto :goto_6

    :cond_7
    invoke-interface {v0}, Lcom/my/target/j2;->getAll()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/my/target/a3;->a(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    sget-object v2, Lcom/my/target/a3;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    :goto_6
    new-instance v0, Ldy2;

    invoke-direct {v0, v1, v7}, Ldy2;-><init>(Ljava/lang/Object;I)V

    iget-object v2, v1, Lcom/my/target/z2;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-class v2, Lcom/my/target/m1;

    monitor-enter v2

    :try_start_4
    sget-object v0, Lcom/my/target/m1;->a:Lcom/my/target/m1$a;

    if-nez v0, :cond_9

    new-instance v0, Lcom/my/target/m1$a;

    invoke-direct {v0, v1}, Lcom/my/target/m1$a;-><init>(Lcom/my/target/z2;)V

    sput-object v0, Lcom/my/target/m1;->a:Lcom/my/target/m1$a;

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1c

    :cond_9
    :goto_7
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    sput-object v6, Lcom/my/target/e2;->g:Lkt9;

    sput-object v5, Lcom/my/target/e2;->h:Lln9;

    sget-boolean v0, Lho9$a;->a:Z

    if-eqz v0, :cond_a

    sget v0, Lmu9;->a:I

    or-int/2addr v0, v7

    sput v0, Lmu9;->a:I

    :cond_a
    const/4 v1, 0x1

    :try_start_5
    const-string v0, "com.unity3d.player.UnityPlayerActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sget v0, Lmu9;->a:I

    or-int/2addr v0, v1

    sput v0, Lmu9;->a:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_8

    :catchall_3
    :try_start_6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v2, "unity"

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->loadLibrary(Ljava/lang/String;)V

    sget v0, Lmu9;->a:I

    or-int/2addr v0, v1

    sput v0, Lmu9;->a:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    :goto_8
    sget-boolean v0, Ly14;->l:Z

    if-eqz v0, :cond_b

    goto/16 :goto_14

    :cond_b
    const-string v2, "CertManager: exception: "

    :try_start_7
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_7
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_2

    move-object v3, v0

    goto :goto_9

    :catch_2
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ly14;->p(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Ly14;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v9

    :goto_9
    if-nez v3, :cond_c

    const-string v0, "CertManager: Error make certData \u2013 certificateFactory is null"

    invoke-static {v9, v0}, Ly14;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    move-object v2, v9

    goto/16 :goto_13

    :cond_c
    :try_start_8
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, v9, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object v4, v0

    goto :goto_b

    :catchall_5
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ly14;->p(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Ly14;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v9

    :goto_b
    if-nez v4, :cond_d

    const-string v0, "CertManager: Error make certData \u2013 keyStore is null"

    invoke-static {v9, v0}, Ly14;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_d
    sget-object v0, Ly14;->e:[B

    const-string v5, "russian_trusted_root_ca"

    invoke-static {v4, v3, v5, v0}, Loy9;->a(Ljava/security/KeyStore;Ljava/security/cert/CertificateFactory;Ljava/lang/String;[B)V

    sget-object v0, Ly14;->f:[B

    const-string v5, "russian_trusted_root_ca_gost_2025"

    invoke-static {v4, v3, v5, v0}, Loy9;->a(Ljava/security/KeyStore;Ljava/security/cert/CertificateFactory;Ljava/lang/String;[B)V

    sget-object v0, Ly14;->g:[B

    const-string v5, "russian_trusted_sub_ca"

    invoke-static {v4, v3, v5, v0}, Loy9;->a(Ljava/security/KeyStore;Ljava/security/cert/CertificateFactory;Ljava/lang/String;[B)V

    sget-object v0, Ly14;->h:[B

    const-string v5, "russian_trusted_sub_ca_2024"

    invoke-static {v4, v3, v5, v0}, Loy9;->a(Ljava/security/KeyStore;Ljava/security/cert/CertificateFactory;Ljava/lang/String;[B)V

    sget-object v0, Ly14;->i:[B

    const-string v5, "russian_trusted_sub_ca_gost_2025"

    invoke-static {v4, v3, v5, v0}, Loy9;->a(Ljava/security/KeyStore;Ljava/security/cert/CertificateFactory;Ljava/lang/String;[B)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_9
    const-string v0, "AndroidCAStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v5, v9, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v5}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v7

    :cond_e
    :goto_c
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    if-eqz v0, :cond_f

    :try_start_a
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_e

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_c

    :catchall_6
    move-exception v0

    :try_start_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ly14;->p(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Ly14;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_c

    :catchall_7
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ly14;->p(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Ly14;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v8

    :goto_d
    if-ge v0, v5, :cond_10

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v10, v0, 0x1

    check-cast v7, Ljava/security/cert/X509Certificate;

    :try_start_c
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v7}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_c
    .catch Ljava/security/KeyStoreException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_e

    :catch_3
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ly14;->p(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Ly14;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    move v0, v10

    goto :goto_d

    :cond_10
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    :try_start_d
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    move-object v3, v0

    goto :goto_f

    :catchall_8
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ly14;->p(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Ly14;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v9

    :goto_f
    if-nez v3, :cond_11

    const-string v0, "CertManager: Error make certData \u2013 trustManagerFactory is null"

    invoke-static {v9, v0}, Ly14;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_11
    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    array-length v4, v0

    :goto_10
    if-ge v8, v4, :cond_13

    aget-object v5, v0, v8

    instance-of v7, v5, Ljavax/net/ssl/X509TrustManager;

    if-eqz v7, :cond_12

    check-cast v5, Ljavax/net/ssl/X509TrustManager;

    goto :goto_11

    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    :cond_13
    move-object v5, v9

    :goto_11
    if-nez v5, :cond_14

    const-string v0, "CertManager: Error make certData \u2013 x509TrustManager is null"

    invoke-static {v9, v0}, Ly14;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_14
    :try_start_e
    invoke-static {}, Loy9;->b()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v9, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    goto :goto_12

    :catchall_9
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ly14;->p(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Ly14;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v9

    :goto_12
    if-nez v0, :cond_15

    const-string v0, "CertManager: Error make certData \u2013 sslContext is null"

    invoke-static {v9, v0}, Ly14;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_15
    new-instance v2, Lpw9;

    invoke-direct {v2, v0, v3}, Lpw9;-><init>(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/TrustManagerFactory;)V

    :goto_13
    sput-object v2, Ly14;->k:Lpw9;

    if-nez v2, :cond_16

    const-string v0, "DigitalGovCertsUtils: can\'t init digital gov certs \u2013 certData is null"

    invoke-static {v9, v0}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    sput-boolean v1, Ly14;->l:Z

    :goto_14
    invoke-static {v6}, Lzfa;->a(Lkt9;)V

    sget-object v0, Lat9;->l:Lat9;

    sget-object v2, Lrh5;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lw4a;->b()Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v0, "FingerprintDataProvider: You must not call collectData method from main thread"

    invoke-static {v9, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_17
    iget-object v2, v0, Lat9;->a:Lh0a;

    invoke-virtual {v2, p0}, Lh0a;->U(Landroid/content/Context;)Ljava/util/Map;

    iget-object v2, v0, Lat9;->b:Lzu9;

    invoke-virtual {v2, p0}, Lzu9;->V(Landroid/content/Context;)Ljava/util/Map;

    iget-object v2, v0, Lat9;->d:Llz9;

    invoke-virtual {v2, p0}, Llz9;->U(Landroid/content/Context;)Ljava/util/Map;

    iget-object v0, v0, Lat9;->f:Leha;

    invoke-virtual {v0, p0}, Leha;->U(Landroid/content/Context;)Ljava/util/Map;

    :goto_15
    sget-boolean v0, Ly14;->n:Z

    if-eqz v0, :cond_18

    goto :goto_18

    :cond_18
    :try_start_f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.my.target.myTrackerSdkKey"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-static {v0, p0}, Lcom/my/tracker/MyTracker;->initTracker(Ljava/lang/String;Landroid/app/Application;)V

    goto :goto_17

    :catchall_a
    move-exception v0

    move-object p0, v0

    goto :goto_16

    :cond_19
    const-string p0, "MyTrackerUtils: myTracker SDK key is not provided"

    invoke-static {v9, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    goto :goto_17

    :goto_16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "MyTrackerUtils: Unable to initialize myTracker - "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v0, p0}, Lfg;->e(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    :goto_17
    sput-boolean v1, Ly14;->n:Z

    :goto_18
    sget-object p0, Lw4a;->f:Ljava/util/ArrayList;

    monitor-enter p0

    :try_start_10
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    sget-object v3, Lw4a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_19

    :catchall_b
    move-exception v0

    goto :goto_1b

    :cond_1a
    sget-object v0, Lw4a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lw4a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    sget-object p0, Lat9;->l:Lat9;

    iget-object p0, p0, Lat9;->b:Lzu9;

    iget-object p0, p0, Lzu9;->p:Ldu9;

    if-nez p0, :cond_1b

    const-string p0, "undefined"

    const-string v0, "undefined"

    const-string v1, "undefined"

    const-string v2, "undefined"

    invoke-static {p0, v0, v1, v2}, Ly14;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :cond_1b
    iget-object v0, p0, Ldu9;->a:Ljava/lang/String;

    iget-object v1, p0, Ldu9;->b:Ljava/lang/String;

    iget-object v2, p0, Ldu9;->c:Ljava/lang/String;

    iget-object p0, p0, Ldu9;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Ly14;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    return-void

    :goto_1b
    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    throw v0

    :goto_1c
    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
