.class public abstract Lyads/bt4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lnl3;

.field public static final b:Lnl3;

.field public static final c:Lnl3;

.field public static final d:Lnl3;

.field public static final e:Lnl3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lty2;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lty2;-><init>(I)V

    sput-object v0, Lyads/bt4;->a:Lnl3;

    new-instance v0, Luy2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Luy2;-><init>(I)V

    sput-object v0, Lyads/bt4;->b:Lnl3;

    new-instance v0, Lvy2;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lvy2;-><init>(I)V

    sput-object v0, Lyads/bt4;->c:Lnl3;

    new-instance v0, Lii5;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lii5;-><init>(I)V

    sput-object v0, Lyads/bt4;->d:Lnl3;

    new-instance v0, Llg8;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Llg8;-><init>(I)V

    sput-object v0, Lyads/bt4;->e:Lnl3;

    return-void
.end method

.method public static final a(Ljava/lang/Number;)D
    .locals 2

    .line 58
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static final a(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 4

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/lang/Number;

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p0, v0, v2

    if-nez p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, v0, v2

    if-nez p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lyads/d70;->a(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/ClassCastException;

    const-string v0, "Received value of wrong type"

    invoke-direct {p0, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Ljava/lang/Number;)J
    .locals 2

    .line 32
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final b(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lyads/q46;

    if-eqz v0, :cond_1

    check-cast p0, Lyads/q46;

    iget-object p0, p0, Lyads/q46;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    const-string v0, "Received value of wrong type"

    invoke-direct {p0, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final c(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lyads/k20;->a(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lyads/l20;

    if-eqz v0, :cond_1

    check-cast p0, Lyads/l20;

    iget p0, p0, Lyads/l20;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    const-string v0, "Received value of wrong type"

    invoke-direct {p0, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
