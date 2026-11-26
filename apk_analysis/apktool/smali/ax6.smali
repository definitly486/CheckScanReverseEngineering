.class public final Lax6;
.super Ljava/lang/Object;


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lax6;->a:[I

    const v1, 0x7f04039a

    const v2, 0x7f040516

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sput-object v1, Lax6;->b:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lax6;->c:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lax6;->d:[I

    const v0, 0x7f0404f8

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lax6;->e:[I

    return-void

    :array_0
    .array-data 4
        0x7f0402e3
        0x7f0402e6
        0x7f0402ea
        0x7f0404f5
        0x7f0404f9
        0x7f0405a1
    .end array-data

    :array_1
    .array-data 4
        0x7f040078
        0x7f0402e3
        0x7f0403fb
        0x7f0404f9
        0x7f040520
        0x7f040656
    .end array-data

    :array_2
    .array-data 4
        0x7f04053b
        0x7f04053c
        0x7f04053d
        0x7f04053e
        0x7f04053f
        0x7f040540
    .end array-data
.end method
