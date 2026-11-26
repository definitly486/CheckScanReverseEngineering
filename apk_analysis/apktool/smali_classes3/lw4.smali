.class public final synthetic Llw4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltx4;


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    sget-object p0, Lcom/airbnb/lottie/LottieAnimationView;->B:Llw4;

    sget-object p0, Lib9;->a:Landroid/graphics/Matrix;

    instance-of p0, p1, Ljava/net/SocketException;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/nio/channels/ClosedChannelException;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/io/InterruptedIOException;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/net/ProtocolException;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljavax/net/ssl/SSLException;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/net/UnknownHostException;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/net/UnknownServiceException;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Unable to parse composition"

    invoke-static {p0, p1}, Lh2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "Unable to load composition."

    invoke-static {p0, p1}, Lgv4;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
