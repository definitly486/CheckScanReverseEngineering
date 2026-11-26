.class public final Lyt4;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lic2$d;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lyt4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyt4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lyt4;->f:Lyt4;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lic2$d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x3a

    invoke-static {p1, p0}, Ljc2;->b(Lic2;C)V

    invoke-static {p1}, Lic2$d$a;->c(Lic2$d;)V

    sget-object p0, Lxt4;->f:Lxt4;

    const-string v0, ""

    invoke-static {p1, v0, p0}, Ljc2;->c(Lic2;Ljava/lang/String;Lnl3;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
