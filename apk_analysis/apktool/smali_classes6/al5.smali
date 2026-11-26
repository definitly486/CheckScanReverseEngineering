.class public final synthetic Lal5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lal5;->b:I

    iput-object p1, p0, Lal5;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lal5;->b:I

    iget-object p0, p0, Lal5;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->N(Lyads/nq0;)Lyads/qh2;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/df2;

    invoke-static {p0}, Lyads/df2;->a(Lyads/df2;)Lyads/iz2;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lyads/b50;

    invoke-static {p0}, Lyads/b50;->a(Lyads/b50;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/ui/text/style/TextForegroundStyle;

    invoke-static {p0}, Landroidx/compose/ui/text/style/TextForegroundStyle;->a(Landroidx/compose/ui/text/style/TextForegroundStyle;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lcom/tapjoy/TapjoyCache;

    invoke-static {p0}, Lcom/tapjoy/TapjoyCache;->a(Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TJKeyValueStorage;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/compose/runtime/State;

    invoke-static {p0}, Landroidx/compose/material3/NavigationItemKt;->m(Landroidx/compose/runtime/State;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
