.class public final Lyads/nl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/oy3;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/ny3;)Lyads/qy3;
    .locals 2

    sget p0, Lyads/u56;->a:I

    const/16 v0, 0x17

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f

    if-lt p0, v0, :cond_0

    iget-object p0, p1, Lyads/ny3;->c:Lyads/vz2;

    iget-object p0, p0, Lyads/vz2;->m:Ljava/lang/String;

    invoke-static {p0}, Lyads/z84;->d(Ljava/lang/String;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creating an asynchronous MediaCodec adapter for track type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lyads/u56;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMCodecAdapterFactory"

    invoke-static {v1, v0}, Lyads/sv3;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lyads/bl;

    invoke-direct {v0, p0}, Lyads/bl;-><init>(I)V

    invoke-virtual {v0, p1}, Lyads/bl;->b(Lyads/ny3;)Lyads/cl;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lyads/bu5;

    invoke-direct {p0}, Lyads/bu5;-><init>()V

    invoke-virtual {p0, p1}, Lyads/bu5;->a(Lyads/ny3;)Lyads/qy3;

    move-result-object p0

    return-object p0
.end method
