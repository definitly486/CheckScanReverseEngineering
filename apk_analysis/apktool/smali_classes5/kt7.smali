.class public final Lkt7;
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
        "Ld76;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lkt7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkt7;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lkt7;->f:Lkt7;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lze7;

    check-cast p2, Li36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ly46;

    const-class p2, Lp61;

    invoke-static {p2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lp61;

    const-class v1, Lbx5;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v0}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbx5;

    invoke-direct {p0, p2, p1}, Ly46;-><init>(Lp61;Lbx5;)V

    return-object p0
.end method
