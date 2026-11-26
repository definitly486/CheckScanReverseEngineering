.class public Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "backendName"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "extras"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "priority"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    const-string v4, "attemptNumber"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Ld39;->b(Landroid/content/Context;)V

    invoke-static {}, Ls29;->a()Lhz$a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lhz$a;->b(Ljava/lang/String;)Lhz$a;

    invoke-static {v2}, Lkg6;->b(I)Lig6;

    move-result-object v0

    iput-object v0, v4, Lhz$a;->c:Lig6;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, v4, Lhz$a;->b:[B

    :cond_0
    invoke-static {}, Ld39;->a()Ld39;

    move-result-object v0

    iget-object v0, v0, Ld39;->d:Lr89;

    invoke-virtual {v4}, Lhz$a;->a()Lhz;

    move-result-object v1

    new-instance v2, Lwt;

    const/4 v4, 0x1

    invoke-direct {v2, v4, p0, p1}, Lwt;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v0, Lr89;->e:Ljava/util/concurrent/Executor;

    new-instance p1, Lq89;

    invoke-direct {p1, v0, v1, v3, v2}, Lq89;-><init>(Lr89;Lhz;ILjava/lang/Runnable;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v4
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
