.class public final Lu75$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt75;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu75$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lt75<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lt75;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt75<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Lu75$a;


# direct methods
.method public constructor <init>(Lt75;Lu75$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu75$a$a;->b:Lt75;

    iput-object p2, p0, Lu75$a$a;->c:Lu75$a;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 0

    iget-object p0, p0, Lu75$a$a;->b:Lt75;

    invoke-interface {p0}, Lt75;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lu75$a$a;->b:Lt75;

    invoke-interface {p0, p1}, Lt75;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 0

    iget-object p0, p0, Lu75$a$a;->c:Lu75$a;

    invoke-static {p0, p1}, Lip2;->g(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lu75$a$a;->b:Lt75;

    invoke-interface {p0, p1}, Lt75;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
