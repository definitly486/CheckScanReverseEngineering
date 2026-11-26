.class public final Lzq5$a;
.super Lve0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzq5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lve0<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final f:Lxl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxl3<",
            "-TT;TK;>;"
        }
    .end annotation
.end field

.field public final g:Lmi0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmi0<",
            "-TK;-TK;>;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public i:Z


# direct methods
.method public constructor <init>(Lls5;Lrm3$i;Lnq5$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lve0;-><init>(Lls5;)V

    iput-object p2, p0, Lzq5$a;->f:Lxl3;

    iput-object p3, p0, Lzq5$a;->g:Lmi0;

    return-void
.end method


# virtual methods
.method public final d(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lve0;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lzq5$a;->f:Lxl3;

    invoke-interface {v0, p1}, Lxl3;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-boolean v1, p0, Lzq5$a;->i:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lzq5$a;->g:Lmi0;

    iget-object v2, p0, Lzq5$a;->h:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lmi0;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iput-object v0, p0, Lzq5$a;->h:Ljava/lang/Object;

    if-eqz v1, :cond_2

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lzq5$a;->i:Z

    iput-object v0, p0, Lzq5$a;->h:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object p0, p0, Lve0;->b:Lls5;

    invoke-interface {p0, p1}, Lls5;->onNext(Ljava/lang/Object;)V

    return-void

    :goto_1
    invoke-static {p1}, Lm13;->d(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lve0;->c:Lcp2;

    invoke-interface {v0}, Lcp2;->dispose()V

    invoke-virtual {p0, p1}, Lve0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lve0;->d:Lyv6;

    invoke-interface {v0}, Liz7;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lzq5$a;->f:Lxl3;

    invoke-interface {v1, v0}, Lxl3;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, Lzq5$a;->i:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lzq5$a;->i:Z

    iput-object v1, p0, Lzq5$a;->h:Ljava/lang/Object;

    return-object v0

    :cond_1
    iget-object v2, p0, Lzq5$a;->g:Lmi0;

    iget-object v3, p0, Lzq5$a;->h:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lmi0;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-object v1, p0, Lzq5$a;->h:Ljava/lang/Object;

    return-object v0

    :cond_2
    iput-object v1, p0, Lzq5$a;->h:Ljava/lang/Object;

    goto :goto_0
.end method
