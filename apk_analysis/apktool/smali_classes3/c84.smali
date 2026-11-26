.class public final Lc84;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc9;
.implements Ll47;
.implements Lhm1;
.implements Lhsa;
.implements Lrxa;


# static fields
.field public static final b:Lc84;

.field public static final synthetic c:Lc84;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lc84;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc84;->b:Lc84;

    new-instance v0, Lc84;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc84;->c:Lc84;

    return-void
.end method

.method public static final f(Lv48;)Liy6;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Liy6;

    invoke-direct {v0, p0}, Liy6;-><init>(Lv48;)V

    return-object v0
.end method

.method public static final g(Lne4;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1}, Lne4;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-interface {p0}, Lne4;->a()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Value cannot be cast to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static h(J)Ljava/lang/String;
    .locals 8

    const-wide/32 v0, 0xea60

    div-long v0, p0, v0

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr p0, v4

    rem-long/2addr p0, v2

    const-wide/16 v2, 0xa

    div-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const-string v5, "0"

    if-nez v4, :cond_0

    invoke-static {v0, v1, v5}, Lr01;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    div-long v1, p0, v2

    cmp-long v1, v1, v6

    if-nez v1, :cond_1

    invoke-static {p0, p1, v5}, Lr01;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string p1, ":"

    invoke-static {v0, p1, p0}, Lcg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b(Ljava/lang/Class;)Lzra;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This should never be called."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(Lxz5;)Lrx2;
    .locals 0

    sget-object p0, Lrx2;->SOURCE:Lrx2;

    return-object p0
.end method

.method public d(Ljava/lang/Object;Ljava/io/File;Lxz5;)Z
    .locals 0

    check-cast p1, Le47;

    invoke-interface {p1}, Le47;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lup3;

    :try_start_0
    iget-object p0, p0, Lup3;->b:Lup3$a;

    iget-object p0, p0, Lup3$a;->a:Lzp3;

    iget-object p0, p0, Lzp3;->a:Lu68;

    iget-object p0, p0, Lu68;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0, p2}, Lax0;->d(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const/4 p1, 0x5

    const-string p2, "GifEncoder"

    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Failed to encode GIF drawable data"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public e(Ltd4;F)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lie4;->d(Ltd4;)F

    move-result p0

    mul-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getTime()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic zza()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzaa()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
