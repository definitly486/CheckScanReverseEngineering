.class public final synthetic Lch5$c;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch5;->getOnLock()Lxl7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqm3;",
        "Ldm3<",
        "Lch5;",
        "Lbm7<",
        "*>;",
        "Ljava/lang/Object;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lch5$c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lch5$c;

    const-string v4, "onLockRegFunction(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-class v2, Lch5;

    const-string v3, "onLockRegFunction"

    invoke-direct/range {v0 .. v5}, Lqm3;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lch5$c;->c:Lch5$c;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lch5;

    check-cast p2, Lbm7;

    if-eqz p3, :cond_0

    invoke-virtual {p1, p3}, Lch5;->holdsLock(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ldh5;->c:Lbh8;

    invoke-interface {p2, p0}, Lbm7;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    new-instance p0, Lch5$b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lcm7;

    invoke-direct {p0, p1, p2, p3}, Lch5$b;-><init>(Lch5;Lcm7;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    sget-object p2, Lgo7;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    move-result p2

    iget p3, p1, Lgo7;->b:I

    if-gt p2, p3, :cond_3

    if-lez p2, :cond_4

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lch5$b;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p0}, Lgo7;->c(Llf9;)Z

    move-result p2

    if-eqz p2, :cond_2

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
