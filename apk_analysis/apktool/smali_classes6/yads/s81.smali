.class public final Lyads/s81;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/op1;

.field public final synthetic c:Lyads/a91;


# direct methods
.method public constructor <init>(Lyads/op1;Lyads/a91;)V
    .locals 0

    iput-object p1, p0, Lyads/s81;->b:Lyads/op1;

    iput-object p2, p0, Lyads/s81;->c:Lyads/a91;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lyads/h81;

    iget-object v0, p0, Lyads/s81;->b:Lyads/op1;

    iget-object p0, p0, Lyads/s81;->c:Lyads/a91;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lyads/k81;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lyads/gt3;->setOrientation(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
