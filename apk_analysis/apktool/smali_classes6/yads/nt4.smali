.class public final Lyads/nt4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/t46;


# instance fields
.field public final a:Lyads/o54;

.field public final b:Lyads/mn2;


# direct methods
.method public constructor <init>(Lyads/o54;)V
    .locals 1

    new-instance v0, Lyads/mn2;

    invoke-direct {v0}, Lyads/mn2;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/nt4;->a:Lyads/o54;

    iput-object v0, p0, Lyads/nt4;->b:Lyads/mn2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/e4;Lyads/qi5;)Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lyads/nt4;->a:Lyads/o54;

    .line 40
    iget-object v0, v0, Lyads/o54;->c:Ljava/util/Map;

    .line 41
    invoke-static {p1, p2, p3}, Lyads/tw2;->a(Landroid/content/Context;Lyads/e4;Lyads/qi5;)Lyads/sw2;

    move-result-object p2

    if-eqz v0, :cond_0

    .line 42
    iget-object p3, p2, Lyads/sw2;->n:Ljava/util/HashMap;

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 43
    :cond_0
    new-instance p3, Lyads/uw2;

    .line 44
    invoke-direct {p3, p2}, Lyads/uw2;-><init>(Lyads/sw2;)V

    .line 45
    invoke-virtual {p3}, Lyads/uw2;->toString()Ljava/lang/String;

    move-result-object p2

    .line 46
    iget-object p0, p0, Lyads/nt4;->b:Lyads/mn2;

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

    .line 47
    sget-object p0, Lyads/s46;->c:Lyads/s46;

    return-object p0
.end method
