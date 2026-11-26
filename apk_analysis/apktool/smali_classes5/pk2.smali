.class public final Lpk2;
.super Lr22;
.source "SourceFile"


# static fields
.field public static final synthetic e:J


# instance fields
.field public final c:Lr22;

.field public volatile synthetic d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    const-class v1, Lpk2;

    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lpk2;->e:J

    return-void
.end method

.method public constructor <init>(Lr22;)V
    .locals 0

    invoke-direct {p0}, Lr22;-><init>()V

    iput-object p1, p0, Lpk2;->c:Lr22;

    const/4 p1, 0x1

    iput p1, p0, Lpk2;->d:I

    return-void
.end method


# virtual methods
.method public final dispatch(Lo22;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Lpk2;->k0()Lr22;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lr22;->dispatch(Lo22;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final dispatchYield(Lo22;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Lpk2;->k0()Lr22;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lr22;->dispatchYield(Lo22;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final isDispatchNeeded(Lo22;)Z
    .locals 0

    invoke-virtual {p0}, Lpk2;->k0()Lr22;

    move-result-object p0

    invoke-virtual {p0, p1}, Lr22;->isDispatchNeeded(Lo22;)Z

    move-result p0

    return p0
.end method

.method public final k0()Lr22;
    .locals 3

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lpk2;->e:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object p0, Lqo2;->b:Ld59;

    return-object p0

    :cond_0
    iget-object p0, p0, Lpk2;->c:Lr22;

    return-object p0
.end method

.method public final limitedParallelism(ILjava/lang/String;)Lr22;
    .locals 0

    invoke-virtual {p0}, Lpk2;->k0()Lr22;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lr22;->limitedParallelism(ILjava/lang/String;)Lr22;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeferredDispatchCoroutineDispatcher(delegate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lpk2;->c:Lr22;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
