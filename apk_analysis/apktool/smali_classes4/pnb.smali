.class public final Lpnb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lsun/misc/Unsafe;

.field public static final b:Ljava/lang/Class;

.field public static final c:Ldta;

.field public static final d:Z

.field public static final e:Z

.field public static final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lanb;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v0

    :goto_0
    sput-object v1, Lpnb;->a:Lsun/misc/Unsafe;

    sget v2, Lb7b;->a:I

    const-class v2, Llibcore/io/Memory;

    sput-object v2, Lpnb;->b:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lpnb;->j(Ljava/lang/Class;)Z

    move-result v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lpnb;->j(Ljava/lang/Class;)Z

    move-result v5

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    new-instance v0, Linb;

    invoke-direct {v0, v1}, Ldta;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    new-instance v0, Ldnb;

    invoke-direct {v0, v1}, Ldta;-><init>(Lsun/misc/Unsafe;)V

    :cond_2
    :goto_1
    sput-object v0, Lpnb;->c:Ldta;

    const-string v1, "logMissingMethod"

    const-string v3, "com.google.protobuf.UnsafeUtil"

    const-string v5, "platform method missing - proto runtime falling back to safer methods: "

    const-class v6, Lpnb;

    const-class v7, Ljava/lang/Object;

    const-string v8, "getLong"

    const-class v9, Ljava/lang/reflect/Field;

    const-string v10, "objectFieldOffset"

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v0, :cond_3

    :goto_2
    move v0, v12

    goto :goto_3

    :cond_3
    iget-object v0, v0, Ldta;->a:Lsun/misc/Unsafe;

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v0, v10, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    filled-new-array {v7, v2}, [Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v0, v8, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lpnb;->m()Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v11

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v13

    sget-object v14, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v14, v3, v1, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_3
    sput-boolean v0, Lpnb;->d:Z

    sget-object v0, Lpnb;->c:Ldta;

    if-nez v0, :cond_5

    :goto_4
    move v0, v12

    goto :goto_5

    :cond_5
    iget-object v0, v0, Ldta;->a:Lsun/misc/Unsafe;

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v0, v10, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v9, "arrayBaseOffset"

    const-class v10, Ljava/lang/Class;

    filled-new-array {v10}, [Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v0, v9, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v9, "arrayIndexScale"

    filled-new-array {v10}, [Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v9, "getInt"

    filled-new-array {v7, v2}, [Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v9, "putInt"

    filled-new-array {v7, v2, v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v9, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    filled-new-array {v7, v2}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v8, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "putLong"

    filled-new-array {v7, v2, v2}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "getObject"

    filled-new-array {v7, v2}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "putObject"

    filled-new-array {v7, v2, v7}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v0, v11

    goto :goto_5

    :catchall_2
    move-exception v0

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v3, v1, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :goto_5
    sput-boolean v0, Lpnb;->e:Z

    const-class v0, [B

    invoke-static {v0}, Lpnb;->k(Ljava/lang/Class;)V

    const-class v0, [Z

    invoke-static {v0}, Lpnb;->k(Ljava/lang/Class;)V

    invoke-static {v0}, Lpnb;->l(Ljava/lang/Class;)V

    const-class v0, [I

    invoke-static {v0}, Lpnb;->k(Ljava/lang/Class;)V

    invoke-static {v0}, Lpnb;->l(Ljava/lang/Class;)V

    const-class v0, [J

    invoke-static {v0}, Lpnb;->k(Ljava/lang/Class;)V

    invoke-static {v0}, Lpnb;->l(Ljava/lang/Class;)V

    const-class v0, [F

    invoke-static {v0}, Lpnb;->k(Ljava/lang/Class;)V

    invoke-static {v0}, Lpnb;->l(Ljava/lang/Class;)V

    const-class v0, [D

    invoke-static {v0}, Lpnb;->k(Ljava/lang/Class;)V

    invoke-static {v0}, Lpnb;->l(Ljava/lang/Class;)V

    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lpnb;->k(Ljava/lang/Class;)V

    invoke-static {v0}, Lpnb;->l(Ljava/lang/Class;)V

    invoke-static {}, Lpnb;->m()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Lpnb;->c:Ldta;

    if-eqz v1, :cond_6

    iget-object v1, v1, Ldta;->a:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    :cond_6
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_7

    goto :goto_6

    :cond_7
    move v11, v12

    :goto_6
    sput-boolean v11, Lpnb;->f:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;J)I
    .locals 1

    sget-object v0, Lpnb;->c:Ldta;

    iget-object v0, v0, Ldta;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/Object;J)J
    .locals 1

    sget-object v0, Lpnb;->c:Ldta;

    iget-object v0, v0, Ldta;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static c(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lpnb;->c:Ldta;

    iget-object v0, v0, Ldta;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Object;JZ)V
    .locals 4

    sget-object v0, Lpnb;->c:Ldta;

    iget-object v1, v0, Ldta;->a:Lsun/misc/Unsafe;

    const-wide/16 v2, -0x4

    and-long/2addr v2, p1

    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    long-to-int p1, p1

    not-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int/2addr p2, p1

    not-int p2, p2

    and-int/2addr p2, v1

    iget-object v0, v0, Ldta;->a:Lsun/misc/Unsafe;

    shl-int p1, p3, p1

    or-int/2addr p1, p2

    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/Object;JZ)V
    .locals 4

    sget-object v0, Lpnb;->c:Ldta;

    iget-object v1, v0, Ldta;->a:Lsun/misc/Unsafe;

    const-wide/16 v2, -0x4

    and-long/2addr v2, p1

    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int/2addr p2, p1

    not-int p2, p2

    and-int/2addr p2, v1

    iget-object v0, v0, Ldta;->a:Lsun/misc/Unsafe;

    shl-int p1, p3, p1

    or-int/2addr p1, p2

    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static f(IJLjava/lang/Object;)V
    .locals 1

    sget-object v0, Lpnb;->c:Ldta;

    iget-object v0, v0, Ldta;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p3, p1, p2, p0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static g(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lpnb;->c:Ldta;

    iget-object v0, v0, Ldta;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p2, p0, p1, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic h(Ljava/lang/Object;J)Z
    .locals 3

    sget-object v0, Lpnb;->c:Ldta;

    iget-object v0, v0, Ldta;->a:Lsun/misc/Unsafe;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    not-long p1, p1

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic i(Ljava/lang/Object;J)Z
    .locals 3

    sget-object v0, Lpnb;->c:Ldta;

    iget-object v0, v0, Ldta;->a:Lsun/misc/Unsafe;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static j(Ljava/lang/Class;)Z
    .locals 5

    sget v0, Lb7b;->a:I

    :try_start_0
    sget-object v0, Lpnb;->b:Ljava/lang/Class;

    const-string v1, "peekLong"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v2}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "pokeLong"

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v3, v2}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "pokeInt"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v3, v2}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "peekInt"

    filled-new-array {p0, v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "pokeByte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "peekByte"

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "pokeByteArray"

    const-class v2, [B

    filled-new-array {p0, v2, v3, v3}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "peekByteArray"

    filled-new-array {p0, v2, v3, v3}, [Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public static k(Ljava/lang/Class;)V
    .locals 1

    sget-boolean v0, Lpnb;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lpnb;->c:Ldta;

    iget-object v0, v0, Ldta;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    :cond_0
    return-void
.end method

.method public static l(Ljava/lang/Class;)V
    .locals 1

    sget-boolean v0, Lpnb;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lpnb;->c:Ldta;

    iget-object v0, v0, Ldta;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    :cond_0
    return-void
.end method

.method public static m()Ljava/lang/reflect/Field;
    .locals 4

    sget v0, Lb7b;->a:I

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    const-string v1, "address"

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_0

    return-object v0

    :cond_0
    return-object v2

    :cond_1
    return-object v1
.end method
