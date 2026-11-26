.class public final Lyads/xa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/t46;


# instance fields
.field public final a:Lyads/mn2;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lyads/mn2;

    invoke-direct {v0}, Lyads/mn2;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/xa;->a:Lyads/mn2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/e4;Lyads/qi5;)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-static {p1, p2, p3}, Lyads/tw2;->a(Landroid/content/Context;Lyads/e4;Lyads/qi5;)Lyads/sw2;

    move-result-object p2

    .line 40
    new-instance p3, Lyads/uw2;

    .line 41
    invoke-direct {p3, p2}, Lyads/uw2;-><init>(Lyads/sw2;)V

    .line 42
    invoke-virtual {p3}, Lyads/uw2;->toString()Ljava/lang/String;

    move-result-object p2

    .line 43
    iget-object p0, p0, Lyads/xa;->a:Lyads/mn2;

    invoke-virtual {p0, p1, p2}, Lyads/mn2;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/e4;)Ljava/lang/String;
    .locals 0

    iget-object p0, p1, Lyads/e4;->b:Lyads/c40;

    iget-object p0, p0, Lyads/c40;->a:Lyads/vn2;

    iget-object p0, p0, Lyads/vn2;->e:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p1, "v4/ad"

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a()Lyads/s46;
    .locals 0

    .line 44
    sget-object p0, Lyads/s46;->b:Lyads/s46;

    return-object p0
.end method
