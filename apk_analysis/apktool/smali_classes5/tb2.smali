.class public final Ltb2;
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
.field public static final f:Ltb2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltb2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Ltb2;->f:Ltb2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lic2$c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x54

    invoke-static {p1, p0}, Ljc2;->b(Lic2;C)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
