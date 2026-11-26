.class public final Lga9;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lic2$e;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lga9;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lga9;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lga9;->f:Lga9;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lic2$e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lic2$e$a;->a(Lic2$e;)V

    invoke-static {p1}, Lic2$e$a;->b(Lic2$e;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
