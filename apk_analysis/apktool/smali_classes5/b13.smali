.class public abstract Lb13;
.super Lr22;
.source "SourceFile"


# static fields
.field public static final synthetic f:I


# instance fields
.field public c:J

.field public d:Z

.field public e:Lfr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfr<",
            "Lio2<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr22;-><init>()V

    return-void
.end method


# virtual methods
.method public final k0(Z)V
    .locals 4

    iget-wide v0, p0, Lb13;->c:J

    if-eqz p1, :cond_0

    const-wide v2, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    sub-long/2addr v0, v2

    iput-wide v0, p0, Lb13;->c:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lb13;->d:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lb13;->shutdown()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final limitedParallelism(ILjava/lang/String;)Lr22;
    .locals 0

    invoke-static {p1}, Lzd3;->b(I)V

    if-eqz p2, :cond_0

    new-instance p1, Lwh5;

    invoke-direct {p1, p0, p2}, Lwh5;-><init>(Lr22;Ljava/lang/String;)V

    return-object p1

    :cond_0
    return-object p0
.end method

.method public final n0(Lio2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio2<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lb13;->e:Lfr;

    if-nez v0, :cond_0

    new-instance v0, Lfr;

    invoke-direct {v0}, Lfr;-><init>()V

    iput-object v0, p0, Lb13;->e:Lfr;

    :cond_0
    invoke-virtual {v0, p1}, Lfr;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public final q0(Z)V
    .locals 4

    iget-wide v0, p0, Lb13;->c:J

    if-eqz p1, :cond_0

    const-wide v2, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    add-long/2addr v2, v0

    iput-wide v2, p0, Lb13;->c:J

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb13;->d:Z

    :cond_1
    return-void
.end method

.method public r0()J
    .locals 2

    invoke-virtual {p0}, Lb13;->u0()Z

    move-result p0

    if-nez p0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method

.method public final u0()Z
    .locals 1

    iget-object p0, p0, Lb13;->e:Lfr;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lfr;->p()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio2;

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lio2;->run()V

    const/4 p0, 0x1

    return p0
.end method
