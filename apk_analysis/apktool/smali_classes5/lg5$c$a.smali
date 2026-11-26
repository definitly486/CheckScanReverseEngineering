.class public final Llg5$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llg5$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ld37;)Llg5$c;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "form-data; name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Llg5;->e:Lj95;

    invoke-static {v0, p0}, Llg5$b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p0, "; filename="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Llg5$b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljv3$a;

    invoke-direct {p1}, Ljv3$a;-><init>()V

    const-string v0, "Content-Disposition"

    invoke-virtual {p1, v0, p0}, Ljv3$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljv3$a;->e()Ljv3;

    move-result-object p0

    const-string p1, "Content-Type"

    invoke-virtual {p0, p1}, Ljv3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    const-string p1, "Content-Length"

    invoke-virtual {p0, p1}, Ljv3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Llg5$c;

    invoke-direct {p1, p0, p2}, Llg5$c;-><init>(Ljv3;Lg37;)V

    return-object p1

    :cond_1
    const-string p0, "Unexpected header: Content-Length"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string p0, "Unexpected header: Content-Type"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v0
.end method
