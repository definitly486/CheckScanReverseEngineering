.class public final Lh5$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ltc5;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lh5$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lh5$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lh5$a;->f:Lh5$a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ltc5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcg4;->Singleton:Lcg4;

    new-instance v0, Lgi0;

    const-class p0, Lk5;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v1, Lbf7;->e:Lba8;

    const/4 v3, 0x0

    sget-object v4, Ly4;->f:Ly4;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Lq79;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Lz4;->f:Lz4;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Le89;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, La5;->f:La5;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Lkz;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Lb5;->f:Lb5;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Lg6;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Lc5;->f:Lc5;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Ldc7;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Ld5;->f:Ld5;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Lc89;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Le5;->f:Le5;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Lkl2;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Lf5;->f:Lf5;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Lzu4;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Lg5;->f:Lg5;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Lk89;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Lv4;->f:Lv4;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Lk6;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Lw4;->f:Lw4;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, La83;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Lx4;->f:Lx4;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
