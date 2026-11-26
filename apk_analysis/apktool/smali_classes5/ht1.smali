.class public final synthetic Lht1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lht1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget p0, p0, Lht1;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    check-cast p2, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    invoke-static {p1, p2}, Landroidx/compose/ui/text/SaversKt;->t(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/ui/text/LinkAnnotation$Clickable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lze7;

    check-cast p2, Li36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lno3;

    const-class p0, Lfs4;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v1}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfs4;

    const-class v2, Le17;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {p1, v2, v1, v1}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le17;

    const-class v3, Lmo3;

    invoke-static {v3}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v3

    invoke-virtual {p1, v3, v1, v1}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmo3;

    const-class v4, Lin3;

    invoke-static {v4}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v4

    invoke-virtual {p1, v4, v1, v1}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lin3;

    const-class v5, Lfo3;

    invoke-static {v5}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v5

    invoke-virtual {p1, v5, v1, v1}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lfo3;

    const-class p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    invoke-virtual {p2, v1}, Li36;->b(Lne4;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lno3;-><init>(Lfs4;Le17;Lmo3;Lin3;Lfo3;Z)V

    return-object v0

    :cond_0
    new-instance p0, Lorg/koin/core/error/DefinitionParameterException;

    invoke-static {p1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p1

    invoke-static {p1}, Loe4;->a(Lne4;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "No value found for type \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroidx/camera/core/impl/Quirks;

    invoke-static {p1, p2}, Landroidx/camera/camera2/compat/workaround/EncoderProfilesProviderFallback;->a(Ljava/lang/String;Landroidx/camera/core/impl/Quirks;)Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lo22;

    check-cast p2, Lo22$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Lo22$a;->getKey()Lo22$b;

    move-result-object p0

    invoke-interface {p1, p0}, Lo22;->minusKey(Lo22$b;)Lo22;

    move-result-object p0

    sget-object p1, Lgx2;->b:Lgx2;

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lg02$a;->b:Lg02$a;

    invoke-interface {p0, v0}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v1

    check-cast v1, Lg02;

    if-nez v1, :cond_2

    new-instance p1, Lfo1;

    invoke-direct {p1, p2, p0}, Lfo1;-><init>(Lo22$a;Lo22;)V

    :goto_0
    move-object p2, p1

    goto :goto_1

    :cond_2
    invoke-interface {p0, v0}, Lo22;->minusKey(Lo22$b;)Lo22;

    move-result-object p0

    if-ne p0, p1, :cond_3

    new-instance p0, Lfo1;

    invoke-direct {p0, v1, p2}, Lfo1;-><init>(Lo22$a;Lo22;)V

    move-object p2, p0

    goto :goto_1

    :cond_3
    new-instance p1, Lfo1;

    new-instance v0, Lfo1;

    invoke-direct {v0, p2, p0}, Lfo1;-><init>(Lo22$a;Lo22;)V

    invoke-direct {p1, v1, v0}, Lfo1;-><init>(Lo22$a;Lo22;)V

    goto :goto_0

    :goto_1
    return-object p2

    :pswitch_3
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/lit8 p2, p0, 0x3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    and-int/lit8 v0, p0, 0x1

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, -0x1

    const-string p2, "com.warefly.checkscan.design.compose.toolbars.topbar.ComposableSingletons$CheckscanTopBarKt.lambda$110253518.<anonymous> (CheckscanTopBar.kt:24)"

    const v0, 0x69255ce

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_3

    :cond_6
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_7
    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
