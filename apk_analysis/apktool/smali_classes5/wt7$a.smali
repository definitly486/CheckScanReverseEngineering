.class public final Lwt7$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwt7;
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
.field public static final f:Lwt7$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwt7$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lwt7$a;->f:Lwt7$a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ltc5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcg4;->Singleton:Lcg4;

    new-instance v0, Lgi0;

    const-class p0, Llp;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v1, Lbf7;->e:Lba8;

    const/4 v3, 0x0

    sget-object v4, Lnt7;->f:Lnt7;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Lbv;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Lot7;->f:Lot7;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Lem2;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Lpt7;->f:Lpt7;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Lv66;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Lqt7;->f:Lqt7;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Lf3;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Lrt7;->f:Lrt7;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Lmk6;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Lst7;->f:Lst7;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Lmd8;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Ltt7;->f:Ltt7;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Ljn3;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Lut7;->f:Lut7;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Lfx;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Lvt7;->f:Lvt7;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Li66;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Ldt7;->f:Ldt7;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Lsm6;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Let7;->f:Let7;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Lt69;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Lft7;->f:Lft7;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Lqf8;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Lgt7;->f:Lgt7;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Lfo3;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Lht7;->f:Lht7;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Lmo3;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Lit7;->f:Lit7;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Lin3;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Ljt7;->f:Ljt7;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Ld76;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Lkt7;->f:Lkt7;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Llv4;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Llt7;->f:Llt7;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    new-instance v0, Lgi0;

    const-class p0, Lmo7;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v4, Lmt7;->f:Lmt7;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
