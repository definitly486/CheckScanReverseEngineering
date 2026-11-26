.class public final Lyads/ys0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lws6;


# direct methods
.method public constructor <init>(Lws6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ys0;->a:Lws6;

    return-void
.end method

.method public static a(Lyads/xr0;Lyads/fs2;)V
    .locals 0

    iget-object p0, p0, Lyads/xr0;->d:Lyads/as2;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string p1, "http"

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "https"

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    sget p0, Lyads/cr3;->a:I

    sget-object p0, Lyads/vj5;->b:[Lyads/vj5;

    invoke-static {}, Lyads/cr3;->a()V

    :cond_2
    :goto_0
    return-void
.end method
