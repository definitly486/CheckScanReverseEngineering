.class public final Lsg3$a;
.super Lue0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsg3;
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
        "Lue0<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final g:Lze6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lze6<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgv1;Lze6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgv1<",
            "-TT;>;",
            "Lze6<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lue0;-><init>(Lgv1;)V

    iput-object p2, p0, Lsg3$a;->g:Lze6;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lue0;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lue0;->f:I

    iget-object v1, p0, Lue0;->b:Lgv1;

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    invoke-interface {v1, p0}, Lgv1;->e(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lsg3$a;->g:Lze6;

    invoke-interface {v2, p1}, Lze6;->test(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    invoke-interface {v1, p1}, Lgv1;->e(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Lue0;->b(Ljava/lang/Throwable;)V

    return v0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lsg3$a;->e(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lue0;->c:Lbc8;

    const-wide/16 v0, 0x1

    invoke-interface {p0, v0, v1}, Lbc8;->request(J)V

    :cond_0
    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lue0;->d:Lmw6;

    :cond_0
    :goto_0
    invoke-interface {v0}, Liz7;->poll()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v2, p0, Lsg3$a;->g:Lze6;

    invoke-interface {v2, v1}, Lze6;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    iget v1, p0, Lue0;->f:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lbc8;->request(J)V

    goto :goto_0
.end method
