.class public final Laq4;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ldy0;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Laq4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Laq4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Laq4;->f:Laq4;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ldy0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
