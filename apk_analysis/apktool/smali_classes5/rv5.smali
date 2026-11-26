.class public final Lrv5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lus6;->HTTP_2:Lus6;

    filled-new-array {v0}, [Lus6;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lrv5;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Ljava/net/Socket;Ljava/lang/String;ILsw1;)Ljavax/net/ssl/SSLSocket;
    .locals 4

    const-string v0, "sslSocketFactory"

    invoke-static {p0, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "socket"

    invoke-static {p2, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "spec"

    invoke-static {p5, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p3, p4, v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/SSLSocket;

    iget-object p2, p5, Lsw1;->b:[Ljava/lang/String;

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lfb9;->a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p4

    :goto_0
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p5, Lsw1;->c:[Ljava/lang/String;

    invoke-static {v2, v1}, Lfb9;->a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    new-instance v2, Lsw1$a;

    invoke-direct {v2, p5}, Lsw1$a;-><init>(Lsw1;)V

    iget-boolean v3, v2, Lsw1$a;->a:Z

    if-eqz v3, :cond_8

    if-nez p2, :cond_1

    iput-object p4, v2, Lsw1$a;->b:[Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, v2, Lsw1$a;->b:[Ljava/lang/String;

    :goto_1
    if-eqz v3, :cond_7

    if-nez v1, :cond_2

    iput-object p4, v2, Lsw1$a;->c:[Ljava/lang/String;

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, v2, Lsw1$a;->c:[Ljava/lang/String;

    :goto_2
    new-instance p2, Lsw1;

    invoke-direct {p2, v2}, Lsw1;-><init>(Lsw1$a;)V

    iget-object v1, p2, Lsw1;->c:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    iget-object p2, p2, Lsw1;->b:[Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-virtual {p0, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_3
    sget-object p2, Lov5;->c:Lov5;

    iget-boolean p5, p5, Lsw1;->d:Z

    sget-object v1, Lrv5;->a:Ljava/util/List;

    if-eqz p5, :cond_4

    move-object p4, v1

    :cond_4
    invoke-virtual {p2, p0, p3, p4}, Lov5;->d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lus6;->a(Ljava/lang/String;)Lus6;

    move-result-object p4

    invoke-interface {v1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v2, "Only "

    invoke-direct {p5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " are supported, but negotiated protocol is %s"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5, p4, p2}, Lo8;->q(Ljava/lang/String;ZLjava/lang/Object;)V

    const-string p2, "["

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "]"

    invoke-virtual {p3, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {v0, v0, p3}, Lrg;->f(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_5
    move-object p2, p3

    :goto_3
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p4

    invoke-interface {p1, p2, p4}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-object p0

    :cond_6
    new-instance p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string p1, "Cannot verify hostname: "

    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    const-string p0, "no TLS versions for cleartext connections"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object p4

    :cond_8
    const-string p0, "no cipher suites for cleartext connections"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object p4
.end method
