.class public final Lrb0;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "La57<",
        "Luc;",
        ">;",
        "Lc18<",
        "+",
        "Lob0<",
        "+",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# static fields
.field public static final f:Lrb0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrb0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lrb0;->f:Lrb0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, La57;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, La57;->a:Lz47;

    iget p0, p0, Lz47;->e:I

    const/16 v0, 0xc8

    const/4 v1, 0x0

    if-eq p0, v0, :cond_3

    const/16 v0, 0x193

    if-eq p0, v0, :cond_0

    const/16 v0, 0x196

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1f7

    if-eq p0, v0, :cond_0

    new-instance p0, Lob0$a;

    invoke-direct {p0, v1}, Lob0$a;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p1, La57;->c:Lb57;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lb57;->v()Ljava/lang/String;

    move-result-object p0

    const-class p1, Lnb0;

    invoke-static {p1, p0}, Lht3;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnb0;

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    new-instance p1, Lob0$a;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lnb0;->a()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-direct {p1, v1}, Lob0$a;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p0, p1, La57;->b:Ljava/lang/Object;

    check-cast p0, Luc;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Luc;->a()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_6

    invoke-static {p0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Lob0$b;

    invoke-direct {p1, p0}, Lob0$b;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_2
    new-instance p0, Lob0$a;

    invoke-direct {p0, v1}, Lob0$a;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    return-object p0
.end method
