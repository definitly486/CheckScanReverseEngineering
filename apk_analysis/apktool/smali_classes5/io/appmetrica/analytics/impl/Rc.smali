.class public final Lio/appmetrica/analytics/impl/Rc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/R8;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ee;

.field public final b:Lll3;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Ee;Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Ee;",
            "Lll3<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Rc;->a:Lio/appmetrica/analytics/impl/Ee;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Rc;->b:Lll3;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Rc;->a:Lio/appmetrica/analytics/impl/Ee;

    check-cast v0, Lio/appmetrica/analytics/impl/De;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/De;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Rc;->b:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
