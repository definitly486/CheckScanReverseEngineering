.class public final Lhz$a;
.super Ls29$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:[B

.field public c:Lig6;


# virtual methods
.method public final a()Lhz;
    .locals 3

    iget-object v0, p0, Lhz$a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, " backendName"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lhz$a;->c:Lig6;

    if-nez v1, :cond_1

    const-string v1, " priority"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lhz;

    iget-object v1, p0, Lhz$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lhz$a;->b:[B

    iget-object p0, p0, Lhz$a;->c:Lig6;

    invoke-direct {v0, v1, v2, p0}, Lhz;-><init>(Ljava/lang/String;[BLig6;)V

    return-object v0

    :cond_2
    const-string p0, "Missing required properties:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lhz$a;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhz$a;->a:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, "Null backendName"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
