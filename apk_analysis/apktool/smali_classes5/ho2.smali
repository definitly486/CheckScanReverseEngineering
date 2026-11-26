.class public final Lho2;
.super Laf7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Laf7<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final synthetic g:J


# instance fields
.field private volatile synthetic _decision$volatile:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    const-class v1, Lho2;

    const-string v2, "_decision$volatile"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lho2;->g:J

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lho2;->t(Ljava/lang/Object;)V

    return-void
.end method

.method public final t(Ljava/lang/Object;)V
    .locals 6

    :goto_0
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lho2;->g:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    iget-object p0, p0, Laf7;->f:Le02;

    invoke-static {p0}, Lzya;->b(Le02;)Le02;

    move-result-object p0

    invoke-static {p1}, Loe0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lgo2;->f(Le02;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p0, "Already resumed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    move-object p0, v1

    goto :goto_0
.end method
