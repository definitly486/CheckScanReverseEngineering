.class Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/ConscryptFileDescriptorSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SSLInputStream"
.end annotation


# instance fields
.field private final readLock:Ljava/lang/Object;

.field final synthetic this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;


# direct methods
.method public constructor <init>(Lorg/conscrypt/ConscryptFileDescriptorSocket;)V
    .locals 0

    iput-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$100(Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/NativeSsl;->getPendingReadableBytes()I

    move-result p0

    return p0
.end method

.method public awaitPendingOps()V
    .locals 1

    iget-object p0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public read()I
    .locals 3

    const/4 v0, 0x1

    .line 117
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 118
    invoke-virtual {p0, v1, v2, v0}, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->read([BII)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 119
    aget-byte p0, v1, v2

    and-int/lit16 p0, p0, 0xff

    return p0

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 10

    invoke-static {}, Lorg/conscrypt/Platform;->blockGuardOnNetwork()V

    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->checkOpen()V

    array-length v0, p1

    invoke-static {v0, p2, p3}, Lorg/conscrypt/ArrayUtils;->checkOffsetAndCount(III)V

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$100(Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$200(Lorg/conscrypt/ConscryptFileDescriptorSocket;)I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$100(Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object v4

    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    iget-object v0, v0, Lorg/conscrypt/AbstractConscryptSocket;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lorg/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v5

    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-virtual {v0}, Lorg/conscrypt/AbstractConscryptSocket;->getSoTimeout()I

    move-result v9

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v4 .. v9}, Lorg/conscrypt/NativeSsl;->read(Ljava/io/FileDescriptor;[BIII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    iget-object p2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {p2}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$100(Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object p2

    monitor-enter p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object p0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {p0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$200(Lorg/conscrypt/ConscryptFileDescriptorSocket;)I

    move-result p0

    if-eq p0, v3, :cond_1

    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/net/SocketException;

    const-string p1, "socket is closed"

    invoke-direct {p0, p1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return p1

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_3
    :try_start_5
    new-instance p0, Ljava/net/SocketException;

    const-string p1, "socket is closed"

    invoke-direct {p0, p1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p0

    :goto_3
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method
