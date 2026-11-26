.class public final Li08$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt75;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li08;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lt75<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:Li08$b;

.field public final c:Lt75;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt75<",
            "-TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li08$b;Lt75;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li08$a;->b:Li08$b;

    iput-object p2, p0, Li08$a;->c:Lt75;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 0

    iget-object p0, p0, Li08$a;->c:Lt75;

    invoke-interface {p0}, Lt75;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Li08$a;->c:Lt75;

    invoke-interface {p0, p1}, Lt75;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 0

    iget-object p0, p0, Li08$a;->b:Li08$b;

    invoke-static {p0, p1}, Lip2;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object p0, p0, Li08$a;->c:Lt75;

    invoke-interface {p0, p1}, Lt75;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
