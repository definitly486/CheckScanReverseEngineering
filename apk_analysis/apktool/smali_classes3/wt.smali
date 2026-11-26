.class public final synthetic Lwt;
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

    iput p1, p0, Lwt;->b:I

    iput-object p2, p0, Lwt;->c:Ljava/lang/Object;

    iput-object p3, p0, Lwt;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lwt;->b:I

    iget-object v1, p0, Lwt;->d:Ljava/lang/Object;

    iget-object p0, p0, Lwt;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/tracker/obfuscated/r1;

    check-cast v1, Ljava/util/List;

    invoke-static {p0, v1}, Lcom/my/tracker/obfuscated/r1;->a(Lcom/my/tracker/obfuscated/r1;Ljava/util/List;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/tapjoy/TJOfferwallDiscoverView;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/tapjoy/TJOfferwallDiscoverView;->a(Ljava/lang/String;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    check-cast v1, Landroid/app/job/JobParameters;

    sget v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;->b:I

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    :pswitch_2
    check-cast p0, Landroid/content/Context;

    check-cast v1, Landroidx/media3/common/util/ConditionVariable;

    invoke-static {p0, v1}, Landroidx/media3/common/audio/AudioManagerCompat;->a(Landroid/content/Context;Landroidx/media3/common/util/ConditionVariable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
