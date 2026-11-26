.class public final Lwc5$a$m3;
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
        "Ljf6;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lwc5$a$m3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwc5$a$m3;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lwc5$a$m3;->f:Lwc5$a$m3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lze7;

    check-cast p2, Li36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lqr7;->o0:Lqr7$b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lqr7;->q0:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqr7;

    return-object p0
.end method
