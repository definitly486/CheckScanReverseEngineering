.class public abstract Ls29;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls29$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lhz$a;
    .locals 2

    new-instance v0, Lhz$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lig6;->DEFAULT:Lig6;

    if-eqz v1, :cond_0

    iput-object v1, v0, Lhz$a;->c:Lig6;

    return-object v0

    :cond_0
    const-string v0, "Null priority"

    invoke-static {v0}, Lo2;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()[B
.end method

.method public abstract d()Lig6;
.end method

.method public final e(Lig6;)Lhz;
    .locals 2

    invoke-static {}, Ls29;->a()Lhz$a;

    move-result-object v0

    invoke-virtual {p0}, Ls29;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhz$a;->b(Ljava/lang/String;)Lhz$a;

    if-eqz p1, :cond_0

    iput-object p1, v0, Lhz$a;->c:Lig6;

    invoke-virtual {p0}, Ls29;->c()[B

    move-result-object p0

    iput-object p0, v0, Lhz$a;->b:[B

    invoke-virtual {v0}, Lhz$a;->a()Lhz;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Null priority"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ls29;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ls29;->d()Lig6;

    move-result-object v1

    invoke-virtual {p0}, Ls29;->c()[B

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ls29;->c()[B

    move-result-object p0

    const/4 v2, 0x2

    invoke-static {p0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TransportContext("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-static {v2, p0, v0}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
