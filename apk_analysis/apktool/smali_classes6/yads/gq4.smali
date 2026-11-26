.class public final Lyads/gq4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lyads/y86;)Lyads/h96;
    .locals 4

    iget-object v0, p0, Lyads/y86;->b:Lyads/iq3;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lyads/iq3;->b:Ljava/lang/String;

    const-string v2, "omid"

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v0, v0, Lyads/iq3;->c:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lyads/y86;->a:Ljava/lang/String;

    iget-object p0, p0, Lyads/y86;->c:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v2, Lyads/h96;

    invoke-direct {v2, v0, v1, p0}, Lyads/h96;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    return-object v2

    :cond_1
    const-string p0, "VerificationParameters is null or empty"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v2

    :cond_2
    const-string p0, "VendorKey is null or empty"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v2

    :cond_3
    :goto_0
    new-instance p0, Lyads/h96;

    invoke-direct {p0, v2, v1, v2}, Lyads/h96;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    return-object p0

    :catch_0
    new-instance v0, Lyads/a96;

    sget-object v1, Lyads/z86;->d:Lyads/z86;

    invoke-direct {v0, p0, v1}, Lyads/a96;-><init>(Lyads/y86;Lyads/z86;)V

    throw v0

    :cond_4
    new-instance v0, Lyads/a96;

    sget-object v1, Lyads/z86;->c:Lyads/z86;

    invoke-direct {v0, p0, v1}, Lyads/a96;-><init>(Lyads/y86;Lyads/z86;)V

    throw v0
.end method
