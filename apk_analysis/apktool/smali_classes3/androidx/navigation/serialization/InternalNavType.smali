.class public final Landroidx/navigation/serialization/InternalNavType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BoolNullableType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final DoubleArrayType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "[D>;"
        }
    .end annotation
.end field

.field private static final DoubleListType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final DoubleNullableType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final DoubleType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final FloatNullableType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Landroidx/navigation/serialization/InternalNavType;

.field private static final IntNullableType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LongNullableType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final StringNonNullableType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final StringNullableArrayType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final StringNullableListType:Landroidx/navigation/NavType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/navigation/serialization/InternalNavType;

    invoke-direct {v0}, Landroidx/navigation/serialization/InternalNavType;-><init>()V

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->INSTANCE:Landroidx/navigation/serialization/InternalNavType;

    new-instance v0, Landroidx/navigation/serialization/InternalNavType$IntNullableType$1;

    invoke-direct {v0}, Landroidx/navigation/serialization/InternalNavType$IntNullableType$1;-><init>()V

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->IntNullableType:Landroidx/navigation/NavType;

    new-instance v0, Landroidx/navigation/serialization/InternalNavType$BoolNullableType$1;

    invoke-direct {v0}, Landroidx/navigation/serialization/InternalNavType$BoolNullableType$1;-><init>()V

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->BoolNullableType:Landroidx/navigation/NavType;

    new-instance v0, Landroidx/navigation/serialization/InternalNavType$DoubleType$1;

    invoke-direct {v0}, Landroidx/navigation/serialization/InternalNavType$DoubleType$1;-><init>()V

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->DoubleType:Landroidx/navigation/NavType;

    new-instance v0, Landroidx/navigation/serialization/InternalNavType$DoubleNullableType$1;

    invoke-direct {v0}, Landroidx/navigation/serialization/InternalNavType$DoubleNullableType$1;-><init>()V

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->DoubleNullableType:Landroidx/navigation/NavType;

    new-instance v0, Landroidx/navigation/serialization/InternalNavType$FloatNullableType$1;

    invoke-direct {v0}, Landroidx/navigation/serialization/InternalNavType$FloatNullableType$1;-><init>()V

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->FloatNullableType:Landroidx/navigation/NavType;

    new-instance v0, Landroidx/navigation/serialization/InternalNavType$LongNullableType$1;

    invoke-direct {v0}, Landroidx/navigation/serialization/InternalNavType$LongNullableType$1;-><init>()V

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->LongNullableType:Landroidx/navigation/NavType;

    new-instance v0, Landroidx/navigation/serialization/InternalNavType$StringNonNullableType$1;

    invoke-direct {v0}, Landroidx/navigation/serialization/InternalNavType$StringNonNullableType$1;-><init>()V

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->StringNonNullableType:Landroidx/navigation/NavType;

    new-instance v0, Landroidx/navigation/serialization/InternalNavType$StringNullableArrayType$1;

    invoke-direct {v0}, Landroidx/navigation/serialization/InternalNavType$StringNullableArrayType$1;-><init>()V

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->StringNullableArrayType:Landroidx/navigation/NavType;

    new-instance v0, Landroidx/navigation/serialization/InternalNavType$StringNullableListType$1;

    invoke-direct {v0}, Landroidx/navigation/serialization/InternalNavType$StringNullableListType$1;-><init>()V

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->StringNullableListType:Landroidx/navigation/NavType;

    new-instance v0, Landroidx/navigation/serialization/InternalNavType$DoubleArrayType$1;

    invoke-direct {v0}, Landroidx/navigation/serialization/InternalNavType$DoubleArrayType$1;-><init>()V

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->DoubleArrayType:Landroidx/navigation/NavType;

    new-instance v0, Landroidx/navigation/serialization/InternalNavType$DoubleListType$1;

    invoke-direct {v0}, Landroidx/navigation/serialization/InternalNavType$DoubleListType$1;-><init>()V

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->DoubleListType:Landroidx/navigation/NavType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBoolNullableType()Landroidx/navigation/NavType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->BoolNullableType:Landroidx/navigation/NavType;

    return-object p0
.end method

.method public final getDoubleArrayType()Landroidx/navigation/NavType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/navigation/NavType<",
            "[D>;"
        }
    .end annotation

    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->DoubleArrayType:Landroidx/navigation/NavType;

    return-object p0
.end method

.method public final getDoubleListType()Landroidx/navigation/NavType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/navigation/NavType<",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->DoubleListType:Landroidx/navigation/NavType;

    return-object p0
.end method

.method public final getDoubleNullableType()Landroidx/navigation/NavType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->DoubleNullableType:Landroidx/navigation/NavType;

    return-object p0
.end method

.method public final getDoubleType()Landroidx/navigation/NavType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->DoubleType:Landroidx/navigation/NavType;

    return-object p0
.end method

.method public final getFloatNullableType()Landroidx/navigation/NavType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->FloatNullableType:Landroidx/navigation/NavType;

    return-object p0
.end method

.method public final getIntNullableType()Landroidx/navigation/NavType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->IntNullableType:Landroidx/navigation/NavType;

    return-object p0
.end method

.method public final getLongNullableType()Landroidx/navigation/NavType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->LongNullableType:Landroidx/navigation/NavType;

    return-object p0
.end method

.method public final getStringNonNullableType()Landroidx/navigation/NavType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/navigation/NavType<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->StringNonNullableType:Landroidx/navigation/NavType;

    return-object p0
.end method

.method public final getStringNullableArrayType()Landroidx/navigation/NavType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/navigation/NavType<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->StringNullableArrayType:Landroidx/navigation/NavType;

    return-object p0
.end method

.method public final getStringNullableListType()Landroidx/navigation/NavType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/navigation/NavType<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    sget-object p0, Landroidx/navigation/serialization/InternalNavType;->StringNullableListType:Landroidx/navigation/NavType;

    return-object p0
.end method
