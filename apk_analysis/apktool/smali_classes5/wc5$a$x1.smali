.class public final Lwc5$a$x1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Lze7;",
        "Li36;",
        "Lnp0;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lwc5$a$x1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwc5$a$x1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lwc5$a$x1;->f:Lwc5$a$x1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lze7;

    check-cast p2, Li36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lwc5;->a:Ltc5;

    sget-object p0, Lp72;->e:Lba8;

    const-class p2, Ln67;

    invoke-static {p2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln67;

    const-class p1, Lnp0;

    invoke-virtual {p0, p1}, Ln67;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnp0;

    return-object p0
.end method
