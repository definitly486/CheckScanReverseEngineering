.class public final Lal8;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:La4;


# direct methods
.method public constructor <init>(La4;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lal8;->f:La4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lal8;->f:La4;

    iget-object p0, p0, La4;->b:Ljava/lang/Object;

    check-cast p0, Ld18;

    invoke-virtual {p0}, Ld18;->dispose()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
