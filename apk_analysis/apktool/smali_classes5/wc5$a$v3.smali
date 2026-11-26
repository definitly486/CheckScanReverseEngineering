.class public final Lwc5$a$v3;
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
        "Lcom/warefly/checkscan/presentation/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lwc5$a$v3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwc5$a$v3;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lwc5$a$v3;->f:Lwc5$a$v3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Lze7;

    check-cast p2, Li36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/presentation/a;

    const-class p0, Lkv;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, p2}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lkv;

    const-class p0, Ljf6;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    invoke-virtual {p1, p0, p2, p2}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljf6;

    const-class p0, Lqe;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    invoke-virtual {p1, p0, p2, p2}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lqe;

    sget-object p0, Loe0;->b:Lba8;

    const-class v4, Lo87;

    invoke-static {v4}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v4

    invoke-virtual {p1, v4, p2, p0}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lo87;

    const-class p0, Lmu6;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    invoke-virtual {p1, p0, p2, p2}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lmu6;

    const-class p0, Lgr7;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    invoke-virtual {p1, p0, p2, p2}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lgr7;

    const-class p0, Lje6;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    invoke-virtual {p1, p0, p2, p2}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lje6;

    const-class p0, Lmy5;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    invoke-virtual {p1, p0, p2, p2}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lmy5;

    sget-object p0, Loe0;->e:Lba8;

    const-class v9, Ly22;

    invoke-static {v9}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v9

    invoke-virtual {p1, v9, p2, p0}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Ly22;

    invoke-direct/range {v0 .. v9}, Lcom/warefly/checkscan/presentation/a;-><init>(Lkv;Ljf6;Lqe;Lo87;Lmu6;Lgr7;Lje6;Lmy5;Ly22;)V

    return-object v0
.end method
