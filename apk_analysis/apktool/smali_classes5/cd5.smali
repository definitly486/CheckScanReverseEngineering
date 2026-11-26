.class public final Lcd5;
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
        "Lo8;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcd5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcd5;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lcd5;->f:Lcd5;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lze7;

    check-cast p2, Li36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p0, Ljava/lang/String;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p0}, Li36;->a(ILzk1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-class p1, Lhv6;

    invoke-static {p1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Li36;->a(ILzk1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhv6;

    const-class v0, Liv6;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v0}, Li36;->a(ILzk1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Liv6;

    new-instance v0, Lo8;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0
.end method
