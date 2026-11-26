.class public final synthetic Lfh1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Lcom/google/android/gms/tasks/Continuation;
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Lyads/ut3;
.implements Lcom/my/target/c1$a;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lfh1;->b:I

    iput-object p1, p0, Lfh1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lyads/my2;)V
    .locals 0

    iget-object p0, p0, Lfh1;->c:Ljava/lang/Object;

    check-cast p0, Lyads/eq2;

    check-cast p1, Lyads/iw4;

    invoke-virtual {p0, p1, p2}, Lyads/eq2;->a(Lyads/iw4;Lyads/my2;)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lfh1;->b:I

    iget-object p0, p0, Lfh1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    check-cast p0, Lcom/warefly/checkscan/presentation/statistics/presenter/a;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/statistics/presenter/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_1
    check-cast p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    check-cast p1, Lm21;

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->c(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Lm21;)La75;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Ljd1;

    invoke-virtual {p0, p1}, Ljd1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqq1;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public d(Le6a;)V
    .locals 1

    iget-object p0, p0, Lfh1;->c:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/lb;

    sget v0, Lcom/my/target/lb;->o:I

    iput-object p1, p0, Lcom/my/target/lb;->e:Le6a;

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lfh1;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/SimpleBasePlayer$State;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->i0(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfh1;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorker;->a(Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method
