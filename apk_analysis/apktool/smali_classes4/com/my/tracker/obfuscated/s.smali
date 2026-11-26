.class public final Lcom/my/tracker/obfuscated/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljavax/net/ssl/X509TrustManager;

.field public final b:Ljavax/net/ssl/SSLContext;

.field public final c:Ljavax/net/ssl/TrustManagerFactory;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/X509TrustManager;Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/TrustManagerFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/tracker/obfuscated/s;->a:Ljavax/net/ssl/X509TrustManager;

    iput-object p2, p0, Lcom/my/tracker/obfuscated/s;->b:Ljavax/net/ssl/SSLContext;

    iput-object p3, p0, Lcom/my/tracker/obfuscated/s;->c:Ljavax/net/ssl/TrustManagerFactory;

    return-void
.end method
