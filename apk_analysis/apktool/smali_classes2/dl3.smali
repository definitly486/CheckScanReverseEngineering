.class public final synthetic Ldl3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ldl3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Ldl3;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lyads/sc;->a()Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Lyads/l74;->c()Ldf4;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lyads/jk1;->b()Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Landroidx/compose/material3/WideNavigationRailKt;->f()Landroidx/compose/material3/WideNavigationRailOverride;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {}, Landroidx/compose/material3/TypographyKt;->a()Landroidx/compose/material3/Typography;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->p()Ljava/lang/reflect/Method;

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
