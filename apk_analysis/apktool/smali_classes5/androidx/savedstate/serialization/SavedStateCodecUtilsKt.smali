.class public final Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final booleanArrayDescriptor:Lmp7;

.field private static final charArrayDescriptor:Lmp7;

.field private static final doubleArrayDescriptor:Lmp7;

.field private static final floatArrayDescriptor:Lmp7;

.field private static final intArrayDescriptor:Lmp7;

.field private static final intListDescriptor:Lmp7;

.field private static final longArrayDescriptor:Lmp7;

.field private static final stringArrayDescriptor:Lmp7;

.field private static final stringListDescriptor:Lmp7;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lz74;->a:Lz74;

    new-instance v0, Lkr;

    sget-object v1, Lz74;->b:Lfg6;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkr4;-><init>(Lmp7;)V

    sput-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->intListDescriptor:Lmp7;

    sget-object v0, Lca8;->a:Lca8;

    new-instance v1, Lkr;

    sget-object v2, Lca8;->b:Lfg6;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lkr4;-><init>(Lmp7;)V

    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->stringListDescriptor:Lmp7;

    sget-object v1, Les0;->c:Les0;

    iget-object v1, v1, Lcg6;->b:Lbg6;

    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->booleanArrayDescriptor:Lmp7;

    sget-object v1, Lw91;->c:Lw91;

    iget-object v1, v1, Lcg6;->b:Lbg6;

    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->charArrayDescriptor:Lmp7;

    sget-object v1, Llq2;->c:Llq2;

    iget-object v1, v1, Lcg6;->b:Lbg6;

    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->doubleArrayDescriptor:Lmp7;

    sget-object v1, Lrc3;->c:Lrc3;

    iget-object v1, v1, Lcg6;->b:Lbg6;

    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->floatArrayDescriptor:Lmp7;

    sget-object v1, Ls74;->c:Ls74;

    iget-object v1, v1, Lcg6;->b:Lbg6;

    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->intArrayDescriptor:Lmp7;

    sget-object v1, Lsv4;->c:Lsv4;

    iget-object v1, v1, Lcg6;->b:Lbg6;

    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->longArrayDescriptor:Lmp7;

    const-class v1, Ljava/lang/String;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    new-instance v1, Ler;

    invoke-interface {v0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lkr4;-><init>(Lmp7;)V

    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->stringArrayDescriptor:Lmp7;

    return-void
.end method

.method public static final getBooleanArrayDescriptor()Lmp7;
    .locals 1

    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->booleanArrayDescriptor:Lmp7;

    return-object v0
.end method

.method public static final getCharArrayDescriptor()Lmp7;
    .locals 1

    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->charArrayDescriptor:Lmp7;

    return-object v0
.end method

.method public static final getDoubleArrayDescriptor()Lmp7;
    .locals 1

    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->doubleArrayDescriptor:Lmp7;

    return-object v0
.end method

.method public static final getFloatArrayDescriptor()Lmp7;
    .locals 1

    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->floatArrayDescriptor:Lmp7;

    return-object v0
.end method

.method public static final getIntArrayDescriptor()Lmp7;
    .locals 1

    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->intArrayDescriptor:Lmp7;

    return-object v0
.end method

.method public static final getIntListDescriptor()Lmp7;
    .locals 1

    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->intListDescriptor:Lmp7;

    return-object v0
.end method

.method public static final getLongArrayDescriptor()Lmp7;
    .locals 1

    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->longArrayDescriptor:Lmp7;

    return-object v0
.end method

.method public static final getStringArrayDescriptor()Lmp7;
    .locals 1

    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->stringArrayDescriptor:Lmp7;

    return-object v0
.end method

.method public static synthetic getStringArrayDescriptor$annotations()V
    .locals 0

    return-void
.end method

.method public static final getStringListDescriptor()Lmp7;
    .locals 1

    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->stringListDescriptor:Lmp7;

    return-object v0
.end method
