.class public final Lfo2;
.super Lio2;
.source "SourceFile"

# interfaces
.implements Lb32;
.implements Le02;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio2<",
        "TT;>;",
        "Lb32;",
        "Le02<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final synthetic i:J


# instance fields
.field private volatile synthetic _reusableCancellableContinuation$volatile:Ljava/lang/Object;

.field public final e:Lr22;

.field public final f:Le02;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le02<",
            "TT;>;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    const-class v1, Lfo2;

    const-string v2, "_reusableCancellableContinuation$volatile"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lfo2;->i:J

    return-void
.end method

.method public constructor <init>(Lr22;Le02;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr22;",
            "Le02<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lio2;-><init>(I)V

    iput-object p1, p0, Lfo2;->e:Lr22;

    iput-object p2, p0, Lfo2;->f:Le02;

    sget-object p1, Lgo2;->b:Lbh8;

    iput-object p1, p0, Lfo2;->g:Ljava/lang/Object;

    invoke-interface {p2}, Le02;->getContext()Lo22;

    move-result-object p1

    invoke-static {p1}, Llt8;->b(Lo22;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lfo2;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c()Le02;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le02<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final getCallerFrame()Lb32;
    .locals 1

    iget-object p0, p0, Lfo2;->f:Le02;

    instance-of v0, p0, Lb32;

    if-eqz v0, :cond_0

    check-cast p0, Lb32;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getContext()Lo22;
    .locals 0

    iget-object p0, p0, Lfo2;->f:Le02;

    invoke-interface {p0}, Le02;->getContext()Lo22;

    move-result-object p0

    return-object p0
.end method

.method public final h()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lfo2;->g:Ljava/lang/Object;

    sget-object v1, Lgo2;->b:Lbh8;

    iput-object v1, p0, Lfo2;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 8

    invoke-static {p1}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    new-instance v2, Lyq1;

    invoke-direct {v2, v0, v1}, Lyq1;-><init>(Ljava/lang/Throwable;Z)V

    :goto_0
    iget-object v0, p0, Lfo2;->f:Le02;

    invoke-interface {v0}, Le02;->getContext()Lo22;

    move-result-object v3

    iget-object v4, p0, Lfo2;->e:Lr22;

    invoke-static {v4, v3}, Lgo2;->h(Lr22;Lo22;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lfo2;->g:Ljava/lang/Object;

    iput v1, p0, Lio2;->d:I

    invoke-interface {v0}, Le02;->getContext()Lo22;

    move-result-object p1

    invoke-static {v4, p1, p0}, Lgo2;->g(Lr22;Lo22;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-static {}, Lpt8;->a()Lb13;

    move-result-object v3

    iget-wide v4, v3, Lb13;->c:J

    const-wide v6, 0x100000000L

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    iput-object v2, p0, Lfo2;->g:Ljava/lang/Object;

    iput v1, p0, Lio2;->d:I

    invoke-virtual {v3, p0}, Lb13;->n0(Lio2;)V

    return-void

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lb13;->q0(Z)V

    :try_start_0
    invoke-interface {v0}, Le02;->getContext()Lo22;

    move-result-object v2

    iget-object v4, p0, Lfo2;->h:Ljava/lang/Object;

    invoke-static {v2, v4}, Llt8;->c(Lo22;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, p1}, Le02;->resumeWith(Ljava/lang/Object;)V

    sget-object p1, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2, v4}, Llt8;->a(Lo22;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v3}, Lb13;->u0()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Lb13;->k0(Z)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-static {v2, v4}, Llt8;->a(Lo22;Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-virtual {p0, p1}, Lio2;->g(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :goto_3
    return-void

    :catchall_2
    move-exception p0

    invoke-virtual {v3, v1}, Lb13;->k0(Z)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DispatchedContinuation["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lfo2;->e:Lr22;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lfo2;->f:Le02;

    invoke-static {p0}, Lcd2;->c(Le02;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
