.class public final Lvn2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvn2$a;,
        Lvn2$b;,
        Lvn2$c;
    }
.end annotation


# static fields
.field public static final s:Lg17;


# instance fields
.field public final b:Lj46;

.field public final c:J

.field public final d:Lj46;

.field public final e:Lj46;

.field public final f:Lj46;

.field public final g:Ljava/util/LinkedHashMap;

.field public final h:Lkz1;

.field public final i:Ljava/lang/Object;

.field public j:J

.field public k:I

.field public l:Lhy6;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public final r:Lyn2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg17;

    const-string v1, "[a-z0-9_-]{1,120}"

    invoke-direct {v0, v1}, Lg17;-><init>(Ljava/lang/String;)V

    sput-object v0, Lvn2;->s:Lg17;

    return-void
.end method

.method public constructor <init>(JLo22;Lw93;Lj46;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lvn2;->b:Lj46;

    iput-wide p1, p0, Lvn2;->c:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-lez p1, :cond_1

    const-string p1, "journal"

    invoke-virtual {p5, p1}, Lj46;->f(Ljava/lang/String;)Lj46;

    move-result-object p1

    iput-object p1, p0, Lvn2;->d:Lj46;

    const-string p1, "journal.tmp"

    invoke-virtual {p5, p1}, Lj46;->f(Ljava/lang/String;)Lj46;

    move-result-object p1

    iput-object p1, p0, Lvn2;->e:Lj46;

    const-string p1, "journal.bkp"

    invoke-virtual {p5, p1}, Lj46;->f(Ljava/lang/String;)Lj46;

    move-result-object p1

    iput-object p1, p0, Lvn2;->f:Lj46;

    new-instance p1, Ljava/util/LinkedHashMap;

    const/4 p5, 0x0

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    invoke-direct {p1, p5, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lvn2;->g:Ljava/util/LinkedHashMap;

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object p1

    invoke-interface {p3, p1}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p1

    sget-object p5, Lr22;->Key:Lr22$a;

    invoke-interface {p3, p5}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object p3

    check-cast p3, Lr22;

    if-nez p3, :cond_0

    sget-object p3, Lqo2;->a:Loi2;

    sget-object p3, Lsh2;->c:Lsh2;

    :cond_0
    const/4 p5, 0x2

    invoke-static {p3, v1, p2, p5, p2}, Lr22;->limitedParallelism$default(Lr22;ILjava/lang/String;ILjava/lang/Object;)Lr22;

    move-result-object p2

    invoke-interface {p1, p2}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p1

    invoke-static {p1}, Lz22;->a(Lo22;)Lkz1;

    move-result-object p1

    iput-object p1, p0, Lvn2;->h:Lkz1;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvn2;->i:Ljava/lang/Object;

    new-instance p1, Lyn2;

    invoke-direct {p1, p4}, Lyn2;-><init>(Lw93;)V

    iput-object p1, p0, Lvn2;->r:Lyn2;

    return-void

    :cond_1
    const-string p0, "maxSize <= 0"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    throw p2
.end method

.method public static Q(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lvn2;->s:Lg17;

    invoke-virtual {v0, p0}, Lg17;->e(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "keys must match regex [a-z0-9_-]{1,120}: \""

    const-string v1, "\""

    invoke-static {v0, p0, v1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final E(Lvn2$b;)V
    .locals 10

    iget v0, p1, Lvn2$b;->h:I

    iget-object v1, p1, Lvn2$b;->a:Ljava/lang/String;

    const/16 v2, 0xa

    const/16 v3, 0x20

    if-lez v0, :cond_0

    iget-object v0, p0, Lvn2;->l:Lhy6;

    if-eqz v0, :cond_0

    const-string v4, "DIRTY"

    invoke-virtual {v0, v4}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {v0, v3}, Lhy6;->writeByte(I)Lvu0;

    invoke-virtual {v0, v1}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {v0, v2}, Lhy6;->writeByte(I)Lvu0;

    invoke-virtual {v0}, Lhy6;->flush()V

    :cond_0
    iget v0, p1, Lvn2$b;->h:I

    const/4 v4, 0x1

    if-gtz v0, :cond_5

    iget-object v0, p1, Lvn2$b;->g:Lvn2$a;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v0, v5, :cond_2

    iget-object v5, p1, Lvn2$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj46;

    iget-object v6, p0, Lvn2;->r:Lyn2;

    invoke-virtual {v6, v5}, Lw93;->m(Lj46;)V

    iget-wide v5, p0, Lvn2;->j:J

    iget-object v7, p1, Lvn2$b;->b:[J

    aget-wide v8, v7, v0

    sub-long/2addr v5, v8

    iput-wide v5, p0, Lvn2;->j:J

    const-wide/16 v5, 0x0

    aput-wide v5, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget p1, p0, Lvn2;->k:I

    add-int/2addr p1, v4

    iput p1, p0, Lvn2;->k:I

    iget-object p1, p0, Lvn2;->l:Lhy6;

    if-eqz p1, :cond_3

    const-string v0, "REMOVE"

    invoke-virtual {p1, v0}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {p1, v3}, Lhy6;->writeByte(I)Lvu0;

    invoke-virtual {p1, v1}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {p1, v2}, Lhy6;->writeByte(I)Lvu0;

    invoke-virtual {p1}, Lhy6;->flush()V

    :cond_3
    iget-object p1, p0, Lvn2;->g:Ljava/util/LinkedHashMap;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lvn2;->k:I

    const/16 v0, 0x7d0

    if-lt p1, v0, :cond_4

    invoke-virtual {p0}, Lvn2;->n()V

    :cond_4
    return-void

    :cond_5
    :goto_1
    iput-boolean v4, p1, Lvn2$b;->f:Z

    return-void
.end method

.method public final P()V
    .locals 4

    :goto_0
    iget-wide v0, p0, Lvn2;->j:J

    iget-wide v2, p0, Lvn2;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lvn2;->g:Ljava/util/LinkedHashMap;

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

    check-cast v1, Lvn2$b;

    iget-boolean v2, v1, Lvn2$b;->f:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lvn2;->E(Lvn2$b;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvn2;->p:Z

    return-void
.end method

.method public final U()V
    .locals 11

    iget-object v0, p0, Lvn2;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lvn2;->l:Lhy6;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lhy6;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    :goto_0
    iget-object v1, p0, Lvn2;->r:Lyn2;

    iget-object v2, p0, Lvn2;->e:Lj46;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lyn2;->P(Lj46;Z)Ls18;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lhy6;

    invoke-direct {v2, v1}, Lhy6;-><init>(Ls18;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    invoke-virtual {v2, v1}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Lhy6;->writeByte(I)Lvu0;

    const-string v4, "1"

    invoke-virtual {v2, v4}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {v2, v1}, Lhy6;->writeByte(I)Lvu0;

    const-wide/16 v4, 0x3

    invoke-virtual {v2, v4, v5}, Lhy6;->h(J)Lvu0;

    invoke-virtual {v2, v1}, Lhy6;->writeByte(I)Lvu0;

    const-wide/16 v4, 0x2

    invoke-virtual {v2, v4, v5}, Lhy6;->h(J)Lvu0;

    invoke-virtual {v2, v1}, Lhy6;->writeByte(I)Lvu0;

    invoke-virtual {v2, v1}, Lhy6;->writeByte(I)Lvu0;

    iget-object v4, p0, Lvn2;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvn2$b;

    iget-object v6, v5, Lvn2$b;->g:Lvn2$a;

    const/16 v7, 0x20

    if-eqz v6, :cond_1

    const-string v6, "DIRTY"

    invoke-virtual {v2, v6}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {v2, v7}, Lhy6;->writeByte(I)Lvu0;

    iget-object v5, v5, Lvn2$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {v2, v1}, Lhy6;->writeByte(I)Lvu0;

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :cond_1
    const-string v6, "CLEAN"

    invoke-virtual {v2, v6}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {v2, v7}, Lhy6;->writeByte(I)Lvu0;

    iget-object v6, v5, Lvn2$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    iget-object v5, v5, Lvn2$b;->b:[J

    array-length v6, v5

    move v8, v3

    :goto_2
    if-ge v8, v6, :cond_2

    aget-wide v9, v5, v8

    invoke-virtual {v2, v7}, Lhy6;->writeByte(I)Lvu0;

    invoke-virtual {v2, v9, v10}, Lhy6;->h(J)Lvu0;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v1}, Lhy6;->writeByte(I)Lvu0;

    goto :goto_1

    :cond_3
    sget-object v1, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Lhy6;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v1, 0x0

    goto :goto_4

    :catchall_2
    move-exception v1

    goto :goto_4

    :goto_3
    :try_start_3
    invoke-virtual {v2}, Lhy6;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v2

    :try_start_4
    invoke-static {v1, v2}, Lsj0;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_4
    if-nez v1, :cond_5

    iget-object v1, p0, Lvn2;->r:Lyn2;

    iget-object v2, p0, Lvn2;->d:Lj46;

    invoke-virtual {v1, v2}, Lw93;->n(Lj46;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v2, p0, Lvn2;->r:Lyn2;

    if-eqz v1, :cond_4

    :try_start_5
    iget-object v1, p0, Lvn2;->d:Lj46;

    iget-object v4, p0, Lvn2;->f:Lj46;

    iget-object v2, v2, Lyn2;->d:Lw93;

    invoke-virtual {v2, v1, v4}, Lw93;->b(Lj46;Lj46;)V

    iget-object v1, p0, Lvn2;->r:Lyn2;

    iget-object v2, p0, Lvn2;->e:Lj46;

    iget-object v4, p0, Lvn2;->d:Lj46;

    iget-object v1, v1, Lyn2;->d:Lw93;

    invoke-virtual {v1, v2, v4}, Lw93;->b(Lj46;Lj46;)V

    iget-object v1, p0, Lvn2;->r:Lyn2;

    iget-object v2, p0, Lvn2;->f:Lj46;

    invoke-virtual {v1, v2}, Lyn2;->g(Lj46;)V

    goto :goto_5

    :cond_4
    iget-object v1, p0, Lvn2;->e:Lj46;

    iget-object v4, p0, Lvn2;->d:Lj46;

    iget-object v2, v2, Lyn2;->d:Lw93;

    invoke-virtual {v2, v1, v4}, Lw93;->b(Lj46;Lj46;)V

    :goto_5
    invoke-virtual {p0}, Lvn2;->o()Lhy6;

    move-result-object v1

    iput-object v1, p0, Lvn2;->l:Lhy6;

    iput v3, p0, Lvn2;->k:I

    iput-boolean v3, p0, Lvn2;->m:Z

    iput-boolean v3, p0, Lvn2;->q:Z

    sget-object p0, Lj59;->a:Lj59;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v0

    return-void

    :cond_5
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_6
    monitor-exit v0

    throw p0
.end method

.method public final a(Lvn2$a;Z)V
    .locals 10

    iget-object v0, p0, Lvn2;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lvn2$a;->a:Lvn2$b;

    iget-object v2, v1, Lvn2$b;->g:Lvn2$a;

    invoke-static {v2, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    iget-boolean v4, v1, Lvn2$b;->f:Z

    if-nez v4, :cond_4

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v5, p1, Lvn2$a;->c:[Z

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_0

    iget-object v5, p0, Lvn2;->r:Lyn2;

    iget-object v6, v1, Lvn2$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lj46;

    invoke-virtual {v5, v6}, Lw93;->n(Lj46;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v3}, Lvn2$a;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_1
    if-ge p1, v2, :cond_5

    :try_start_1
    iget-object v4, v1, Lvn2$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj46;

    iget-object v5, v1, Lvn2$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj46;

    iget-object v6, p0, Lvn2;->r:Lyn2;

    invoke-virtual {v6, v4}, Lw93;->n(Lj46;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v7, p0, Lvn2;->r:Lyn2;

    if-eqz v6, :cond_2

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v7, Lyn2;->d:Lw93;

    invoke-virtual {v6, v4, v5}, Lw93;->b(Lj46;Lj46;)V

    goto :goto_2

    :cond_2
    iget-object v4, v1, Lvn2$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj46;

    invoke-static {v4, v7}, Lx93;->a(Lj46;Lw93;)V

    :goto_2
    iget-object v4, v1, Lvn2$b;->b:[J

    aget-wide v6, v4, p1

    iget-object v4, p0, Lvn2;->r:Lyn2;

    invoke-virtual {v4, v5}, Lw93;->p(Lj46;)Ls93;

    move-result-object v4

    iget-object v4, v4, Ls93;->d:Ljava/lang/Long;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_3

    :cond_3
    const-wide/16 v4, 0x0

    :goto_3
    iget-object v8, v1, Lvn2$b;->b:[J

    aput-wide v4, v8, p1

    iget-wide v8, p0, Lvn2;->j:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lvn2;->j:J

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    move p1, v3

    :goto_4
    if-ge p1, v2, :cond_5

    iget-object v4, p0, Lvn2;->r:Lyn2;

    iget-object v5, v1, Lvn2$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj46;

    invoke-virtual {v4, v5}, Lw93;->m(Lj46;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    iput-object p1, v1, Lvn2$b;->g:Lvn2$a;

    iget-boolean p1, v1, Lvn2$b;->f:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0, v1}, Lvn2;->E(Lvn2$b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :cond_6
    :try_start_3
    iget p1, p0, Lvn2;->k:I

    const/4 v2, 0x1

    add-int/2addr p1, v2

    iput p1, p0, Lvn2;->k:I

    iget-object p1, p0, Lvn2;->l:Lhy6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xa

    const/16 v5, 0x20

    if-nez p2, :cond_8

    iget-boolean p2, v1, Lvn2$b;->e:Z

    if-eqz p2, :cond_7

    goto :goto_5

    :cond_7
    iget-object p2, p0, Lvn2;->g:Ljava/util/LinkedHashMap;

    iget-object v6, v1, Lvn2$b;->a:Ljava/lang/String;

    invoke-interface {p2, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "REMOVE"

    invoke-virtual {p1, p2}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {p1, v5}, Lhy6;->writeByte(I)Lvu0;

    iget-object p2, v1, Lvn2$b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {p1, v4}, Lhy6;->writeByte(I)Lvu0;

    goto :goto_7

    :cond_8
    :goto_5
    iput-boolean v2, v1, Lvn2$b;->e:Z

    const-string p2, "CLEAN"

    invoke-virtual {p1, p2}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {p1, v5}, Lhy6;->writeByte(I)Lvu0;

    iget-object p2, v1, Lvn2$b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    iget-object p2, v1, Lvn2$b;->b:[J

    array-length v1, p2

    move v6, v3

    :goto_6
    if-ge v6, v1, :cond_9

    aget-wide v7, p2, v6

    invoke-virtual {p1, v5}, Lhy6;->writeByte(I)Lvu0;

    invoke-virtual {p1, v7, v8}, Lhy6;->h(J)Lvu0;

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_9
    invoke-virtual {p1, v4}, Lhy6;->writeByte(I)Lvu0;

    :goto_7
    invoke-virtual {p1}, Lhy6;->flush()V

    iget-wide p1, p0, Lvn2;->j:J

    iget-wide v4, p0, Lvn2;->c:J

    cmp-long p1, p1, v4

    if-gtz p1, :cond_b

    iget p1, p0, Lvn2;->k:I

    const/16 p2, 0x7d0

    if-lt p1, p2, :cond_a

    move v3, v2

    :cond_a
    if-eqz v3, :cond_c

    :cond_b
    invoke-virtual {p0}, Lvn2;->n()V

    :cond_c
    sget-object p0, Lj59;->a:Lj59;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-void

    :cond_d
    :try_start_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_8
    monitor-exit v0

    throw p0
.end method

.method public final b(Ljava/lang/String;)Lvn2$a;
    .locals 5

    iget-object v0, p0, Lvn2;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lvn2;->o:Z

    if-nez v1, :cond_7

    invoke-static {p1}, Lvn2;->Q(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvn2;->m()V

    iget-object v1, p0, Lvn2;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvn2$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v1, Lvn2$b;->g:Lvn2$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    monitor-exit v0

    return-object v2

    :cond_1
    if-eqz v1, :cond_2

    :try_start_1
    iget v3, v1, Lvn2$b;->h:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    monitor-exit v0

    return-object v2

    :cond_2
    :try_start_2
    iget-boolean v3, p0, Lvn2;->p:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lvn2;->q:Z

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lvn2;->l:Lhy6;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "DIRTY"

    invoke-virtual {v3, v4}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lhy6;->writeByte(I)Lvu0;

    invoke-virtual {v3, p1}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lhy6;->writeByte(I)Lvu0;

    invoke-virtual {v3}, Lhy6;->flush()V

    iget-boolean v3, p0, Lvn2;->m:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_4

    monitor-exit v0

    return-object v2

    :cond_4
    if-nez v1, :cond_5

    :try_start_3
    new-instance v1, Lvn2$b;

    invoke-direct {v1, p0, p1}, Lvn2$b;-><init>(Lvn2;Ljava/lang/String;)V

    iget-object v2, p0, Lvn2;->g:Ljava/util/LinkedHashMap;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    new-instance p1, Lvn2$a;

    invoke-direct {p1, p0, v1}, Lvn2$a;-><init>(Lvn2;Lvn2$b;)V

    iput-object p1, v1, Lvn2$b;->g:Lvn2$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p1

    :cond_6
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Lvn2;->n()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-object v2

    :cond_7
    :try_start_5
    const-string p0, "cache is closed"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final close()V
    .locals 8

    iget-object v0, p0, Lvn2;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lvn2;->n:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lvn2;->o:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lvn2;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Lvn2$b;

    invoke-interface {v1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lvn2$b;

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v1, v3

    iget-object v5, v5, Lvn2$b;->g:Lvn2$a;

    if-eqz v5, :cond_1

    iget-object v6, v5, Lvn2$a;->a:Lvn2$b;

    iget-object v7, v6, Lvn2$b;->g:Lvn2$a;

    invoke-static {v7, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-boolean v2, v6, Lvn2$b;->f:Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lvn2;->P()V

    iget-object v1, p0, Lvn2;->h:Lkz1;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lz22;->b(Ly22;Ljava/util/concurrent/CancellationException;)V

    iget-object v1, p0, Lvn2;->l:Lhy6;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lhy6;->close()V

    iput-object v3, p0, Lvn2;->l:Lhy6;

    iput-boolean v2, p0, Lvn2;->o:Z

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_3
    :goto_1
    :try_start_1
    iput-boolean v2, p0, Lvn2;->o:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final e(Ljava/lang/String;)Lvn2$c;
    .locals 5

    iget-object v0, p0, Lvn2;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lvn2;->o:Z

    if-nez v1, :cond_4

    invoke-static {p1}, Lvn2;->Q(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvn2;->m()V

    iget-object v1, p0, Lvn2;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvn2$b;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lvn2$b;->a()Lvn2$c;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget v2, p0, Lvn2;->k:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lvn2;->k:I

    iget-object v2, p0, Lvn2;->l:Lhy6;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "READ"

    invoke-virtual {v2, v4}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Lhy6;->writeByte(I)Lvu0;

    invoke-virtual {v2, p1}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    const/16 p1, 0xa

    invoke-virtual {v2, p1}, Lhy6;->writeByte(I)Lvu0;

    invoke-virtual {v2}, Lhy6;->flush()V

    iget p1, p0, Lvn2;->k:I

    const/16 v2, 0x7d0

    if-lt p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lvn2;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_1
    monitor-exit v0

    return-object v1

    :cond_3
    :goto_2
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_4
    :try_start_1
    const-string p0, "cache is closed"

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    monitor-exit v0

    throw p0
.end method

.method public final m()V
    .locals 5

    iget-object v0, p0, Lvn2;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lvn2;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lvn2;->r:Lyn2;

    iget-object v2, p0, Lvn2;->e:Lj46;

    invoke-virtual {v1, v2}, Lyn2;->g(Lj46;)V

    iget-object v1, p0, Lvn2;->r:Lyn2;

    iget-object v2, p0, Lvn2;->f:Lj46;

    invoke-virtual {v1, v2}, Lw93;->n(Lj46;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lvn2;->r:Lyn2;

    iget-object v2, p0, Lvn2;->d:Lj46;

    invoke-virtual {v1, v2}, Lw93;->n(Lj46;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lvn2;->r:Lyn2;

    iget-object v3, p0, Lvn2;->f:Lj46;

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v2, v3}, Lyn2;->g(Lj46;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lvn2;->d:Lj46;

    iget-object v2, v2, Lyn2;->d:Lw93;

    invoke-virtual {v2, v3, v1}, Lw93;->b(Lj46;Lj46;)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lvn2;->r:Lyn2;

    iget-object v2, p0, Lvn2;->d:Lj46;

    invoke-virtual {v1, v2}, Lw93;->n(Lj46;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {p0}, Lvn2;->v()V

    invoke-virtual {p0}, Lvn2;->p()V

    iput-boolean v2, p0, Lvn2;->n:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-void

    :catch_0
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0}, Lvn2;->close()V

    iget-object v3, p0, Lvn2;->r:Lyn2;

    iget-object v4, p0, Lvn2;->b:Lj46;

    invoke-static {v4, v3}, Lx93;->b(Lj46;Lw93;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iput-boolean v1, p0, Lvn2;->o:Z

    goto :goto_1

    :catchall_1
    move-exception v2

    iput-boolean v1, p0, Lvn2;->o:Z

    throw v2

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lvn2;->U()V

    iput-boolean v2, p0, Lvn2;->n:Z

    sget-object p0, Lj59;->a:Lj59;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final n()V
    .locals 3

    new-instance v0, Lvn2$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lvn2$d;-><init>(Lvn2;Le02;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lvn2;->h:Lkz1;

    invoke-static {p0, v1, v1, v0, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method public final o()Lhy6;
    .locals 4

    iget-object v0, p0, Lvn2;->d:Lj46;

    iget-object v1, p0, Lvn2;->r:Lyn2;

    iget-object v1, v1, Lyn2;->d:Lw93;

    invoke-virtual {v1, v0}, Lw93;->a(Lj46;)Ls18;

    move-result-object v0

    new-instance v1, Lm53;

    new-instance v2, Ltx;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Ltx;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v1, v0, v2}, Lm53;-><init>(Ls18;Ltx;)V

    new-instance p0, Lhy6;

    invoke-direct {p0, v1}, Lhy6;-><init>(Ls18;)V

    return-object p0
.end method

.method public final p()V
    .locals 9

    iget-object v0, p0, Lvn2;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvn2$b;

    iget-object v4, v3, Lvn2$b;->g:Lvn2$a;

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-nez v4, :cond_1

    :goto_1
    if-ge v6, v5, :cond_0

    iget-object v4, v3, Lvn2$b;->b:[J

    aget-wide v7, v4, v6

    add-long/2addr v1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    iput-object v4, v3, Lvn2$b;->g:Lvn2$a;

    :goto_2
    if-ge v6, v5, :cond_2

    iget-object v4, v3, Lvn2$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj46;

    iget-object v7, p0, Lvn2;->r:Lyn2;

    invoke-virtual {v7, v4}, Lw93;->m(Lj46;)V

    iget-object v4, v3, Lvn2$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj46;

    invoke-virtual {v7, v4}, Lw93;->m(Lj46;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    iput-wide v1, p0, Lvn2;->j:J

    return-void
.end method

.method public final v()V
    .locals 11

    const-string v0, ", "

    const-string v1, "unexpected journal header: ["

    iget-object v2, p0, Lvn2;->d:Lj46;

    iget-object v3, p0, Lvn2;->r:Lyn2;

    iget-object v3, v3, Lyn2;->d:Lw93;

    invoke-virtual {v3, v2}, Lw93;->Q(Lj46;)Lv48;

    move-result-object v2

    invoke-static {v2}, Lc84;->f(Lv48;)Liy6;

    move-result-object v2

    const-wide v3, 0x7fffffffffffffffL

    :try_start_0
    invoke-virtual {v2, v3, v4}, Liy6;->S(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4}, Liy6;->S(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4}, Liy6;->S(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v4}, Liy6;->S(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v4}, Liy6;->S(J)Ljava/lang/String;

    move-result-object v9

    const-string v10, "libcore.io.DiskLruCache"

    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "1"

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v10, :cond_1

    const/4 v0, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v2, v3, v4}, Liy6;->S(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lvn2;->y(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_2
    iget-object v1, p0, Lvn2;->g:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lvn2;->k:I

    invoke-virtual {v2}, Liy6;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lvn2;->U()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lvn2;->o()Lhy6;

    move-result-object v0

    iput-object v0, p0, Lvn2;->l:Lhy6;

    :goto_1
    sget-object p0, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Liy6;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 p0, 0x0

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_1
    :try_start_4
    new-instance p0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    invoke-virtual {v2}, Liy6;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    invoke-static {p0, v0}, Lsj0;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_3
    if-nez p0, :cond_2

    return-void

    :cond_2
    throw p0
.end method

.method public final y(Ljava/lang/String;)V
    .locals 10

    const/16 v0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, v1, v2, p1}, Lta8;->J(CIILjava/lang/CharSequence;)I

    move-result v3

    const-string v4, "unexpected journal line: "

    const/4 v5, -0x1

    if-eq v3, v5, :cond_8

    add-int/lit8 v6, v3, 0x1

    const/4 v7, 0x4

    invoke-static {v0, v6, v7, p1}, Lta8;->J(CIILjava/lang/CharSequence;)I

    move-result v8

    iget-object v9, p0, Lvn2;->g:Ljava/util/LinkedHashMap;

    if-ne v8, v5, :cond_0

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    if-ne v3, v2, :cond_1

    const-string v2, "REMOVE"

    invoke-static {p1, v2, v1}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_1
    invoke-virtual {v9, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Lvn2$b;

    invoke-direct {v2, p0, v6}, Lvn2$b;-><init>(Lvn2;Ljava/lang/String;)V

    invoke-interface {v9, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    check-cast v2, Lvn2$b;

    const/4 v6, 0x5

    if-eq v8, v5, :cond_4

    if-ne v3, v6, :cond_4

    const-string v9, "CLEAN"

    invoke-static {p1, v9, v1}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 p0, 0x1

    add-int/2addr v8, p0

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-array v3, p0, [C

    aput-char v0, v3, v1

    invoke-static {p1, v3}, Lta8;->X(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object p1

    iput-boolean p0, v2, Lvn2$b;->e:Z

    const/4 p0, 0x0

    iput-object p0, v2, Lvn2$b;->g:Lvn2$a;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    :try_start_0
    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    :goto_0
    if-ge v1, p0, :cond_6

    iget-object v0, v2, Lvn2$b;->b:[J

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    invoke-static {p1, v4}, Lav;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {p1, v4}, Lav;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_4
    if-ne v8, v5, :cond_5

    if-ne v3, v6, :cond_5

    const-string v0, "DIRTY"

    invoke-static {p1, v0, v1}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p1, Lvn2$a;

    invoke-direct {p1, p0, v2}, Lvn2$a;-><init>(Lvn2;Lvn2$b;)V

    iput-object p1, v2, Lvn2$b;->g:Lvn2$a;

    return-void

    :cond_5
    if-ne v8, v5, :cond_7

    if-ne v3, v7, :cond_7

    const-string p0, "READ"

    invoke-static {p1, p0, v1}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-void
.end method
