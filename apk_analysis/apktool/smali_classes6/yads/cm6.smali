.class public abstract Lyads/cm6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;I)Lyads/e85;
    .locals 2

    new-instance v0, Lyads/bc5;

    invoke-direct {v0}, Lyads/bc5;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lyads/bc5;->a(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {p0}, Lyads/in4;->a(Landroid/content/Context;)I

    new-instance p0, Lyads/i94;

    invoke-direct {p0, v0}, Lyads/i94;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v0, Lyads/ua3;

    invoke-direct {v0, p0}, Lyads/ua3;-><init>(Lyads/i94;)V

    new-instance p0, Lyads/ss;

    invoke-direct {p0, v0}, Lyads/ss;-><init>(Lyads/ua3;)V

    new-instance v0, Lyads/co4;

    invoke-direct {v0}, Lyads/co4;-><init>()V

    new-instance v1, Lyads/e85;

    invoke-direct {v1, v0, p0, p1}, Lyads/e85;-><init>(Lyads/xv;Lyads/ss;I)V

    invoke-virtual {v1}, Lyads/e85;->a()V

    return-object v1
.end method
