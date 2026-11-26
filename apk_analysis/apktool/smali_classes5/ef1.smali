.class public final synthetic Lef1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Leh8$a;
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lef1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lef1;->b:Ljava/lang/Object;

    check-cast p0, Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqq1;

    return-object p0
.end method

.method public execute()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lef1;->b:Ljava/lang/Object;

    check-cast p0, Lf13;

    invoke-interface {p0}, Lf13;->s()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public get()J
    .locals 2

    iget-object p0, p0, Lef1;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    iget-object p0, p0, Lef1;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-static {p0, p1}, Lio/appmetrica/analytics/push/provider/firebase/impl/f;->a(Ljava/util/concurrent/CountDownLatch;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lef1;->b:Ljava/lang/Object;

    check-cast p0, Lnb5$a;

    invoke-virtual {p0, p1}, Lnb5$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
