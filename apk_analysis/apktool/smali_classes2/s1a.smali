.class public final Ls1a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lx2a;

.field public final synthetic g:Lya5;


# direct methods
.method public constructor <init>(Lx2a;Lya5;)V
    .locals 0

    iput-object p1, p0, Ls1a;->f:Lx2a;

    iput-object p2, p0, Ls1a;->g:Lya5;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Ls1a;->f:Lx2a;

    iget-boolean v1, v0, Lx2a;->e:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_7

    new-instance v1, Lmv9;

    invoke-direct {v1, v0}, Lmv9;-><init>(Lx2a;)V

    new-instance v4, Lk08;

    invoke-direct {v4, v1}, Lk08;-><init>(Lll3;)V

    invoke-static {}, Lpo2;->a()Ljo2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lf18;

    invoke-direct {v5, v4, v1}, Lf18;-><init>(Llz7;Ljo2;)V

    new-instance v1, Lae1;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v4}, Lae1;-><init>(Ljava/lang/Object;I)V

    new-instance v6, Lo0a;

    invoke-direct {v6, v4}, Lgh4;-><init>(I)V

    invoke-static {v5, v1, v6}, Ld31;->r(Llz7;Lnl3;Lnl3;)Ld18;

    iget-object v1, v0, Lx2a;->c:Lwb9;

    iget-object v1, v1, Lwb9;->a:Landroid/content/Context;

    const-class v5, Landroid/app/job/JobScheduler;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Landroid/app/job/JobScheduler;

    invoke-virtual {v5}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v6, Ljava/util/Collection;

    const v8, 0x540a8a4

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getId()I

    move-result v7

    if-ne v7, v8, :cond_1

    goto/16 :goto_3

    :cond_2
    :goto_0
    new-instance v6, Landroid/content/ComponentName;

    const-class v7, Lru/rustore/sdk/metrics/internal/presentation/SendMetricsEventJobService;

    invoke-direct {v6, v1, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v1, Ljava/util/Collection;

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v2

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v7, v2

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/job/JobInfo;

    invoke-virtual {v9}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v9

    invoke-static {v9, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    add-int/lit8 v7, v7, 0x1

    if-ltz v7, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {}, Lu96;->n()V

    throw v3

    :cond_6
    :goto_2
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v1, v8, v6}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v6, Lwt2;->c:Lwt2$a;

    const-string v6, "1440"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sget-object v8, Lau2;->MINUTES:Lau2;

    invoke-static {v6, v8}, Lyt2;->e(ILau2;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lwt2;->e(J)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    new-instance v6, Landroid/os/PersistableBundle;

    invoke-direct {v6}, Landroid/os/PersistableBundle;-><init>()V

    const-string v8, "pending_jobs_count"

    invoke-virtual {v6, v8, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v6}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :goto_3
    iput-boolean v4, v0, Lx2a;->e:Z

    :cond_7
    new-instance v1, Lk1a;

    iget-object p0, p0, Ls1a;->g:Lya5;

    invoke-direct {v1, p0}, Lk1a;-><init>(Lya5;)V

    iget-object v0, v0, Lx2a;->b:Lnt;

    iget-object v0, v0, Lnt;->a:Ljava/lang/Object;

    check-cast v0, Lth5;

    new-instance v1, Ljy4;

    invoke-direct {v1, p0, v2}, Ljy4;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lab4;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lw8a;->a(Lya5;)Ljava/lang/String;

    move-result-object p0

    sget-object v4, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, p0}, Lab4;-><init>(Ljava/lang/String;[B)V

    iget-object v0, v0, Lth5;->b:Ljava/lang/Object;

    check-cast v0, Lnz3;

    iget-object v0, v0, Lnz3;->b:Lfh8;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "uuid"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "metrics_event"

    invoke-virtual {v4, v5, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_0
    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "metrics_event_table"

    invoke-virtual {p0, v5, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-wide/16 v6, -0x1

    cmp-long p0, v4, v6

    if-eqz p0, :cond_8

    new-instance p0, Llz3;

    invoke-direct {p0, v1}, Llz3;-><init>(Lab4;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Saving error "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MetricsEventUuid(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lkz3;

    invoke-direct {v0, p0}, Lkz3;-><init>(Ljava/lang/String;)V

    new-instance v0, Lru/rustore/sdk/metrics/MetricsException$SaveMetricsEventError;

    invoke-direct {v0, p0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catchall_0
    move-exception p0

    :try_start_1
    new-instance v1, Lru/rustore/sdk/metrics/MetricsException$MetricsDbError;

    const-string v2, "Interaction with database failed"

    invoke-direct {v1, v2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0
.end method
