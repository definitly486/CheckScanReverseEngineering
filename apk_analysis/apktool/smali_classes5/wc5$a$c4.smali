.class public final Lwc5$a$c4;
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
        "Lwj1;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lwc5$a$c4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwc5$a$c4;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lwc5$a$c4;->f:Lwc5$a$c4;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lze7;

    check-cast p2, Li36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lxj1;

    invoke-static {p1}, Lgr3;->b(Lze7;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lxj1;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
