.class public final Lml5$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lml5;
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
.field public static final f:Lml5$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lml5$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lml5$a;->f:Lml5$a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Ltc5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Loe0;->c:Lba8;

    sget-object v9, Lcg4;->Singleton:Lcg4;

    new-instance v0, Lgi0;

    const-class p0, Llj1;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v5, Lbf7;->e:Lba8;

    sget-object v4, Ljl5;->f:Ljl5;

    move-object v1, v5

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    move-object v5, v1

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    sget-object v7, Loe0;->b:Lba8;

    new-instance v4, Lgi0;

    const-class p0, Lo87;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v6

    sget-object v8, Lkl5;->f:Lkl5;

    invoke-direct/range {v4 .. v9}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v4, p1}, Lu4;->d(Lgi0;Ltc5;)V

    sget-object v7, Loe0;->d:Lba8;

    new-instance v4, Lgi0;

    const-class p0, Lam5;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v6

    sget-object v8, Lll5;->f:Lll5;

    invoke-direct/range {v4 .. v9}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v4, p1}, Lu4;->d(Lgi0;Ltc5;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
