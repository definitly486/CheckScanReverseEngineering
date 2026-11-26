.class public final Lge1;
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
        "Lb57;",
        ">;",
        "Lc18<",
        "+",
        "Lxd1$a;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final f:Lge1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lge1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lge1;->f:Lge1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, La57;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, La57;->a:Lz47;

    iget p0, p0, Lz47;->e:I

    const/16 p1, 0xc8

    if-eq p0, p1, :cond_1

    const/16 p1, 0xca

    if-eq p0, p1, :cond_0

    sget-object p0, Lxd1$a;->Error:Lxd1$a;

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lxd1$a;->AcceptedButAlreadyReported:Lxd1$a;

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lxd1$a;->Success:Lxd1$a;

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    return-object p0
.end method
