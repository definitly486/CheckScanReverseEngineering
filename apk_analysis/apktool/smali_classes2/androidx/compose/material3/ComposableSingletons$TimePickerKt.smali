.class public final Landroidx/compose/material3/ComposableSingletons$TimePickerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/ComposableSingletons$TimePickerKt;

.field private static lambda$-1179219109:Ldm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldm3<",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private static lambda$1425358052:Ldm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldm3<",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/material3/ComposableSingletons$TimePickerKt;

    invoke-direct {v0}, Landroidx/compose/material3/ComposableSingletons$TimePickerKt;-><init>()V

    sput-object v0, Landroidx/compose/material3/ComposableSingletons$TimePickerKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$TimePickerKt;

    sget-object v0, Landroidx/compose/material3/ComposableSingletons$TimePickerKt$lambda$1425358052$1;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$TimePickerKt$lambda$1425358052$1;

    const v1, 0x54f53ce4

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/ComposableSingletons$TimePickerKt;->lambda$1425358052:Ldm3;

    const v0, -0x464974a5

    sget-object v1, Landroidx/compose/material3/ComposableSingletons$TimePickerKt$lambda$-1179219109$1;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$TimePickerKt$lambda$-1179219109$1;

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/ComposableSingletons$TimePickerKt;->lambda$-1179219109:Ldm3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLambda$-1179219109$material3()Ldm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldm3<",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/compose/material3/ComposableSingletons$TimePickerKt;->lambda$-1179219109:Ldm3;

    return-object p0
.end method

.method public final getLambda$1425358052$material3()Ldm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldm3<",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/compose/material3/ComposableSingletons$TimePickerKt;->lambda$1425358052:Ldm3;

    return-object p0
.end method
