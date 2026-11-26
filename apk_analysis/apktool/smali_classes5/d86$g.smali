.class public final Ld86$g;
.super Lio/grpc/h$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld86;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "g"
.end annotation


# instance fields
.field public final a:Ld86;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic c:Ld86;


# direct methods
.method public constructor <init>(Ld86;Ld86;)V
    .locals 1

    iput-object p1, p0, Ld86$g;->c:Ld86;

    invoke-direct {p0}, Lio/grpc/h$k;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Ld86$g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Ld86$g;->a:Ld86;

    return-void
.end method


# virtual methods
.method public final a(Ll86;)Lio/grpc/h$g;
    .locals 2

    iget-object p1, p0, Ld86$g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ld86$g;->c:Ld86;

    iget-object p1, p1, Ld86;->g:Lio/grpc/h$e;

    invoke-virtual {p1}, Lio/grpc/h$e;->d()Lch8;

    move-result-object p1

    iget-object p0, p0, Ld86$g;->a:Ld86;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lom;

    invoke-direct {v0, p0, v1}, Lom;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lch8;->execute(Ljava/lang/Runnable;)V

    :cond_0
    sget-object p0, Lio/grpc/h$g;->e:Lio/grpc/h$g;

    return-object p0
.end method
