.class public final Lyads/ok5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/yv;


# static fields
.field public static final j:Ljava/util/HashSet;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Lyads/zr3;

.field public final c:Lyads/ax;

.field public final d:Lyads/gw;

.field public final e:Ljava/util/HashMap;

.field public final f:Ljava/util/Random;

.field public final g:Z

.field public h:J

.field public i:Lyads/vv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lyads/ok5;->j:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lyads/zr3;Lyads/rp2;)V
    .locals 4

    new-instance v0, Lyads/ax;

    invoke-direct {v0, p3, p1}, Lyads/ax;-><init>(Lyads/rp2;Ljava/io/File;)V

    new-instance v1, Lyads/gw;

    invoke-direct {v1, p3}, Lyads/gw;-><init>(Lyads/rp2;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class p3, Lyads/ok5;

    monitor-enter p3

    :try_start_0
    sget-object v2, Lyads/ok5;->j:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p3

    if-eqz v2, :cond_0

    iput-object p1, p0, Lyads/ok5;->a:Ljava/io/File;

    iput-object p2, p0, Lyads/ok5;->b:Lyads/zr3;

    iput-object v0, p0, Lyads/ok5;->c:Lyads/ax;

    iput-object v1, p0, Lyads/ok5;->d:Lyads/gw;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lyads/ok5;->e:Ljava/util/HashMap;

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lyads/ok5;->f:Ljava/util/Random;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/ok5;->g:Z

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lyads/ok5;->h:J

    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    new-instance p2, Lyads/nk5;

    invoke-direct {p2, p0, p1}, Lyads/nk5;-><init>(Lyads/ok5;Landroid/os/ConditionVariable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    return-void

    :cond_0
    const-string p0, "Another SimpleCache instance uses the folder: "

    invoke-static {p1, p0}, Lqz0;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit p3

    throw p0
.end method

.method public static a(Ljava/io/File;)V
    .locals 2

    .line 190
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to create cache directory: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 192
    const-string v0, "SimpleCache"

    invoke-static {v0, p0}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v0, Lyads/vv;

    invoke-direct {v0, p0}, Lyads/vv;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Ljava/io/File;)J
    .locals 5

    .line 308
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 309
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :goto_0
    const/16 v2, 0x10

    .line 310
    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    .line 311
    new-instance v3, Ljava/io/File;

    const-string v4, ".uid"

    .line 312
    invoke-static {v2, v4}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_1

    return-wide v0

    .line 315
    :cond_1
    const-string p0, "Failed to create UID file: "

    invoke-static {v3, p0}, Lav;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;JJ)J
    .locals 7

    monitor-enter p0

    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    const-wide v1, 0x7fffffffffffffffL

    if-nez v0, :cond_0

    move-wide p4, v1

    goto :goto_0

    :cond_0
    add-long/2addr p4, p2

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v0, p4, v3

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    move-wide v1, p4

    :goto_1
    move-wide v5, v3

    :goto_2
    cmp-long p4, p2, v1

    if-gez p4, :cond_3

    sub-long p4, v1, p2

    .line 149
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lyads/ok5;->b(Ljava/lang/String;JJ)J

    move-result-wide p4

    cmp-long v0, p4, v3

    if-lez v0, :cond_2

    add-long/2addr v5, p4

    goto :goto_3

    :cond_2
    neg-long p4, p4

    :goto_3
    add-long/2addr p2, p4

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    monitor-exit p0

    return-wide v5
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Ljava/util/TreeSet;
    .locals 1

    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lyads/ok5;->c:Lyads/ax;

    .line 142
    iget-object v0, v0, Lyads/ax;->a:Ljava/util/HashMap;

    .line 143
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/ww;

    if-eqz p1, :cond_1

    .line 144
    iget-object v0, p1, Lyads/ww;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    .line 146
    iget-object p1, p1, Lyads/ww;->c:Ljava/util/TreeSet;

    .line 147
    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 148
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Lyads/ok5;->i:Lyads/vv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 189
    :cond_0
    :try_start_1
    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Ljava/io/File;Z[Ljava/io/File;Ljava/util/HashMap;)V
    .locals 8

    if-eqz p3, :cond_7

    .line 159
    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_5

    .line 160
    :cond_0
    array-length p1, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_8

    aget-object v2, p3, v1

    .line 161
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_1

    const/16 v4, 0x2e

    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 163
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v3, p4}, Lyads/ok5;->a(Ljava/io/File;Z[Ljava/io/File;Ljava/util/HashMap;)V

    goto :goto_4

    :cond_1
    if-eqz p2, :cond_2

    .line 164
    const-string v4, "monetization_cached_content_index.exi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 165
    const-string v4, ".uid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_4

    :cond_2
    if-eqz p4, :cond_3

    .line 166
    invoke-virtual {p4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/fw;

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    .line 167
    iget-wide v4, v3, Lyads/fw;->a:J

    .line 168
    iget-wide v6, v3, Lyads/fw;->b:J

    :goto_2
    move-wide v3, v4

    move-wide v5, v6

    goto :goto_3

    :cond_4
    const-wide/16 v4, -0x1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    .line 169
    :goto_3
    iget-object v7, p0, Lyads/ok5;->c:Lyads/ax;

    .line 170
    invoke-static/range {v2 .. v7}, Lyads/qk5;->a(Ljava/io/File;JJLyads/ax;)Lyads/qk5;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 171
    invoke-virtual {p0, v3}, Lyads/ok5;->a(Lyads/qk5;)V

    goto :goto_4

    .line 172
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    :goto_5
    if-nez p2, :cond_8

    .line 173
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_8
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lyads/j60;)V
    .locals 2

    monitor-enter p0

    .line 150
    :try_start_0
    invoke-virtual {p0}, Lyads/ok5;->a()V

    .line 151
    iget-object v0, p0, Lyads/ok5;->c:Lyads/ax;

    .line 152
    invoke-virtual {v0, p1}, Lyads/ax;->a(Ljava/lang/String;)Lyads/ww;

    move-result-object p1

    .line 153
    iget-object v1, p1, Lyads/ww;->e:Lyads/fk0;

    .line 154
    invoke-virtual {v1, p2}, Lyads/fk0;->a(Lyads/j60;)Lyads/fk0;

    move-result-object p2

    iput-object p2, p1, Lyads/ww;->e:Lyads/fk0;

    .line 155
    invoke-virtual {p2, v1}, Lyads/fk0;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 156
    iget-object p2, v0, Lyads/ax;->e:Lyads/zw;

    invoke-interface {p2, p1}, Lyads/zw;->a(Lyads/ww;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 157
    :cond_0
    :goto_0
    :try_start_1
    iget-object p1, p0, Lyads/ok5;->c:Lyads/ax;

    invoke-virtual {p1}, Lyads/ax;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    .line 158
    :try_start_2
    new-instance p2, Lyads/vv;

    invoke-direct {p2, p1}, Lyads/vv;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final a(Lyads/jw;)V
    .locals 7

    iget-object v0, p0, Lyads/ok5;->c:Lyads/ax;

    iget-object v1, p1, Lyads/jw;->b:Ljava/lang/String;

    iget-object v0, v0, Lyads/ax;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/ww;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lyads/ww;->c:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lyads/jw;->f:Ljava/io/File;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v1, p0, Lyads/ok5;->d:Lyads/gw;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lyads/jw;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lyads/ok5;->d:Lyads/gw;

    iget-object v3, v2, Lyads/gw;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, v2, Lyads/gw;->a:Lyads/rp2;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iget-object v2, v2, Lyads/gw;->b:Ljava/lang/String;

    const-string v4, "name = ?"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    new-instance v3, Lyads/cd0;

    invoke-direct {v3, v2}, Lyads/cd0;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const-string v2, "Failed to remove file index entry for: "

    const-string v3, "SimpleCache"

    invoke-static {v2, v1, v3}, Lyads/cz3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lyads/ok5;->c:Lyads/ax;

    iget-object v0, v0, Lyads/ww;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lyads/ax;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lyads/ok5;->e:Ljava/util/HashMap;

    iget-object v1, p1, Lyads/jw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/zr3;

    iget-object v3, v2, Lyads/zr3;->b:Ljava/util/TreeSet;

    invoke-virtual {v3, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    iget-wide v3, v2, Lyads/zr3;->c:J

    iget-wide v5, p1, Lyads/jw;->d:J

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lyads/zr3;->c:J

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lyads/ok5;->b:Lyads/zr3;

    iget-object v0, p0, Lyads/zr3;->b:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lyads/zr3;->c:J

    iget-wide v2, p1, Lyads/jw;->d:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lyads/zr3;->c:J

    :cond_3
    return-void
.end method

.method public final a(Lyads/qk5;)V
    .locals 9

    .line 174
    iget-object v0, p0, Lyads/ok5;->c:Lyads/ax;

    iget-object v1, p1, Lyads/jw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lyads/ax;->a(Ljava/lang/String;)Lyads/ww;

    move-result-object v0

    .line 175
    iget-object v0, v0, Lyads/ww;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, p0, Lyads/ok5;->e:Ljava/util/HashMap;

    iget-object v1, p1, Lyads/jw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    .line 178
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/zr3;

    .line 179
    iget-object v5, v4, Lyads/zr3;->b:Ljava/util/TreeSet;

    .line 180
    invoke-virtual {v5, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 181
    iget-wide v5, v4, Lyads/zr3;->c:J

    iget-wide v7, p1, Lyads/jw;->d:J

    add-long/2addr v5, v7

    iput-wide v5, v4, Lyads/zr3;->c:J

    .line 182
    invoke-virtual {v4, p0, v1, v2}, Lyads/zr3;->a(Lyads/yv;J)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lyads/ok5;->b:Lyads/zr3;

    .line 184
    iget-object v3, v0, Lyads/zr3;->b:Ljava/util/TreeSet;

    .line 185
    invoke-virtual {v3, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 186
    iget-wide v3, v0, Lyads/zr3;->c:J

    iget-wide v5, p1, Lyads/jw;->d:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Lyads/zr3;->c:J

    .line 187
    invoke-virtual {v0, p0, v1, v2}, Lyads/zr3;->a(Lyads/yv;J)V

    return-void
.end method

.method public final declared-synchronized b(Ljava/lang/String;JJ)J
    .locals 2

    monitor-enter p0

    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    const-wide p4, 0x7fffffffffffffffL

    .line 288
    :cond_0
    :try_start_0
    iget-object v0, p0, Lyads/ok5;->c:Lyads/ax;

    .line 289
    iget-object v0, v0, Lyads/ax;->a:Ljava/util/HashMap;

    .line 290
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/ww;

    if-eqz p1, :cond_1

    .line 291
    invoke-virtual {p1, p2, p3, p4, p5}, Lyads/ww;->a(JJ)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    neg-long p1, p4

    :goto_0
    monitor-exit p0

    return-wide p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Lyads/fk0;
    .locals 1

    monitor-enter p0

    .line 292
    :try_start_0
    iget-object v0, p0, Lyads/ok5;->c:Lyads/ax;

    .line 293
    iget-object v0, v0, Lyads/ax;->a:Ljava/util/HashMap;

    .line 294
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/ww;

    if-eqz p1, :cond_0

    .line 295
    iget-object p1, p1, Lyads/ww;->e:Lyads/fk0;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 296
    :cond_0
    sget-object p1, Lyads/fk0;->c:Lyads/fk0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 10

    iget-object v0, p0, Lyads/ok5;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lyads/ok5;->a:Ljava/io/File;

    invoke-static {v0}, Lyads/ok5;->a(Ljava/io/File;)V
    :try_end_0
    .catch Lyads/vv; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lyads/ok5;->i:Lyads/vv;

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Lyads/ok5;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const-string v1, "SimpleCache"

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to list cache directory files: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lyads/ok5;->a:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lyads/vv;

    invoke-direct {v1, v0}, Lyads/vv;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lyads/ok5;->i:Lyads/vv;

    return-void

    :cond_1
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    const-wide/16 v5, -0x1

    if-ge v4, v2, :cond_3

    aget-object v7, v0, v4

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".uid"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x2e

    :try_start_1
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    invoke-virtual {v8, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Malformed UID file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move-wide v2, v5

    :goto_2
    iput-wide v2, p0, Lyads/ok5;->h:J

    cmp-long v4, v2, v5

    if-nez v4, :cond_4

    :try_start_2
    iget-object v2, p0, Lyads/ok5;->a:Ljava/io/File;

    invoke-static {v2}, Lyads/ok5;->b(Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, p0, Lyads/ok5;->h:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create cache UID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lyads/ok5;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lyads/vv;

    invoke-direct {v1, v2, v0}, Lyads/vv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lyads/ok5;->i:Lyads/vv;

    return-void

    :cond_4
    :goto_3
    :try_start_3
    iget-object v4, p0, Lyads/ok5;->c:Lyads/ax;

    invoke-virtual {v4, v2, v3}, Lyads/ax;->a(J)V

    iget-object v2, p0, Lyads/ok5;->d:Lyads/gw;

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    iget-wide v4, p0, Lyads/ok5;->h:J

    invoke-virtual {v2, v4, v5}, Lyads/gw;->a(J)V

    iget-object v2, p0, Lyads/ok5;->d:Lyads/gw;

    invoke-virtual {v2}, Lyads/gw;->a()Ljava/util/HashMap;

    move-result-object v2

    iget-object v4, p0, Lyads/ok5;->a:Ljava/io/File;

    invoke-virtual {p0, v4, v3, v0, v2}, Lyads/ok5;->a(Ljava/io/File;Z[Ljava/io/File;Ljava/util/HashMap;)V

    iget-object v0, p0, Lyads/ok5;->d:Lyads/gw;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lyads/gw;->a(Ljava/util/Set;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_5
    iget-object v2, p0, Lyads/ok5;->a:Ljava/io/File;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v0, v4}, Lyads/ok5;->a(Ljava/io/File;Z[Ljava/io/File;Ljava/util/HashMap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    iget-object v0, p0, Lyads/ok5;->c:Lyads/ax;

    iget-object v2, v0, Lyads/ax;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lyads/te3;->a(Ljava/util/Collection;)Lyads/te3;

    move-result-object v2

    invoke-virtual {v2}, Lyads/ie3;->iterator()Lyads/i46;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lyads/ax;->b(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    :try_start_4
    iget-object p0, p0, Lyads/ok5;->c:Lyads/ax;

    invoke-virtual {p0}, Lyads/ax;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p0

    const-string v0, "Storing index file failed"

    invoke-static {v0, p0}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-void

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to initialize cache indices: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lyads/ok5;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lyads/vv;

    invoke-direct {v1, v2, v0}, Lyads/vv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lyads/ok5;->i:Lyads/vv;

    return-void
.end method

.method public final declared-synchronized b(Lyads/qk5;)V
    .locals 5

    monitor-enter p0

    .line 297
    :try_start_0
    iget-object v0, p0, Lyads/ok5;->c:Lyads/ax;

    iget-object v1, p1, Lyads/jw;->b:Ljava/lang/String;

    .line 298
    iget-object v0, v0, Lyads/ax;->a:Ljava/util/HashMap;

    .line 299
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/ww;

    .line 300
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    iget-wide v1, p1, Lyads/jw;->c:J

    const/4 p1, 0x0

    .line 302
    :goto_0
    iget-object v3, v0, Lyads/ww;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 303
    iget-object v3, v0, Lyads/ww;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/vw;

    iget-wide v3, v3, Lyads/vw;->a:J

    cmp-long v3, v3, v1

    if-nez v3, :cond_0

    .line 304
    iget-object v1, v0, Lyads/ww;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 305
    iget-object p1, p0, Lyads/ok5;->c:Lyads/ax;

    iget-object v0, v0, Lyads/ww;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lyads/ax;->b(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 307
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized c(Ljava/lang/String;JJ)Lyads/qk5;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    monitor-enter p0

    :try_start_0
    invoke-virtual {v1}, Lyads/ok5;->a()V

    iget-object v0, v1, Lyads/ok5;->c:Lyads/ax;

    iget-object v0, v0, Lyads/ax;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/ww;

    if-nez v0, :cond_0

    new-instance v2, Lyads/qk5;

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    invoke-direct/range {v2 .. v10}, Lyads/qk5;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    :goto_0
    invoke-virtual {v0, v4, v5, v6, v7}, Lyads/ww;->b(JJ)Lyads/qk5;

    move-result-object v2

    iget-boolean v8, v2, Lyads/jw;->e:Z

    if-eqz v8, :cond_1

    iget-object v8, v2, Lyads/jw;->f:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    iget-wide v10, v2, Lyads/jw;->d:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Lyads/ok5;->c()V

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean v0, v2, Lyads/jw;->e:Z

    const/4 v6, 0x0

    if-eqz v0, :cond_9

    iget-boolean v0, v1, Lyads/ok5;->g:Z

    if-nez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v0, v2, Lyads/jw;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    iget-wide v9, v2, Lyads/jw;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v7, v1, Lyads/ok5;->d:Lyads/gw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-eqz v7, :cond_3

    :try_start_1
    invoke-virtual/range {v7 .. v12}, Lyads/gw;->a(Ljava/lang/String;JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_2
    const-string v4, "SimpleCache"

    const-string v5, "Failed to update index with new touch timestamp."

    invoke-static {v4, v5}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v6, v0

    :goto_2
    iget-object v4, v1, Lyads/ok5;->c:Lyads/ax;

    iget-object v4, v4, Lyads/ax;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/ww;

    iget-object v4, v3, Lyads/ww;->c:Ljava/util/TreeSet;

    invoke-virtual {v4, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v2, Lyads/jw;->f:Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v6, v2, Lyads/jw;->c:J

    iget v8, v3, Lyads/ww;->a:I

    sget-object v9, Lyads/qk5;->h:Ljava/util/regex/Pattern;

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ".v3.exo"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v19, v9

    goto :goto_3

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to rename "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CachedContent"

    invoke-static {v6, v5}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object/from16 v19, v4

    :goto_3
    iget-boolean v4, v2, Lyads/jw;->e:Z

    if-eqz v4, :cond_7

    move-wide/from16 v17, v11

    new-instance v11, Lyads/qk5;

    iget-object v12, v2, Lyads/jw;->b:Ljava/lang/String;

    iget-wide v13, v2, Lyads/jw;->c:J

    iget-wide v4, v2, Lyads/jw;->d:J

    move-wide v15, v4

    invoke-direct/range {v11 .. v19}, Lyads/qk5;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    iget-object v3, v3, Lyads/ww;->c:Ljava/util/TreeSet;

    invoke-virtual {v3, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lyads/ok5;->e:Ljava/util/HashMap;

    iget-object v4, v2, Lyads/jw;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v0

    :goto_4
    if-ltz v6, :cond_6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/zr3;

    iget-object v7, v0, Lyads/zr3;->b:Ljava/util/TreeSet;

    invoke-virtual {v7, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    iget-wide v7, v0, Lyads/zr3;->c:J

    iget-wide v9, v2, Lyads/jw;->d:J

    sub-long/2addr v7, v9

    iput-wide v7, v0, Lyads/zr3;->c:J

    iget-object v7, v0, Lyads/zr3;->b:Ljava/util/TreeSet;

    invoke-virtual {v7, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-wide v7, v0, Lyads/zr3;->c:J

    iget-wide v9, v11, Lyads/jw;->d:J

    add-long/2addr v7, v9

    iput-wide v7, v0, Lyads/zr3;->c:J

    invoke-virtual {v0, v1, v4, v5}, Lyads/zr3;->a(Lyads/yv;J)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_6
    iget-object v0, v1, Lyads/ok5;->b:Lyads/zr3;

    iget-object v3, v0, Lyads/zr3;->b:Ljava/util/TreeSet;

    invoke-virtual {v3, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    iget-wide v6, v0, Lyads/zr3;->c:J

    iget-wide v2, v2, Lyads/jw;->d:J

    sub-long/2addr v6, v2

    iput-wide v6, v0, Lyads/zr3;->c:J

    iget-object v2, v0, Lyads/zr3;->b:Ljava/util/TreeSet;

    invoke-virtual {v2, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-wide v2, v0, Lyads/zr3;->c:J

    iget-wide v6, v11, Lyads/jw;->d:J

    add-long/2addr v2, v6

    iput-wide v2, v0, Lyads/zr3;->c:J

    invoke-virtual {v0, v1, v4, v5}, Lyads/zr3;->a(Lyads/yv;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v11

    :goto_5
    monitor-exit p0

    return-object v2

    :cond_7
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_9
    iget-object v0, v1, Lyads/ok5;->c:Lyads/ax;

    invoke-virtual {v0, v3}, Lyads/ax;->a(Ljava/lang/String;)Lyads/ww;

    move-result-object v0

    iget-wide v7, v2, Lyads/jw;->d:J

    :goto_6
    iget-object v3, v0, Lyads/ww;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v9, v0, Lyads/ww;->d:Ljava/util/ArrayList;

    if-ge v6, v3, :cond_d

    :try_start_4
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/vw;

    iget-wide v9, v3, Lyads/vw;->a:J

    cmp-long v11, v9, v4

    const-wide/16 v12, -0x1

    if-gtz v11, :cond_a

    iget-wide v14, v3, Lyads/vw;->b:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    cmp-long v3, v14, v12

    if-eqz v3, :cond_c

    add-long/2addr v9, v14

    cmp-long v3, v9, v4

    if-lez v3, :cond_b

    goto :goto_7

    :cond_a
    cmp-long v3, v7, v12

    if-eqz v3, :cond_c

    add-long v11, v4, v7

    cmp-long v3, v11, v9

    if-lez v3, :cond_b

    goto :goto_7

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_c
    :goto_7
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :cond_d
    :try_start_5
    new-instance v0, Lyads/vw;

    invoke-direct {v0, v4, v5, v7, v8}, Lyads/vw;-><init>(JJ)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v2

    :goto_8
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public final c()V
    .locals 8

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 425
    iget-object v1, p0, Lyads/ok5;->c:Lyads/ax;

    .line 426
    iget-object v1, v1, Lyads/ax;->a:Ljava/util/HashMap;

    .line 427
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 428
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/ww;

    .line 429
    iget-object v2, v2, Lyads/ww;->c:Ljava/util/TreeSet;

    .line 430
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/jw;

    .line 431
    iget-object v4, v3, Lyads/jw;->f:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-wide v6, v3, Lyads/jw;->d:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 432
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 433
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 434
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/jw;

    invoke-virtual {p0, v2}, Lyads/ok5;->a(Lyads/jw;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final declared-synchronized c(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 422
    :try_start_0
    invoke-virtual {p0, p1}, Lyads/ok5;->a(Ljava/lang/String;)Ljava/util/TreeSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/jw;

    .line 423
    invoke-virtual {p0, v0}, Lyads/ok5;->a(Lyads/jw;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
