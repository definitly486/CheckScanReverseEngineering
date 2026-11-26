.class public final Lyads/l20;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyads/l20;->a:I

    return-void
.end method

.method public static final synthetic a(I)Lyads/l20;
    .locals 1

    new-instance v0, Lyads/l20;

    invoke-direct {v0, p0}, Lyads/l20;-><init>(I)V

    return-object v0
.end method

.method public static b(I)I
    .locals 0

    return p0
.end method

.method public static c(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public static d(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x8

    invoke-static {v0, p0}, Lta8;->R(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "#"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic a()I
    .locals 0

    .line 6
    iget p0, p0, Lyads/l20;->a:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    iget p0, p0, Lyads/l20;->a:I

    instance-of v0, p1, Lyads/l20;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lyads/l20;

    iget p1, p1, Lyads/l20;->a:I

    if-eq p0, p1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lyads/l20;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lyads/l20;->a:I

    invoke-static {p0}, Lyads/l20;->d(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
