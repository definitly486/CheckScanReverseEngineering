.class public final Leu8;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lal1;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Leu8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Leu8;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Leu8;->f:Leu8;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lal1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lgw4;->a:Lgw4;

    sget-object p0, Lgw4;->b:Lfg6;

    const-string v0, "nanoseconds"

    invoke-virtual {p1, v0, p0}, Lal1;->a(Ljava/lang/String;Lmp7;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
