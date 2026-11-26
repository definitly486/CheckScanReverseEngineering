.class public final Llv5$h;
.super Lko5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llv5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# instance fields
.field public final b:Llv5$f;

.field public final c:Ljavax/net/ssl/SSLSocket;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    iput-object p1, p0, Llv5$h;->c:Ljavax/net/ssl/SSLSocket;

    new-instance p1, Llv5$f;

    invoke-direct {p1, p2}, Llv5$f;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Llv5$h;->b:Llv5$f;

    return-void
.end method


# virtual methods
.method public final getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .locals 0

    iget-object p0, p0, Llv5$h;->b:Llv5$f;

    return-object p0
.end method

.method public final getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 0

    iget-object p0, p0, Llv5$h;->c:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object p0

    return-object p0
.end method

.method public final isConnected()Z
    .locals 0

    iget-object p0, p0, Llv5$h;->c:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result p0

    return p0
.end method
