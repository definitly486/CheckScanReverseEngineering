.class public final Lub7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf53$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lub7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf53$b<",
        "Lub7$b;",
        ">;"
    }
.end annotation


# virtual methods
.method public final create()Ljava/lang/Object;
    .locals 1

    :try_start_0
    new-instance p0, Lub7$b;

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-direct {p0, v0}, Lub7$b;-><init>(Ljava/security/MessageDigest;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lti0;->f(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
