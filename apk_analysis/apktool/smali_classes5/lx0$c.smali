.class public final Llx0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llx0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;


# instance fields
.field public final a:Lfz3;

.field public final b:Ljv3;

.field public final c:Ljava/lang/String;

.field public final d:Lts6;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Ljv3;

.field public final h:Llu3;

.field public final i:J

.field public final j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lz86;->a:Lz86;

    sget-object v0, Lz86;->a:Lz86;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "OkHttp-Sent-Millis"

    sput-object v0, Llx0$c;->k:Ljava/lang/String;

    sget-object v0, Lz86;->a:Lz86;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "OkHttp-Received-Millis"

    sput-object v0, Llx0$c;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lv48;)V
    .locals 11

    const-string v0, "Cache corruption for "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v1, Liy6;

    invoke-direct {v1, p1}, Liy6;-><init>(Lv48;)V

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v1, v2, v3}, Liy6;->S(J)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    :try_start_1
    new-instance v6, Lfz3$a;

    invoke-direct {v6}, Lfz3$a;-><init>()V

    invoke-virtual {v6, v5, v4}, Lfz3$a;->c(Lfz3;Ljava/lang/String;)V

    invoke-virtual {v6}, Lfz3$a;->a()Lfz3;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_7

    :try_start_2
    iput-object v6, p0, Llx0$c;->a:Lfz3;

    invoke-virtual {v1, v2, v3}, Liy6;->S(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llx0$c;->c:Ljava/lang/String;

    new-instance v0, Ljv3$a;

    invoke-direct {v0}, Ljv3$a;-><init>()V

    invoke-static {v1}, Llx0$b;->b(Liy6;)I

    move-result v4

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v4, :cond_0

    invoke-virtual {v1, v2, v3}, Liy6;->S(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljv3$a;->b(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v0}, Ljv3$a;->e()Ljv3;

    move-result-object v0

    iput-object v0, p0, Llx0$c;->b:Ljv3;

    invoke-virtual {v1, v2, v3}, Liy6;->S(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lk88$a;->a(Ljava/lang/String;)Lk88;

    move-result-object v0

    iget-object v4, v0, Lk88;->a:Lts6;

    iput-object v4, p0, Llx0$c;->d:Lts6;

    iget v4, v0, Lk88;->b:I

    iput v4, p0, Llx0$c;->e:I

    iget-object v0, v0, Lk88;->c:Ljava/lang/String;

    iput-object v0, p0, Llx0$c;->f:Ljava/lang/String;

    new-instance v0, Ljv3$a;

    invoke-direct {v0}, Ljv3$a;-><init>()V

    invoke-static {v1}, Llx0$b;->b(Liy6;)I

    move-result v4

    :goto_2
    if-ge v6, v4, :cond_1

    invoke-virtual {v1, v2, v3}, Liy6;->S(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljv3$a;->b(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    sget-object v4, Llx0$c;->k:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljv3$a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Llx0$c;->l:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljv3$a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v4}, Ljv3$a;->g(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljv3$a;->g(Ljava/lang/String;)V

    const-wide/16 v9, 0x0

    if-eqz v6, :cond_2

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_3

    :cond_2
    move-wide v6, v9

    :goto_3
    iput-wide v6, p0, Llx0$c;->i:J

    if-eqz v8, :cond_3

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    :cond_3
    iput-wide v9, p0, Llx0$c;->j:J

    invoke-virtual {v0}, Ljv3$a;->e()Ljv3;

    move-result-object v0

    iput-object v0, p0, Llx0$c;->g:Ljv3;

    iget-object v0, p0, Llx0$c;->a:Lfz3;

    iget-object v0, v0, Lfz3;->a:Ljava/lang/String;

    const-string v4, "https"

    invoke-static {v0, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1, v2, v3}, Liy6;->S(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_5

    invoke-virtual {v1, v2, v3}, Liy6;->S(J)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lyj1;->b:Lyj1$b;

    invoke-virtual {v4, v0}, Lyj1$b;->a(Ljava/lang/String;)Lyj1;

    move-result-object v0

    invoke-static {v1}, Llx0$c;->a(Liy6;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Llx0$c;->a(Liy6;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1}, Liy6;->m()Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lyw8;->Companion:Lyw8$a;

    invoke-virtual {v1, v2, v3}, Liy6;->S(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lyw8$a;->a(Ljava/lang/String;)Lyw8;

    move-result-object v1

    goto :goto_4

    :cond_4
    sget-object v1, Lyw8;->SSL_3_0:Lyw8;

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lgb9;->w(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Llu3;

    invoke-static {v5}, Lgb9;->w(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lku3;

    invoke-direct {v5, v2}, Lku3;-><init>(Ljava/util/List;)V

    invoke-direct {v3, v1, v0, v4, v5}, Llu3;-><init>(Lyw8;Lyj1;Ljava/util/List;Lll3;)V

    iput-object v3, p0, Llx0$c;->h:Llu3;

    goto :goto_5

    :cond_5
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected \"\" but was \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x22

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    iput-object v5, p0, Llx0$c;->h:Llu3;

    :goto_5
    sget-object p0, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    return-void

    :cond_7
    :try_start_3
    new-instance p0, Ljava/io/IOException;

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    sget-object v0, Lz86;->a:Lz86;

    sget-object v0, Lz86;->a:Lz86;

    const-string v1, "cache corruption"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x5

    invoke-static {v1, v0, p0}, Lz86;->i(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_6
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p0}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor <init>(Lz47;)V
    .locals 9

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iget-object v0, p1, Lz47;->b:Lb37;

    .line 317
    iget-object v1, v0, Lb37;->a:Lfz3;

    .line 318
    iput-object v1, p0, Llx0$c;->a:Lfz3;

    .line 319
    iget-object v1, p1, Lz47;->i:Lz47;

    .line 320
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    iget-object v1, v1, Lz47;->b:Lb37;

    .line 322
    iget-object v1, v1, Lb37;->c:Ljv3;

    .line 323
    iget-object v2, p1, Lz47;->g:Ljv3;

    .line 324
    invoke-static {v2}, Llx0$b;->c(Ljv3;)Ljava/util/Set;

    move-result-object v3

    .line 325
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v1, Lgb9;->b:Ljv3;

    goto :goto_1

    .line 326
    :cond_0
    new-instance v4, Ljv3$a;

    invoke-direct {v4}, Ljv3$a;-><init>()V

    .line 327
    invoke-virtual {v1}, Ljv3;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    .line 328
    invoke-virtual {v1, v6}, Ljv3;->b(I)Ljava/lang/String;

    move-result-object v7

    .line 329
    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 330
    invoke-virtual {v1, v6}, Ljv3;->g(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljv3$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 331
    :cond_2
    invoke-virtual {v4}, Ljv3$a;->e()Ljv3;

    move-result-object v1

    .line 332
    :goto_1
    iput-object v1, p0, Llx0$c;->b:Ljv3;

    .line 333
    iget-object v0, v0, Lb37;->b:Ljava/lang/String;

    .line 334
    iput-object v0, p0, Llx0$c;->c:Ljava/lang/String;

    .line 335
    iget-object v0, p1, Lz47;->c:Lts6;

    .line 336
    iput-object v0, p0, Llx0$c;->d:Lts6;

    .line 337
    iget v0, p1, Lz47;->e:I

    .line 338
    iput v0, p0, Llx0$c;->e:I

    .line 339
    iget-object v0, p1, Lz47;->d:Ljava/lang/String;

    .line 340
    iput-object v0, p0, Llx0$c;->f:Ljava/lang/String;

    .line 341
    iput-object v2, p0, Llx0$c;->g:Ljv3;

    .line 342
    iget-object v0, p1, Lz47;->f:Llu3;

    .line 343
    iput-object v0, p0, Llx0$c;->h:Llu3;

    .line 344
    iget-wide v0, p1, Lz47;->l:J

    .line 345
    iput-wide v0, p0, Llx0$c;->i:J

    .line 346
    iget-wide v0, p1, Lz47;->m:J

    .line 347
    iput-wide v0, p0, Llx0$c;->j:J

    return-void
.end method

.method public static a(Liy6;)Ljava/util/List;
    .locals 7

    invoke-static {p0}, Llx0$b;->b(Liy6;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0

    :cond_0
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {p0, v4, v5}, Liy6;->S(J)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lbu0;

    invoke-direct {v5}, Lbu0;-><init>()V

    sget-object v6, Lgx0;->e:Lgx0;

    invoke-static {v4}, Lgx0$a;->a(Ljava/lang/String;)Lgx0;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v5, v4}, Lbu0;->z0(Lgx0;)V

    new-instance v4, Lbu0$a;

    invoke-direct {v4, v5}, Lbu0$a;-><init>(Lbu0;)V

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Corrupt certificate in cache entry"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lhy6;Ljava/util/List;)V
    .locals 3

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lhy6;->h(J)Lvu0;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lhy6;->writeByte(I)Lvu0;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    sget-object v2, Lgx0;->e:Lgx0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lgx0$a;->d([B)Lgx0;

    move-result-object v1

    invoke-virtual {v1}, Lgx0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {p0, v0}, Lhy6;->writeByte(I)Lvu0;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final c(Lun2$a;)V
    .locals 11

    iget-object v0, p0, Llx0$c;->a:Lfz3;

    iget-object v1, p0, Llx0$c;->h:Llu3;

    iget-object v2, p0, Llx0$c;->g:Ljv3;

    iget-object v3, p0, Llx0$c;->b:Ljv3;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lun2$a;->d(I)Ls18;

    move-result-object p1

    new-instance v5, Lhy6;

    invoke-direct {v5, p1}, Lhy6;-><init>(Ls18;)V

    :try_start_0
    iget-object p1, v0, Lfz3;->i:Ljava/lang/String;

    invoke-virtual {v5, p1}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    const/16 p1, 0xa

    invoke-virtual {v5, p1}, Lhy6;->writeByte(I)Lvu0;

    iget-object v6, p0, Llx0$c;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {v5, p1}, Lhy6;->writeByte(I)Lvu0;

    invoke-virtual {v3}, Ljv3;->size()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lhy6;->h(J)Lvu0;

    invoke-virtual {v5, p1}, Lhy6;->writeByte(I)Lvu0;

    invoke-virtual {v3}, Ljv3;->size()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v4

    :goto_0
    const-string v8, ": "

    if-ge v7, v6, :cond_0

    :try_start_1
    invoke-virtual {v3, v7}, Ljv3;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {v5, v8}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {v3, v7}, Ljv3;->g(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lvu0;->l(Ljava/lang/String;)Lvu0;

    invoke-interface {v5, p1}, Lvu0;->writeByte(I)Lvu0;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    iget-object v3, p0, Llx0$c;->d:Lts6;

    iget v6, p0, Llx0$c;->e:I

    iget-object v7, p0, Llx0$c;->f:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lts6;->HTTP_1_0:Lts6;

    if-ne v3, v10, :cond_1

    const-string v3, "HTTP/1.0"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v3, "HTTP/1.1"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v3, 0x20

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {v5, p1}, Lhy6;->writeByte(I)Lvu0;

    invoke-virtual {v2}, Ljv3;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    invoke-virtual {v5, v6, v7}, Lhy6;->h(J)Lvu0;

    invoke-virtual {v5, p1}, Lhy6;->writeByte(I)Lvu0;

    invoke-virtual {v2}, Ljv3;->size()I

    move-result v3

    :goto_2
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Ljv3;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {v5, v8}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {v2, v4}, Ljv3;->g(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lvu0;->l(Ljava/lang/String;)Lvu0;

    invoke-interface {v5, p1}, Lvu0;->writeByte(I)Lvu0;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    sget-object v2, Llx0$c;->k:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {v5, v8}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    iget-wide v2, p0, Llx0$c;->i:J

    invoke-interface {v5, v2, v3}, Lvu0;->h(J)Lvu0;

    invoke-interface {v5, p1}, Lvu0;->writeByte(I)Lvu0;

    sget-object v2, Llx0$c;->l:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {v5, v8}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    iget-wide v2, p0, Llx0$c;->j:J

    invoke-interface {v5, v2, v3}, Lvu0;->h(J)Lvu0;

    invoke-interface {v5, p1}, Lvu0;->writeByte(I)Lvu0;

    iget-object p0, v0, Lfz3;->a:Ljava/lang/String;

    const-string v0, "https"

    invoke-static {p0, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v5, p1}, Lhy6;->writeByte(I)Lvu0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v1, Llu3;->b:Lyj1;

    iget-object p0, p0, Lyj1;->a:Ljava/lang/String;

    invoke-virtual {v5, p0}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {v5, p1}, Lhy6;->writeByte(I)Lvu0;

    invoke-virtual {v1}, Llu3;->a()Ljava/util/List;

    move-result-object p0

    invoke-static {v5, p0}, Llx0$c;->b(Lhy6;Ljava/util/List;)V

    iget-object p0, v1, Llu3;->c:Ljava/util/List;

    invoke-static {v5, p0}, Llx0$c;->b(Lhy6;Ljava/util/List;)V

    iget-object p0, v1, Llu3;->a:Lyw8;

    invoke-virtual {p0}, Lyw8;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {v5, p1}, Lhy6;->writeByte(I)Lvu0;

    :cond_3
    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v5}, Lhy6;->close()V

    return-void

    :goto_3
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v5, p0}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method
