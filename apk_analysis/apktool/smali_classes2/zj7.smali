.class public final synthetic Lzj7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lzj7;->b:I

    iput-object p2, p0, Lzj7;->c:Ljava/lang/Object;

    iput-object p3, p0, Lzj7;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lzj7;->b:I

    iget-object v1, p0, Lzj7;->d:Ljava/lang/Object;

    iget-object p0, p0, Lzj7;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/hm1;

    check-cast v1, Lyads/fs2;

    invoke-static {p0, v1}, Lyads/jk1;->a(Lyads/hm1;Lyads/fs2;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Ly22;

    check-cast v1, Landroidx/compose/material3/SearchBarState;

    invoke-static {p0, v1}, Landroidx/compose/material3/SearchBarKt;->r(Ly22;Landroidx/compose/material3/SearchBarState;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
