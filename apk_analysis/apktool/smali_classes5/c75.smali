.class public final Lc75;
.super La75;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc75$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "La75<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lv75;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv75<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv75;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv75<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, La75;-><init>()V

    iput-object p1, p0, Lc75;->b:Lv75;

    return-void
.end method


# virtual methods
.method public final d(Lt75;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt75<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lc75$a;

    invoke-direct {v0, p1}, Lc75$a;-><init>(Lt75;)V

    invoke-interface {p1, v0}, Lt75;->onSubscribe(Lcp2;)V

    :try_start_0
    iget-object p0, p0, Lc75;->b:Lv75;

    invoke-interface {p0, v0}, Lv75;->a(Lc75$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lc75$a;->d(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Ld97;->b(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
