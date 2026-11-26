.class public final Lfa;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "La57<",
        "Lah6;",
        ">;",
        "Lc18<",
        "+",
        "Lbh6;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final f:Lfa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfa;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lfa;->f:Lfa;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, La57;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lea;

    invoke-direct {p0, p1}, Lea;-><init>(Ljava/lang/Object;)V

    new-instance p1, Loz7;

    invoke-direct {p1, p0}, Loz7;-><init>(Lw08;)V

    return-object p1
.end method
