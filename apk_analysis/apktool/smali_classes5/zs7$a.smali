.class public final Lzs7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhp2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzs7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lzs7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzs7<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/lang/Object;

.field public final e:Lc31;


# direct methods
.method public constructor <init>(Lzs7;JLjava/lang/Object;Lc31;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzs7$a;->b:Lzs7;

    iput-wide p2, p0, Lzs7$a;->c:J

    iput-object p4, p0, Lzs7$a;->d:Ljava/lang/Object;

    iput-object p5, p0, Lzs7$a;->e:Lc31;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 6

    iget-object v0, p0, Lzs7$a;->b:Lzs7;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lzs7$a;->c:J

    invoke-virtual {v0}, Lzs7;->q()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    iget-object v1, v0, Lzs7;->i:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v2, p0, Lzs7$a;->c:J

    long-to-int v4, v2

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    aget-object v4, v1, v4

    if-ne v4, p0, :cond_0

    sget-object p0, Lbt7;->b:Lbh8;

    invoke-static {v1, v2, v3, p0}, Lbt7;->e([Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v0}, Lzs7;->l()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method
