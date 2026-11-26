.class public final Ljl5;
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
        "Llj1<",
        "Lo87;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final f:Ljl5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljl5;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Ljl5;->f:Ljl5;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lze7;

    check-cast p2, Li36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lo87;

    invoke-direct {p0}, Lo87;-><init>()V

    new-instance p1, Llj1;

    invoke-direct {p1, p0}, Llj1;-><init>(Lo87;)V

    return-object p1
.end method
