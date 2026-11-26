.class public final Lyads/zh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static volatile b:Lyads/xh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lyads/zh;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(Landroid/content/Context;Lyads/q84;)V
    .locals 3

    new-instance v0, Lyads/j90;

    invoke-direct {v0, p1}, Lyads/j90;-><init>(Lyads/k75;)V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v1

    sget-object v2, Lqo2;->a:Loi2;

    sget-object v2, Lsh2;->c:Lsh2;

    invoke-static {v1, v2}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object v1

    invoke-interface {v1, v0}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v0

    invoke-static {v0}, Lz22;->a(Lo22;)Lkz1;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lyads/zh;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lyads/yh;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Lyads/yh;-><init>(Landroid/content/Context;Lyads/q84;Ly22;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method
