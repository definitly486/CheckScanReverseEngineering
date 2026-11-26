.class public final Lz90;
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
        "Lbw1;",
        ">;",
        "Lc18<",
        "+",
        "Lxv1;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final f:Lz90;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz90;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lz90;->f:Lz90;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, La57;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, La57;->a:Lz47;

    iget p0, p0, Lz47;->e:I

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_3

    const/16 p1, 0x196

    if-eq p0, p1, :cond_2

    const/16 p1, 0x199

    if-eq p0, p1, :cond_1

    const/16 p1, 0x1c3

    if-ne p0, p1, :cond_0

    sget-object p0, Lxv1$a;->a:Lxv1$a;

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lud;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lxv1$b;->a:Lxv1$b;

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Lxv1$d;->a:Lxv1$d;

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Lxv1$c;

    iget-object p1, p1, La57;->b:Ljava/lang/Object;

    check-cast p1, Lbw1;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lbw1;->a()I

    move-result p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x4

    :goto_0
    invoke-direct {p0, p1}, Lxv1$c;-><init>(I)V

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    return-object p0
.end method
