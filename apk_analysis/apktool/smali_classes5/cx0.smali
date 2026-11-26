.class public final Lcx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldf4<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcx0;

.field public static final b:Lfg6;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcx0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcx0;->a:Lcx0;

    new-instance v0, Lfg6;

    const-string v1, "kotlin.Byte"

    sget-object v2, Ldg6$b;->a:Ldg6$b;

    invoke-direct {v0, v1, v2}, Lfg6;-><init>(Ljava/lang/String;Ldg6;)V

    sput-object v0, Lcx0;->b:Lfg6;

    return-void
.end method


# virtual methods
.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lud2;->decodeByte()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lcx0;->b:Lfg6;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-interface {p1, p0}, Lux2;->encodeByte(B)V

    return-void
.end method
