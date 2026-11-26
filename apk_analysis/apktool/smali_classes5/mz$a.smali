.class public final Lmz$a;
.super Lrb4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# static fields
.field public static final synthetic i:J


# instance fields
.field private volatile synthetic _disposer$volatile:Ljava/lang/Object;

.field public final f:Lc31;

.field public g:Lhp2;

.field public final synthetic h:Lmz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmz<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    const-class v1, Lmz$a;

    const-string v2, "_disposer$volatile"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lmz$a;->i:J

    return-void
.end method

.method public constructor <init>(Lmz;Lc31;)V
    .locals 0

    iput-object p1, p0, Lmz$a;->h:Lmz;

    invoke-direct {p0}, Lrb4;-><init>()V

    iput-object p2, p0, Lmz$a;->f:Lc31;

    return-void
.end method


# virtual methods
.method public final k()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final l(Ljava/lang/Throwable;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lmz$a;->f:Lc31;

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lyq1;

    invoke-direct {v2, p1, v0}, Lyq1;-><init>(Ljava/lang/Throwable;Z)V

    const/4 p1, 0x0

    invoke-virtual {v1, v2, p1}, Lc31;->F(Ljava/lang/Object;Ldm3;)Lbh8;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v1, p1}, Lc31;->j(Ljava/lang/Object;)V

    sget-object p1, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v0, Lmz$a;->i:J

    invoke-virtual {p1, p0, v0, v1}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmz$b;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lmz$b;->a()V

    return-void

    :cond_0
    sget-object p1, Lmz;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    iget-object p0, p0, Lmz$a;->h:Lmz;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lmz;->a:[Lmk2;

    new-instance p1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    invoke-interface {v3}, Lmk2;->m()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
