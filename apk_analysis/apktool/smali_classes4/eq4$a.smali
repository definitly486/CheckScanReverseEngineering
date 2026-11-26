.class public final synthetic Leq4$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leq4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/hookedonplay/decoviewlib/DecoView$c;->values()[Lcom/hookedonplay/decoviewlib/DecoView$c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Leq4$a;->b:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/hookedonplay/decoviewlib/DecoView$c;->GRAVITY_HORIZONTAL_LEFT:Lcom/hookedonplay/decoviewlib/DecoView$c;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Leq4$a;->b:[I

    sget-object v3, Lcom/hookedonplay/decoviewlib/DecoView$c;->GRAVITY_HORIZONTAL_RIGHT:Lcom/hookedonplay/decoviewlib/DecoView$c;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Leq4$a;->b:[I

    sget-object v4, Lcom/hookedonplay/decoviewlib/DecoView$c;->GRAVITY_HORIZONTAL_CENTER:Lcom/hookedonplay/decoviewlib/DecoView$c;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-static {}, Lcom/hookedonplay/decoviewlib/DecoView$d;->values()[Lcom/hookedonplay/decoviewlib/DecoView$d;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Leq4$a;->a:[I

    :try_start_3
    sget-object v4, Lcom/hookedonplay/decoviewlib/DecoView$d;->GRAVITY_VERTICAL_TOP:Lcom/hookedonplay/decoviewlib/DecoView$d;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Leq4$a;->a:[I

    sget-object v3, Lcom/hookedonplay/decoviewlib/DecoView$d;->GRAVITY_VERTICAL_BOTTOM:Lcom/hookedonplay/decoviewlib/DecoView$d;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Leq4$a;->a:[I

    sget-object v1, Lcom/hookedonplay/decoviewlib/DecoView$d;->GRAVITY_VERTICAL_CENTER:Lcom/hookedonplay/decoviewlib/DecoView$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
