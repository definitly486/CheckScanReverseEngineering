.class public final Lwb2;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lic2$c;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lwb2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwb2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lwb2;->f:Lwb2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lic2$c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lha9;->a:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfa9;

    invoke-interface {p1, p0}, Lic2$e;->g(Lfa9;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
