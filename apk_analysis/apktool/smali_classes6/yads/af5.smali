.class public final Lyads/af5;
.super Lyads/fl0;
.source "SourceFile"


# instance fields
.field public final p:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lyads/ma3;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1

    const/16 v0, 0x1f40

    invoke-direct {p0, p1, v0, v0, p2}, Lyads/fl0;-><init>(Ljava/lang/String;IILyads/ma3;)V

    iput-object p3, p0, Lyads/af5;->p:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method


# virtual methods
.method public final a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URLConnection;

    check-cast p1, Ljava/net/HttpURLConnection;

    iget-object p0, p0, Lyads/af5;->p:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p0, :cond_0

    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_0
    return-object p1
.end method
