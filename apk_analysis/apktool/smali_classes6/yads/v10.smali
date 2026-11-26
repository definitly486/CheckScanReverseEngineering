.class public abstract Lyads/v10;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lyads/w10;
    .locals 4

    new-instance v0, Lyads/x10;

    invoke-direct {v0}, Lyads/x10;-><init>()V

    new-instance v1, Lyads/y10;

    invoke-direct {v1}, Lyads/y10;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_preferences"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lyads/bv3;->a(Landroid/content/Context;Ljava/lang/String;)Lyads/zu3;

    move-result-object p0

    new-instance v2, Lyads/w10;

    invoke-direct {v2, v0, v1, p0}, Lyads/w10;-><init>(Lyads/x10;Lyads/y10;Lyads/zu3;)V

    return-object v2
.end method
