.class public final Lqv3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le58;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lqv3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lx05;Lg27;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lqv3;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lft8;

    iget-object p1, p1, Lx05;->a:Ld15;

    invoke-direct {p0, p1}, Lft8;-><init>(Ld15;)V

    return-object p0

    :pswitch_0
    new-instance p0, Lpv3;

    iget-object p1, p1, Lx05;->a:Ld15;

    sget-object v0, Le12;->d:Lvr6;

    invoke-virtual {v0, p2}, Lvr6;->a(Lg27;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lpv3;-><init>(Ld15;I)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
