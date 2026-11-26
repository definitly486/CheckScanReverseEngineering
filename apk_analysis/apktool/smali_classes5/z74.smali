.class public final Lz74;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldf4<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lz74;

.field public static final b:Lfg6;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lz74;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lz74;->a:Lz74;

    new-instance v0, Lfg6;

    const-string v1, "kotlin.Int"

    sget-object v2, Ldg6$f;->a:Ldg6$f;

    invoke-direct {v0, v1, v2}, Lfg6;-><init>(Ljava/lang/String;Ldg6;)V

    sput-object v0, Lz74;->b:Lfg6;

    return-void
.end method


# virtual methods
.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lud2;->decodeInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lz74;->b:Lfg6;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Lux2;->encodeInt(I)V

    return-void
.end method
