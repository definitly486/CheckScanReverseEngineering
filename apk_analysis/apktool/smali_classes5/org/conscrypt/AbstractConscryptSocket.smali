.class abstract Lorg/conscrypt/AbstractConscryptSocket;
.super Ljavax/net/ssl/SSLSocket;
.source "SourceFile"


# instance fields
.field private final autoClose:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/net/ssl/HandshakeCompletedListener;",
            ">;"
        }
    .end annotation
.end field

.field private peerHostname:Ljava/lang/String;

.field private final peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

.field private final peerPort:I

.field private readTimeoutMilliseconds:I

.field final socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 64
    new-instance v0, Lorg/conscrypt/AbstractConscryptSocket$1;

    invoke-direct {v0, p0}, Lorg/conscrypt/AbstractConscryptSocket$1;-><init>(Lorg/conscrypt/AbstractConscryptSocket;)V

    iput-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    .line 66
    iput-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerPort:I

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->autoClose:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 35
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;I)V

    .line 36
    new-instance v0, Lorg/conscrypt/AbstractConscryptSocket$1;

    invoke-direct {v0, p0}, Lorg/conscrypt/AbstractConscryptSocket$1;-><init>(Lorg/conscrypt/AbstractConscryptSocket;)V

    iput-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    .line 38
    iput-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    .line 39
    iput-object p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    .line 40
    iput p2, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerPort:I

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->autoClose:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 50
    new-instance p3, Lorg/conscrypt/AbstractConscryptSocket$1;

    invoke-direct {p3, p0}, Lorg/conscrypt/AbstractConscryptSocket$1;-><init>(Lorg/conscrypt/AbstractConscryptSocket;)V

    iput-object p3, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

    .line 51
    new-instance p3, Ljava/util/ArrayList;

    const/4 p4, 0x2

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lorg/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    .line 52
    iput-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    .line 53
    iput-object p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    .line 54
    iput p2, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerPort:I

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->autoClose:Z

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;I)V

    .line 43
    new-instance p1, Lorg/conscrypt/AbstractConscryptSocket$1;

    invoke-direct {p1, p0}, Lorg/conscrypt/AbstractConscryptSocket$1;-><init>(Lorg/conscrypt/AbstractConscryptSocket;)V

    iput-object p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    .line 45
    iput-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerPort:I

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->autoClose:Z

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 57
    new-instance p1, Lorg/conscrypt/AbstractConscryptSocket$1;

    invoke-direct {p1, p0}, Lorg/conscrypt/AbstractConscryptSocket$1;-><init>(Lorg/conscrypt/AbstractConscryptSocket;)V

    iput-object p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    .line 59
    iput-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    const/4 p1, -0x1

    .line 61
    iput p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerPort:I

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->autoClose:Z

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;Ljava/lang/String;IZ)V
    .locals 2

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    new-instance v0, Lorg/conscrypt/AbstractConscryptSocket$1;

    invoke-direct {v0, p0}, Lorg/conscrypt/AbstractConscryptSocket$1;-><init>(Lorg/conscrypt/AbstractConscryptSocket;)V

    iput-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    const-string v0, "socket"

    invoke-static {p1, v0}, Lorg/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/Socket;

    iput-object p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    iput-object p2, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    iput p3, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerPort:I

    iput-boolean p4, p0, Lorg/conscrypt/AbstractConscryptSocket;->autoClose:Z

    return-void
.end method

.method private isDelegating()Z
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Provided listener is null"

    invoke-static {v0, v1}, Lorg/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0, p1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    return-void
.end method

.method public final checkOpen()V
    .locals 1

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/net/SocketException;

    const-string v0, "Socket is closed"

    invoke-direct {p0, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->autoClose:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->close()V

    return-void

    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Ljava/net/Socket;->close()V

    :cond_1
    return-void
.end method

.method public final connect(Ljava/net/SocketAddress;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, p1, v0}, Lorg/conscrypt/AbstractConscryptSocket;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method public final connect(Ljava/net/SocketAddress;I)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lorg/conscrypt/Platform;->getHostStringFromInetSocketAddress(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method public abstract exportKeyingMaterial(Ljava/lang/String;[BI)[B
.end method

.method public abstract getActiveSession()Ljavax/net/ssl/SSLSession;
.end method

.method public abstract getAlpnSelectedProtocol()[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getApplicationProtocol()Ljava/lang/String;
.end method

.method public abstract getApplicationProtocols()[Ljava/lang/String;
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getChannelId()[B
.end method

.method public abstract getCurveNameForTesting()Ljava/lang/String;
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-static {p0}, Lorg/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/conscrypt/Platform;->getFileDescriptorFromSSLSocket(Lorg/conscrypt/AbstractConscryptSocket;)Ljava/io/FileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public abstract getHandshakeApplicationProtocol()Ljava/lang/String;
.end method

.method public abstract getHandshakeSession()Ljavax/net/ssl/SSLSession;
.end method

.method public getHostname()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    return-object p0
.end method

.method public getHostnameOrIP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/conscrypt/Platform;->getOriginalHostNameFromInetAddress(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getKeepAlive()Z
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->getKeepAlive()Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->getKeepAlive()Z

    move-result p0

    return p0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public getLocalPort()I
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result p0

    return p0
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object p0

    return-object p0
.end method

.method public getOOBInline()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public final getPort()I
    .locals 2

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->getPort()I

    move-result p0

    return p0

    :cond_0
    iget v0, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerPort:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    return v0

    :cond_1
    invoke-super {p0}, Ljava/net/Socket;->getPort()I

    move-result p0

    return p0
.end method

.method public getReceiveBufferSize()I
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result p0

    return p0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p0

    return-object p0
.end method

.method public getReuseAddress()Z
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->getReuseAddress()Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->getReuseAddress()Z

    move-result p0

    return p0
.end method

.method public getSendBufferSize()I
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->getSendBufferSize()I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->getSendBufferSize()I

    move-result p0

    return p0
.end method

.method public getSoLinger()I
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->getSoLinger()I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->getSoLinger()I

    move-result p0

    return p0
.end method

.method public final getSoTimeout()I
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->getSoTimeout()I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->readTimeoutMilliseconds:I

    return p0
.end method

.method public getSoWriteTimeout()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTcpNoDelay()Z
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result p0

    return p0
.end method

.method public abstract getTlsUnique()[B
.end method

.method public getTrafficClass()I
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->getTrafficClass()I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->getTrafficClass()I

    move-result p0

    return p0
.end method

.method public isBound()Z
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->isBound()Z

    move-result p0

    return p0
.end method

.method public isClosed()Z
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->isClosed()Z

    move-result p0

    return p0
.end method

.method public isConnected()Z
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->isConnected()Z

    move-result p0

    return p0
.end method

.method public isInputShutdown()Z
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result p0

    return p0
.end method

.method public isOutputShutdown()Z
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result p0

    return p0
.end method

.method public final notifyHandshakeCompletedListeners()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljavax/net/ssl/HandshakeCompletedEvent;

    invoke-virtual {p0}, Lorg/conscrypt/AbstractConscryptSocket;->getActiveSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/net/ssl/HandshakeCompletedEvent;-><init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HandshakeCompletedListener;

    :try_start_0
    invoke-interface {v0, v1}, Ljavax/net/ssl/HandshakeCompletedListener;->handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final peerInfoProvider()Lorg/conscrypt/PeerInfoProvider;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

    return-object p0
.end method

.method public removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Provided listener is null"

    invoke-static {v0, v1}, Lorg/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    const-string p0, "Provided listener is not registered"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final sendUrgentData(I)V
    .locals 0

    new-instance p0, Ljava/net/SocketException;

    const-string p1, "Method sendUrgentData() is not supported."

    invoke-direct {p0, p1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract setAlpnProtocols([B)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setAlpnProtocols([Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelector;)V
.end method

.method public abstract setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelectorAdapter;)V
.end method

.method public abstract setApplicationProtocols([Ljava/lang/String;)V
.end method

.method public abstract setChannelIdEnabled(Z)V
.end method

.method public abstract setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
.end method

.method public setHandshakeTimeout(I)V
    .locals 0

    new-instance p0, Ljava/net/SocketException;

    const-string p1, "Method setHandshakeTimeout() is not supported."

    invoke-direct {p0, p1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->peerHostname:Ljava/lang/String;

    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    return-void
.end method

.method public abstract setNamedGroups([Ljava/lang/String;)V
.end method

.method public final setOOBInline(Z)V
    .locals 0

    new-instance p0, Ljava/net/SocketException;

    const-string p1, "Method setOOBInline() is not supported."

    invoke-direct {p0, p1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPerformancePreferences(III)V
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0, p1, p2, p3}, Ljava/net/Socket;->setPerformancePreferences(III)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/net/Socket;->setPerformancePreferences(III)V

    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0, p1}, Ljava/net/Socket;->setReuseAddress(Z)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Ljava/net/Socket;->setReuseAddress(Z)V

    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V

    return-void
.end method

.method public setSoLinger(ZI)V
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0, p1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    return-void
.end method

.method public final setSoTimeout(I)V
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    iput p1, p0, Lorg/conscrypt/AbstractConscryptSocket;->readTimeoutMilliseconds:I

    return-void
.end method

.method public setSoWriteTimeout(I)V
    .locals 0

    new-instance p0, Ljava/net/SocketException;

    const-string p1, "Method setSoWriteTimeout() is not supported."

    invoke-direct {p0, p1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTcpNoDelay(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    return-void
.end method

.method public setTrafficClass(I)V
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0, p1}, Ljava/net/Socket;->setTrafficClass(I)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Ljava/net/Socket;->setTrafficClass(I)V

    return-void
.end method

.method public abstract setUseSessionTickets(Z)V
.end method

.method public shutdownInput()V
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->shutdownInput()V

    return-void

    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->shutdownInput()V

    return-void
.end method

.method public shutdownOutput()V
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->shutdownOutput()V

    return-void

    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->shutdownOutput()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SSL socket over "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptSocket;->isDelegating()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
