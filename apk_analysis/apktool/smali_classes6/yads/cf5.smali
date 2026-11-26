.class public final Lyads/cf5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/vc0;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/cf5;->a:Ljava/lang/String;

    iput-object p2, p0, Lyads/cf5;->b:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method


# virtual methods
.method public final a()Lyads/wc0;
    .locals 3

    new-instance v0, Lyads/af5;

    iget-object v1, p0, Lyads/cf5;->a:Ljava/lang/String;

    new-instance v2, Lyads/ma3;

    invoke-direct {v2}, Lyads/ma3;-><init>()V

    iget-object p0, p0, Lyads/cf5;->b:Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {v0, v1, v2, p0}, Lyads/af5;-><init>(Ljava/lang/String;Lyads/ma3;Ljavax/net/ssl/SSLSocketFactory;)V

    return-object v0
.end method
