.class public final Lun2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lun2$a;,
        Lun2$b;,
        Lun2$c;
    }
.end annotation


# static fields
.field public static final s:Lg17;

.field public static final t:Ljava/lang/String;

.field public static final u:Ljava/lang/String;

.field public static final v:Ljava/lang/String;

.field public static final w:Ljava/lang/String;


# instance fields
.field public final b:Ljava/io/File;

.field public final c:Ljava/io/File;

.field public final d:Ljava/io/File;

.field public final e:Ljava/io/File;

.field public f:J

.field public g:Lhy6;

.field public final h:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lun2$b;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:J

.field public final q:Ldo8;

.field public final r:Lxn2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg17;

    const-string v1, "[a-z0-9_-]{1,120}"

    invoke-direct {v0, v1}, Lg17;-><init>(Ljava/lang/String;)V

    sput-object v0, Lun2;->s:Lg17;

    const-string v0, "CLEAN"

    sput-object v0, Lun2;->t:Ljava/lang/String;

    const-string v0, "DIRTY"

    sput-object v0, Lun2;->u:Ljava/lang/String;

    const-string v0, "REMOVE"

    sput-object v0, Lun2;->v:Ljava/lang/String;

    const-string v0, "READ"

    sput-object v0, Lun2;->w:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lho8;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lun2;->b:Ljava/io/File;

    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lun2;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Lho8;->d()Ldo8;

    move-result-object p2

    iput-object p2, p0, Lun2;->q:Ldo8;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lgb9;->g:Ljava/lang/String;

    const-string v1, " Cache"

    invoke-static {p2, v0, v1}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lxn2;

    invoke-direct {v0, p0, p2}, Lxn2;-><init>(Lun2;Ljava/lang/String;)V

    iput-object v0, p0, Lun2;->r:Lxn2;

    new-instance p2, Ljava/io/File;

    const-string v0, "journal"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lun2;->c:Ljava/io/File;

    new-instance p2, Ljava/io/File;

    const-string v0, "journal.tmp"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lun2;->d:Ljava/io/File;

    new-instance p2, Ljava/io/File;

    const-string v0, "journal.bkp"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lun2;->e:Ljava/io/File;

    return-void
.end method

.method public static Z(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lun2;->s:Lg17;

    invoke-virtual {v0, p0}, Lg17;->e(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "keys must match regex [a-z0-9_-]{1,120}: \""

    const/16 v1, 0x22

    invoke-static {v1, v0, p0}, Llt0;->d(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final E()V
    .locals 10

    sget-object v0, Lpx;->d:Lpx;

    iget-object v1, p0, Lun2;->d:Ljava/io/File;

    invoke-virtual {v0, v1}, Lpx;->d(Ljava/io/File;)V

    iget-object v1, p0, Lun2;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lun2$b;

    iget-object v3, v2, Lun2$b;->g:Lun2$a;

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v3, :cond_1

    :goto_1
    if-ge v5, v4, :cond_0

    iget-wide v6, p0, Lun2;->f:J

    iget-object v3, v2, Lun2$b;->b:[J

    aget-wide v8, v3, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lun2;->f:J

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    iput-object v3, v2, Lun2$b;->g:Lun2$a;

    :goto_2
    if-ge v5, v4, :cond_2

    iget-object v3, v2, Lun2$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v0, v3}, Lpx;->d(Ljava/io/File;)V

    iget-object v3, v2, Lun2$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v0, v3}, Lpx;->d(Ljava/io/File;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final P()V
    .locals 12

    const-string v0, ", "

    const-string v1, "unexpected journal header: ["

    iget-object v2, p0, Lun2;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lt54;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v5, Lwv8;->d:Lwv8$a;

    invoke-direct {v3, v4, v5}, Lt54;-><init>(Ljava/io/InputStream;Lwv8;)V

    new-instance v4, Liy6;

    invoke-direct {v4, v3}, Liy6;-><init>(Lv48;)V

    const-wide v5, 0x7fffffffffffffffL

    :try_start_0
    invoke-virtual {v4, v5, v6}, Liy6;->S(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v6}, Liy6;->S(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6}, Liy6;->S(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v6}, Liy6;->S(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v5, v6}, Liy6;->S(J)Ljava/lang/String;

    move-result-object v10

    const-string v11, "libcore.io.DiskLruCache"

    invoke-virtual {v11, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "1"

    invoke-virtual {v11, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const v11, 0x31191

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v8, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_1
    invoke-virtual {v4, v5, v6}, Liy6;->S(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lun2;->Q(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :catch_0
    :try_start_2
    iget-object v3, p0, Lun2;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/AbstractMap;->size()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Lun2;->i:I

    invoke-virtual {v4}, Liy6;->m()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lun2;->U()V

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x1

    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v5, Lt06;

    new-instance v6, Lwv8;

    invoke-direct {v6}, Lwv8;-><init>()V

    invoke-direct {v5, v3, v6}, Lt06;-><init>(Ljava/io/OutputStream;Lwv8;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v5, Lt06;

    new-instance v1, Lwv8;

    invoke-direct {v1}, Lwv8;-><init>()V

    invoke-direct {v5, v3, v1}, Lt06;-><init>(Ljava/io/OutputStream;Lwv8;)V

    :goto_1
    new-instance v1, Ll53;

    new-instance v2, Lzn2;

    invoke-direct {v2, p0, v0}, Lzn2;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v1, v5, v2}, Ll53;-><init>(Ls18;Lnl3;)V

    new-instance v0, Lhy6;

    invoke-direct {v0, v1}, Lhy6;-><init>(Ls18;)V

    iput-object v0, p0, Lun2;->g:Lhy6;

    :goto_2
    sget-object p0, Lj59;->a:Lj59;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v4}, Liy6;->close()V

    return-void

    :cond_1
    :try_start_5
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v4, p0}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final Q(Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x6

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, p1}, Lta8;->J(CIILjava/lang/CharSequence;)I

    move-result v0

    const-string v3, "unexpected journal line: "

    const/4 v4, -0x1

    if-eq v0, v4, :cond_8

    add-int/lit8 v5, v0, 0x1

    const/4 v6, 0x4

    invoke-static {v1, v5, v6, p1}, Lta8;->J(CIILjava/lang/CharSequence;)I

    move-result v6

    iget-object v7, p0, Lun2;->h:Ljava/util/LinkedHashMap;

    if-ne v6, v4, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lun2;->v:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v0, v9, :cond_1

    invoke-static {p1, v8, v2}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7, v5}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-virtual {v7, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lun2$b;

    if-nez v8, :cond_2

    new-instance v8, Lun2$b;

    invoke-direct {v8, p0, v5}, Lun2$b;-><init>(Lun2;Ljava/lang/String;)V

    invoke-interface {v7, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eq v6, v4, :cond_4

    sget-object v5, Lun2;->t:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v0, v7, :cond_4

    invoke-static {p1, v5, v2}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 p0, 0x1

    add-int/2addr v6, p0

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, p0, [C

    aput-char v1, v0, v2

    invoke-static {p1, v0}, Lta8;->X(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object p1

    iput-boolean p0, v8, Lun2$b;->e:Z

    const/4 p0, 0x0

    iput-object p0, v8, Lun2$b;->g:Lun2$a;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    iget-object v0, v8, Lun2$b;->j:Lun2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    if-ge v2, p0, :cond_6

    iget-object v0, v8, Lun2$b;->b:[J

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v0, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    invoke-static {p1, v3}, Lav;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {p1, v3}, Lav;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_4
    if-ne v6, v4, :cond_5

    sget-object v1, Lun2;->u:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v0, v5, :cond_5

    invoke-static {p1, v1, v2}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance p1, Lun2$a;

    invoke-direct {p1, p0, v8}, Lun2$a;-><init>(Lun2;Lun2$b;)V

    iput-object p1, v8, Lun2$b;->g:Lun2$a;

    return-void

    :cond_5
    if-ne v6, v4, :cond_7

    sget-object p0, Lun2;->w:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_7

    invoke-static {p1, p0, v2}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized U()V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lun2;->g:Lhy6;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lhy6;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    :goto_0
    iget-object v0, p0, Lun2;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v3, Lt06;

    new-instance v4, Lwv8;

    invoke-direct {v4}, Lwv8;-><init>()V

    invoke-direct {v3, v2, v4}, Lt06;-><init>(Ljava/io/OutputStream;Lwv8;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v3, Lt06;

    new-instance v0, Lwv8;

    invoke-direct {v0}, Lwv8;-><init>()V

    invoke-direct {v3, v2, v0}, Lt06;-><init>(Ljava/io/OutputStream;Lwv8;)V

    :goto_1
    new-instance v0, Lhy6;

    invoke-direct {v0, v3}, Lhy6;-><init>(Ls18;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v2, "libcore.io.DiskLruCache"

    invoke-virtual {v0, v2}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lhy6;->writeByte(I)Lvu0;

    const-string v3, "1"

    invoke-virtual {v0, v3}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {v0, v2}, Lhy6;->writeByte(I)Lvu0;

    const-wide/32 v3, 0x31191

    invoke-virtual {v0, v3, v4}, Lhy6;->h(J)Lvu0;

    invoke-virtual {v0, v2}, Lhy6;->writeByte(I)Lvu0;

    const-wide/16 v3, 0x2

    invoke-virtual {v0, v3, v4}, Lhy6;->h(J)Lvu0;

    invoke-virtual {v0, v2}, Lhy6;->writeByte(I)Lvu0;

    invoke-virtual {v0, v2}, Lhy6;->writeByte(I)Lvu0;

    iget-object v3, p0, Lun2;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lun2$b;

    iget-object v5, v4, Lun2$b;->g:Lun2$a;

    const/16 v6, 0x20

    if-eqz v5, :cond_1

    sget-object v5, Lun2;->u:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {v0, v6}, Lhy6;->writeByte(I)Lvu0;

    iget-object v4, v4, Lun2$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {v0, v2}, Lhy6;->writeByte(I)Lvu0;

    goto :goto_2

    :catchall_1
    move-exception v1

    goto/16 :goto_5

    :cond_1
    sget-object v5, Lun2;->t:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {v0, v6}, Lhy6;->writeByte(I)Lvu0;

    iget-object v5, v4, Lun2$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    iget-object v4, v4, Lun2$b;->b:[J

    array-length v5, v4

    move v7, v1

    :goto_3
    if-ge v7, v5, :cond_2

    aget-wide v8, v4, v7

    invoke-virtual {v0, v6}, Lhy6;->writeByte(I)Lvu0;

    invoke-virtual {v0, v8, v9}, Lhy6;->h(J)Lvu0;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v2}, Lhy6;->writeByte(I)Lvu0;

    goto :goto_2

    :cond_3
    sget-object v2, Lj59;->a:Lj59;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0}, Lhy6;->close()V

    sget-object v0, Lpx;->d:Lpx;

    iget-object v2, p0, Lun2;->c:Ljava/io/File;

    invoke-virtual {v0, v2}, Lpx;->g(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lun2;->c:Ljava/io/File;

    iget-object v3, p0, Lun2;->e:Ljava/io/File;

    invoke-virtual {v0, v2, v3}, Lpx;->i(Ljava/io/File;Ljava/io/File;)V

    :cond_4
    iget-object v2, p0, Lun2;->d:Ljava/io/File;

    iget-object v3, p0, Lun2;->c:Ljava/io/File;

    invoke-virtual {v0, v2, v3}, Lpx;->i(Ljava/io/File;Ljava/io/File;)V

    iget-object v2, p0, Lun2;->e:Ljava/io/File;

    invoke-virtual {v0, v2}, Lpx;->d(Ljava/io/File;)V

    iget-object v0, p0, Lun2;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x1

    :try_start_5
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v4, Lt06;

    new-instance v5, Lwv8;

    invoke-direct {v5}, Lwv8;-><init>()V

    invoke-direct {v4, v3, v5}, Lt06;-><init>(Ljava/io/OutputStream;Lwv8;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_1
    :try_start_6
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v4, Lt06;

    new-instance v0, Lwv8;

    invoke-direct {v0}, Lwv8;-><init>()V

    invoke-direct {v4, v3, v0}, Lt06;-><init>(Ljava/io/OutputStream;Lwv8;)V

    :goto_4
    new-instance v0, Ll53;

    new-instance v2, Lzn2;

    invoke-direct {v2, p0, v1}, Lzn2;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v4, v2}, Ll53;-><init>(Ls18;Lnl3;)V

    new-instance v2, Lhy6;

    invoke-direct {v2, v0}, Lhy6;-><init>(Ls18;)V

    iput-object v2, p0, Lun2;->g:Lhy6;

    iput-boolean v1, p0, Lun2;->j:Z

    iput-boolean v1, p0, Lun2;->o:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :goto_5
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_8
    invoke-static {v0, v1}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :goto_6
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method

.method public final V(Lun2$b;)V
    .locals 10

    iget-object v0, p1, Lun2$b;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lun2;->k:Z

    const/16 v2, 0xa

    const/16 v3, 0x20

    const/4 v4, 0x1

    if-nez v1, :cond_2

    iget v1, p1, Lun2$b;->h:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lun2;->g:Lhy6;

    if-eqz v1, :cond_0

    sget-object v5, Lun2;->u:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {v1, v3}, Lhy6;->writeByte(I)Lvu0;

    invoke-virtual {v1, v0}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {v1, v2}, Lhy6;->writeByte(I)Lvu0;

    invoke-virtual {v1}, Lhy6;->flush()V

    :cond_0
    iget v1, p1, Lun2$b;->h:I

    if-gtz v1, :cond_1

    iget-object v1, p1, Lun2$b;->g:Lun2$a;

    if-eqz v1, :cond_2

    :cond_1
    iput-boolean v4, p1, Lun2$b;->f:Z

    return-void

    :cond_2
    iget-object v1, p1, Lun2$b;->g:Lun2$a;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lun2$a;->c()V

    :cond_3
    const/4 v1, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v1, v5, :cond_6

    iget-object v5, p1, Lun2$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    const-string p0, "failed to delete "

    invoke-static {v5, p0}, Lav;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_1
    iget-wide v5, p0, Lun2;->f:J

    iget-object v7, p1, Lun2$b;->b:[J

    aget-wide v8, v7, v1

    sub-long/2addr v5, v8

    iput-wide v5, p0, Lun2;->f:J

    const-wide/16 v5, 0x0

    aput-wide v5, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    iget p1, p0, Lun2;->i:I

    add-int/2addr p1, v4

    iput p1, p0, Lun2;->i:I

    iget-object p1, p0, Lun2;->g:Lhy6;

    if-eqz p1, :cond_7

    sget-object v1, Lun2;->v:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {p1, v3}, Lhy6;->writeByte(I)Lvu0;

    invoke-virtual {p1, v0}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {p1, v2}, Lhy6;->writeByte(I)Lvu0;

    :cond_7
    iget-object p1, p0, Lun2;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lun2;->y()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lun2;->q:Ldo8;

    iget-object p0, p0, Lun2;->r:Lxn2;

    invoke-static {p1, p0}, Ldo8;->d(Ldo8;Ljl8;)V

    :cond_8
    return-void
.end method

.method public final X()V
    .locals 4

    :goto_0
    iget-wide v0, p0, Lun2;->f:J

    const-wide/32 v2, 0xa00000

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lun2;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lun2$b;

    iget-boolean v2, v1, Lun2$b;->f:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lun2;->V(Lun2$b;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lun2;->n:Z

    return-void
.end method

.method public final declared-synchronized close()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lun2;->l:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lun2;->m:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lun2;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v3, v2, [Lun2$b;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lun2$b;

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    iget-object v4, v4, Lun2$b;->g:Lun2$a;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lun2$a;->c()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lun2;->X()V

    iget-object v0, p0, Lun2;->g:Lhy6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lhy6;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lun2;->g:Lhy6;

    iput-boolean v1, p0, Lun2;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :goto_2
    :try_start_1
    iput-boolean v1, p0, Lun2;->m:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lun2;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lun2;->m()V

    invoke-virtual {p0}, Lun2;->X()V

    iget-object v0, p0, Lun2;->g:Lhy6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lhy6;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized m()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lun2;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "cache is closed"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized n(Lun2$a;Z)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lun2$a;->a:Lun2$b;

    iget-object v1, v0, Lun2$b;->g:Lun2$a;

    invoke-static {v1, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    iget-boolean v3, v0, Lun2$b;->e:Z

    if-nez v3, :cond_2

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v4, p1, Lun2$a;->b:[Z

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_1

    iget-object v4, v0, Lun2$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lun2$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lun2$a;->a()V

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    move p1, v2

    :goto_1
    if-ge p1, v1, :cond_6

    iget-object v3, v0, Lun2$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    if-eqz p2, :cond_3

    iget-boolean v4, v0, Lun2$b;->f:Z

    if-nez v4, :cond_3

    sget-object v4, Lpx;->d:Lpx;

    invoke-virtual {v4, v3}, Lpx;->g(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v0, Lun2$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v4, v3, v5}, Lpx;->i(Ljava/io/File;Ljava/io/File;)V

    iget-object v3, v0, Lun2$b;->b:[J

    aget-wide v6, v3, p1

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-object v5, v0, Lun2$b;->b:[J

    aput-wide v3, v5, p1

    iget-wide v8, p0, Lun2;->f:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v3

    iput-wide v8, p0, Lun2;->f:J

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "failed to delete "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    iput-object p1, v0, Lun2$b;->g:Lun2$a;

    iget-boolean p1, v0, Lun2$b;->f:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0, v0}, Lun2;->V(Lun2$b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    :try_start_2
    iget p1, p0, Lun2;->i:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lun2;->i:I

    iget-object p1, p0, Lun2;->g:Lhy6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, v0, Lun2$b;->e:Z

    const/16 v4, 0xa

    const/16 v5, 0x20

    if-nez v3, :cond_9

    if-eqz p2, :cond_8

    goto :goto_3

    :cond_8
    iget-object p2, p0, Lun2;->h:Ljava/util/LinkedHashMap;

    iget-object v1, v0, Lun2$b;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lun2;->v:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {p1, v5}, Lhy6;->writeByte(I)Lvu0;

    iget-object p2, v0, Lun2$b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {p1, v4}, Lhy6;->writeByte(I)Lvu0;

    goto :goto_5

    :cond_9
    :goto_3
    iput-boolean v1, v0, Lun2$b;->e:Z

    sget-object v1, Lun2;->t:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {p1, v5}, Lhy6;->writeByte(I)Lvu0;

    iget-object v1, v0, Lun2$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    iget-object v1, v0, Lun2$b;->b:[J

    array-length v3, v1

    :goto_4
    if-ge v2, v3, :cond_a

    aget-wide v6, v1, v2

    invoke-virtual {p1, v5}, Lhy6;->writeByte(I)Lvu0;

    invoke-virtual {p1, v6, v7}, Lhy6;->h(J)Lvu0;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {p1, v4}, Lhy6;->writeByte(I)Lvu0;

    if-eqz p2, :cond_b

    iget-wide v1, p0, Lun2;->p:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lun2;->p:J

    iput-wide v1, v0, Lun2$b;->i:J

    :cond_b
    :goto_5
    invoke-virtual {p1}, Lhy6;->flush()V

    iget-wide p1, p0, Lun2;->f:J

    const-wide/32 v0, 0xa00000

    cmp-long p1, p1, v0

    if-gtz p1, :cond_c

    invoke-virtual {p0}, Lun2;->y()Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_c
    iget-object p1, p0, Lun2;->q:Ldo8;

    iget-object p2, p0, Lun2;->r:Lxn2;

    invoke-static {p1, p2}, Ldo8;->d(Ldo8;Ljl8;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_d
    monitor-exit p0

    return-void

    :cond_e
    :try_start_3
    const-string p1, "Check failed."

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :goto_6
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized o(JLjava/lang/String;)Lun2$a;
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lun2;->v()V

    invoke-virtual {p0}, Lun2;->m()V

    invoke-static {p3}, Lun2;->Z(Ljava/lang/String;)V

    iget-object v0, p0, Lun2;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lun2$b;

    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget-wide v3, v0, Lun2$b;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p1, v3, p1

    if-eqz p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    iget-object p1, v0, Lun2$b;->g:Lun2$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_3

    monitor-exit p0

    return-object v2

    :cond_3
    if-eqz v0, :cond_4

    :try_start_2
    iget p1, v0, Lun2$b;->h:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_4

    monitor-exit p0

    return-object v2

    :cond_4
    :try_start_3
    iget-boolean p1, p0, Lun2;->n:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lun2;->o:Z

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lun2;->g:Lhy6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lun2;->u:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Lhy6;->writeByte(I)Lvu0;

    invoke-interface {p1, p3}, Lvu0;->l(Ljava/lang/String;)Lvu0;

    const/16 p2, 0xa

    invoke-interface {p1, p2}, Lvu0;->writeByte(I)Lvu0;

    invoke-virtual {p1}, Lhy6;->flush()V

    iget-boolean p1, p0, Lun2;->j:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_6

    monitor-exit p0

    return-object v2

    :cond_6
    if-nez v0, :cond_7

    :try_start_4
    new-instance v0, Lun2$b;

    invoke-direct {v0, p0, p3}, Lun2$b;-><init>(Lun2;Ljava/lang/String;)V

    iget-object p1, p0, Lun2;->h:Ljava/util/LinkedHashMap;

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    new-instance p1, Lun2$a;

    invoke-direct {p1, p0, v0}, Lun2$a;-><init>(Lun2;Lun2$b;)V

    iput-object p1, v0, Lun2$b;->g:Lun2$a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_8
    :goto_2
    :try_start_5
    iget-object p1, p0, Lun2;->q:Ldo8;

    iget-object p2, p0, Lun2;->r:Lxn2;

    invoke-static {p1, p2}, Ldo8;->d(Ldo8;Ljl8;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v2

    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public final declared-synchronized p(Ljava/lang/String;)Lun2$c;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lun2;->v()V

    invoke-virtual {p0}, Lun2;->m()V

    invoke-static {p1}, Lun2;->Z(Ljava/lang/String;)V

    iget-object v0, p0, Lun2;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lun2$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lun2$b;->a()Lun2$c;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    iget v1, p0, Lun2;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lun2;->i:I

    iget-object v1, p0, Lun2;->g:Lhy6;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lun2;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lhy6;->writeByte(I)Lvu0;

    invoke-interface {v1, p1}, Lvu0;->l(Ljava/lang/String;)Lvu0;

    const/16 p1, 0xa

    invoke-interface {v1, p1}, Lvu0;->writeByte(I)Lvu0;

    invoke-virtual {p0}, Lun2;->y()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lun2;->q:Ldo8;

    iget-object v1, p0, Lun2;->r:Lxn2;

    invoke-static {p1, v1}, Ldo8;->d(Ldo8;Ljl8;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized v()V
    .locals 7

    const-string v0, "DiskLruCache "

    monitor-enter p0

    :try_start_0
    sget-object v1, Lgb9;->a:[B

    iget-boolean v1, p0, Lun2;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lpx;->d:Lpx;

    iget-object v2, p0, Lun2;->e:Ljava/io/File;

    invoke-virtual {v1, v2}, Lpx;->g(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lun2;->c:Ljava/io/File;

    invoke-virtual {v1, v2}, Lpx;->g(Ljava/io/File;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lun2;->e:Ljava/io/File;

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v1, v3}, Lpx;->d(Ljava/io/File;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    iget-object v2, p0, Lun2;->c:Ljava/io/File;

    invoke-virtual {v1, v3, v2}, Lpx;->i(Ljava/io/File;Ljava/io/File;)V

    :cond_2
    :goto_0
    iget-object v2, p0, Lun2;->e:Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lpx;->j(Ljava/io/File;)Lt06;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_3
    invoke-virtual {v1, v2}, Lpx;->d(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v3}, Lt06;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v1, v5

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_0
    :try_start_5
    sget-object v6, Lj59;->a:Lj59;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v3}, Lt06;->close()V

    invoke-virtual {v1, v2}, Lpx;->d(Ljava/io/File;)V

    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lun2;->k:Z

    iget-object v1, p0, Lun2;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {p0}, Lun2;->P()V

    invoke-virtual {p0}, Lun2;->E()V

    iput-boolean v5, p0, Lun2;->l:Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    :catch_1
    move-exception v1

    :try_start_8
    sget-object v2, Lz86;->a:Lz86;

    sget-object v2, Lz86;->a:Lz86;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lun2;->b:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is corrupt: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", removing"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x5

    invoke-static {v0, v2, v1}, Lz86;->i(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {p0}, Lun2;->close()V

    sget-object v0, Lpx;->d:Lpx;

    iget-object v1, p0, Lun2;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, Lpx;->e(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    iput-boolean v4, p0, Lun2;->m:Z

    goto :goto_2

    :catchall_2
    move-exception v0

    iput-boolean v4, p0, Lun2;->m:Z

    throw v0

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lun2;->U()V

    iput-boolean v5, p0, Lun2;->l:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v1

    :try_start_c
    invoke-static {v3, v0}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :goto_4
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw v0
.end method

.method public final y()Z
    .locals 2

    iget v0, p0, Lun2;->i:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lun2;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result p0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
