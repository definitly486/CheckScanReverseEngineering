.class public final Lj06$g$a$a;
.super Lbj3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj06$g$a;->a(Lio/grpc/c$b;Lla5;)Lio/grpc/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic p:Lio/grpc/c;

.field public final synthetic q:Lj06$g$a;


# direct methods
.method public constructor <init>(Lj06$g$a;Lio/grpc/c;)V
    .locals 0

    iput-object p1, p0, Lj06$g$a$a;->q:Lj06$g$a;

    iput-object p2, p0, Lj06$g$a$a;->p:Lio/grpc/c;

    invoke-direct {p0}, Lio/grpc/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final N(Lh88;)V
    .locals 4

    iget-object v0, p0, Lj06$g$a$a;->q:Lj06$g$a;

    iget-object v0, v0, Lj06$g$a;->a:Lj06$c;

    invoke-virtual {p1}, Lh88;->f()Z

    move-result v1

    iget-object v2, v0, Lj06$c;->a:Lj06$f;

    iget-object v3, v2, Lj06$f;->e:Lj06$f$c;

    if-nez v3, :cond_0

    iget-object v2, v2, Lj06$f;->f:Lj06$f$b;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lj06$c;->b:Lj06$c$a;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lj06$c$a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lj06$c$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    :goto_0
    iget-object p0, p0, Lj06$g$a$a;->p:Lio/grpc/c;

    invoke-virtual {p0, p1}, Ly14;->N(Lh88;)V

    return-void
.end method
