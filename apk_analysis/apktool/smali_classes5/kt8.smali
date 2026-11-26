.class public final synthetic Lkt8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lkt8;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget p0, p0, Lkt8;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    check-cast p2, Landroidx/compose/material3/TopAppBarState;

    invoke-static {p1, p2}, Landroidx/compose/material3/TopAppBarState;->a(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/TopAppBarState;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ltt8;

    check-cast p2, Lo22$a;

    instance-of p0, p2, Lit8;

    if-eqz p0, :cond_0

    check-cast p2, Lit8;

    iget-object p0, p1, Ltt8;->a:Lo22;

    invoke-interface {p2, p0}, Lit8;->updateThreadContext(Lo22;)Ljava/lang/Object;

    move-result-object p0

    iget-object v0, p1, Ltt8;->b:[Ljava/lang/Object;

    iget v1, p1, Ltt8;->d:I

    aput-object p0, v0, v1

    iget-object p0, p1, Ltt8;->c:[Lit8;

    add-int/lit8 v0, v1, 0x1

    iput v0, p1, Ltt8;->d:I

    aput-object p2, p0, v1

    :cond_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
