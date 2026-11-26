.class public final Lrb2$b$b;
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
.field public static final f:Lrb2$b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrb2$b$b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lrb2$b$b;->f:Lrb2$b$b;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lic2$c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    new-array v0, p0, [Lnl3;

    const/4 v1, 0x0

    sget-object v2, Lxb2;->f:Lxb2;

    aput-object v2, v0, v1

    sget-object v2, Lyb2;->f:Lyb2;

    invoke-static {p1, v0, v2}, Ljc2;->a(Lic2;[Lnl3;Lnl3;)V

    sget-object v0, Lh16;->NONE:Lh16;

    invoke-interface {p1, v0}, Lic2$a;->p(Lh16;)V

    const/16 v0, 0x20

    invoke-static {p1, v0}, Ljc2;->b(Lic2;C)V

    sget-object v2, Lkd5;->b:Lkd5;

    invoke-interface {p1, v2}, Lic2$a;->t(Lkd5;)V

    invoke-static {p1, v0}, Ljc2;->b(Lic2;C)V

    invoke-static {p1}, Lic2$a$a;->a(Lic2$a;)V

    invoke-static {p1, v0}, Ljc2;->b(Lic2;C)V

    invoke-static {p1}, Lic2$d$a;->a(Lic2$d;)V

    const/16 v0, 0x3a

    invoke-static {p1, v0}, Ljc2;->b(Lic2;C)V

    invoke-static {p1}, Lic2$d$a;->b(Lic2$d;)V

    sget-object v0, Lzb2;->f:Lzb2;

    const-string v2, ""

    invoke-static {p1, v2, v0}, Ljc2;->c(Lic2;Ljava/lang/String;Lnl3;)V

    const-string v0, " "

    invoke-interface {p1, v0}, Lic2;->f(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lnl3;

    sget-object v2, Lac2;->f:Lac2;

    aput-object v2, v0, v1

    sget-object v1, Lbc2;->f:Lbc2;

    aput-object v1, v0, p0

    sget-object p0, Ldc2;->f:Ldc2;

    invoke-static {p1, v0, p0}, Ljc2;->a(Lic2;[Lnl3;Lnl3;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
