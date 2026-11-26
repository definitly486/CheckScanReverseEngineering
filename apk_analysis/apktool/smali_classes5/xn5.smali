.class public final Lxn5;
.super Lh0;
.source "SourceFile"


# static fields
.field public static final a:Lxn5;

.field public static final b:Ltp7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxn5;

    invoke-direct {v0}, Lh0;-><init>()V

    sput-object v0, Lxn5;->a:Lxn5;

    sget-object v0, Lnq7;->a:Ltp7;

    sput-object v0, Lxn5;->b:Ltp7;

    return-void
.end method


# virtual methods
.method public final encodeBoolean(Z)V
    .locals 0

    return-void
.end method

.method public final encodeByte(B)V
    .locals 0

    return-void
.end method

.method public final encodeChar(C)V
    .locals 0

    return-void
.end method

.method public final encodeDouble(D)V
    .locals 0

    return-void
.end method

.method public final encodeEnum(Lmp7;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final encodeFloat(F)V
    .locals 0

    return-void
.end method

.method public final encodeInt(I)V
    .locals 0

    return-void
.end method

.method public final encodeLong(J)V
    .locals 0

    return-void
.end method

.method public final encodeNull()V
    .locals 0

    return-void
.end method

.method public final encodeShort(S)V
    .locals 0

    return-void
.end method

.method public final encodeString(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final encodeValue(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final getSerializersModule()Ljq7;
    .locals 0

    sget-object p0, Lxn5;->b:Ltp7;

    return-object p0
.end method
