.class public final Lwc5$a$p4;
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
        "Lyg1;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lwc5$a$p4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwc5$a$p4;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lwc5$a$p4;->f:Lwc5$a$p4;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lze7;

    check-cast p2, Li36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lyg1;

    const-class p0, Lzg1;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, p2}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lzg1;

    const-class p0, Ljv6;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    invoke-virtual {p1, p0, p2, p2}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljv6;

    const-class p0, Ljf6;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    invoke-virtual {p1, p0, p2, p2}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Ljf6;

    sget-object p0, Lp72;->g:Lba8;

    const-class v4, Lfu1;

    invoke-static {v4}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v4

    invoke-virtual {p1, v4, p2, p0}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lfu1;

    const-class p0, Lj67;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    invoke-virtual {p1, p0, p2, p2}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lj67;

    const-class p0, Lxd1;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    invoke-virtual {p1, p0, p2, p2}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lxd1;

    invoke-direct/range {v0 .. v6}, Lyg1;-><init>(Lzg1;Ljv6;Ljf6;Lfu1;Lj67;Lxd1;)V

    return-object v0
.end method
