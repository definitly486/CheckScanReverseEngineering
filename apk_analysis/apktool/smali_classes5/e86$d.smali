.class public final Le86$d;
.super Lio/grpc/h$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le86;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic b:Le86;


# direct methods
.method public constructor <init>(Le86;)V
    .locals 1

    iput-object p1, p0, Le86$d;->b:Le86;

    invoke-direct {p0}, Lio/grpc/h$k;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Le86$d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(Ll86;)Lio/grpc/h$g;
    .locals 2

    iget-object p1, p0, Le86$d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Le86$d;->b:Le86;

    iget-object p1, p0, Le86;->f:Lio/grpc/h$e;

    invoke-virtual {p1}, Lio/grpc/h$e;->d()Lch8;

    move-result-object p1

    new-instance v0, Lqm;

    invoke-direct {v0, p0, v1}, Lqm;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lch8;->execute(Ljava/lang/Runnable;)V

    :cond_0
    sget-object p0, Lio/grpc/h$g;->e:Lio/grpc/h$g;

    return-object p0
.end method
