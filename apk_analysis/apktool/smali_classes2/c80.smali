.class public final synthetic Lc80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lc80;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget p0, p0, Lc80;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Landroidx/compose/material3/WideNavigationRailKt;->b()Landroidx/compose/material3/ModalWideNavigationRailOverride;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->m()Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Landroidx/compose/material3/DatePickerKt;->F()Landroidx/compose/runtime/MutableState;

    move-result-object p0

    return-object p0

    :pswitch_2
    const/4 p0, 0x0

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v1, p0, p0, v0}, Ll91;->a(ILcu0;Lnl3;I)Lmu0;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
