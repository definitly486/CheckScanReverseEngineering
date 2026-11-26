.class public abstract Lr22;
.super Lb0;
.source "SourceFile"

# interfaces
.implements Lg02;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr22$a;
    }
.end annotation


# static fields
.field public static final Key:Lr22$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr22$a;

    new-instance v1, Lu00;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lu00;-><init>(I)V

    sget-object v2, Lg02$a;->b:Lg02$a;

    invoke-direct {v0, v2, v1}, Lc0;-><init>(Lo22$b;Lnl3;)V

    sput-object v0, Lr22;->Key:Lr22$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lg02$a;->b:Lg02$a;

    invoke-direct {p0, v0}, Lb0;-><init>(Lo22$b;)V

    return-void
.end method

.method public static synthetic limitedParallelism$default(Lr22;ILjava/lang/String;ILjava/lang/Object;)Lr22;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lr22;->limitedParallelism(ILjava/lang/String;)Lr22;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: limitedParallelism"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract dispatch(Lo22;Ljava/lang/Runnable;)V
.end method

.method public dispatchYield(Lo22;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lgo2;->g(Lr22;Lo22;Ljava/lang/Runnable;)V

    return-void
.end method

.method public get(Lo22$b;)Lo22$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lo22$a;",
            ">(",
            "Lo22$b<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lc0;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lc0;

    invoke-interface {p0}, Lo22$a;->getKey()Lo22$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v0, p1, :cond_1

    iget-object v2, p1, Lc0;->c:Lo22$b;

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    :goto_0
    iget-object p1, p1, Lc0;->b:Lnl3;

    invoke-interface {p1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo22$a;

    if-eqz p0, :cond_3

    return-object p0

    :cond_2
    sget-object v0, Lg02$a;->b:Lg02$a;

    if-ne v0, p1, :cond_3

    return-object p0

    :cond_3
    return-object v1
.end method

.method public final interceptContinuation(Le02;)Le02;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le02<",
            "-TT;>;)",
            "Le02<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lfo2;

    invoke-direct {v0, p0, p1}, Lfo2;-><init>(Lr22;Le02;)V

    return-object v0
.end method

.method public isDispatchNeeded(Lo22;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic limitedParallelism(I)Lr22;
    .locals 1
    .annotation runtime Lul2;
    .end annotation

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0}, Lr22;->limitedParallelism(ILjava/lang/String;)Lr22;

    move-result-object p0

    return-object p0
.end method

.method public limitedParallelism(ILjava/lang/String;)Lr22;
    .locals 1

    invoke-static {p1}, Lzd3;->b(I)V

    new-instance v0, Lcq4;

    invoke-direct {v0, p0, p1, p2}, Lcq4;-><init>(Lr22;ILjava/lang/String;)V

    return-object v0
.end method

.method public minusKey(Lo22$b;)Lo22;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo22$b<",
            "*>;)",
            "Lo22;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lc0;

    if-eqz v0, :cond_2

    check-cast p1, Lc0;

    invoke-interface {p0}, Lo22$a;->getKey()Lo22$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v0, p1, :cond_1

    iget-object v1, p1, Lc0;->c:Lo22$b;

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    iget-object p1, p1, Lc0;->b:Lnl3;

    invoke-interface {p1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo22$a;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_2
    sget-object v0, Lg02$a;->b:Lg02$a;

    if-ne v0, p1, :cond_3

    :goto_1
    sget-object p0, Lgx2;->b:Lgx2;

    :cond_3
    return-object p0
.end method

.method public final plus(Lr22;)Lr22;
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    return-object p1
.end method

.method public final releaseInterceptedContinuation(Le02;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lfo2;

    :cond_0
    sget-object p0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v0, Lfo2;->i:J

    invoke-virtual {p0, p1, v0, v1}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lgo2;->c:Lbh8;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, p1, v0, v1}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lc31;

    if-eqz p1, :cond_1

    check-cast p0, Lc31;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lc31;->o()V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcd2;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
