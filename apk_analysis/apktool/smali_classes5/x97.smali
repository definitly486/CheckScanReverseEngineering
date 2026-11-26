.class public final Lx97;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvx2;
.implements Lrxa;


# static fields
.field public static final b:Lba8;

.field public static final c:Lba8;

.field public static final d:Lba8;

.field public static final e:Lba8;

.field public static final f:Lba8;

.field public static final synthetic g:Lx97;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lba8;

    const-string v1, "sse_gson"

    invoke-direct {v0, v1}, Lba8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lx97;->b:Lba8;

    new-instance v0, Lba8;

    const-string v1, "sse_http"

    invoke-direct {v0, v1}, Lba8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lx97;->c:Lba8;

    new-instance v0, Lba8;

    const-string v1, "sse_request"

    invoke-direct {v0, v1}, Lba8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lx97;->d:Lba8;

    new-instance v0, Lba8;

    const-string v1, "sse_header_interceptor"

    invoke-direct {v0, v1}, Lba8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lx97;->e:Lba8;

    new-instance v0, Lba8;

    const-string v1, "sse_cookie_jar"

    invoke-direct {v0, v1}, Lba8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lx97;->f:Lba8;

    new-instance v0, Lx97;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lx97;->g:Lx97;

    return-void
.end method

.method public static final a(Lmp7;[Lmp7;)I
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lmp7;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    invoke-interface {p0}, Lmp7;->e()I

    move-result p1

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-lez p1, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    move v4, v3

    :goto_1
    if-eqz v4, :cond_2

    invoke-interface {p0}, Lmp7;->e()I

    move-result v4

    add-int/lit8 v5, p1, -0x1

    sub-int/2addr v4, p1

    invoke-interface {p0, v4}, Lmp7;->d(I)Lmp7;

    move-result-object p1

    mul-int/lit8 v2, v2, 0x1f

    invoke-interface {p1}, Lmp7;->h()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_1
    add-int/2addr v2, v3

    move p1, v5

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lmp7;->e()I

    move-result p1

    move v4, v1

    :goto_2
    if-lez p1, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    move v5, v3

    :goto_3
    if-eqz v5, :cond_5

    invoke-interface {p0}, Lmp7;->e()I

    move-result v5

    add-int/lit8 v6, p1, -0x1

    sub-int/2addr v5, p1

    invoke-interface {p0, v5}, Lmp7;->d(I)Lmp7;

    move-result-object p1

    mul-int/lit8 v4, v4, 0x1f

    invoke-interface {p1}, Lmp7;->getKind()Lsp7;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lsp7;->hashCode()I

    move-result p1

    goto :goto_4

    :cond_4
    move p1, v3

    :goto_4
    add-int/2addr v4, p1

    move p1, v6

    goto :goto_2

    :cond_5
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v4

    return v0
.end method

.method public static final b(Lmp7;)Ljava/lang/String;
    .locals 9

    invoke-interface {p0}, Lmp7;->e()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lkx6;->n(II)Ly74;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lmp7;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lt96;

    invoke-direct {v7, p0, v1}, Lt96;-><init>(Ljava/lang/Object;I)V

    const/16 v8, 0x18

    const-string v3, ", "

    const-string v5, ")"

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/io/File;Lxz5;)Z
    .locals 0

    check-cast p1, Ljava/nio/ByteBuffer;

    :try_start_0
    invoke-static {p1, p2}, Lax0;->d(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const/4 p1, 0x3

    const-string p2, "ByteBufferEncoder"

    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Failed to write data"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic zza()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzg()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
