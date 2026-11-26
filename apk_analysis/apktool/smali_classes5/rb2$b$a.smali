.class public final Lrb2$b$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrb2$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lic2$c;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lrb2$b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrb2$b$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lrb2$b$a;->f:Lrb2$b$a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lic2$c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lft4;->a:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhc2;

    invoke-interface {p1, p0}, Lic2$a;->a(Lhc2;)V

    const/4 p0, 0x1

    new-array v0, p0, [Lnl3;

    const/4 v1, 0x0

    sget-object v2, Lsb2;->f:Lsb2;

    aput-object v2, v0, v1

    sget-object v2, Ltb2;->f:Ltb2;

    invoke-static {p1, v0, v2}, Ljc2;->a(Lic2;[Lnl3;Lnl3;)V

    invoke-static {p1}, Lic2$d$a;->a(Lic2$d;)V

    const/16 v0, 0x3a

    invoke-static {p1, v0}, Ljc2;->b(Lic2;C)V

    invoke-static {p1}, Lic2$d$a;->b(Lic2$d;)V

    invoke-static {p1, v0}, Ljc2;->b(Lic2;C)V

    invoke-static {p1}, Lic2$d$a;->c(Lic2$d;)V

    sget-object v0, Lub2;->f:Lub2;

    const-string v2, ""

    invoke-static {p1, v2, v0}, Ljc2;->c(Lic2;Ljava/lang/String;Lnl3;)V

    new-array p0, p0, [Lnl3;

    sget-object v0, Lvb2;->f:Lvb2;

    aput-object v0, p0, v1

    sget-object v0, Lwb2;->f:Lwb2;

    invoke-static {p1, p0, v0}, Ljc2;->a(Lic2;[Lnl3;Lnl3;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
