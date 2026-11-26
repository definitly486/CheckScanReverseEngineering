.class public final Lu78;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Ljava/lang/Integer;",
        "Lb36<",
        "Ljava/lang/Object;",
        "+",
        "Ljava/lang/Long;",
        ">;",
        "Ldk8$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lx78;


# direct methods
.method public constructor <init>(Lx78;)V
    .locals 0

    iput-object p1, p0, Lu78;->f:Lx78;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lb36;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p2, Lb36;->b:Ljava/lang/Object;

    iget-object p0, p0, Lu78;->f:Lx78;

    invoke-virtual {p0, p1, p2}, Lx78;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldk8$a;

    return-object p0
.end method
