.class public final Lzu0$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzu0;
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
.field public static final f:Lzu0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lzu0$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lzu0$a;->f:Lzu0$a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ltc5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lp72;->i:Lba8;

    sget-object v5, Lcg4;->Singleton:Lcg4;

    new-instance v0, Lgi0;

    const-class p0, Ljava/util/List;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    sget-object v1, Lbf7;->e:Lba8;

    sget-object v4, Lyu0;->f:Lyu0;

    invoke-direct/range {v0 .. v5}, Lgi0;-><init>(Lkv6;Lzk1;Lkv6;Lbm3;Lcg4;)V

    invoke-static {v0, p1}, Lu4;->d(Lgi0;Ltc5;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
