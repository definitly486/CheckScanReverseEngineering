.class public final Ljt0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljt0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# virtual methods
.method public final a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 0

    sget-boolean p0, Lit0;->d:Z

    const/4 p0, 0x0

    return p0
.end method

.method public final b(Ljavax/net/ssl/SSLSocket;)Lm48;
    .locals 0

    new-instance p0, Ljt0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method
