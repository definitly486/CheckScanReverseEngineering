.class public final Lgt4;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lic2$a;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lgt4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgt4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lgt4;->f:Lgt4;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lic2$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lic2$a$a;->a(Lic2$a;)V

    sget-object p0, Lh16;->ZERO:Lh16;

    invoke-interface {p1, p0}, Lic2$a;->d(Lh16;)V

    invoke-interface {p1, p0}, Lic2$a;->p(Lh16;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
