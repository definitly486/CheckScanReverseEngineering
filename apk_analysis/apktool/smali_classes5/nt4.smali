.class public final Lnt4;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lic2$b;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lnt4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnt4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lnt4;->f:Lnt4;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lic2$b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lft4;->a:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhc2;

    invoke-interface {p1, p0}, Lic2$a;->a(Lhc2;)V

    const/4 p0, 0x1

    new-array p0, p0, [Lnl3;

    sget-object v0, Llt4;->f:Llt4;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Lmt4;->f:Lmt4;

    invoke-static {p1, p0, v0}, Ljc2;->a(Lic2;[Lnl3;Lnl3;)V

    sget-object p0, Lau4;->a:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvt4;

    invoke-interface {p1, p0}, Lic2$d;->l(Lvt4;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
