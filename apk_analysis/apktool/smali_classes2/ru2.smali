.class public final synthetic Lru2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lru2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lru2;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lyads/gf0;->g()Lyads/uv3;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Landroidx/compose/material3/SurfaceKt;->a()Landroidx/compose/ui/unit/Dp;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->y()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Landroidx/compose/material3/RippleKt;->a()Landroidx/compose/material3/RippleConfiguration;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget-object p0, Ldd4;->b:Lfg6;

    return-object p0

    :pswitch_4
    invoke-static {}, Landroidx/compose/runtime/tooling/InspectionTablesKt;->a()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->e()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
