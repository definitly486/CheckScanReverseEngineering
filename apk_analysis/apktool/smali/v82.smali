.class public final synthetic Lv82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lv82;->b:I

    iput-object p1, p0, Lv82;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lv82;->b:I

    iget-object p0, p0, Lv82;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, [Lbm3;

    check-cast p1, Lyads/n8;

    invoke-static {p0, p1}, Lyads/yl0;->b([Lbm3;Lyads/n8;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;->e(Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/foundation/text/LegacyTextFieldState;

    check-cast p1, Landroidx/compose/ui/text/input/ImeAction;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/LegacyTextFieldState;->b(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/ImeAction;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lnb6;

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lnb6;->b()Lwd6;

    move-result-object p0

    sget-object v0, Lha1;->b:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance p1, Ljava/io/BufferedReader;

    const/16 v0, 0x2000

    invoke-direct {p1, v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iget-object p0, p0, Lwd6;->a:Lcom/google/gson/Gson;

    new-instance v0, Lbz2;

    invoke-direct {v0}, Lbz2;-><init>()V

    iget-object v0, v0, Lx39;->b:Ljava/lang/reflect/Type;

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->e(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/posthog/PostHogEvent;

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/arch/core/util/Function;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Landroidx/paging/DataSource;->a(Landroidx/arch/core/util/Function;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
