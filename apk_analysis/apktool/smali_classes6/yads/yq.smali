.class public final Lyads/yq;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/wq;

.field public final synthetic c:Lyads/s03;

.field public final synthetic d:Lyads/ar;

.field public final synthetic e:Lyads/n8;


# direct methods
.method public constructor <init>(Lyads/wq;Lyads/s03;Lyads/ar;Lyads/n8;)V
    .locals 0

    iput-object p1, p0, Lyads/yq;->b:Lyads/wq;

    iput-object p2, p0, Lyads/yq;->c:Lyads/s03;

    iput-object p3, p0, Lyads/yq;->d:Lyads/ar;

    iput-object p4, p0, Lyads/yq;->e:Lyads/n8;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lyads/yq;->b:Lyads/wq;

    new-instance v0, Lyads/xq;

    iget-object v1, p0, Lyads/yq;->c:Lyads/s03;

    iget-object v2, p0, Lyads/yq;->d:Lyads/ar;

    iget-object p0, p0, Lyads/yq;->e:Lyads/n8;

    invoke-direct {v0, v1, v2, p0}, Lyads/xq;-><init>(Lyads/s03;Lyads/ar;Lyads/n8;)V

    iget-object p0, p1, Lyads/wq;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lyads/xq;->invoke()Ljava/lang/Object;

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
