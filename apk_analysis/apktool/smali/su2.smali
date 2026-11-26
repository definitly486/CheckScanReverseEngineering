.class public final synthetic Lsu2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lsu2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lsu2;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->c()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Landroidx/compose/material/ripple/RippleThemeKt;->a()Landroidx/compose/material/ripple/RippleTheme;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lmd4;->b:Lmd4$a;

    return-object p0

    :pswitch_2
    invoke-static {}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->g()Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
