.class public final synthetic Log0;
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

    iput p1, p0, Log0;->b:I

    iput-object p2, p0, Log0;->c:Ljava/lang/Object;

    iput-object p3, p0, Log0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Log0;->b:I

    iget-object v1, p0, Log0;->d:Ljava/lang/Object;

    iget-object p0, p0, Log0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/bo6;

    check-cast v1, Lyads/zn6;

    invoke-static {p0, v1}, Lyads/bo6;->a(Lyads/bo6;Lyads/zn6;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/material3/ToggleableAppBarItem;

    check-cast v1, Landroidx/compose/material3/AppBarMenuState;

    invoke-static {p0, v1}, Landroidx/compose/material3/ToggleableAppBarItem;->c(Landroidx/compose/material3/ToggleableAppBarItem;Landroidx/compose/material3/AppBarMenuState;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/foundation/text/TextLinkScope;

    check-cast v1, Landroidx/compose/ui/text/AnnotatedString;

    invoke-static {p0, v1}, Landroidx/compose/foundation/text/BasicTextKt;->s(Landroidx/compose/foundation/text/TextLinkScope;Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
