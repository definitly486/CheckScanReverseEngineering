.class public final Lpw9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljavax/net/ssl/SSLContext;

.field public final b:Ljavax/net/ssl/TrustManagerFactory;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/TrustManagerFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpw9;->a:Ljavax/net/ssl/SSLContext;

    iput-object p2, p0, Lpw9;->b:Ljavax/net/ssl/TrustManagerFactory;

    return-void
.end method
