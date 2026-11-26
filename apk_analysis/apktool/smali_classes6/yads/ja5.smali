.class public final Lyads/ja5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ba5;

.field public final b:Lyads/s25;

.field public final c:Lyads/fw3;

.field public final d:Lyads/aw3;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Lcl4;


# direct methods
.method public constructor <init>(Lyads/ba5;Lyads/s25;Lyads/fw3;Lyads/aw3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ja5;->a:Lyads/ba5;

    iput-object p2, p0, Lyads/ja5;->b:Lyads/s25;

    iput-object p3, p0, Lyads/ja5;->c:Lyads/fw3;

    iput-object p4, p0, Lyads/ja5;->d:Lyads/aw3;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lyads/ja5;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p3, Lo31;

    const/4 p4, 0x3

    invoke-direct {p3, p0, p4}, Lo31;-><init>(Ljava/lang/Object;I)V

    new-instance p4, Lfh8;

    invoke-direct {p4, p3}, Lfh8;-><init>(Lll3;)V

    iput-object p4, p0, Lyads/ja5;->f:Lcl4;

    iput-object p2, p1, Lyads/d13;->l:Lyads/v03;

    iget-object p0, p1, Lyads/ba5;->m:Lyads/t25;

    iput-object p2, p0, Lyads/t25;->a:Lyads/s25;

    return-void
.end method

.method public static final a(Lyads/ja5;)Lyads/i70;
    .locals 0

    .line 50
    iget-object p0, p0, Lyads/ja5;->a:Lyads/ba5;

    invoke-virtual {p0}, Lyads/d13;->d()Lyads/i70;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lyads/ja5;Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lyads/ja5;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lyads/ja5;->a:Lyads/ba5;

    invoke-virtual {v0, p1}, Lyads/d13;->a(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lyads/ja5;->b:Lyads/s25;

    new-instance v0, Lyads/y6;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lyads/y6;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lyads/s25;->a(Lyads/y6;)V

    :cond_0
    return-void

    :cond_1
    iget-object p0, p0, Lyads/ja5;->b:Lyads/s25;

    sget-object p1, Lyads/z6;->a:Lyads/y6;

    invoke-virtual {p0, p1}, Lyads/s25;->a(Lyads/y6;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 3

    .line 48
    iget-object v0, p0, Lyads/ja5;->c:Lyads/fw3;

    invoke-virtual {v0}, Lyads/fw3;->a()V

    .line 49
    iget-object v0, p0, Lyads/ja5;->d:Lyads/aw3;

    new-instance v1, Lyg9;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lyg9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lyads/aw3;->a(Ljava/lang/Runnable;)V

    return-void
.end method
