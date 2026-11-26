.class public final Lj06$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj06;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj06$c$a;
    }
.end annotation


# instance fields
.field public a:Lj06$f;

.field public volatile b:Lj06$c$a;

.field public c:Lj06$c$a;

.field public d:Ljava/lang/Long;

.field public e:I

.field public final f:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lj06$f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj06$c$a;

    invoke-direct {v0}, Lj06$c$a;-><init>()V

    iput-object v0, p0, Lj06$c;->b:Lj06$c$a;

    new-instance v0, Lj06$c$a;

    invoke-direct {v0}, Lj06$c$a;-><init>()V

    iput-object v0, p0, Lj06$c;->c:Lj06$c$a;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lj06$c;->f:Ljava/util/HashSet;

    iput-object p1, p0, Lj06$c;->a:Lj06$f;

    return-void
.end method


# virtual methods
.method public final a(Lj06$h;)V
    .locals 4

    invoke-virtual {p0}, Lj06$c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lj06$h;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lj06$h;->k()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lj06$c;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lj06$h;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lj06$h;->c:Z

    iget-object v0, p1, Lj06$h;->d:Ldx1;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lj06$h;->e:Lio/grpc/h$l;

    invoke-interface {v1, v0}, Lio/grpc/h$l;->a(Ldx1;)V

    iget-object v0, p1, Lj06$h;->f:Ln91;

    sget-object v1, Ln91$a;->INFO:Ln91$a;

    const-string v2, "Subchannel unejected: {0}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ln91;->b(Ln91$a;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iput-object p0, p1, Lj06$h;->b:Lj06$c;

    iget-object p0, p0, Lj06$c;->f:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lj06$c;->d:Ljava/lang/Long;

    iget p1, p0, Lj06$c;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lj06$c;->e:I

    iget-object p0, p0, Lj06$c;->f:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj06$h;

    invoke-virtual {p1}, Lj06$h;->k()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()J
    .locals 4

    iget-object v0, p0, Lj06$c;->c:Lj06$c$a;

    iget-object v0, v0, Lj06$c$a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object p0, p0, Lj06$c;->c:Lj06$c$a;

    iget-object p0, p0, Lj06$c$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Lj06$c;->d:Ljava/lang/Long;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Lj06$c;->d:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "not currently ejected"

    invoke-static {v0, v2}, Lo8;->s(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lj06$c;->d:Ljava/lang/Long;

    iget-object p0, p0, Lj06$c;->f:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj06$h;

    iput-boolean v1, v0, Lj06$h;->c:Z

    iget-object v2, v0, Lj06$h;->d:Ldx1;

    if-eqz v2, :cond_1

    iget-object v3, v0, Lj06$h;->e:Lio/grpc/h$l;

    invoke-interface {v3, v2}, Lio/grpc/h$l;->a(Ldx1;)V

    iget-object v2, v0, Lj06$h;->f:Ln91;

    sget-object v3, Ln91$a;->INFO:Ln91$a;

    const-string v4, "Subchannel unejected: {0}"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Ln91;->b(Ln91$a;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EndpointTracker{subchannels="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lj06$c;->f:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
