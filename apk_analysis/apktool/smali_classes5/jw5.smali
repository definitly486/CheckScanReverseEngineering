.class public final synthetic Ljw5;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqm3;",
        "Ldm3<",
        "Lkw5;",
        "Lbm7<",
        "*>;",
        "Ljava/lang/Object;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Ljw5;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljw5;

    const-string v4, "register(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-class v2, Lkw5;

    const-string v3, "register"

    invoke-direct/range {v0 .. v5}, Lqm3;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Ljw5;->c:Ljw5;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lkw5;

    check-cast p2, Lbm7;

    iget-wide v0, p1, Lkw5;->a:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    sget-object p0, Lj59;->a:Lj59;

    invoke-interface {p2, p0}, Lbm7;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Liw5;

    invoke-direct {p0, p2, p1}, Liw5;-><init>(Lbm7;Lkw5;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lzl7;

    iget-object p1, p2, Lzl7;->b:Lo22;

    invoke-static {p1}, Lyk2;->c(Lo22;)Lwk2;

    move-result-object p3

    invoke-interface {p3, v0, v1, p0, p1}, Lwk2;->X(JLjava/lang/Runnable;Lo22;)Lhp2;

    move-result-object p0

    iput-object p0, p2, Lzl7;->d:Ljava/lang/Object;

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
