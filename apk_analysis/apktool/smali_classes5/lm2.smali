.class public final Llm2;
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
        "Lim2;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Llm2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Llm2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Llm2;->f:Llm2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lze7;

    check-cast p2, Li36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljm2;

    const-class p2, Lem2;

    invoke-static {p2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lem2;

    invoke-static {p1}, Lgr3;->a(Lze7;)Landroid/app/Application;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Ljm2;-><init>(Lem2;Landroid/app/Application;)V

    return-object p0
.end method
