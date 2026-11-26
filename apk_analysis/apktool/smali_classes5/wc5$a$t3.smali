.class public final Lwc5$a$t3;
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
        "Lda7;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lwc5$a$t3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwc5$a$t3;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lwc5$a$t3;->f:Lwc5$a$t3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lze7;

    check-cast p2, Li36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lda7;

    const-class p0, Lka7;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, p2}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lka7;

    const-class p0, Lbo0;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    invoke-virtual {p1, p0, p2, p2}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lbo0;

    const-class p0, Lb40;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    invoke-virtual {p1, p0, p2, p2}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lb40;

    const-class p0, Lzl2;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    invoke-virtual {p1, p0, p2, p2}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lzl2;

    const-class p0, Lic8;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    invoke-virtual {p1, p0, p2, p2}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lic8;

    sget-object p0, Lp72;->h:Lba8;

    const-class v6, Lr22;

    invoke-static {v6}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v6

    invoke-virtual {p1, v6, p2, p0}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lr22;

    invoke-direct/range {v0 .. v6}, Lda7;-><init>(Lka7;Lbo0;Lb40;Lzl2;Lic8;Lr22;)V

    return-object v0
.end method
