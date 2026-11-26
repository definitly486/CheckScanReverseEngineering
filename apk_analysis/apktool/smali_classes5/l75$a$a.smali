.class public final Ll75$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt75;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll75$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt75<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ll75$a;


# direct methods
.method public constructor <init>(Ll75$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll75$a$a;->b:Ll75$a;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 0

    iget-object p0, p0, Ll75$a$a;->b:Ll75$a;

    iget-object p0, p0, Ll75$a;->b:Lt75;

    invoke-interface {p0}, Lt75;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Ll75$a$a;->b:Ll75$a;

    iget-object p0, p0, Ll75$a;->b:Lt75;

    invoke-interface {p0, p1}, Lt75;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 0

    iget-object p0, p0, Ll75$a$a;->b:Ll75$a;

    invoke-static {p0, p1}, Lip2;->g(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object p0, p0, Ll75$a$a;->b:Ll75$a;

    iget-object p0, p0, Ll75$a;->b:Lt75;

    invoke-interface {p0, p1}, Lt75;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
