.class public final Lyads/ey5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/gy5;


# instance fields
.field public final a:Ljava/lang/Number;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Number;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ey5;->a:Ljava/lang/Number;

    return-void
.end method

.method public static final synthetic a(Ljava/lang/Number;)Lyads/ey5;
    .locals 1

    new-instance v0, Lyads/ey5;

    invoke-direct {v0, p0}, Lyads/ey5;-><init>(Ljava/lang/Number;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 0

    return-object p0
.end method

.method public static c(Ljava/lang/Number;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Num(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Number;
    .locals 0

    .line 6
    iget-object p0, p0, Lyads/ey5;->a:Ljava/lang/Number;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object p0, p0, Lyads/ey5;->a:Ljava/lang/Number;

    instance-of v0, p1, Lyads/ey5;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lyads/ey5;

    iget-object p1, p1, Lyads/ey5;->a:Ljava/lang/Number;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lyads/ey5;->a:Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/ey5;->a:Ljava/lang/Number;

    invoke-static {p0}, Lyads/ey5;->c(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
