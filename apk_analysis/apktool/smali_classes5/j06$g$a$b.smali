.class public final Lj06$g$a$b;
.super Lio/grpc/c;
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
.field public final synthetic p:Lj06$g$a;


# direct methods
.method public constructor <init>(Lj06$g$a;)V
    .locals 0

    iput-object p1, p0, Lj06$g$a$b;->p:Lj06$g$a;

    invoke-direct {p0}, Lio/grpc/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final N(Lh88;)V
    .locals 2

    iget-object p0, p0, Lj06$g$a$b;->p:Lj06$g$a;

    iget-object p0, p0, Lj06$g$a;->a:Lj06$c;

    invoke-virtual {p1}, Lh88;->f()Z

    move-result p1

    iget-object v0, p0, Lj06$c;->a:Lj06$f;

    iget-object v1, v0, Lj06$f;->e:Lj06$f$c;

    if-nez v1, :cond_0

    iget-object v0, v0, Lj06$f;->f:Lj06$f$b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lj06$c;->b:Lj06$c$a;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lj06$c$a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    return-void

    :cond_1
    iget-object p0, p0, Lj06$c$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    return-void
.end method
