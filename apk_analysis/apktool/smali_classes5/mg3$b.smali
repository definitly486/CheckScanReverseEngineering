.class public final Lmg3$b;
.super Lwe0;
.source "SourceFile"

# interfaces
.implements Lgv1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmg3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lwe0<",
        "TT;TT;>;",
        "Lgv1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final g:Lxl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxl3<",
            "-TT;TK;>;"
        }
    .end annotation
.end field

.field public final h:Lmi0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmi0<",
            "-TK;-TK;>;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public j:Z


# direct methods
.method public constructor <init>(Lwb8;Lrm3$i;Lff1;)V
    .locals 0

    invoke-direct {p0, p1}, Lwe0;-><init>(Lwb8;)V

    iput-object p2, p0, Lmg3$b;->g:Lxl3;

    iput-object p3, p0, Lmg3$b;->h:Lmi0;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lwe0;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lwe0;->f:I

    iget-object v1, p0, Lwe0;->b:Lwb8;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v1, p1}, Lwb8;->onNext(Ljava/lang/Object;)V

    return v2

    :cond_1
    :try_start_0
    iget-object v0, p0, Lmg3$b;->g:Lxl3;

    invoke-interface {v0, p1}, Lxl3;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-boolean v3, p0, Lmg3$b;->j:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmg3$b;->h:Lmi0;

    iget-object v4, p0, Lmg3$b;->i:Ljava/lang/Object;

    invoke-interface {v3, v4, v0}, Lmi0;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    iput-object v0, p0, Lmg3$b;->i:Ljava/lang/Object;

    if-eqz v3, :cond_3

    :goto_0
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lmg3$b;->j:Z

    iput-object v0, p0, Lmg3$b;->i:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-interface {v1, p1}, Lwb8;->onNext(Ljava/lang/Object;)V

    return v2

    :goto_1
    invoke-virtual {p0, p1}, Lwe0;->b(Ljava/lang/Throwable;)V

    return v2
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmg3$b;->e(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lwe0;->c:Lbc8;

    const-wide/16 v0, 0x1

    invoke-interface {p0, v0, v1}, Lbc8;->request(J)V

    :cond_0
    return-void
.end method

.method public final poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :cond_0
    :goto_0
    iget-object v0, p0, Lwe0;->d:Lmw6;

    invoke-interface {v0}, Liz7;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v1, p0, Lmg3$b;->g:Lxl3;

    invoke-interface {v1, v0}, Lxl3;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, Lmg3$b;->j:Z

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iput-boolean v3, p0, Lmg3$b;->j:Z

    iput-object v1, p0, Lmg3$b;->i:Ljava/lang/Object;

    return-object v0

    :cond_2
    iget-object v2, p0, Lmg3$b;->h:Lmi0;

    iget-object v4, p0, Lmg3$b;->i:Ljava/lang/Object;

    invoke-interface {v2, v4, v1}, Lmi0;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iput-object v1, p0, Lmg3$b;->i:Ljava/lang/Object;

    return-object v0

    :cond_3
    iput-object v1, p0, Lmg3$b;->i:Ljava/lang/Object;

    iget v0, p0, Lwe0;->f:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lwe0;->c:Lbc8;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lbc8;->request(J)V

    goto :goto_0
.end method
